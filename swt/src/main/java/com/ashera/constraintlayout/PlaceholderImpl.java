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
		private List<IWidget> overlays;
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
			if (!isOverlay()) {
			}
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(PlaceholderImpl.this);
	        overlays = ViewImpl.drawOverlay(PlaceholderImpl.this, overlays);
			
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
        	if (!isWidgetDisposed()) {
        		ViewImpl.drawableStateChanged(PlaceholderImpl.this);
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
    		
    		IWidget widget = template.loadLazyWidgets(PlaceholderImpl.this.getParent());
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
			PlaceholderImpl.this.setAttribute(name, value, !(value instanceof String));
		}
        
    	public void setState0(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 0, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 1, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 2, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(PlaceholderImpl.this, 3, value);
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
	public boolean isWidgetDisposed() {
		return composite.isDisposed();
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
