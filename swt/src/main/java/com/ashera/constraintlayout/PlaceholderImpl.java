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
public class PlaceholderImpl extends BaseWidget {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.widget.Placeholder"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.widget.Placeholder";

	protected org.eclipse.swt.widgets.Composite composite;
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
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("content").withType("id").withUiFlag(UPDATE_UI_REQUEST_LAYOUT));
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

		public PlaceholderExt() {
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
			ViewImpl.setDrawableBounds(PlaceholderImpl.this, l, t, r, b);
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(PlaceholderImpl.this);
			
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
        	ViewImpl.drawableStateChanged(PlaceholderImpl.this);
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
    		IWidget widget = template.loadLazyWidgets(PlaceholderImpl.this.getParent());
    		return (View) widget.asWidget();
    	}        
        
    	@Override
		public void remeasure() {
			getFragment().remeasure();
		}
    	
        @Override
		public void removeFromParent() {
        	PlaceholderImpl.this.getParent().remove(PlaceholderImpl.this);
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
			PlaceholderImpl.this.setAttribute(name, value, true);
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
		placeholder = new PlaceholderExt();
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

	

	private void setContent(Object objValue) {
		placeholder.setContentId((int) objValue);
	}
	
	
	private Object getContent() {
		if (placeholder.getContent() == null) {
			return null;
		}
		return placeholder.getContent().getId();
	}
	

	
	    @Override
	    public Object asNativeWidget() {
	        return composite;
	    }
	@Override
	public void setId(String id){
		if (id != null && !id.equals("")){
			super.setId(id);
			placeholder.setId((int) quickConvert(id, "id"));
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
    
	
private PlaceholderCommandBuilder builder;
private PlaceholderBean bean;
public Object getPlugin(String plugin) {
	return WidgetFactory.getAttributable(plugin).newInstance(this);
}
public PlaceholderBean getBean() {
	if (bean == null) {
		bean = new PlaceholderBean();
	}
	return bean;
}
public PlaceholderCommandBuilder getBuilder() {
	if (builder == null) {
		builder = new PlaceholderCommandBuilder();
	}
	return builder;
}


public  class PlaceholderCommandBuilder extends com.ashera.layout.ViewImpl.ViewCommandBuilder <PlaceholderCommandBuilder> {
    public PlaceholderCommandBuilder() {
	}
	
	public PlaceholderCommandBuilder execute(boolean setter) {
		if (setter) {
			executeCommand(command, null, IWidget.COMMAND_EXEC_SETTER_METHOD);
			getFragment().remeasure();
		}
		executeCommand(command, null, IWidget.COMMAND_EXEC_GETTER_METHOD);
return this;	}

public PlaceholderCommandBuilder tryGetPlaceholder_emptyVisibility() {
	Map<String, Object> attrs = initCommand("placeholder_emptyVisibility");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getPlaceholder_emptyVisibility() {
	Map<String, Object> attrs = initCommand("placeholder_emptyVisibility");
	return attrs.get("commandReturnValue");
}
public PlaceholderCommandBuilder setPlaceholder_emptyVisibility(String value) {
	Map<String, Object> attrs = initCommand("placeholder_emptyVisibility");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public PlaceholderCommandBuilder tryGetContent() {
	Map<String, Object> attrs = initCommand("content");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getContent() {
	Map<String, Object> attrs = initCommand("content");
	return attrs.get("commandReturnValue");
}
public PlaceholderCommandBuilder setContent(String value) {
	Map<String, Object> attrs = initCommand("content");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
}
public class PlaceholderBean extends com.ashera.layout.ViewImpl.ViewBean{
		public PlaceholderBean() {
			super(PlaceholderImpl.this);
		}
public Object getPlaceholder_emptyVisibility() {
	return getBuilder().reset().tryGetPlaceholder_emptyVisibility().execute(false).getPlaceholder_emptyVisibility(); 
}
public void setPlaceholder_emptyVisibility(String value) {
	getBuilder().reset().setPlaceholder_emptyVisibility(value).execute(true);
}

public Object getContent() {
	return getBuilder().reset().tryGetContent().execute(false).getContent(); 
}
public void setContent(String value) {
	getBuilder().reset().setContent(value).execute(true);
}

}


    
	//end - body
	public void nativeRequestLayout() {
	    placeholder.getParent().requestLayout();
	}
	
	 private void nativeCreate(Map<String, Object> params) {
        composite = new Composite(ViewImpl.getParent(this), org.eclipse.swt.SWT.NONE);
        composite.setVisible(false);
    }
}
