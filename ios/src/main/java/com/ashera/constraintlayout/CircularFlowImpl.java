package com.ashera.constraintlayout;
//start - imports

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import r.android.content.Context;



import r.android.os.Build;
import r.android.view.View;
import r.android.text.*;

import com.ashera.core.IFragment;
import com.ashera.converter.*;

import r.android.annotation.SuppressLint;

import com.ashera.layout.*;
import com.ashera.plugin.*;
import com.ashera.widget.bus.*;
import com.ashera.widget.*;
import com.ashera.widget.bus.Event.*;
import com.ashera.widget.IWidgetLifeCycleListener.EventId;
import com.ashera.widget.IWidgetLifeCycleListener.EventId.*;

/*-[
#include "java/lang/Integer.h"
#include "java/lang/Float.h"
#include "java/lang/Boolean.h"
#include <UIKit/UIKit.h>
#include "HasLifeCycleDecorators.h"
]-*/

import com.google.j2objc.annotations.Property;

import static com.ashera.widget.IWidget.*;
//end - imports
/*-[
#include "ASUIView.h"
]-*/
@SuppressLint("NewApi")
public class CircularFlowImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.helper.widget.CircularFlow"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.helper.widget.CircularFlow";

	protected @Property Object uiView;
	protected androidx.constraintlayout.helper.widget.CircularFlow circularFlow;		
	
	
	@Override
	public void loadAttributes(String attributeName) {
		ViewImpl.register(attributeName);


		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("circularflow_radiusInDP").withType("string"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("circularflow_angles").withType("string"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("circularflow_viewCenter").withType("id"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("circularflow_defaultRadius").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("circularflow_defaultAngle").withType("float"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("constraint_referenced_ids").withType("CircularFlowImpl.constraintReferencedIds"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("addViewToCircularFlow").withType("object"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("updateReference").withType("object"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("updateRadius").withType("object"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("updateAngle").withType("object"));
	}
	
	public CircularFlowImpl() {
		super(GROUP_NAME, LOCAL_NAME);
	}
	public  CircularFlowImpl(String localname) {
		super(GROUP_NAME, localname);
	}
	public  CircularFlowImpl(String groupName, String localname) {
		super(groupName, localname);
	}

@com.google.j2objc.annotations.WeakOuter		
	public class CircularFlowExt extends androidx.constraintlayout.helper.widget.CircularFlow implements ILifeCycleDecorator, com.ashera.widget.IMaxDimension{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		private List<IWidget> overlays;
		public IWidget getWidget() {
			return CircularFlowImpl.this;
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

		public CircularFlowExt() {
			super();
			
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
			ViewImpl.setDrawableBounds(CircularFlowImpl.this, l, t, r, b);
			if (!isOverlay()) {
			ViewImpl.nativeMakeFrame(asNativeWidget(), l, t, r, b);
			}
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(CircularFlowImpl.this);
	        overlays = ViewImpl.drawOverlay(CircularFlowImpl.this, overlays);
			
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
				CircularFlowImpl.this.invalidate();
			}
		}	
		
		@Override
		public void execute(String method, Object... canvas) {
			
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
        		ViewImpl.drawableStateChanged(CircularFlowImpl.this);
        	}
        }
        private Map<String, IWidget> templates;
    	@Override
    	public r.android.view.View inflateView(java.lang.String layout) {
    		if (templates == null) {
    			templates = new java.util.HashMap<String, IWidget>();
    		}
    		IWidget template = templates.get(layout);
    		if (template == null) {
    			template = (IWidget) quickConvert(layout, "template");
    			templates.put(layout, template);
    		}
    		
    		IWidget widget = template.loadLazyWidgets(CircularFlowImpl.this.getParent());
			return (View) widget.asWidget();
    	}   
        
    	@Override
		public void remeasure() {
    		if (getFragment() != null) {
    			getFragment().remeasure();
    		}
		}
    	
        @Override
		public void removeFromParent() {
        	CircularFlowImpl.this.getParent().remove(CircularFlowImpl.this);
		}
        @Override
        public void getLocationOnScreen(int[] appScreenLocation) {
        	appScreenLocation[0] = ViewImpl.getLocationXOnScreen(asNativeWidget());
        	appScreenLocation[1] = ViewImpl.getLocationYOnScreen(asNativeWidget());
        }
        @Override
        public void getWindowVisibleDisplayFrame(r.android.graphics.Rect displayFrame){
        	
        	displayFrame.left = ViewImpl.getLocationXOnScreen(asNativeWidget());
        	displayFrame.top = ViewImpl.getLocationYOnScreen(asNativeWidget());
        	displayFrame.right = displayFrame.left + getWidth();
        	displayFrame.bottom = displayFrame.top + getHeight();
        }
        @Override
		public void offsetTopAndBottom(int offset) {
			super.offsetTopAndBottom(offset);
			ViewImpl.nativeMakeFrame(asNativeWidget(), getLeft(), getTop(), getRight(), getBottom());
		}
		@Override
		public void offsetLeftAndRight(int offset) {
			super.offsetLeftAndRight(offset);
			ViewImpl.nativeMakeFrame(asNativeWidget(), getLeft(), getTop(), getRight(), getBottom());
		}
		@Override
		public void setMyAttribute(String name, Object value) {
			if (name.equals("state0")) {
				setState0(value);
				return;
			}
			if (name.equals("state1")) {
				setState1(value);
				return;
			}
			if (name.equals("state2")) {
				setState2(value);
				return;
			}
			if (name.equals("state3")) {
				setState3(value);
				return;
			}
			if (name.equals("state4")) {
				setState4(value);
				return;
			}
			CircularFlowImpl.this.setAttribute(name, value, !(value instanceof String));
		}
        @Override
        public void setVisibility(int visibility) {
            super.setVisibility(visibility);
            ViewImpl.nativeSetVisibility(asNativeWidget(), visibility != View.VISIBLE);
            
        }
        
    	public void setState0(Object value) {
    		ViewImpl.setState(CircularFlowImpl.this, 0, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(CircularFlowImpl.this, 1, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(CircularFlowImpl.this, 2, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(CircularFlowImpl.this, 3, value);
    	}
    	public void setState4(Object value) {
    		ViewImpl.setState(CircularFlowImpl.this, 4, value);
    	}
        	public void state0() {
        		ViewImpl.state(CircularFlowImpl.this, 0);
        	}
        	public void state1() {
        		ViewImpl.state(CircularFlowImpl.this, 1);
        	}
        	public void state2() {
        		ViewImpl.state(CircularFlowImpl.this, 2);
        	}
        	public void state3() {
        		ViewImpl.state(CircularFlowImpl.this, 3);
        	}
        	public void state4() {
        		ViewImpl.state(CircularFlowImpl.this, 4);
        	}
                        
        public void stateYes() {
        	ViewImpl.stateYes(CircularFlowImpl.this);
        	
        }
        
        public void stateNo() {
        	ViewImpl.stateNo(CircularFlowImpl.this);
        }
     
	
	}	@Override
	public Class getViewClass() {
		return CircularFlowExt.class;
	}

	@Override
	public IWidget newInstance() {
		return new CircularFlowImpl(groupName, localName);
	}
	
	@SuppressLint("NewApi")
	@Override
	public void create(IFragment fragment, Map<String, Object> params) {
		super.create(fragment, params);
		circularFlow = new CircularFlowExt();
		nativeCreate(params);	
		ViewImpl.registerCommandConveter(this);
		setWidgetOnNativeClass();
	}
	private native void setWidgetOnNativeClass() /*-[
		((ASUIView*) self.uiView).widget = self;
	]-*/;

	@Override
	@SuppressLint("NewApi")
	public void setAttribute(WidgetAttribute key, String strValue, Object objValue, ILifeCycleDecorator decorator) {
		Object nativeWidget = asNativeWidget();
		ViewImpl.setAttribute(this,  key, strValue, objValue, decorator);
		
		switch (key.getAttributeName()) {
			case "circularflow_radiusInDP": {
				


		 setRadiusInDP(objValue);



			}
			break;
			case "circularflow_angles": {
				


		 setAngles(objValue);



			}
			break;
			case "circularflow_viewCenter": {
				


		 setViewCenter(objValue);



			}
			break;
			case "circularflow_defaultRadius": {
				


	circularFlow.setDefaultRadius((int)objValue);



			}
			break;
			case "circularflow_defaultAngle": {
				


	circularFlow.setDefaultAngle((float)objValue);



			}
			break;
			case "constraint_referenced_ids": {
				


		 setConstraintReferenced_ids(objValue);



			}
			break;
			case "addViewToCircularFlow": {
				
		if (objValue instanceof Map) {
			Map<String, Object> data = ((Map<String, Object>) objValue);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object radius = quickConvert(data.get("radius"), "int");
		Object angle = quickConvert(data.get("angle"), "float");


		 addViewToCircularFlow ((int) viewId,(int)radius, (float)angle);


}
if (objValue instanceof java.util.List) {
	java.util.List<Object> list = (java.util.List<Object>) objValue;
	for (Object object : list) {
		Map<String, Object> data = PluginInvoker.getMap(object);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object radius = quickConvert(data.get("radius"), "int");
		Object angle = quickConvert(data.get("angle"), "float");


		 addViewToCircularFlow ((int) viewId,(int)radius, (float)angle);


	}
}
			}
			break;
			case "updateReference": {
				
		if (objValue instanceof Map) {
			Map<String, Object> data = ((Map<String, Object>) objValue);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object radius = quickConvert(data.get("radius"), "int");
		Object angle = quickConvert(data.get("angle"), "float");


		 updateReference ((int) viewId,(int)radius, (float)angle);


}
if (objValue instanceof java.util.List) {
	java.util.List<Object> list = (java.util.List<Object>) objValue;
	for (Object object : list) {
		Map<String, Object> data = PluginInvoker.getMap(object);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object radius = quickConvert(data.get("radius"), "int");
		Object angle = quickConvert(data.get("angle"), "float");


		 updateReference ((int) viewId,(int)radius, (float)angle);


	}
}
			}
			break;
			case "updateRadius": {
				
		if (objValue instanceof Map) {
			Map<String, Object> data = ((Map<String, Object>) objValue);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object radius = quickConvert(data.get("radius"), "int");


		 updateRadius ((int) viewId,(int)radius);


}
if (objValue instanceof java.util.List) {
	java.util.List<Object> list = (java.util.List<Object>) objValue;
	for (Object object : list) {
		Map<String, Object> data = PluginInvoker.getMap(object);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object radius = quickConvert(data.get("radius"), "int");


		 updateRadius ((int) viewId,(int)radius);


	}
}
			}
			break;
			case "updateAngle": {
				
		if (objValue instanceof Map) {
			Map<String, Object> data = ((Map<String, Object>) objValue);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object angle = quickConvert(data.get("angle"), "float");


		 updateAngle ((int) viewId, (float)angle);


}
if (objValue instanceof java.util.List) {
	java.util.List<Object> list = (java.util.List<Object>) objValue;
	for (Object object : list) {
		Map<String, Object> data = PluginInvoker.getMap(object);
		Object viewId = quickConvert(data.get("viewId"), "id");
		Object angle = quickConvert(data.get("angle"), "float");


		 updateAngle ((int) viewId, (float)angle);


	}
}
			}
			break;
		default:
			break;
		}
		postSetAttribute(key, strValue, objValue, decorator);
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
		return circularFlow;
	}

	

    
    static {
        ConverterFactory.register("CircularFlowImpl.constraintReferencedIds", new ConstraintReferencedIdsConverter());
    }
    private void setConstraintReferenced_ids(Object objValue) {
        circularFlow.setReferencedIds((int[]) objValue);
    }
    
    private Object getConstraintReferencedIds() {
        return circularFlow.getReferencedIds();
    }
    


	private void setViewCenter(Object objValue) {
		circularFlow.setViewCenter((int) objValue);
	}
	
	private void setAngles(Object objValue) {
		circularFlow.setMyAngles((String) objValue);
	}
	
	private void setRadiusInDP(Object objValue) {
		circularFlow.setMyRadius((String) objValue);
	}
	 
	@Override
	public void afterParentInit() {
		super.afterParentInit();
		circularFlow.onAttachedToWindow();
	}
	
	@Override
	public boolean isAfterParentInitRequired() {
		return true;
	}
	
	private void postSetAttribute(WidgetAttribute key, String strValue, Object objValue,
			ILifeCycleDecorator decorator) {
		switch (key.getAttributeName()) {
		case "circularflow_defaultRadius": 
			circularFlow.setReferenceDefaultRadius((int) objValue);
			break;
		case "circularflow_defaultAngle": 
			circularFlow.setReferenceDefaultAngle((float) objValue);
			break;
		}
		if (isInitialised()) {
			circularFlow.onAttachedToWindow();
		}
	}

	private void addViewToCircularFlow(int viewId, int radius, float angle) {
		circularFlow.addViewToCircularFlow((View) getParent().findWidgetById(IdGenerator.getName(viewId)).asWidget(), radius, angle);
	}

	
	private void updateAngle(int viewId, float angle) {
		circularFlow.updateAngle((View) getParent().findWidgetById(IdGenerator.getName(viewId)).asWidget(), angle);
		
	}

	private void updateRadius(int viewId, int radius) {
		circularFlow.updateRadius((View) getParent().findWidgetById(IdGenerator.getName(viewId)).asWidget(), radius);
		
	}

	private void updateReference(int viewId, int radius, float angle) {
		circularFlow.updateReference((View) getParent().findWidgetById(IdGenerator.getName(viewId)).asWidget(), radius, angle);
		
	}
	

	
		@Override
	    public Object asNativeWidget() {
	        return uiView;
	    }
	    public native boolean checkIosVersion(String v) /*-[
			return ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending);
		]-*/;
	@Override
	public void setId(String id){
		if (id != null && !id.equals("")){
			super.setId(id);
			circularFlow.setId((int) quickConvert(id, "id"));
		}
	}
	
    @Override
    public void setVisible(boolean b) {
        ((View)asWidget()).setVisibility(b ? View.VISIBLE : View.GONE);
    }
 
    @Override
    public void requestLayout() {
    	if (isInitialised()) {
    		ViewImpl.requestLayout(this, asNativeWidget());
    		
    		nativeRequestLayout();
    	}
    }
    
    @Override
    public void invalidate() {
    	if (isInitialised()) {
			ViewImpl.invalidate(this, asNativeWidget());

    	}
    }

	
		//end - body
	public native void nativeCreate(Map<String, Object> params)/*-[
		ASUIView* uiView = [ASUIView new];
		uiView.backgroundColor = [UIColor clearColor];
		uiView_ = uiView;
	]-*/;
	
	public void nativeRequestLayout() {
	   circularFlow.getParent().requestLayout();
	}
}
