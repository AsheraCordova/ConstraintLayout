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
public class BarrierImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.widget.Barrier"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.widget.Barrier";

	protected org.eclipse.swt.widgets.Composite composite;
	protected androidx.constraintlayout.widget.Barrier barrier;	
	
		@SuppressLint("NewApi")
		final static class BarrierImpl_barrierDirection extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("start",  0x5);
				mapping.put("end",  0x6);
				mapping.put("left",  0x0);
				mapping.put("right",  0x1);
				mapping.put("top",  0x2);
				mapping.put("bottom",  0x3);
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


		ConverterFactory.register("androidx.constraintlayout.widget.Barrier.BarrierImpl.barrierDirection", new BarrierImpl_barrierDirection());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("barrierDirection").withType("androidx.constraintlayout.widget.Barrier.BarrierImpl.barrierDirection"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("constraint_referenced_ids").withType("BarrierImpl.constraintReferencedIds"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("barrierMargin").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("barrierAllowsGoneWidgets").withType("boolean"));
	}
	
	public BarrierImpl() {
		super(GROUP_NAME, LOCAL_NAME);
	}
	public  BarrierImpl(String localname) {
		super(GROUP_NAME, localname);
	}
	public  BarrierImpl(String groupName, String localname) {
		super(groupName, localname);
	}

		
	public class BarrierExt extends androidx.constraintlayout.widget.Barrier implements ILifeCycleDecorator, com.ashera.widget.IMaxDimension{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		private List<IWidget> overlays;
		public IWidget getWidget() {
			return BarrierImpl.this;
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

		public BarrierExt() {
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
			ViewImpl.setDrawableBounds(BarrierImpl.this, l, t, r, b);
			if (!isOverlay()) {
			ViewImpl.nativeMakeFrame(asNativeWidget(), l, t, r, b);
			}
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(BarrierImpl.this);
	        overlays = ViewImpl.drawOverlay(BarrierImpl.this, overlays);
			
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
				BarrierImpl.this.invalidate();
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
        		ViewImpl.drawableStateChanged(BarrierImpl.this);
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
    		
    		IWidget widget = template.loadLazyWidgets(BarrierImpl.this.getParent());
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
        	BarrierImpl.this.getParent().remove(BarrierImpl.this);
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
			BarrierImpl.this.setAttribute(name, value, !(value instanceof String));
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
    		ViewImpl.setState(BarrierImpl.this, 0, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(BarrierImpl.this, 1, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(BarrierImpl.this, 2, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(BarrierImpl.this, 3, value);
    	}
    	public void setState4(Object value) {
    		ViewImpl.setState(BarrierImpl.this, 4, value);
    	}
        	public void state0() {
        		ViewImpl.state(BarrierImpl.this, 0);
        	}
        	public void state1() {
        		ViewImpl.state(BarrierImpl.this, 1);
        	}
        	public void state2() {
        		ViewImpl.state(BarrierImpl.this, 2);
        	}
        	public void state3() {
        		ViewImpl.state(BarrierImpl.this, 3);
        	}
        	public void state4() {
        		ViewImpl.state(BarrierImpl.this, 4);
        	}
                        
        public void stateYes() {
        	ViewImpl.stateYes(BarrierImpl.this);
        	
        }
        
        public void stateNo() {
        	ViewImpl.stateNo(BarrierImpl.this);
        }
     
	
	}	@Override
	public Class getViewClass() {
		return BarrierExt.class;
	}

	@Override
	public IWidget newInstance() {
		return new BarrierImpl(groupName, localName);
	}
	
	@SuppressLint("NewApi")
	@Override
	public void create(IFragment fragment, Map<String, Object> params) {
		super.create(fragment, params);
		barrier = new BarrierExt();
		nativeCreate(params);	
		ViewImpl.registerCommandConveter(this);
	}

	@Override
	@SuppressLint("NewApi")
	public void setAttribute(WidgetAttribute key, String strValue, Object objValue, ILifeCycleDecorator decorator) {
		Object nativeWidget = asNativeWidget();
		ViewImpl.setAttribute(this,  key, strValue, objValue, decorator);
		
		switch (key.getAttributeName()) {
			case "barrierDirection": {
				


		 barrier.setType((int)objValue);



			}
			break;
			case "constraint_referenced_ids": {
				


		 barrier.setReferencedIds((int[]) objValue);



			}
			break;
			case "barrierMargin": {
				


		 barrier.setMargin((int)objValue);



			}
			break;
			case "barrierAllowsGoneWidgets": {
				


		barrier.setAllowsGoneWidget((boolean)objValue);



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
			case "barrierDirection": {
return barrier.getType();				}
			case "constraint_referenced_ids": {
return barrier.getReferencedIds();				}
			case "barrierMargin": {
return barrier.getMargin();				}
			case "barrierAllowsGoneWidgets": {
return barrier.getAllowsGoneWidget();				}
		}
		
		return null;
	}
	
	@Override
	public Object asWidget() {
		return barrier;
	}

	
	
	    @Override
	    public Object asNativeWidget() {
	        return composite;
	    }
	@Override
	public void setId(String id){
		if (id != null && !id.equals("")){
			super.setId(id);
			barrier.setId((int) quickConvert(id, "id"));
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
    		
    		nativeRequestLayout();
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
	
private BarrierCommandBuilder builder;
private BarrierBean bean;
public Object getPlugin(String plugin) {
	return WidgetFactory.getAttributable(plugin).newInstance(this);
}
public BarrierBean getBean() {
	if (bean == null) {
		bean = new BarrierBean();
	}
	return bean;
}
public BarrierCommandBuilder getBuilder() {
	if (builder == null) {
		builder = new BarrierCommandBuilder();
	}
	return builder;
}


public  class BarrierCommandBuilder extends com.ashera.layout.ViewImpl.ViewCommandBuilder <BarrierCommandBuilder> {
    public BarrierCommandBuilder() {
	}
	
	public BarrierCommandBuilder execute(boolean setter) {
		if (setter) {
			executeCommand(command, null, IWidget.COMMAND_EXEC_SETTER_METHOD);
			getFragment().remeasure();
		}
		executeCommand(command, null, IWidget.COMMAND_EXEC_GETTER_METHOD);
return this;	}

public BarrierCommandBuilder tryGetBarrierDirection() {
	Map<String, Object> attrs = initCommand("barrierDirection");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getBarrierDirection() {
	Map<String, Object> attrs = initCommand("barrierDirection");
	return attrs.get("commandReturnValue");
}
public BarrierCommandBuilder setBarrierDirection(String value) {
	Map<String, Object> attrs = initCommand("barrierDirection");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public BarrierCommandBuilder tryGetConstraint_referenced_ids() {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getConstraint_referenced_ids() {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	return attrs.get("commandReturnValue");
}
public BarrierCommandBuilder setConstraint_referenced_ids(String value) {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public BarrierCommandBuilder tryGetBarrierMargin() {
	Map<String, Object> attrs = initCommand("barrierMargin");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getBarrierMargin() {
	Map<String, Object> attrs = initCommand("barrierMargin");
	return attrs.get("commandReturnValue");
}
public BarrierCommandBuilder setBarrierMargin(String value) {
	Map<String, Object> attrs = initCommand("barrierMargin");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public BarrierCommandBuilder tryGetBarrierAllowsGoneWidgets() {
	Map<String, Object> attrs = initCommand("barrierAllowsGoneWidgets");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object isBarrierAllowsGoneWidgets() {
	Map<String, Object> attrs = initCommand("barrierAllowsGoneWidgets");
	return attrs.get("commandReturnValue");
}
public BarrierCommandBuilder setBarrierAllowsGoneWidgets(boolean value) {
	Map<String, Object> attrs = initCommand("barrierAllowsGoneWidgets");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
}
public class BarrierBean extends com.ashera.layout.ViewImpl.ViewBean{
		public BarrierBean() {
			super(BarrierImpl.this);
		}
public Object getBarrierDirection() {
	return getBuilder().reset().tryGetBarrierDirection().execute(false).getBarrierDirection(); 
}
public void setBarrierDirection(String value) {
	getBuilder().reset().setBarrierDirection(value).execute(true);
}

public Object getConstraint_referenced_ids() {
	return getBuilder().reset().tryGetConstraint_referenced_ids().execute(false).getConstraint_referenced_ids(); 
}
public void setConstraint_referenced_ids(String value) {
	getBuilder().reset().setConstraint_referenced_ids(value).execute(true);
}

public Object getBarrierMargin() {
	return getBuilder().reset().tryGetBarrierMargin().execute(false).getBarrierMargin(); 
}
public void setBarrierMargin(String value) {
	getBuilder().reset().setBarrierMargin(value).execute(true);
}

public Object isBarrierAllowsGoneWidgets() {
	return getBuilder().reset().tryGetBarrierAllowsGoneWidgets().execute(false).isBarrierAllowsGoneWidgets(); 
}
public void setBarrierAllowsGoneWidgets(boolean value) {
	getBuilder().reset().setBarrierAllowsGoneWidgets(value).execute(true);
}

}


	
	//end - body
    //start - codecopy
    static {
        ConverterFactory.register("BarrierImpl.constraintReferencedIds", new ConstraintReferencedIdsConverter());
    }
    //end - codecopy
    @Override
    public void initialized() {
        super.initialized();
        barrier.validateParams();
    }
    
    private void nativeCreate(Map<String, Object> params) {
        composite = new Composite(ViewImpl.getParent(this), org.eclipse.swt.SWT.NONE);
    }
      
    public void nativeRequestLayout() {
        barrier.getParent().requestLayout();
    }    

    
}
