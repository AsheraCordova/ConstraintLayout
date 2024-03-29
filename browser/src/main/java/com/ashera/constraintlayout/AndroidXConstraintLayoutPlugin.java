package com.ashera.constraintlayout;

import com.ashera.widget.WidgetFactory;

public class AndroidXConstraintLayoutPlugin  {
    public static void initPlugin() {
    	//start - widgets
        WidgetFactory.register(new com.ashera.constraintlayout.ConstraintLayoutImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.GuidelineImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.BarrierImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.GroupImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.PlaceholderImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.FlowImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.CircularFlowImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.MotionLayoutImpl());
        WidgetFactory.register(new com.ashera.constraintlayout.CarouselImpl());
        //end - widgets
    }
}
