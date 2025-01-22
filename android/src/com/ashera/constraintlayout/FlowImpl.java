package com.ashera.constraintlayout;
//start - imports

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import android.content.Context;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.widget.*;
import androidx.core.view.*;
import android.view.*;
import android.graphics.drawable.*;


import android.os.Build;
import android.view.View;
import android.text.*;

import com.ashera.core.IFragment;
import com.ashera.converter.*;

import android.annotation.SuppressLint;

import com.ashera.layout.*;
import com.ashera.plugin.*;
import com.ashera.widget.bus.*;
import com.ashera.widget.*;
import com.ashera.widget.bus.Event.*;
import com.ashera.widget.IWidgetLifeCycleListener.EventId;
import com.ashera.widget.IWidgetLifeCycleListener.EventId.*;


import static com.ashera.widget.IWidget.*;
//end - imports
@SuppressLint("NewApi")
public class FlowImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.helper.widget.Flow"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.helper.widget.Flow";

	protected androidx.constraintlayout.helper.widget.Flow flow;
	
		@SuppressLint("NewApi")
		final static class Orientation extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("horizontal",  0x0);
				mapping.put("vertical",  0x1);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_horizontalStyle extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("spread",  0x0);
				mapping.put("spread_inside",  0x1);
				mapping.put("packed",  0x2);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_verticalStyle extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("spread",  0x0);
				mapping.put("spread_inside",  0x1);
				mapping.put("packed",  0x2);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_wrapMode extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("none",  0x0);
				mapping.put("chain",  0x1);
				mapping.put("aligned",  0x2);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_verticalAlign extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("top",  0x0);
				mapping.put("bottom",  0x1);
				mapping.put("center",  0x2);
				mapping.put("baseline",  0x3);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_horizontalAlign extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("start",  0x0);
				mapping.put("end",  0x1);
				mapping.put("center",  0x2);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_firstHorizontalStyle extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("spread",  0x0);
				mapping.put("spread_inside",  0x1);
				mapping.put("packed",  0x2);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
		@SuppressLint("NewApi")
		final static class Flow_firstVerticalStyle extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("spread",  0x0);
				mapping.put("spread_inside",  0x1);
				mapping.put("packed",  0x2);
				}
		@Override
		public Map<String, Integer> getMapping() {
				return mapping;
				}

		@Override
		public Integer getDefault() {
				return 0;
				}
				}
	
	@Override
	public void loadAttributes(String attributeName) {
		ViewImpl.register(attributeName);


		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.orientation", new Orientation());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("orientation").withType("androidx.constraintlayout.helper.widget.Flow.orientation"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_horizontalStyle", new Flow_horizontalStyle());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_horizontalStyle").withType("androidx.constraintlayout.helper.widget.Flow.flow_horizontalStyle"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_verticalStyle", new Flow_verticalStyle());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_verticalStyle").withType("androidx.constraintlayout.helper.widget.Flow.flow_verticalStyle"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_wrapMode", new Flow_wrapMode());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_wrapMode").withType("androidx.constraintlayout.helper.widget.Flow.flow_wrapMode"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_maxElementsWrap").withType("int"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_horizontalGap").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_verticalGap").withType("dimension"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_verticalAlign", new Flow_verticalAlign());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_verticalAlign").withType("androidx.constraintlayout.helper.widget.Flow.flow_verticalAlign"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_horizontalAlign", new Flow_horizontalAlign());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_horizontalAlign").withType("androidx.constraintlayout.helper.widget.Flow.flow_horizontalAlign"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_verticalBias").withType("float"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_horizontalBias").withType("float"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_firstHorizontalStyle", new Flow_firstHorizontalStyle());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_firstHorizontalStyle").withType("androidx.constraintlayout.helper.widget.Flow.flow_firstHorizontalStyle"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Flow.flow_firstVerticalStyle", new Flow_firstVerticalStyle());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_firstVerticalStyle").withType("androidx.constraintlayout.helper.widget.Flow.flow_firstVerticalStyle"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_firstHorizontalBias").withType("float"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("flow_firstVerticalBias").withType("float"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("constraint_referenced_ids").withType("FlowImpl.constraintReferencedIds"));
	}
	
	public FlowImpl() {
		super(GROUP_NAME, LOCAL_NAME);
	}
	public  FlowImpl(String localname) {
		super(GROUP_NAME, localname);
	}
	public  FlowImpl(String groupName, String localname) {
		super(groupName, localname);
	}

		
	public class FlowExt extends androidx.constraintlayout.helper.widget.Flow implements ILifeCycleDecorator, com.ashera.widget.IMaxDimension{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		
		public IWidget getWidget() {
			return FlowImpl.this;
		}
		private int mMaxWidth = -1;
		private int mMaxHeight = -1;
		@Override
		public void setMaxWidth(int width) {
			mMaxWidth = width;
		}
		@Override
		public void setMaxHeight(int height) {
			mMaxHeight = height;
		}
		@Override
		public int getMaxWidth() {
			return mMaxWidth;
		}
		@Override
		public int getMaxHeight() {
			return mMaxHeight;
		}

		public FlowExt(Context context, android.util.AttributeSet attrs, int defStyleAttr) {
	        super(context, attrs, defStyleAttr);
	    }

		public FlowExt(Context context) {
			super(context);
			
		}
		
		@Override
		public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {

			if(mMaxWidth > 0) {
	        	widthMeasureSpec = MeasureSpec.makeMeasureSpec(mMaxWidth, MeasureSpec.AT_MOST);
	        }
	        if(mMaxHeight > 0) {
	            heightMeasureSpec = MeasureSpec.makeMeasureSpec(mMaxHeight, MeasureSpec.AT_MOST);

	        }

	        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
			IWidgetLifeCycleListener listener = (IWidgetLifeCycleListener) getListener();
			if (listener != null) {
			    measureFinished.setWidth(getMeasuredWidth());
			    measureFinished.setHeight(getMeasuredHeight());
				listener.eventOccurred(EventId.measureFinished, measureFinished);
			}
		}
		
		@Override
		protected void onLayout(boolean changed, int l, int t, int r, int b) {
			super.onLayout(changed, l, t, r, b);
			
			ViewImpl.nativeMakeFrame(asNativeWidget(), l, t, r, b);
			
			replayBufferedEvents();
			
			IWidgetLifeCycleListener listener = (IWidgetLifeCycleListener) getListener();
			if (listener != null) {
				onLayoutEvent.setB(b);
				onLayoutEvent.setL(l);
				onLayoutEvent.setR(r);
				onLayoutEvent.setT(t);
				onLayoutEvent.setChanged(changed);
				listener.eventOccurred(EventId.onLayout, onLayoutEvent);
			}
			
			if (isInvalidateOnFrameChange() && isInitialised()) {
				FlowImpl.this.invalidate();
			}
		}	
		
		@Override
		public void onDraw(Canvas canvas) {
			Runnable runnable = () -> super.onDraw(canvas);
			executeMethodListeners("onDraw", runnable, canvas);
		}

		@Override
		public void draw(Canvas canvas) {
			Runnable runnable = () -> super.draw(canvas);
			executeMethodListeners("draw", runnable, canvas);
		}

		@SuppressLint("WrongCall")
		@Override
		public void execute(String method, Object... args) {
			switch (method) {
				case "onDraw":
					setOnMethodCalled(true);
					super.onDraw((Canvas) args[0]);
					break;

				case "draw":
					setOnMethodCalled(true);
					super.draw((Canvas) args[0]);
					break;

				default:
					break;
			}
		}

		public void updateMeasuredDimension(int width, int height) {
			setMeasuredDimension(width, height);
		}


		@Override
		public ILifeCycleDecorator newInstance(IWidget widget) {
			throw new UnsupportedOperationException();
		}

		@Override
		public void setAttribute(WidgetAttribute widgetAttribute,
				String strValue, Object objValue) {
			throw new UnsupportedOperationException();
		}		
		

		@Override
		public List<String> getMethods() {
			throw new UnsupportedOperationException();
		}
		
		@Override
		public void initialized() {
			throw new UnsupportedOperationException();
		}
		
        @Override
        public Object getAttribute(WidgetAttribute widgetAttribute) {
            throw new UnsupportedOperationException();
        }
        @Override
        public void drawableStateChanged() {
        	super.drawableStateChanged();
        	if (!isWidgetDisposed()) {
        		ViewImpl.drawableStateChanged(FlowImpl.this);
        	}
        }
        
    	public void setState0(float value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState0(int value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState0(double value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	
    	public void setState0(Float value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState0(Integer value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState0(Double value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState0(Object value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState1(float value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState1(int value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState1(double value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	
    	public void setState1(Float value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState1(Integer value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState1(Double value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState2(float value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState2(int value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState2(double value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	
    	public void setState2(Float value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState2(Integer value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState2(Double value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState3(float value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	public void setState3(int value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	public void setState3(double value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	
    	public void setState3(Float value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	public void setState3(Integer value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	public void setState3(Double value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
    	}
    	public void setState4(float value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
    	public void setState4(int value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
    	public void setState4(double value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
    	
    	public void setState4(Float value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
    	public void setState4(Integer value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
    	public void setState4(Double value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
    	public void setState4(Object value) {
    		ViewImpl.setState(FlowImpl.this, 4, value);
    	}
        	public void state0() {
        		ViewImpl.state(FlowImpl.this, 0);
        	}
        	public void state1() {
        		ViewImpl.state(FlowImpl.this, 1);
        	}
        	public void state2() {
        		ViewImpl.state(FlowImpl.this, 2);
        	}
        	public void state3() {
        		ViewImpl.state(FlowImpl.this, 3);
        	}
        	public void state4() {
        		ViewImpl.state(FlowImpl.this, 4);
        	}
                        
        public void stateYes() {
        	ViewImpl.stateYes(FlowImpl.this);
        	
        }
        
        public void stateNo() {
        	ViewImpl.stateNo(FlowImpl.this);
        }
     
	
	}	@Override
	public Class getViewClass() {
		return FlowExt.class;
	}

	@Override
	public IWidget newInstance() {
		return new FlowImpl(groupName, localName);
	}
	
	@SuppressLint("NewApi")
	@Override
	public void create(IFragment fragment, Map<String, Object> params) {
		super.create(fragment, params);
Context context = (Context) fragment.getRootActivity();
	Object systemStyle = params.get("systemStyle");
	Object systemAndroidAttrStyle = params.get("systemAndroidAttrStyle");
	
	if (systemStyle == null && systemAndroidAttrStyle == null) {
		flow = new FlowExt(context);
	} else {
		int defStyleAttr = 0;
		int defStyleRes = 0;
		
		if (systemStyle != null) {
			defStyleRes = context.getResources().getIdentifier((String) systemStyle, "style", context.getPackageName());	
		}
		
		if (systemAndroidAttrStyle != null) {
			defStyleAttr = context.getResources().getIdentifier((String) systemAndroidAttrStyle, "attr", "android");	
		}
		
		if (defStyleRes == 0) {
			flow = new FlowExt(context, null, defStyleAttr);	
		} else {
		}
		
	}

		nativeCreate(params);	
		ViewImpl.registerCommandConveter(this);
	}

	@Override
	@SuppressLint("NewApi")
	public void setAttribute(WidgetAttribute key, String strValue, Object objValue, ILifeCycleDecorator decorator) {
		Object nativeWidget = asNativeWidget();
		ViewImpl.setAttribute(this,  key, strValue, objValue, decorator);
		
		switch (key.getAttributeName()) {
			case "orientation": {
				


	flow.setOrientation((int)objValue);



			}
			break;
			case "flow_horizontalStyle": {
				


	flow.setHorizontalStyle((int)objValue);



			}
			break;
			case "flow_verticalStyle": {
				


	flow.setVerticalStyle((int)objValue);



			}
			break;
			case "flow_wrapMode": {
				


	flow.setWrapMode((int)objValue);



			}
			break;
			case "flow_maxElementsWrap": {
				


	flow.setMaxElementsWrap((int)objValue);



			}
			break;
			case "flow_horizontalGap": {
				


	flow.setHorizontalGap((int)objValue);



			}
			break;
			case "flow_verticalGap": {
				


	flow.setVerticalGap((int)objValue);



			}
			break;
			case "flow_verticalAlign": {
				


	flow.setVerticalAlign((int)objValue);



			}
			break;
			case "flow_horizontalAlign": {
				


	flow.setHorizontalAlign((int)objValue);



			}
			break;
			case "flow_verticalBias": {
				


	flow.setVerticalBias((float)objValue);



			}
			break;
			case "flow_horizontalBias": {
				


	flow.setHorizontalBias((float)objValue);



			}
			break;
			case "flow_firstHorizontalStyle": {
				


	flow.setFirstHorizontalStyle((int)objValue);



			}
			break;
			case "flow_firstVerticalStyle": {
				


	flow.setFirstVerticalStyle((int)objValue);



			}
			break;
			case "flow_firstHorizontalBias": {
				


	flow.setFirstHorizontalBias((float)objValue);



			}
			break;
			case "flow_firstVerticalBias": {
				


	flow.setFirstVerticalBias((float)objValue);



			}
			break;
			case "constraint_referenced_ids": {
				


		 setConstraintReferenced_ids(objValue);



			}
			break;
		default:
			break;
		}
		
	}
	
	@Override
	@SuppressLint("NewApi")
	public Object getAttribute(WidgetAttribute key, ILifeCycleDecorator decorator) {
		Object nativeWidget = asNativeWidget();
		Object attributeValue = ViewImpl.getAttribute(this, nativeWidget, key, decorator);
		if (attributeValue != null) {
			return attributeValue;
		}
		switch (key.getAttributeName()) {
			case "constraint_referenced_ids": {
return getConstraintReferencedIds();				}
		}
		
		return null;
	}
	
	@Override
	public Object asWidget() {
		return flow;
	}

	

    
    static {
        ConverterFactory.register("FlowImpl.constraintReferencedIds", new ConstraintReferencedIdsConverter());
    }
    private void setConstraintReferenced_ids(Object objValue) {
        flow.setReferencedIds((int[]) objValue);
    }
    
    private Object getConstraintReferencedIds() {
        return flow.getReferencedIds();
    }
    

	
	    @Override
	    public Object asNativeWidget() {
	        return flow;
	    }

	    private void nativeCreate(Map<String, Object> params) {
	    }
	@Override
	public void setId(String id){
		if (id != null && !id.equals("")){
			super.setId(id);
			flow.setId((int) quickConvert(id, "id"));
		}
	}
	
 
    @Override
    public void requestLayout() {
    	if (isInitialised()) {
    		ViewImpl.requestLayout(this, asNativeWidget());
    		
    	}
    }
    
    @Override
    public void invalidate() {
    	if (isInitialised()) {
			ViewImpl.invalidate(this, asNativeWidget());

    	}
    }

	
		//end - body

}
