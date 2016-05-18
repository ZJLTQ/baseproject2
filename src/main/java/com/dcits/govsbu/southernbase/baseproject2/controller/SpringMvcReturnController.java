package com.dcits.govsbu.southernbase.baseproject2.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * 列出了spring mvc返回前台的集中方式
 * @author dc_zjl
 *
 */
@Controller
@RequestMapping("SpringMvcReturn")
public class SpringMvcReturnController {
	
	/**
	 * 使用ModelAndView
	 * 返回ModelAndView构造返回页面和数据到前台
	 * 通过ModelAndView的构造函数返回页面名称，
	 * 也可以通过ModelAndView的setViewName()方法设置跳转的页面
	 * @return
	 */
	@RequestMapping(value="/index1", method=RequestMethod.GET)
	public ModelAndView index1() {
		ModelAndView mav = new ModelAndView("/admin/froms");
		mav.addObject("index1", "test1");
		
		/*ModelAndView mav = new ModelAndView();
		mav.addObject("index2", "test2");
		mav.setViewName("/admin/forms");*/
		
		return mav;
	}
	
	/**
	 * 直接返回数据map到前台
	 * @return
	 */
	@RequestMapping(value="/index2", method=RequestMethod.GET)
	public Map<String, String> index2() {
		Map<String, String> map = new HashMap<String, String>();
		map.put("index2", "test2");
		return map;
	}
	
	/**
	 * 使用model
	 * 返回页面String，通过model进行传送数据
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index3", method=RequestMethod.GET)
	public String index3(Model model) {
		String retnStr = "admin/forms";
		model.addAttribute("index3", "test3");
		return retnStr;
	}
	
	/**
	 * 配合@ResponseBody将内容或者对象作为http响应正文返回（适合做即时校验）
	 * 
	 */
	@RequestMapping(value="/index4", method=RequestMethod.GET)
	@ResponseBody
	public String index4(@RequestParam(value = "userId", required = false) Integer userId,
			@RequestParam(value="userName", required=false) String userName) {
		return String.valueOf(true);
	}
	
	/**
     * 直接返回对应的index5的view
     */
    @RequestMapping(value="/index5", method=RequestMethod.GET)
    public void index5() {
    	//这个时候如果需要在渲染视图的过程中需要模型的话，就可以给处理器添加一个模型参数，然后在方法体往模型添加值就可以
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("****", "****");
    }
}
