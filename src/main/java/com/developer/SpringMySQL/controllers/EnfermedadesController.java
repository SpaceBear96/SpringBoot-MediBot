package com.developer.SpringMySQL.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.developer.SpringMySQL.models.AppEnfermedades;
import com.developer.SpringMySQL.models.AppEnfermedadesRepo;

@Controller
public class EnfermedadesController {
	
	@Autowired
    AppEnfermedadesRepo appEnfer;  

    @RequestMapping("/enfermedades")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("index_enfer");
        mv.addObject("l_enf",appEnfer.findAll());
        return mv;
    }
    @RequestMapping( value = "/enfermedades/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id, @RequestParam("nombre_enf") String nombre_enf, @RequestParam("descripcion_enf") String descripcion_enf){
        ModelAndView mv = new ModelAndView("redirect:/enfermedades");

        AppEnfermedades enfer;
        if(!id.isEmpty()){
            enfer =(AppEnfermedades)appEnfer.findOne(Integer.parseInt(id));
        } else {
            enfer = new AppEnfermedades();
        }
        enfer.setNombre_enf(nombre_enf);
        enfer.setDescripcion_enf(descripcion_enf);
        appEnfer.save(enfer);
        return mv;
    }

    @RequestMapping( value = "/enfermedades/view/{id}", method = RequestMethod.GET)
    public ModelAndView doView(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("view_enfer");
        mv.addObject("l_enf",appEnfer.findOne(id));
        return mv;
    }

    @RequestMapping( value = "/enfermedades/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/enfermedades");
        appEnfer.delete(id);
        return mv;
    }

    @RequestMapping( value = "/enfermedades/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit_enfer");
        mv.addObject("l_enf",appEnfer.findOne(id));
        return mv;
    }
    
    
}
