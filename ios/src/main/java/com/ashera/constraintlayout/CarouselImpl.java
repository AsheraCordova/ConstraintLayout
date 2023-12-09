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
public class CarouselImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.helper.widget.Carousel"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.helper.widget.Carousel";

	protected @Property Object uiView;
	protected androidx.constraintlayout.helper.widget.Carousel measurableView;		
	
		@SuppressLint("NewApi")
		final static class Carousel_touchUpMode extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("immediateStop",  0x1);
				mapping.put("carryVelocity",  0x2);
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
		final static class Carousel_emptyViewsBehavior extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
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


		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_firstView").withType("id"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_previousState").withType("id"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_nextState").withType("id"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_infinite").withType("boolean"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_forwardTransition").withType("id"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_backwardTransition").withType("id"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_touchUp_dampeningFactor").withType("float"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Carousel.carousel_touchUpMode", new Carousel_touchUpMode());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_touchUpMode").withType("androidx.constraintlayout.helper.widget.Carousel.carousel_touchUpMode"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_touchUp_velocityThreshold").withType("float"));
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Carousel.carousel_emptyViewsBehavior", new Carousel_emptyViewsBehavior());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_emptyViewsBehavior").withType("androidx.constraintlayout.helper.widget.Carousel.carousel_emptyViewsBehavior"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("constraint_referenced_ids").withType("BarrierImpl.constraintReferencedIds").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("jumpToIndex").withType("int"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("jumpTolast").withType("nil"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("jumpToNext").withType("nil"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("jumpToPrevious").withType("nil"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("transitionToIndex").withType("object"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("transitionToLast").withType("int"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("transitionToNext").withType("int"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("transitionToPrevious").withType("int"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("dataKey").withType("String"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("childDataKey").withType("String"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("dataScopeKey").withType("String"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("childDataScopeKey").withType("String"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("onNewItem").withType("string"));
	}
	
	public CarouselImpl() {
		super(GROUP_NAME, LOCAL_NAME);
	}
	public  CarouselImpl(String localname) {
		super(GROUP_NAME, localname);
	}
	public  CarouselImpl(String groupName, String localname) {
		super(groupName, localname);
	}

@com.google.j2objc.annotations.WeakOuter		
	public class CarouselExt extends androidx.constraintlayout.helper.widget.Carousel implements ILifeCycleDecorator{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		public IWidget getWidget() {
			return CarouselImpl.this;
		}

		public CarouselExt() {
			super();
			
		}
		
		@Override
		public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {


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
			ViewImpl.setDrawableBounds(CarouselImpl.this, l, t, r, b);
			ViewImpl.nativeMakeFrame(asNativeWidget(), l, t, r, b);
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(CarouselImpl.this);
			
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
				CarouselImpl.this.invalidate();
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
        	ViewImpl.drawableStateChanged(CarouselImpl.this);
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
    		IWidget widget = template.loadLazyWidgets(CarouselImpl.this.getParent());
    		return (View) widget.asWidget();
    	}        
        
    	@Override
		public void remeasure() {
			getFragment().remeasure();
		}
    	
        @Override
		public void removeFromParent() {
        	CarouselImpl.this.getParent().remove(CarouselImpl.this);
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
			CarouselImpl.this.setAttribute(name, value, true);
		}
        @Override
        public void setVisibility(int visibility) {
            super.setVisibility(visibility);
            ViewImpl.nativeSetVisibility(asNativeWidget(), visibility != View.VISIBLE);
            
        }
        
        	public void state0() {
        		ViewImpl.state(CarouselImpl.this, 0);
        	}
        	public void state1() {
        		ViewImpl.state(CarouselImpl.this, 1);
        	}
        	public void state2() {
        		ViewImpl.state(CarouselImpl.this, 2);
        	}
        	public void state3() {
        		ViewImpl.state(CarouselImpl.this, 3);
        	}
        	public void state4() {
        		ViewImpl.state(CarouselImpl.this, 4);
        	}
                        
        public void stateYes() {
        	ViewImpl.stateYes(CarouselImpl.this);
        	
        }
        
        public void stateNo() {
        	ViewImpl.stateNo(CarouselImpl.this);
        }
	}	@Override
	public Class getViewClass() {
		return CarouselExt.class;
	}

	@Override
	public IWidget newInstance() {
		return new CarouselImpl(groupName, localName);
	}
	
	@SuppressLint("NewApi")
	@Override
	public void create(IFragment fragment, Map<String, Object> params) {
		super.create(fragment, params);
		measurableView = new CarouselExt();
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
			case "carousel_firstView": {
				


		 setFirstView(objValue);



			}
			break;
			case "carousel_previousState": {
				


		 setPreviousState(objValue);



			}
			break;
			case "carousel_nextState": {
				


		 setNextState(objValue);



			}
			break;
			case "carousel_infinite": {
				


		 setInfinite(objValue);



			}
			break;
			case "carousel_forwardTransition": {
				


		 setForwardTransition(objValue);



			}
			break;
			case "carousel_backwardTransition": {
				


		 setBackwardTransition(objValue);



			}
			break;
			case "carousel_touchUp_dampeningFactor": {
				


		 setTouchUp_dampeningFactor(objValue);



			}
			break;
			case "carousel_touchUpMode": {
				


		 setTouchUpMode(objValue);



			}
			break;
			case "carousel_touchUp_velocityThreshold": {
				


		 setTouchUp_velocityThreshold(objValue);



			}
			break;
			case "carousel_emptyViewsBehavior": {
				


		 setEmptyViewsBehavior(objValue);



			}
			break;
			case "constraint_referenced_ids": {
				


		 carousel.setReferencedIds((int[]) objValue);



			}
			break;
			case "jumpToIndex": {
				


		 jumpToIndex((int) objValue);



			}
			break;
			case "jumpTolast": {
				


		 jumpTolast();



			}
			break;
			case "jumpToNext": {
				


		 jumpToNext();



			}
			break;
			case "jumpToPrevious": {
				


		 jumpToPrevious();



			}
			break;
			case "transitionToIndex": {
				
		if (objValue instanceof Map) {
			Map<String, Object> data = ((Map<String, Object>) objValue);
		Object index = quickConvert(data.get("index"), "int");
		Object delay = quickConvert(data.get("delay"), "int");


		 transitionToIndex((int) index, (int) delay);


}
if (objValue instanceof java.util.List) {
	java.util.List<Object> list = (java.util.List<Object>) objValue;
	for (Object object : list) {
		Map<String, Object> data = PluginInvoker.getMap(object);
		Object index = quickConvert(data.get("index"), "int");
		Object delay = quickConvert(data.get("delay"), "int");


		 transitionToIndex((int) index, (int) delay);


	}
}
			}
			break;
			case "transitionToLast": {
				


		 transitionToLast((int) objValue);



			}
			break;
			case "transitionToNext": {
				


		 transitionToNext((int) objValue);



			}
			break;
			case "transitionToPrevious": {
				


		 transitionToPrevious((int) objValue);



			}
			break;
			case "dataKey": {
				


		 setDataKey(objValue);



			}
			break;
			case "childDataKey": {
				


		 setChildDataKey(objValue);



			}
			break;
			case "dataScopeKey": {
				


		 setDataScopeKey(objValue);



			}
			break;
			case "childDataScopeKey": {
				


		 setChildDataScopeKey(objValue);



			}
			break;
			case "onNewItem": {
				


		setNewItemListener(objValue);



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
			case "carousel_firstView": {
return getFirstView();				}
			case "carousel_previousState": {
return getPreviousState();				}
			case "carousel_nextState": {
return getNextState();				}
			case "carousel_infinite": {
return getInfinite();				}
			case "carousel_forwardTransition": {
return getForwardTransition();				}
			case "carousel_backwardTransition": {
return getBackwardTransition();				}
			case "carousel_touchUp_dampeningFactor": {
return getTouchUp_dampeningFactor();				}
			case "carousel_touchUpMode": {
return getTouchUpMode();				}
			case "carousel_touchUp_velocityThreshold": {
return getTouchUp_velocityThreshold();				}
			case "carousel_emptyViewsBehavior": {
return getEmptyViewsBehavior();				}
			case "constraint_referenced_ids": {
return carousel.getReferencedIds();				}
		}
		
		return null;
	}
	
	@Override
	public Object asWidget() {
		return measurableView;
	}

	

private String dataKey = "data";
private com.ashera.model.ModelScope dataScopeKey = com.ashera.model.ModelScope.view;

private String childDataKey = "data";
private com.ashera.model.ModelScope childDataScopeKey = com.ashera.model.ModelScope.local;
private androidx.constraintlayout.helper.widget.Carousel.Adapter adapter;
@Override
public void initialized() {
	super.initialized();
	fragment.getEventBus().on("layoutDescription", new EventBusHandler("layoutDescription") {

		@Override
		protected void doPerform(Object payload) {
			adapter = new androidx.constraintlayout.helper.widget.Carousel.Adapter() {
				@Override
				public int count() {
					List<Object> objects = PluginInvoker.getList(getModelFromScope(dataKey, dataScopeKey));
					if (objects == null) {
						return 0;
					}
					return objects.size();
				}

				@Override
				public void populate(View view, int index) {
					List<Object> objects = PluginInvoker.getList(getModelFromScope(dataKey, dataScopeKey));
					
					if (objects != null && view instanceof ILifeCycleDecorator) {
						updateModelRecurse(((ILifeCycleDecorator) view).getWidget(), objects.get(index));	
					}
				}

				@Override
				public void onNewItem(int index) {
					if (listener != null) {
						listener.onNewItem(index);
					}
				}
			};
			carousel.setAdapter(adapter);

			r.android.view.ViewParent cParent = carousel.getParent();
			if (cParent instanceof androidx.constraintlayout.motion.widget.MotionLayout) {
				androidx.constraintlayout.motion.widget.MotionLayout motionLayout = ((androidx.constraintlayout.motion.widget.MotionLayout) cParent);
				if (motionLayout.getConstraintSetIds() != null) {
					if ((int) getTouchUpMode() == androidx.constraintlayout.helper.widget.Carousel.TOUCH_UP_CARRY_ON) {
			            androidx.constraintlayout.motion.widget.MotionScene.Transition forward = motionLayout.getTransition((int) getForwardTransition());
			            if (forward != null) {
			                forward.setOnTouchUp(androidx.constraintlayout.motion.widget.MotionLayout.TOUCH_UP_DECELERATE_AND_COMPLETE);
			            }
			            androidx.constraintlayout.motion.widget.MotionScene.Transition backward = motionLayout.getTransition((int) getBackwardTransition());
			            if (backward != null) {
			                backward.setOnTouchUp(androidx.constraintlayout.motion.widget.MotionLayout.TOUCH_UP_DECELERATE_AND_COMPLETE);
			            }
			        }

					initItems();
					adapter.onNewItem(0);
				}
			}
		}
	});
}

	private void updateModelRecurse(IWidget widget, Object data) {
		widget.storeModelToScope(childDataKey, childDataScopeKey, data);
		widget.applyModelToWidget();

		if (widget instanceof HasWidgets) {
			for (IWidget childWidget : ((HasWidgets) widget).getWidgets()) {
				updateModelRecurse(childWidget, data);
			}
		}
	}

	public static class CarouselListener {
		public interface NewItemListener {
			public void onNewItem(int index);
		}
	}
	
	private CarouselListener.NewItemListener listener;
	private void setNewItemListener(Object objValue) {
		if (objValue instanceof String) {
			listener = new NewItemListener(this, (String) objValue);
		} else {
			listener = (CarouselListener.NewItemListener) objValue;
		}
	}
	
	
	private void setChildDataScopeKey(Object objValue) {
		childDataScopeKey = com.ashera.model.ModelScope.valueOf((String) objValue);
	}

	private void setDataScopeKey(Object objValue) {
		dataScopeKey = com.ashera.model.ModelScope.valueOf((String) objValue);
	}

	private void setChildDataKey(Object objValue) {
		childDataKey = (String) objValue;
	}

	private void setDataKey(Object objValue) {
		dataKey = (String) objValue;
	}
	
	
	
	private void transitionToLast(int delay) {
		if (carousel.getCount() > 0) {
			if(carousel.getCount() -1 != carousel.getCurrentIndex()) {
				carousel.transitionToIndex(carousel.getCount() - 1, delay);
			}
		}
	}

	private void transitionToNext(int delay) {
		if (carousel.getCount() > 0) {
			if (!(boolean) getInfinite()) {
				if (carousel.getCurrentIndex() == carousel.getCount() - 1) {
					return;
				}
			}
			
			r.android.view.ViewParent cParent = carousel.getParent();
			if (cParent instanceof androidx.constraintlayout.motion.widget.MotionLayout) {
				((androidx.constraintlayout.motion.widget.MotionLayout) cParent).transitionToState((int) getNextState(), delay);
			}
		}
	}
	
	
	private void transitionToPrevious(int delay) {
		if (carousel.getCount() > 0) {
			if (!(boolean) getInfinite()) {
				if (carousel.getCurrentIndex() == 0) {
					return;
				}
			}
			r.android.view.ViewParent cParent = carousel.getParent();
			if (cParent instanceof androidx.constraintlayout.motion.widget.MotionLayout) {
				((androidx.constraintlayout.motion.widget.MotionLayout) cParent).transitionToState((int) getPreviousState(), delay);
			}
		}
	}

	private void jumpToPrevious() {
		if (carousel.getCount() > 0) {
			if (!(boolean) getInfinite()) {
				if (carousel.getCurrentIndex() == 0) {
					return;
				}
			}
			carousel.jumpToIndex(carousel.getCurrentIndex() - 1);
		}
	}

	private void jumpToNext() {
		if (carousel.getCount() > 0) {
			if (!(boolean) getInfinite()) {
				if (carousel.getCurrentIndex() == carousel.getCount() - 1) {
					return;
				}
			}
			carousel.jumpToIndex(carousel.getCurrentIndex() + 1);
		}
	}

	private void jumpTolast() {
		if (carousel.getCount() > 0) {
			carousel.jumpToIndex(carousel.getCount() - 1);
		}
	}

	
	private void transitionToIndex(int index, int delay) {
		if (carousel.getCount() > 0) {
			carousel.transitionToIndex(index, delay);
		}
		
	}

	private void jumpToIndex(int index) {
		if (carousel.getCount() > 0) {
			carousel.jumpToIndex(index);
		}
		
	}



private void setEmptyViewsBehavior(Object objValue) {
	carousel.setEmptyViewBehavior((int) objValue);
	
}

private void setTouchUpMode(Object objValue) {
	carousel.setTouchUpMode((int) objValue);	
}

private void setTouchUp_velocityThreshold(Object objValue) {
	carousel.setVelocityThreshold((float) objValue);	
}

private void setTouchUp_dampeningFactor(Object objValue) {
	carousel.setDampening((float) objValue);	
}

private void setBackwardTransition(Object objValue) {
	carousel.setBackwardTransition((int) objValue);	
}

private void setForwardTransition(Object objValue) {
	carousel.setForwardTransition((int) objValue);	
}

private void setInfinite(Object objValue) {
	carousel.setInfiniteCarousel((boolean) objValue);	
}

private void setNextState(Object objValue) {
	carousel.setNextState((int) objValue);	
}

private void setPreviousState(Object objValue) {
	carousel.setPreviousState((int) objValue);		
}

private void setFirstView(Object objValue) {
	carousel.setFirstViewReference((int) objValue);	
}

private Object getEmptyViewsBehavior() {
	return carousel.getEmptyViewBehavior();
}

private Object getTouchUp_velocityThreshold() {
	return carousel.getVelocityThreshold();
}

private Object getTouchUpMode() {
	return carousel.getTouchUpMode();
}

private Object getTouchUp_dampeningFactor() {
	return carousel.getDampening();
}

private Object getForwardTransition() {
	return carousel.getForwardTransition();
}

private Object getBackwardTransition() {
	return carousel.getBackwardTransition();
}

private Object getInfinite() {
	return carousel.isInfiniteCarousel();
}

private Object getNextState() {
	return carousel.getNextState();
}

private Object getPreviousState() {
	return carousel.getPreviousState();
}

private Object getFirstView() {
	return carousel.getFirstViewReference();
}
private androidx.constraintlayout.helper.widget.Carousel carousel;	

@Override
public boolean isAfterParentInitRequired() {
	return true;
}
@Override
public void afterParentInit() {
	carousel.onAttachedToWindow();
}
private void initItems() {
	carousel.updateItems();
}



	@SuppressLint("NewApi")
private static class NewItemListener implements CarouselListener.NewItemListener, com.ashera.widget.IListener{
private IWidget w; private View view; private String strValue; private String action;
public String getAction() {return action;}
public NewItemListener(IWidget w, String strValue)  {
this.w = w; this.strValue = strValue;
}
public NewItemListener(IWidget w, String strValue, String action)  {
this.w = w; this.strValue = strValue;this.action=action;
}
public void onNewItem(int index){
    
	if (action == null || action.equals("onNewItem")) {
		// populate the data from ui to pojo
		w.syncModelFromUiToPojo("onNewItem");
	    java.util.Map<String, Object> obj = getOnNewItemEventObj(index);
	    String commandName =  (String) obj.get(EventExpressionParser.KEY_COMMAND_NAME);
	    
	    // execute command based on command type
	    String commandType = (String)obj.get(EventExpressionParser.KEY_COMMAND_TYPE);
		switch (commandType) {
		case "+":
		    if (EventCommandFactory.hasCommand(commandName)) {
		    	 EventCommandFactory.getCommand(commandName).executeCommand(w, obj, index);
		    }

			break;
		default:
			break;
		}
		
		if (obj.containsKey("refreshUiFromModel")) {
			Object widgets = obj.remove("refreshUiFromModel");
			com.ashera.layout.ViewImpl.refreshUiFromModel(w, widgets, true);
		}
		if (w.getModelUiToPojoEventIds() != null) {
			com.ashera.layout.ViewImpl.refreshUiFromModel(w, w.getModelUiToPojoEventIds(), true);
		}
		if (strValue != null && !strValue.isEmpty() && !strValue.trim().startsWith("+")) {
		    com.ashera.core.IActivity activity = (com.ashera.core.IActivity)w.getFragment().getRootActivity();
		    activity.sendEventMessage(obj);
		}
	}
    return;
}//#####

public java.util.Map<String, Object> getOnNewItemEventObj(int index) {
	java.util.Map<String, Object> obj = com.ashera.widget.PluginInvoker.getJSONCompatMap();
    obj.put("action", "action");
    obj.put("eventType", "newitem");
    obj.put("fragmentId", w.getFragment().getFragmentId());
    obj.put("actionUrl", w.getFragment().getActionUrl());
    
    if (w.getComponentId() != null) {
    	obj.put("componentId", w.getComponentId());
    }
    
    PluginInvoker.putJSONSafeObjectIntoMap(obj, "id", w.getId());
     
        PluginInvoker.putJSONSafeObjectIntoMap(obj, "index", index);
    
    // parse event info into the map
    EventExpressionParser.parseEventExpression(strValue, obj);
    
    // update model data into map
    w.updateModelToEventMap(obj, "onNewItem", (String)obj.get(EventExpressionParser.KEY_EVENT_ARGS));
    return obj;
}
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
			measurableView.setId((int) quickConvert(id, "id"));
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
    		
    	}
    }
    
    @Override
    public void invalidate() {
    	if (isInitialised()) {
			ViewImpl.invalidate(this, asNativeWidget());

    	}
    }
    
	
private CarouselCommandBuilder builder;
private CarouselBean bean;
public Object getPlugin(String plugin) {
	return WidgetFactory.getAttributable(plugin).newInstance(this);
}
public CarouselBean getBean() {
	if (bean == null) {
		bean = new CarouselBean();
	}
	return bean;
}
public CarouselCommandBuilder getBuilder() {
	if (builder == null) {
		builder = new CarouselCommandBuilder();
	}
	return builder;
}


public  class CarouselCommandBuilder extends com.ashera.layout.ViewImpl.ViewCommandBuilder <CarouselCommandBuilder> {
    public CarouselCommandBuilder() {
	}
	
	public CarouselCommandBuilder execute(boolean setter) {
		if (setter) {
			executeCommand(command, null, IWidget.COMMAND_EXEC_SETTER_METHOD);
			getFragment().remeasure();
		}
		executeCommand(command, null, IWidget.COMMAND_EXEC_GETTER_METHOD);
return this;	}

public CarouselCommandBuilder tryGetCarousel_firstView() {
	Map<String, Object> attrs = initCommand("carousel_firstView");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_firstView() {
	Map<String, Object> attrs = initCommand("carousel_firstView");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_firstView(String value) {
	Map<String, Object> attrs = initCommand("carousel_firstView");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_previousState() {
	Map<String, Object> attrs = initCommand("carousel_previousState");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_previousState() {
	Map<String, Object> attrs = initCommand("carousel_previousState");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_previousState(String value) {
	Map<String, Object> attrs = initCommand("carousel_previousState");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_nextState() {
	Map<String, Object> attrs = initCommand("carousel_nextState");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_nextState() {
	Map<String, Object> attrs = initCommand("carousel_nextState");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_nextState(String value) {
	Map<String, Object> attrs = initCommand("carousel_nextState");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_infinite() {
	Map<String, Object> attrs = initCommand("carousel_infinite");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object isCarousel_infinite() {
	Map<String, Object> attrs = initCommand("carousel_infinite");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_infinite(boolean value) {
	Map<String, Object> attrs = initCommand("carousel_infinite");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_forwardTransition() {
	Map<String, Object> attrs = initCommand("carousel_forwardTransition");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_forwardTransition() {
	Map<String, Object> attrs = initCommand("carousel_forwardTransition");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_forwardTransition(String value) {
	Map<String, Object> attrs = initCommand("carousel_forwardTransition");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_backwardTransition() {
	Map<String, Object> attrs = initCommand("carousel_backwardTransition");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_backwardTransition() {
	Map<String, Object> attrs = initCommand("carousel_backwardTransition");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_backwardTransition(String value) {
	Map<String, Object> attrs = initCommand("carousel_backwardTransition");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_touchUp_dampeningFactor() {
	Map<String, Object> attrs = initCommand("carousel_touchUp_dampeningFactor");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_touchUp_dampeningFactor() {
	Map<String, Object> attrs = initCommand("carousel_touchUp_dampeningFactor");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_touchUp_dampeningFactor(float value) {
	Map<String, Object> attrs = initCommand("carousel_touchUp_dampeningFactor");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_touchUpMode() {
	Map<String, Object> attrs = initCommand("carousel_touchUpMode");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_touchUpMode() {
	Map<String, Object> attrs = initCommand("carousel_touchUpMode");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_touchUpMode(String value) {
	Map<String, Object> attrs = initCommand("carousel_touchUpMode");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_touchUp_velocityThreshold() {
	Map<String, Object> attrs = initCommand("carousel_touchUp_velocityThreshold");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_touchUp_velocityThreshold() {
	Map<String, Object> attrs = initCommand("carousel_touchUp_velocityThreshold");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_touchUp_velocityThreshold(float value) {
	Map<String, Object> attrs = initCommand("carousel_touchUp_velocityThreshold");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetCarousel_emptyViewsBehavior() {
	Map<String, Object> attrs = initCommand("carousel_emptyViewsBehavior");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getCarousel_emptyViewsBehavior() {
	Map<String, Object> attrs = initCommand("carousel_emptyViewsBehavior");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setCarousel_emptyViewsBehavior(String value) {
	Map<String, Object> attrs = initCommand("carousel_emptyViewsBehavior");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder tryGetConstraint_referenced_ids() {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getConstraint_referenced_ids() {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	return attrs.get("commandReturnValue");
}
public CarouselCommandBuilder setConstraint_referenced_ids(String value) {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder jumpToIndex(int value) {
	Map<String, Object> attrs = initCommand("jumpToIndex");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder jumpTolast() {
	Map<String, Object> attrs = initCommand("jumpTolast");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	
return this;}
public CarouselCommandBuilder jumpToNext() {
	Map<String, Object> attrs = initCommand("jumpToNext");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	
return this;}
public CarouselCommandBuilder jumpToPrevious() {
	Map<String, Object> attrs = initCommand("jumpToPrevious");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	
return this;}
public CarouselCommandBuilder transitionToIndex(int index,
int delay) {
	Map<String, Object> attrs = initCommand("transitionToIndex");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	Map<String, Object> wrapper = new HashMap<>();
	wrapper.put("index", index);
	wrapper.put("delay", delay);
	attrs.put("value", wrapper);
return this;}
public CarouselCommandBuilder transitionToLast(int value) {
	Map<String, Object> attrs = initCommand("transitionToLast");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder transitionToNext(int value) {
	Map<String, Object> attrs = initCommand("transitionToNext");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder transitionToPrevious(int value) {
	Map<String, Object> attrs = initCommand("transitionToPrevious");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder setDataKey(String value) {
	Map<String, Object> attrs = initCommand("dataKey");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder setChildDataKey(String value) {
	Map<String, Object> attrs = initCommand("childDataKey");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder setDataScopeKey(String value) {
	Map<String, Object> attrs = initCommand("dataScopeKey");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder setChildDataScopeKey(String value) {
	Map<String, Object> attrs = initCommand("childDataScopeKey");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public CarouselCommandBuilder setOnNewItem(String value) {
	Map<String, Object> attrs = initCommand("onNewItem");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
}
public class CarouselBean extends com.ashera.layout.ViewImpl.ViewBean{
		public CarouselBean() {
			super(CarouselImpl.this);
		}
public Object getCarousel_firstView() {
	return getBuilder().reset().tryGetCarousel_firstView().execute(false).getCarousel_firstView(); 
}
public void setCarousel_firstView(String value) {
	getBuilder().reset().setCarousel_firstView(value).execute(true);
}

public Object getCarousel_previousState() {
	return getBuilder().reset().tryGetCarousel_previousState().execute(false).getCarousel_previousState(); 
}
public void setCarousel_previousState(String value) {
	getBuilder().reset().setCarousel_previousState(value).execute(true);
}

public Object getCarousel_nextState() {
	return getBuilder().reset().tryGetCarousel_nextState().execute(false).getCarousel_nextState(); 
}
public void setCarousel_nextState(String value) {
	getBuilder().reset().setCarousel_nextState(value).execute(true);
}

public Object isCarousel_infinite() {
	return getBuilder().reset().tryGetCarousel_infinite().execute(false).isCarousel_infinite(); 
}
public void setCarousel_infinite(boolean value) {
	getBuilder().reset().setCarousel_infinite(value).execute(true);
}

public Object getCarousel_forwardTransition() {
	return getBuilder().reset().tryGetCarousel_forwardTransition().execute(false).getCarousel_forwardTransition(); 
}
public void setCarousel_forwardTransition(String value) {
	getBuilder().reset().setCarousel_forwardTransition(value).execute(true);
}

public Object getCarousel_backwardTransition() {
	return getBuilder().reset().tryGetCarousel_backwardTransition().execute(false).getCarousel_backwardTransition(); 
}
public void setCarousel_backwardTransition(String value) {
	getBuilder().reset().setCarousel_backwardTransition(value).execute(true);
}

public Object getCarousel_touchUp_dampeningFactor() {
	return getBuilder().reset().tryGetCarousel_touchUp_dampeningFactor().execute(false).getCarousel_touchUp_dampeningFactor(); 
}
public void setCarousel_touchUp_dampeningFactor(float value) {
	getBuilder().reset().setCarousel_touchUp_dampeningFactor(value).execute(true);
}

public Object getCarousel_touchUpMode() {
	return getBuilder().reset().tryGetCarousel_touchUpMode().execute(false).getCarousel_touchUpMode(); 
}
public void setCarousel_touchUpMode(String value) {
	getBuilder().reset().setCarousel_touchUpMode(value).execute(true);
}

public Object getCarousel_touchUp_velocityThreshold() {
	return getBuilder().reset().tryGetCarousel_touchUp_velocityThreshold().execute(false).getCarousel_touchUp_velocityThreshold(); 
}
public void setCarousel_touchUp_velocityThreshold(float value) {
	getBuilder().reset().setCarousel_touchUp_velocityThreshold(value).execute(true);
}

public Object getCarousel_emptyViewsBehavior() {
	return getBuilder().reset().tryGetCarousel_emptyViewsBehavior().execute(false).getCarousel_emptyViewsBehavior(); 
}
public void setCarousel_emptyViewsBehavior(String value) {
	getBuilder().reset().setCarousel_emptyViewsBehavior(value).execute(true);
}

public Object getConstraint_referenced_ids() {
	return getBuilder().reset().tryGetConstraint_referenced_ids().execute(false).getConstraint_referenced_ids(); 
}
public void setConstraint_referenced_ids(String value) {
	getBuilder().reset().setConstraint_referenced_ids(value).execute(true);
}

public void jumpToIndex(int value) {
	getBuilder().reset().jumpToIndex(value).execute(true);
}

public void jumpTolast() {
	getBuilder().reset().jumpTolast().execute(true);
}

public void jumpToNext() {
	getBuilder().reset().jumpToNext().execute(true);
}

public void jumpToPrevious() {
	getBuilder().reset().jumpToPrevious().execute(true);
}

public void transitionToIndex(int index,
int delay) {
	getBuilder().reset().transitionToIndex(index,
delay).execute(true);
}

public void transitionToLast(int value) {
	getBuilder().reset().transitionToLast(value).execute(true);
}

public void transitionToNext(int value) {
	getBuilder().reset().transitionToNext(value).execute(true);
}

public void transitionToPrevious(int value) {
	getBuilder().reset().transitionToPrevious(value).execute(true);
}

public void setDataKey(String value) {
	getBuilder().reset().setDataKey(value).execute(true);
}

public void setChildDataKey(String value) {
	getBuilder().reset().setChildDataKey(value).execute(true);
}

public void setDataScopeKey(String value) {
	getBuilder().reset().setDataScopeKey(value).execute(true);
}

public void setChildDataScopeKey(String value) {
	getBuilder().reset().setChildDataScopeKey(value).execute(true);
}

public void setOnNewItem(String value) {
	getBuilder().reset().setOnNewItem(value).execute(true);
}

}


    
	//end - body

private void nativeCreate(Map<String, Object> params) {
	carousel = measurableView;
	createView();
}
public native void createView()/*-[
	ASUIView* uiView = [ASUIView new];
	uiView.backgroundColor = [UIColor clearColor];
	uiView_ = uiView;
]-*/;
}
