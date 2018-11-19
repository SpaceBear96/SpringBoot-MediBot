package com.developer.SpringMySQL.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.developer.SpringMySQL.models.AppDistritosRepo;
import com.developer.SpringMySQL.models.AppHospitales;
import com.developer.SpringMySQL.models.AppHospitalesRepo;

@Controller
public class HospitalesController {

    @Autowired
    AppHospitalesRepo appHosp;
    @Autowired
    AppDistritosRepo appDistr;
    
	@RequestMapping("/hospitales")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index_h");
        mv.addObject("list_h",appHosp.findAll());
        mv.addObject("l_dist",appDistr.findAll());
        return mv;
    }
    @RequestMapping( value = "/hospitales/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id, @RequestParam("nombre") String nombre, @RequestParam("distrito") String distrito){
    	ModelAndView mv = new ModelAndView("redirect:/hospitales");
        AppHospitales hosp;
        if(!id.isEmpty()){
            hosp =(AppHospitales)appHosp.findOne(Integer.parseInt(id));
        } else {
            hosp = new AppHospitales();
        }
        hosp.setNombre(nombre);
        hosp.setDistrito(distrito);
        appHosp.save(hosp);
        return mv;
    }

    @RequestMapping( value = "/hospitales/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view_h");
        mv.addObject("list_h",appHosp.findOne(id));
        return mv;
    }

    @RequestMapping( value = "/hospitales/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/hospitales	");
        appHosp.delete(id);
        return mv;
    }

    @RequestMapping( value = "/hospitales/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit_h");
        mv.addObject("list_h",appHosp.findOne(id));
        return mv;
    }
}
