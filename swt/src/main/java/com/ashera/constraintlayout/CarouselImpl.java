package com.ashera.constraintlayout;
//start - imports

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import r.android.content.Context;


import org.eclipse.swt.widgets.*;
import org.eclipse.swt.graphics.*;
import androidx.core.view.*;
import static com.ashera.common.DisposeUtil.*;

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


import static com.ashera.widget.IWidget.*;
//end - imports
@SuppressLint("NewApi")
public class CarouselImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.helper.widget.Carousel"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.helper.widget.Carousel";

	protected org.eclipse.swt.widgets.Composite composite;
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


		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_firstView").withType("id").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_previousState").withType("id").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_nextState").withType("id").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_infinite").withType("boolean").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_forwardTransition").withType("id").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_backwardTransition").withType("id").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_touchUp_dampeningFactor").withType("float").beforeChildAdd());
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Carousel.carousel_touchUpMode", new Carousel_touchUpMode());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_touchUpMode").withType("androidx.constraintlayout.helper.widget.Carousel.carousel_touchUpMode").beforeChildAdd());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_touchUp_velocityThreshold").withType("float").beforeChildAdd());
		ConverterFactory.register("androidx.constraintlayout.helper.widget.Carousel.carousel_emptyViewsBehavior", new Carousel_emptyViewsBehavior());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("carousel_emptyViewsBehavior").withType("androidx.constraintlayout.helper.widget.Carousel.carousel_emptyViewsBehavior").beforeChildAdd());
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

		
	public class CarouselExt extends androidx.constraintlayout.helper.widget.Carousel implements ILifeCycleDecorator{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		private List<IWidget> overlays;
		public IWidget getWidget() {
			return CarouselImpl.this;
		}
		@Override
		public void onAttachedToWindow() {
			try {
				if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
					super.onAttachedToWindow();
				}
			} catch (Exception e) {
				// ignore excepiton
			}
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
			if (!isOverlay()) {
			ViewImpl.nativeMakeFrame(asNativeWidget(), l, t, r, b);
			}
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(CarouselImpl.this);
	        overlays = ViewImpl.drawOverlay(CarouselImpl.this, overlays);
			
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
        	if (!isWidgetDisposed()) {
        		ViewImpl.drawableStateChanged(CarouselImpl.this);
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
    		
    		IWidget widget = template.loadLazyWidgets(CarouselImpl.this.getParent());
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
        	CarouselImpl.this.getParent().remove(CarouselImpl.this);
		}
        @Override
        public void getLocationOnScreen(int[] appScreenLocation) {
        	org.eclipse.swt.widgets.Control control = (org.eclipse.swt.widgets.Control) asNativeWidget();
			appScreenLocation[0] = control.toDisplay(0, 0).x;
        	appScreenLocation[1] = control.toDisplay(0, 0).y;
        }
        @Override
        public void getWindowVisibleDisplayFrame(r.android.graphics.Rect displayFrame){
        	org.eclipse.swt.widgets.Shell shell = ((org.eclipse.swt.widgets.Control)asNativeWidget()).getShell();
        	displayFrame.left = shell.toDisplay(0, 0).x ;
			displayFrame.top = shell.getShell().toDisplay(0, 0).y ;
        	displayFrame.bottom = displayFrame.top + shell.getClientArea().height;
        	displayFrame.right = displayFrame.left + shell.getBounds().width;
        	
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
			CarouselImpl.this.setAttribute(name, value, !(value instanceof String));
		}
        @Override
        public void setVisibility(int visibility) {
            super.setVisibility(visibility);
            org.eclipse.swt.widgets.Control control = ((org.eclipse.swt.widgets.Control)asNativeWidget());
            if (!control.isDisposed()) {
            	control.setVisible(View.VISIBLE == visibility);
            }
            
        }
        
    	public void setState0(Object value) {
    		ViewImpl.setState(CarouselImpl.this, 0, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(CarouselImpl.this, 1, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(CarouselImpl.this, 2, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(CarouselImpl.this, 3, value);
    	}
    	public void setState4(Object value) {
    		ViewImpl.setState(CarouselImpl.this, 4, value);
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
	}

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
		    if (activity != null) {
		    	activity.sendEventMessage(obj);
		    }
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
    obj.put("namespace", w.getFragment().getNamespace());
    
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
	        return composite;
	    }
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
	public int getStyle(String key, int initStyle, Map<String, Object> params, IFragment fragment) {
		if (params == null) {
    		return initStyle;
    	}
    	Object style = params.get(key);
		if (style == null) {
			return initStyle;
		}
		int convertFrom = (int) ConverterFactory.get("swtbitflag").convertFrom(style.toString(), null, fragment);
		return convertFrom;
	}
	
	public int getStyle(Map<String, Object> params, IFragment fragment) {
		return getStyle("swtStyle", org.eclipse.swt.SWT.NONE, params, fragment);
	}
	
	public int getStyle(int initStyle, Map<String, Object> params, IFragment fragment) {
		return getStyle("swtStyle", initStyle, params, fragment);
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
	public boolean isWidgetDisposed() {
		return composite.isDisposed();
	}

	
		//end - body

//start - codecopy
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

private void initItems() {
	carousel.updateItems();
}

//end - codecopy
private void nativeCreate(Map<String, Object> params) {
	carousel = measurableView;
    composite = new org.eclipse.swt.widgets.Composite((org.eclipse.swt.widgets.Composite)ViewImpl.getParent(this), getStyle(params, fragment));
    composite.setLayout(new org.eclipse.nebula.widgets.layout.AbsoluteLayout());
}
}
