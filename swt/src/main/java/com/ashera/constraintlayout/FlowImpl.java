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
public class FlowImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.helper.widget.Flow"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.helper.widget.Flow";

	protected org.eclipse.swt.widgets.Composite composite;
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

		public FlowExt() {
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
			ViewImpl.setDrawableBounds(FlowImpl.this, l, t, r, b);
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(FlowImpl.this);
			
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
        	ViewImpl.drawableStateChanged(FlowImpl.this);
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
    		IWidget widget = template.loadLazyWidgets(FlowImpl.this.getParent());
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
        	FlowImpl.this.getParent().remove(FlowImpl.this);
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
			FlowImpl.this.setAttribute(name, value, true);
		}
        
    	public void setState0(Object value) {
    		ViewImpl.setState(FlowImpl.this, 0, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(FlowImpl.this, 1, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(FlowImpl.this, 2, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(FlowImpl.this, 3, value);
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
		flow = new FlowExt();
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
	        return composite;
	    }
	@Override
	public void setId(String id){
		if (id != null && !id.equals("")){
			super.setId(id);
			flow.setId((int) quickConvert(id, "id"));
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
	
private FlowCommandBuilder builder;
private FlowBean bean;
public Object getPlugin(String plugin) {
	return WidgetFactory.getAttributable(plugin).newInstance(this);
}
public FlowBean getBean() {
	if (bean == null) {
		bean = new FlowBean();
	}
	return bean;
}
public FlowCommandBuilder getBuilder() {
	if (builder == null) {
		builder = new FlowCommandBuilder();
	}
	return builder;
}


public  class FlowCommandBuilder extends com.ashera.layout.ViewImpl.ViewCommandBuilder <FlowCommandBuilder> {
    public FlowCommandBuilder() {
	}
	
	public FlowCommandBuilder execute(boolean setter) {
		if (setter) {
			executeCommand(command, null, IWidget.COMMAND_EXEC_SETTER_METHOD);
			getFragment().remeasure();
		}
		executeCommand(command, null, IWidget.COMMAND_EXEC_GETTER_METHOD);
return this;	}

public FlowCommandBuilder setOrientation(String value) {
	Map<String, Object> attrs = initCommand("orientation");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_horizontalStyle(String value) {
	Map<String, Object> attrs = initCommand("flow_horizontalStyle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_verticalStyle(String value) {
	Map<String, Object> attrs = initCommand("flow_verticalStyle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_wrapMode(String value) {
	Map<String, Object> attrs = initCommand("flow_wrapMode");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_maxElementsWrap(int value) {
	Map<String, Object> attrs = initCommand("flow_maxElementsWrap");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_horizontalGap(String value) {
	Map<String, Object> attrs = initCommand("flow_horizontalGap");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_verticalGap(String value) {
	Map<String, Object> attrs = initCommand("flow_verticalGap");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_verticalAlign(String value) {
	Map<String, Object> attrs = initCommand("flow_verticalAlign");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_horizontalAlign(String value) {
	Map<String, Object> attrs = initCommand("flow_horizontalAlign");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_verticalBias(float value) {
	Map<String, Object> attrs = initCommand("flow_verticalBias");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_horizontalBias(float value) {
	Map<String, Object> attrs = initCommand("flow_horizontalBias");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_firstHorizontalStyle(String value) {
	Map<String, Object> attrs = initCommand("flow_firstHorizontalStyle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_firstVerticalStyle(String value) {
	Map<String, Object> attrs = initCommand("flow_firstVerticalStyle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_firstHorizontalBias(float value) {
	Map<String, Object> attrs = initCommand("flow_firstHorizontalBias");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder setFlow_firstVerticalBias(float value) {
	Map<String, Object> attrs = initCommand("flow_firstVerticalBias");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public FlowCommandBuilder tryGetConstraint_referenced_ids() {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getConstraint_referenced_ids() {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	return attrs.get("commandReturnValue");
}
public FlowCommandBuilder setConstraint_referenced_ids(String value) {
	Map<String, Object> attrs = initCommand("constraint_referenced_ids");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
}
public class FlowBean extends com.ashera.layout.ViewImpl.ViewBean{
		public FlowBean() {
			super(FlowImpl.this);
		}
public void setOrientation(String value) {
	getBuilder().reset().setOrientation(value).execute(true);
}

public void setFlow_horizontalStyle(String value) {
	getBuilder().reset().setFlow_horizontalStyle(value).execute(true);
}

public void setFlow_verticalStyle(String value) {
	getBuilder().reset().setFlow_verticalStyle(value).execute(true);
}

public void setFlow_wrapMode(String value) {
	getBuilder().reset().setFlow_wrapMode(value).execute(true);
}

public void setFlow_maxElementsWrap(int value) {
	getBuilder().reset().setFlow_maxElementsWrap(value).execute(true);
}

public void setFlow_horizontalGap(String value) {
	getBuilder().reset().setFlow_horizontalGap(value).execute(true);
}

public void setFlow_verticalGap(String value) {
	getBuilder().reset().setFlow_verticalGap(value).execute(true);
}

public void setFlow_verticalAlign(String value) {
	getBuilder().reset().setFlow_verticalAlign(value).execute(true);
}

public void setFlow_horizontalAlign(String value) {
	getBuilder().reset().setFlow_horizontalAlign(value).execute(true);
}

public void setFlow_verticalBias(float value) {
	getBuilder().reset().setFlow_verticalBias(value).execute(true);
}

public void setFlow_horizontalBias(float value) {
	getBuilder().reset().setFlow_horizontalBias(value).execute(true);
}

public void setFlow_firstHorizontalStyle(String value) {
	getBuilder().reset().setFlow_firstHorizontalStyle(value).execute(true);
}

public void setFlow_firstVerticalStyle(String value) {
	getBuilder().reset().setFlow_firstVerticalStyle(value).execute(true);
}

public void setFlow_firstHorizontalBias(float value) {
	getBuilder().reset().setFlow_firstHorizontalBias(value).execute(true);
}

public void setFlow_firstVerticalBias(float value) {
	getBuilder().reset().setFlow_firstVerticalBias(value).execute(true);
}

public Object getConstraint_referenced_ids() {
	return getBuilder().reset().tryGetConstraint_referenced_ids().execute(false).getConstraint_referenced_ids(); 
}
public void setConstraint_referenced_ids(String value) {
	getBuilder().reset().setConstraint_referenced_ids(value).execute(true);
}

}


	
	//end - body
	public void nativeRequestLayout() {
	    flow.getParent().requestLayout();
	}
	
	 private void nativeCreate(Map<String, Object> params) {
	    composite = new Composite(ViewImpl.getParent(this), org.eclipse.swt.SWT.BORDER);
	    composite.setVisible(false);
	}
}
