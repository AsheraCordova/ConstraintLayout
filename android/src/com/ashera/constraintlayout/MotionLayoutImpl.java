package com.ashera.constraintlayout;
// start - imports
import java.util.*;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.*;
import android.widget.*;
import android.view.View.*;

import com.ashera.widget.BaseHasWidgets;

import android.annotation.SuppressLint;

import com.ashera.core.IFragment;
import com.ashera.widget.bus.*;
import com.ashera.converter.*;
import com.ashera.widget.bus.Event.*;
import com.ashera.widget.*;
import com.ashera.widget.IWidgetLifeCycleListener.*;
import com.ashera.layout.*;

import android.graphics.Canvas;
import android.widget.*;
import androidx.core.view.*;
import android.view.*;

import static com.ashera.widget.IWidget.*;
//end - imports

public class MotionLayoutImpl extends BaseHasWidgets {
	//start - body
	public final static String LOCAL_NAME = "androidx.constraintlayout.motion.widget.MotionLayout"; 
	public final static String GROUP_NAME = "androidx.constraintlayout.motion.widget.MotionLayout";
	private androidx.constraintlayout.motion.widget.MotionLayout motionLayout;
	

	
		@SuppressLint("NewApi")
		final static class OptimizationLevel extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("none",  0x0);
				mapping.put("legacy",  0x0);
				mapping.put("standard",  0x257);
				mapping.put("direct",  0x1);
				mapping.put("barrier",  0x2);
				mapping.put("chains",  0x4);
				mapping.put("dimensions",  0x8);
				mapping.put("ratio",  0x16);
				mapping.put("groups",  0x32);
				mapping.put("graph",  0x64);
				mapping.put("graph_wrap",  0x128);
				mapping.put("cache_measures",  0x256);
				mapping.put("dependency_ordering",  0x512);
				mapping.put("grouping",  0x1024);
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
		final static class Layout_constraintWidth extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("match_parent",  -1);
				mapping.put("wrap_content",  -2);
				mapping.put("match_constraint",  -3);
				mapping.put("wrap_content_constrained",  -4);
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
		final static class Layout_constraintHeight extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("match_parent",  -1);
				mapping.put("wrap_content",  -2);
				mapping.put("match_constraint",  -3);
				mapping.put("wrap_content_constrained",  -4);
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
		final static class Layout_constraintWidth_default extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("spread",  0x0);
				mapping.put("wrap",  0x1);
				mapping.put("percent",  0x2);
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
		final static class Layout_constraintHeight_default extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("spread",  0x0);
				mapping.put("wrap",  0x1);
				mapping.put("percent",  0x2);
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
		final static class Layout_constraintHorizontal_chainStyle extends AbstractEnumToIntConverter{
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
		final static class Layout_constraintVertical_chainStyle extends AbstractEnumToIntConverter{
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
		final static class Layout_wrapBehaviorInParent extends AbstractEnumToIntConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("included",  0x0);
				mapping.put("horizontal_only",  0x1);
				mapping.put("vertical_only",  0x2);
				mapping.put("skipped",  0x3);
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
	public void loadAttributes(String localName) {
		ViewGroupImpl.register(localName);

		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("minWidth").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("minHeight").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("maxWidth").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("maxHeight").withType("dimension"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layoutDescription").withType("string").withOrder(100));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("progress").withType("float").withOrder(100));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("reduceFlicker").withType("boolean"));
		ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.optimizationLevel", new OptimizationLevel());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("optimizationLevel").withType("androidx.constraintlayout.motion.widget.MotionLayout.optimizationLevel"));
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_optimizationLevel").withType("androidx.constraintlayout.motion.widget.MotionLayout.optimizationLevel"));
	
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.orientation", new Orientation());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_orientation").withType("androidx.constraintlayout.motion.widget.MotionLayout.orientation").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintCircle").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintCircleRadius").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintCircleAngle").withType("float").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintGuide_begin").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintGuide_end").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintGuide_percent").withType("float").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintLeft_toLeftOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintLeft_toRightOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintRight_toLeftOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintRight_toRightOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintTop_toTopOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintTop_toBottomOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintBottom_toTopOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintBottom_toBottomOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintBaseline_toBaselineOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintBaseline_toTopOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintBaseline_toBottomOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintStart_toEndOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintStart_toStartOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintEnd_toStartOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintEnd_toEndOf").withType("id").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginLeft").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginTop").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginRight").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginBottom").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginStart").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginEnd").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_goneMarginBaseline").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_marginBaseline").withType("dimension").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth", new Layout_constraintWidth());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintWidth").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight", new Layout_constraintHeight());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHeight").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constrainedWidth").withType("boolean").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constrainedHeight").withType("boolean").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHorizontal_bias").withType("float").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintVertical_bias").withType("float").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth_default", new Layout_constraintWidth_default());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintWidth_default").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth_default").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight_default", new Layout_constraintHeight_default());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHeight_default").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight_default").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintWidth_min").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintWidth_max").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintWidth_percent").withType("float").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHeight_min").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHeight_max").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHeight_percent").withType("float").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintDimensionRatio").withType("string").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHorizontal_weight").withType("float").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintVertical_weight").withType("float").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHorizontal_chainStyle", new Layout_constraintHorizontal_chainStyle());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintHorizontal_chainStyle").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHorizontal_chainStyle").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintVertical_chainStyle", new Layout_constraintVertical_chainStyle());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintVertical_chainStyle").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintVertical_chainStyle").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_editor_absoluteX").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_editor_absoluteY").withType("dimension").forChild());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_constraintTag").withType("string").forChild());
				ConverterFactory.register("androidx.constraintlayout.motion.widget.MotionLayout.layout_wrapBehaviorInParent", new Layout_wrapBehaviorInParent());
		WidgetFactory.registerAttribute(localName, new WidgetAttribute.Builder().withName("layout_wrapBehaviorInParent").withType("androidx.constraintlayout.motion.widget.MotionLayout.layout_wrapBehaviorInParent").forChild());
	}
	
	public MotionLayoutImpl() {
		super(GROUP_NAME, LOCAL_NAME);
	}
	public  MotionLayoutImpl(String localname) {
		super(GROUP_NAME, localname);
	}
	public  MotionLayoutImpl(String groupName, String localname) {
		super(groupName, localname);
	}

	@Override
	public IWidget newInstance() {
		return new MotionLayoutImpl(groupName, localName);
	}
	
	@SuppressLint("NewApi")
	@Override
	public void create(IFragment fragment, Map<String, Object> params) {
		super.create(fragment, params);
Context context = (Context) fragment.getRootActivity();
	Object systemStyle = params.get("systemStyle");
	Object systemAndroidAttrStyle = params.get("systemAndroidAttrStyle");
	
	if (systemStyle == null && systemAndroidAttrStyle == null) {
		motionLayout = new MotionLayoutExt(context);
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
			motionLayout = new MotionLayoutExt(context, null, defStyleAttr);	
		} else {
		}
		
	}

		
		nativeCreate(params);
		
		
		ViewGroupImpl.registerCommandConveter(this);

	}

	@Override
	public Object asWidget() {
		return motionLayout;
	}

	@Override
	public boolean remove(IWidget w) {
		boolean remove = super.remove(w);
		motionLayout.removeView((View) w.asWidget());
		return remove;
	}
	
	@Override
    public boolean remove(int index) {
		IWidget widget = widgets.get(index);
        boolean remove = super.remove(index);

        if (index + 1 <= motionLayout.getChildCount()) {
            motionLayout.removeViewAt(index);
        }    
        return remove;
    }

	
	@Override
	public void add(IWidget w, int index) {
		if (index != -2) {
			View view = (View) w.asWidget();
			createLayoutParams(view);
			    if (index == -1) {
			        motionLayout.addView(view);
			    } else {
			        motionLayout.addView(view, index);
			    }
		}
		
		ViewGroupImpl.nativeAddView(asNativeWidget(), w.asNativeWidget());
		super.add(w, index);
	}
	
	private void createLayoutParams(View view) {
		androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams layoutParams = (androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams) view.getLayoutParams();
		
		layoutParams = (androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams) view.getLayoutParams();
		if (layoutParams == null) {
			layoutParams = new androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams(-2, -2);
			view.setLayoutParams(layoutParams);
		}  else {
			layoutParams.height = -2;
			layoutParams.width = -2;
		}
	}
	
	private androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams getLayoutParams(View view) {
		return (androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams) view.getLayoutParams();		
	}
	
	@SuppressLint("NewApi")
	@Override
	public void setChildAttribute(IWidget w, WidgetAttribute key, String strValue, Object objValue) {
		View view = (View) w.asWidget();
		androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams layoutParams = getLayoutParams(view);
		ViewGroupImpl.setChildAttribute(w, key, objValue, layoutParams);		
		
		switch (key.getAttributeName()) {
		case "layout_width":
			layoutParams.width = (int) objValue;
			break;	
		case "layout_height":
			layoutParams.height = (int) objValue;
			break;
			case "layout_orientation": {
				
							layoutParams.orientation = ((int)objValue);
				
			}
			break;
			case "layout_constraintCircle": {
				
							layoutParams.circleConstraint = ((int)objValue);
				
			}
			break;
			case "layout_constraintCircleRadius": {
				
							layoutParams.circleRadius = ((int)objValue);
				
			}
			break;
			case "layout_constraintCircleAngle": {
				
							layoutParams.circleAngle = ((float)objValue);
				
			}
			break;
			case "layout_constraintGuide_begin": {
				
							layoutParams.guideBegin = ((int)objValue);
				
			}
			break;
			case "layout_constraintGuide_end": {
				
							layoutParams.guideEnd = ((int)objValue);
				
			}
			break;
			case "layout_constraintGuide_percent": {
				
							layoutParams.guidePercent = ((float)objValue);
				
			}
			break;
			case "layout_constraintLeft_toLeftOf": {
				
							layoutParams.leftToLeft = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.leftToLeft =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintLeft_toRightOf": {
				
							layoutParams.leftToRight = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.leftToRight =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintRight_toLeftOf": {
				
							layoutParams.rightToLeft = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.rightToLeft =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintRight_toRightOf": {
				
							layoutParams.rightToRight = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.rightToRight =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintTop_toTopOf": {
				
							layoutParams.topToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.topToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintTop_toBottomOf": {
				
							layoutParams.topToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.topToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintBottom_toTopOf": {
				
							layoutParams.bottomToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.bottomToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintBottom_toBottomOf": {
				
							layoutParams.bottomToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.bottomToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintBaseline_toBaselineOf": {
				
							layoutParams.baselineToBaseline = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToBaseline =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintBaseline_toTopOf": {
				
							layoutParams.baselineToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintBaseline_toBottomOf": {
				
							layoutParams.baselineToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintStart_toEndOf": {
				
							layoutParams.startToEnd = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.startToEnd =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintStart_toStartOf": {
				
							layoutParams.startToStart = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.startToStart =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintEnd_toStartOf": {
				
							layoutParams.endToStart = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.endToStart =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_constraintEnd_toEndOf": {
				
							layoutParams.endToEnd = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.endToEnd =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
				
			}
			break;
			case "layout_goneMarginLeft": {
				
							layoutParams.goneLeftMargin = ((int)objValue);
				
			}
			break;
			case "layout_goneMarginTop": {
				
							layoutParams.goneTopMargin = ((int)objValue);
				
			}
			break;
			case "layout_goneMarginRight": {
				
							layoutParams.goneRightMargin = ((int)objValue);
				
			}
			break;
			case "layout_goneMarginBottom": {
				
							layoutParams.goneBottomMargin = ((int)objValue);
				
			}
			break;
			case "layout_goneMarginStart": {
				
							layoutParams.goneStartMargin = ((int)objValue);
				
			}
			break;
			case "layout_goneMarginEnd": {
				
							layoutParams.goneEndMargin = ((int)objValue);
				
			}
			break;
			case "layout_goneMarginBaseline": {
				
							layoutParams.goneBaselineMargin = ((int)objValue);
				
			}
			break;
			case "layout_marginBaseline": {
				
							layoutParams.baselineMargin = ((int)objValue);
				
			}
			break;
			case "layout_constraintWidth": {
				
							 setLayout_constraintWidth(layoutParams, objValue);
				
			}
			break;
			case "layout_constraintHeight": {
				
							 setLayout_constraintHeight(layoutParams, objValue);
				
			}
			break;
			case "layout_constrainedWidth": {
				
							layoutParams.constrainedWidth = ((boolean)objValue);
				
			}
			break;
			case "layout_constrainedHeight": {
				
							layoutParams.constrainedHeight = ((boolean)objValue);
				
			}
			break;
			case "layout_constraintHorizontal_bias": {
				
							layoutParams.horizontalBias = ((float)objValue);
				
			}
			break;
			case "layout_constraintVertical_bias": {
				
							layoutParams.verticalBias = ((float)objValue);
				
			}
			break;
			case "layout_constraintWidth_default": {
				
							layoutParams.matchConstraintDefaultWidth = ((int)objValue);
				
			}
			break;
			case "layout_constraintHeight_default": {
				
							layoutParams.matchConstraintDefaultHeight = ((int)objValue);
				
			}
			break;
			case "layout_constraintWidth_min": {
				
							layoutParams.matchConstraintMinWidth = ((int)objValue);
				
			}
			break;
			case "layout_constraintWidth_max": {
				
							layoutParams.matchConstraintMaxWidth = ((int)objValue);
				
			}
			break;
			case "layout_constraintWidth_percent": {
				
							layoutParams.matchConstraintPercentWidth = ((float)objValue);
				
			}
			break;
			case "layout_constraintHeight_min": {
				
							layoutParams.matchConstraintMinHeight = ((int)objValue);
				
			}
			break;
			case "layout_constraintHeight_max": {
				
							layoutParams.matchConstraintMaxHeight = ((int)objValue);
				
			}
			break;
			case "layout_constraintHeight_percent": {
				
							layoutParams.matchConstraintPercentHeight = ((float)objValue);
				
			}
			break;
			case "layout_constraintDimensionRatio": {
				
							layoutParams.dimensionRatio = ((String)objValue);
				
			}
			break;
			case "layout_constraintHorizontal_weight": {
				
							layoutParams.horizontalWeight = ((float)objValue);
				
			}
			break;
			case "layout_constraintVertical_weight": {
				
							layoutParams.verticalWeight = ((float)objValue);
				
			}
			break;
			case "layout_constraintHorizontal_chainStyle": {
				
							layoutParams.horizontalChainStyle = ((int)objValue);
				
			}
			break;
			case "layout_constraintVertical_chainStyle": {
				
							layoutParams.verticalChainStyle = ((int)objValue);
				
			}
			break;
			case "layout_editor_absoluteX": {
				
							layoutParams.editorAbsoluteX = ((int)objValue);
				
			}
			break;
			case "layout_editor_absoluteY": {
				
							layoutParams.editorAbsoluteY = ((int)objValue);
				
			}
			break;
			case "layout_constraintTag": {
				
							layoutParams.constraintTag = ((String)objValue);
				
			}
			break;
			case "layout_wrapBehaviorInParent": {
				
							layoutParams.wrapBehaviorInParent = ((int)objValue);
				
			}
			break;
		default:
			break;
		}
		
		
		view.setLayoutParams(layoutParams);		
	}
	
	@SuppressLint("NewApi")
	@Override
	public Object getChildAttribute(IWidget w, WidgetAttribute key) {
		Object attributeValue = ViewGroupImpl.getChildAttribute(w, key);		
		if (attributeValue != null) {
			return attributeValue;
		}
		View view = (View) w.asWidget();
		androidx.constraintlayout.motion.widget.MotionLayout.LayoutParams layoutParams = getLayoutParams(view);

		switch (key.getAttributeName()) {
		case "layout_width":
			return layoutParams.width;
		case "layout_height":
			return layoutParams.height;
			case "layout_orientation": {
return layoutParams.orientation;			}

			case "layout_constraintCircle": {
return layoutParams.circleConstraint;			}

			case "layout_constraintCircleRadius": {
return layoutParams.circleRadius;			}

			case "layout_constraintCircleAngle": {
return layoutParams.circleAngle;			}

			case "layout_constraintGuide_begin": {
return layoutParams.guideBegin;			}

			case "layout_constraintGuide_end": {
return layoutParams.guideEnd;			}

			case "layout_constraintGuide_percent": {
return layoutParams.guidePercent;			}

			case "layout_constraintLeft_toLeftOf": {
return layoutParams.leftToLeft;			}

			case "layout_constraintLeft_toRightOf": {
return layoutParams.leftToRight;			}

			case "layout_constraintRight_toLeftOf": {
return layoutParams.rightToLeft;			}

			case "layout_constraintRight_toRightOf": {
return layoutParams.rightToRight;			}

			case "layout_constraintTop_toTopOf": {
return layoutParams.topToTop;			}

			case "layout_constraintTop_toBottomOf": {
return layoutParams.topToBottom;			}

			case "layout_constraintBottom_toTopOf": {
return layoutParams.bottomToTop;			}

			case "layout_constraintBottom_toBottomOf": {
return layoutParams.bottomToBottom;			}

			case "layout_constraintBaseline_toBaselineOf": {
return layoutParams.baselineToBaseline;			}

			case "layout_constraintBaseline_toTopOf": {
return layoutParams.baselineToTop;			}

			case "layout_constraintBaseline_toBottomOf": {
return layoutParams.baselineToBottom;			}

			case "layout_constraintStart_toEndOf": {
return layoutParams.startToEnd;			}

			case "layout_constraintStart_toStartOf": {
return layoutParams.startToStart;			}

			case "layout_constraintEnd_toStartOf": {
return layoutParams.endToStart;			}

			case "layout_constraintEnd_toEndOf": {
return layoutParams.endToEnd;			}

			case "layout_goneMarginLeft": {
return layoutParams.goneLeftMargin;			}

			case "layout_goneMarginTop": {
return layoutParams.goneTopMargin;			}

			case "layout_goneMarginRight": {
return layoutParams.goneRightMargin;			}

			case "layout_goneMarginBottom": {
return layoutParams.goneBottomMargin;			}

			case "layout_goneMarginStart": {
return layoutParams.goneStartMargin;			}

			case "layout_goneMarginEnd": {
return layoutParams.goneEndMargin;			}

			case "layout_goneMarginBaseline": {
return layoutParams.goneBaselineMargin;			}

			case "layout_marginBaseline": {
return layoutParams.baselineMargin;			}

			case "layout_constraintWidth": {
return getLayout_constraintWidth(layoutParams);			}

			case "layout_constraintHeight": {
return getLayout_constraintHeight(layoutParams);			}

			case "layout_constrainedWidth": {
return layoutParams.constrainedWidth;			}

			case "layout_constrainedHeight": {
return layoutParams.constrainedHeight;			}

			case "layout_constraintHorizontal_bias": {
return layoutParams.horizontalBias;			}

			case "layout_constraintVertical_bias": {
return layoutParams.verticalBias;			}

			case "layout_constraintWidth_default": {
return layoutParams.matchConstraintDefaultWidth;			}

			case "layout_constraintHeight_default": {
return layoutParams.matchConstraintDefaultHeight;			}

			case "layout_constraintWidth_min": {
return layoutParams.matchConstraintMinWidth;			}

			case "layout_constraintWidth_max": {
return layoutParams.matchConstraintMaxWidth;			}

			case "layout_constraintWidth_percent": {
return layoutParams.matchConstraintPercentWidth;			}

			case "layout_constraintHeight_min": {
return layoutParams.matchConstraintMinHeight;			}

			case "layout_constraintHeight_max": {
return layoutParams.matchConstraintMaxHeight;			}

			case "layout_constraintHeight_percent": {
return layoutParams.matchConstraintPercentHeight;			}

			case "layout_constraintDimensionRatio": {
return layoutParams.dimensionRatio;			}

			case "layout_constraintHorizontal_weight": {
return layoutParams.horizontalWeight;			}

			case "layout_constraintVertical_weight": {
return layoutParams.verticalWeight;			}

			case "layout_constraintHorizontal_chainStyle": {
return layoutParams.horizontalChainStyle;			}

			case "layout_constraintVertical_chainStyle": {
return layoutParams.verticalChainStyle;			}

			case "layout_editor_absoluteX": {
return layoutParams.editorAbsoluteX;			}

			case "layout_editor_absoluteY": {
return layoutParams.editorAbsoluteY;			}

			case "layout_constraintTag": {
return layoutParams.constraintTag;			}

			case "layout_wrapBehaviorInParent": {
return layoutParams.wrapBehaviorInParent;			}

		}
		
		return null;

	}
	
		
	public class MotionLayoutExt extends androidx.constraintlayout.motion.widget.MotionLayout implements ILifeCycleDecorator{
		private MeasureEvent measureFinished = new MeasureEvent();
		private OnLayoutEvent onLayoutEvent = new OnLayoutEvent();
		
		public IWidget getWidget() {
			return MotionLayoutImpl.this;
		}

		public MotionLayoutExt(Context context, android.util.AttributeSet attrs, int defStyleAttr) {
	        super(context, attrs, defStyleAttr);
	    }

		public MotionLayoutExt(Context context) {
			super(context);
			
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
				MotionLayoutImpl.this.invalidate();
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
        		ViewImpl.drawableStateChanged(MotionLayoutImpl.this);
        	}
        }
        
    	public void setState0(float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState0(int value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState0(double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	
    	public void setState0(Float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState0(Integer value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState0(Double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState0(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState1(float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState1(int value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState1(double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	
    	public void setState1(Float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState1(Integer value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState1(Double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState2(float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState2(int value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState2(double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	
    	public void setState2(Float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState2(Integer value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState2(Double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState3(float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	public void setState3(int value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	public void setState3(double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	
    	public void setState3(Float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	public void setState3(Integer value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	public void setState3(Double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
    	}
    	public void setState4(float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
    	public void setState4(int value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
    	public void setState4(double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
    	
    	public void setState4(Float value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
    	public void setState4(Integer value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
    	public void setState4(Double value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
    	public void setState4(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 4, value);
    	}
        	public void state0() {
        		ViewImpl.state(MotionLayoutImpl.this, 0);
        	}
        	public void state1() {
        		ViewImpl.state(MotionLayoutImpl.this, 1);
        	}
        	public void state2() {
        		ViewImpl.state(MotionLayoutImpl.this, 2);
        	}
        	public void state3() {
        		ViewImpl.state(MotionLayoutImpl.this, 3);
        	}
        	public void state4() {
        		ViewImpl.state(MotionLayoutImpl.this, 4);
        	}
                        
        public void stateYes() {
        	ViewImpl.stateYes(MotionLayoutImpl.this);
        	
        }
        
        public void stateNo() {
        	ViewImpl.stateNo(MotionLayoutImpl.this);
        }
     
	
	}
	@Override
	public Class getViewClass() {
		return MotionLayoutExt.class;
	}
	
	@SuppressLint("NewApi")
	@Override
	public void setAttribute(WidgetAttribute key, String strValue, Object objValue, ILifeCycleDecorator decorator) {
				ViewGroupImpl.setAttribute(this,  key, strValue, objValue, decorator);
		Object nativeWidget = asNativeWidget();
		switch (key.getAttributeName()) {
			case "minWidth": {


	motionLayout.setMinWidth((int)objValue);



			}
			break;
			case "minHeight": {


	motionLayout.setMinHeight((int)objValue);



			}
			break;
			case "maxWidth": {


	motionLayout.setMaxWidth((int)objValue);



			}
			break;
			case "maxHeight": {


	motionLayout.setMaxHeight((int)objValue);



			}
			break;
			case "layoutDescription": {


		setLayoutDescription(objValue);



			}
			break;
			case "progress": {


		motionLayout.setProgress((float) objValue);



			}
			break;
			case "reduceFlicker": {


		setReduceFlicker((boolean) objValue);



			}
			break;
			case "optimizationLevel": {


		 setOptimizationLevel(objValue);



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
		Object attributeValue = ViewGroupImpl.getAttribute(this, key, decorator);
		if (attributeValue != null) {
			return attributeValue;
		}
		Object nativeWidget = asNativeWidget();
		switch (key.getAttributeName()) {
			case "minWidth": {
return motionLayout.getMinWidth();			}
			case "minHeight": {
return motionLayout.getMinHeight();			}
			case "maxWidth": {
return motionLayout.getMaxWidth();			}
			case "maxHeight": {
return motionLayout.getMaxHeight();			}
			case "progress": {
return motionLayout.getProgress();			}
			case "layout_optimizationLevel":
			case "optimizationLevel": {
return getOptimizationLevel();			}
		}
		return null;
	}


	@Override
    public Object asNativeWidget() {
        return motionLayout;
    }
    private void nativeCreate(Map<String, Object> params) {
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
    
	

	private void setLayout_constraintHeight(androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams, Object objValue) {
		layoutParams.height = (int) objValue;
		layoutParams.constrainedHeight = true;
	}
	
	private void setLayout_constraintWidth(androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams, Object objValue) {
		layoutParams.width = (int) objValue;
		layoutParams.constrainedWidth = true;
	}
	
	
	
	private Object getLayout_constraintHeight(androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams) {
		return layoutParams.height;
	}
	
	private Object getLayout_constraintWidth(androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams) {
		return layoutParams.width;
	}
	
	
	private void setOptimizationLevel(Object objValue) {
		motionLayout.setOptimizationLevel((int) objValue);
	}
	
	
	
	private Object getOptimizationLevel() {
		return motionLayout.getOptimizationLevel();
	}
	


	@Override
	public void setId(String id){
		if (id == null) {
			id = UUID.randomUUID().toString();
		}
		if (id != null && !id.equals("")){
			super.setId(id);
			motionLayout.setId((int) quickConvert(id, "id"));
		}
	}
	
    

		//end - body
//start - postSetAttribute
private void postSetAttribute(WidgetAttribute key, String strValue, Object objValue,
		ILifeCycleDecorator decorator) {
	if (isInitialised()) {
		switch (key.getAttributeName()) {
		case "layoutDescription":
			motionLayout.updateState();
			motionLayout.requestLayout();
			break;
	
		default:
			break;
		}
	}
}
//end - postSetAttribute

	private void setLayoutDescription(Object objValue) {
		com.ashera.core.IActivity activity = fragment.getRootActivity();
		androidx.fragment.app.FragmentActivity fragmentActivity = (androidx.fragment.app.FragmentActivity) activity;
		String xml = ((String) objValue).replaceAll("@xml/", "");
		int layoutDescription =  motionLayout.getResources().getIdentifier(xml, "xml", fragmentActivity.getPackageName());
		if (isInitialised()) {
			motionLayout.loadLayoutDescription(layoutDescription);
		} else {
			motionLayout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
				@Override
				public boolean onPreDraw () {
					motionLayout.getViewTreeObserver().removeOnPreDrawListener(this);
					motionLayout.loadLayoutDescription(layoutDescription);
					getFragment().getEventBus().notifyObservers("layoutDescription", new Object());
					return true;
				}
			});
		}
		
	}
	
	
	private void setReduceFlicker(boolean objValue) {
	}
}
