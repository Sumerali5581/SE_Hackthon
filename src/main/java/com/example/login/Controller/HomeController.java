package com.example.login.Controller;

import com.example.login.Model.Land;
import com.example.login.Model.User;
import com.example.login.Repository.LandRepository;
import com.example.login.Repository.UserRepository;
import com.example.login.Service.LandService;
import com.example.login.Service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.sql.Date;
import java.util.List;

@Controller
@SessionAttributes
public class HomeController {

    @Autowired
    private UserRepository userRepository;

    //Landing page of website
    @RequestMapping("/")
    public String landingPage(Model model)
    {
        return "page";
    }
    @RequestMapping("/admin")
    public String landingPage1(Model model)
    {
        return "adminn";
    }
    @RequestMapping("/user")
    public String landingPage2(Model model)
    {
        model.addAttribute("Email",email);
        model.addAttribute("Name",name);
        return "CosDash";
    }
    @RequestMapping("/officer")
    public String landingPage3(Model model)
    {
        return "Gov_admin";
    }

    @RequestMapping("/reports")
    public String reports(Model model){ return "reports";}

    @RequestMapping("/settings")
    public String settings(Model model){ return "settings";}

    @RequestMapping("/users")
    public String users(Model model){
        List<User> lists=userRepository.findAll();
        model.addAttribute("lists",lists);

        return "users";
    }

    @RequestMapping("/create")
    public String create(Model model){
        List<Land> lists=landRepository.findAll();
        model.addAttribute("lists",lists);
        return "create";}

    @RequestMapping("/owner")
    public String owner(Model model)
    {
        return "transfer_landownership";
    }

    @RequestMapping("/gov")
    public String gov(Model model)
    {
        List<Land> lists=landRepository.findAll();
        model.addAttribute("lists",lists);
        return "gov_land_reg_form";
    }

    @Autowired
    private LandRepository landRepository;
    Long id;
    @PostMapping("/gov_register")
    public String gov_register(@RequestParam("registration_office") String registration_office,
                               @RequestParam("district") String district,
                               @RequestParam("state") String state,
                               @RequestParam("name") String name,
                               @RequestParam("postal_address") String postal_address,
                               @RequestParam("property_type") String property_type,
                               @RequestParam("state1") String state1,
                               @RequestParam("district1") String district1,
                               @RequestParam("subdivision") String subdivision,
                               @RequestParam("road_name") String road_name,
                               @RequestParam("name_of_municipality_gram_panchayat") String name_of_municipality_gram_panchayat,
                               @RequestParam("land_value") String land_value,
                               @RequestParam("date") Date date)
    {

            Land land=new Land();
            land.setRegistration_office(registration_office);
            land.setDistrict(district);
            land.setState(state);
            land.setOwner(name);
            land.setPin(postal_address);
            land.setType(property_type);
            land.setSubdivision(subdivision);
            land.setRoad(road_name);
            land.setMuncipal(name_of_municipality_gram_panchayat);
            land.setPrice(land_value);
            land.setDate(date);
            landRepository.save(land);
            System.out.println("Save");

             id=land.getId();

        return "redirect:http://localhost:9090/track";
    }

    @RequestMapping("/track")
    public String track(Model mode)
    {
        mode.addAttribute("Id",id);
        return "track";
    }
    //Function for register
    @PostMapping("/register")
    public String submit(@RequestParam("name") String name,
                         @RequestParam("email") String email,
                         @RequestParam("password") String password, HttpSession session)
    {
        if(userService.checkEmail(email))
        {
            //session.setAttribute("msg", "Email id already exist");
            session.setAttribute("registrationSuccess", false);
            session.setAttribute("registrationError", true);
        }
        else {
            User user=new User();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
            userRepository.save(user);
            System.out.println("Data Saved");
            //session.setAttribute("msg", "Registered");
            session.setAttribute("registrationSuccess", true);
            session.setAttribute("registrationError", false);
        }

        return "redirect:/";

    }

    @Autowired
    private UserService userService;


    @Autowired
    private ObjectMapper objectMapper;

    String email;
    String name;
    //Function for login
    @PostMapping ("/log")
    public String loginHomepage(@RequestParam("email1") String userName,
                                @RequestParam("password1") String password, Model model) {
        User u = null;

        //User p = null;
        try {
            u = userRepository.findByEmail(userName);
            System.out.println(u);
            email=u.getEmail();
            name=u.getName();

            //p = userRepository.findByPassword(password);
        } catch (Exception e) {
            System.out.println("User not found !!!");
        }
        if(u==null)
        {
            // User not found in the database
            return "redirect:/login/errorUserNotFound";

        }
        else if(!u.getPassword().equals(password))
        {
            // Password does not match
            return "redirect:/login/errorIncorrectPassword";
        }
        else
        //if (u != null && u.getPassword().equals(password))
        {
//            model.addAttribute("USERNAME", userName);

            String role = u.getRole();
            //If user is admin
            if (role != null && role.equals("admin")) {


                return "redirect:http://localhost:9090/admin";
            }
            //If user is doctor
            else if (role != null && role.equals("officer")) {


                return "redirect:http://localhost:9090/officer";
            }
            //If user is patient
            else {


                return "redirect:http://localhost:9090/user";
            }
            //return "redirect:http://localhost:8888/appointment/patient";
        }
        //model.addAttribute("error", "User Not Found, Kindly register!!");

        //ResponseEntity<String> entity= new ResponseEntity<>(userName, HttpStatus.OK);

        //return "page";
    }

    @GetMapping("/login/errorUserNotFound")
    public String errorUserNotFound(Model model) {
        model.addAttribute("errorMessage", "User not found. Please register!");
        return "error";
    }

    @GetMapping("/login/errorIncorrectPassword")
    public String errorIncorrectPassword(Model model) {
        model.addAttribute("errorMessage", "Incorrect password. Please try again!");
        return "error";
    }

//    @GetMapping("/login/success")
//    public String loginSuccess() {
//        return "redirect:/home"; // Redirect to home page after successful login
//    }
    //Logout
    @GetMapping("/logout")
    public String out(Model model)
    {
        return "page";
    }

    //Update role
    @GetMapping("/update_doctor")
    public String updateDoctor(Model model)
    {
        List<User> lists=userRepository.findAll();
        model.addAttribute("lists",lists);
        return "updateDoctor";
    }
    @Autowired
    private LandService landService;
    @PostMapping("/confirm")
    public String confirm(@RequestParam("landID") Long id,
                          @RequestParam("status") String status)
    {
        landService.updateDoctor(id, status);
        return "redirect:/gov";
    }

    @RequestMapping("/status")
    public String status_property(Model model)
    {
        List<Land> lists=landRepository.findAll();
        model.addAttribute("lists",lists);
        return "Status";
    }


    @PostMapping("/confirmDoctor")
    public String confirmAppointment(@RequestParam("confirmingId") Long id,
                                     @RequestParam("confirmingrole") String role) {

        userService.updateDoctor(id, role);
        return "redirect:/update_doctor";
    }
}
