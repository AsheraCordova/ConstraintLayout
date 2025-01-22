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
public class PlaceholderImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.widget.Placeholder"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.widget.Placeholder";

	protected androidx.constraintlayout.widget.Placeholder placeholder;
	
		@SuppressLint("NewApi")
		final static class Placeholder_emptyVisibility extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("visible",  0x0);
				mapping.put("invisible",  0x4);
				mapping.put("gone",  0x8);
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


		ConverterFactory.register("androidx.constraintlayout.widget.Placeholder.placeholder_emptyVisibility", new Placeholder_emptyVisibility());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("placeholder_emptyVisibility").withType("androidx.constraintlayout.widget.Placeholder.placeholder_emptyVisibility"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("content").withType("id"));
	}
	
	public PlaceholderImpl() {
		super(GROUP_NAME, LOCAL_NAME);
	}
	public  PlaceholderImpl(String localname) {
		super(GROUP_NAME, localname);
	}
	public  PlaceholderImpl(String groupName, String localname) {
		super(groupName, localname);
	}

		
	public class PlaceholderExt extends androidx.constraintlayout.widget.Placeholder implements ILifeCycleDecorator, com.ashera.widget.IMaxDimension{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		
		public IWidget getWidget() {
			return PlaceholderImpl.this;
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

		public PlaceholderExt(Context context, android.util.AttributeSet attrs, int defStyleAttr) {
	        super(context, attrs, defStyleAttr);
	    }

		public PlaceholderExt(Context context) {
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
				PlaceholderImpl.this.invalidate();
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
        		ViewImpl.drawableStateChanged(PlaceholderImpl.this);
        	}
        }
        
    	public void setState0(float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState0(int value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState0(double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	
    	public void setState0(Float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState0(Integer value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState0(Double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState0(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState1(float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState1(int value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState1(double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	
    	public void setState1(Float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState1(Integer value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState1(Double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState2(float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState2(int value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState2(double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	
    	public void setState2(Float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState2(Integer value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState2(Double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState3(float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	public void setState3(int value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	public void setState3(double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	
    	public void setState3(Float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	public void setState3(Integer value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	public void setState3(Double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
    	}
    	public void setState4(float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
    	public void setState4(int value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
    	public void setState4(double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
    	
    	public void setState4(Float value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
    	public void setState4(Integer value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
    	public void setState4(Double value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
    	public void setState4(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 4, value);
    	}
        	public void state0() {
        		ViewImpl.state(PlaceholderImpl.this, 0);
        	}
        	public void state1() {
        		ViewImpl.state(PlaceholderImpl.this, 1);
        	}
        	public void state2() {
        		ViewImpl.state(PlaceholderImpl.this, 2);
        	}
        	public void state3() {
        		ViewImpl.state(PlaceholderImpl.this, 3);
        	}
        	public void state4() {
        		ViewImpl.state(PlaceholderImpl.this, 4);
        	}
                        
        public void stateYes() {
        	ViewImpl.stateYes(PlaceholderImpl.this);
        	
        }
        
        public void stateNo() {
        	ViewImpl.stateNo(PlaceholderImpl.this);
        }
     
	
	}	@Override
	public Class getViewClass() {
		return PlaceholderExt.class;
	}

	@Override
	public IWidget newInstance() {
		return new PlaceholderImpl(groupName, localName);
	}
	
	@SuppressLint("NewApi")
	@Override
	public void create(IFragment fragment, Map<String, Object> params) {
		super.create(fragment, params);
Context context = (Context) fragment.getRootActivity();
	Object systemStyle = params.get("systemStyle");
	Object systemAndroidAttrStyle = params.get("systemAndroidAttrStyle");
	
	if (systemStyle == null && systemAndroidAttrStyle == null) {
		placeholder = new PlaceholderExt(context);
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
			placeholder = new PlaceholderExt(context, null, defStyleAttr);	
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
			case "placeholder_emptyVisibility": {
				


	placeholder.setEmptyVisibility((int)objValue);



			}
			break;
			case "content": {
				


		 setContent(objValue);



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
			case "placeholder_emptyVisibility": {
return placeholder.getEmptyVisibility();				}
			case "content": {
return getContent();				}
		}
		
		return null;
	}
	
	@Override
	public Object asWidget() {
		return placeholder;
	}

	
	
	    @Override
	    public Object asNativeWidget() {
	        return placeholder;
	    }

	    private void nativeCreate(Map<String, Object> params) {
	    }
	@Override
	public void setId(String id){
		if (id != null && !id.equals("")){
			super.setId(id);
			placeholder.setId((int) quickConvert(id, "id"));
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
	//start - codecopy
	private void setContent(Object objValue) {
		placeholder.setContentId((int) objValue);
	}
	
	
	private Object getContent() {
		if (placeholder.getContent() == null) {
			return null;
		}
		return placeholder.getContent().getId();
	}
	//end - codecopy  
}
