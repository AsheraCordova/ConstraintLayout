package com.ashera.constraintlayout;

// start - imports
import java.util.*;

import r.android.annotation.SuppressLint;
import r.android.content.Context;
import r.android.os.Build;
import r.android.view.*;
import r.android.widget.*;
import r.android.view.View.*;

import com.ashera.widget.BaseHasWidgets;

import r.android.annotation.SuppressLint;

import com.ashera.core.IFragment;
import com.ashera.widget.bus.*;
import com.ashera.converter.*;
import com.ashera.widget.bus.Event.*;
import com.ashera.widget.*;
import com.ashera.widget.IWidgetLifeCycleListener.*;
import com.ashera.layout.*;

import androidx.core.view.*;

import static com.ashera.widget.IWidget.*;
//end - imports

public class MotionLayoutImpl extends BaseHasWidgets {
	//start - body
	private Object pane;
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
		motionLayout = new MotionLayoutExt();
		
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
		 nativeRemoveView(w);            
		return remove;
	}
	
	@Override
    public boolean remove(int index) {
		IWidget widget = widgets.get(index);
        boolean remove = super.remove(index);

        if (index + 1 <= motionLayout.getChildCount()) {
            motionLayout.removeViewAt(index);
            nativeRemoveView(widget);
        }    
        return remove;
    }

	private void nativeRemoveView(IWidget widget) {
		r.android.animation.LayoutTransition layoutTransition = motionLayout.getLayoutTransition();
		if (layoutTransition != null && (
				layoutTransition.isTransitionTypeEnabled(r.android.animation.LayoutTransition.CHANGE_DISAPPEARING) ||
				layoutTransition.isTransitionTypeEnabled(r.android.animation.LayoutTransition.DISAPPEARING)
				)) {
			addToBufferedRunnables(() -> ViewGroupImpl.nativeRemoveView(widget));          
		} else {
			ViewGroupImpl.nativeRemoveView(widget);
		}
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
		private List<IWidget> overlays;
		public IWidget getWidget() {
			return MotionLayoutImpl.this;
		}

		public MotionLayoutExt() {
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
			ViewImpl.setDrawableBounds(MotionLayoutImpl.this, l, t, r, b);
			if (!isOverlay()) {
			ViewImpl.nativeMakeFrame(asNativeWidget(), l, t, r, b);
			}
			replayBufferedEvents();
	        ViewImpl.redrawDrawables(MotionLayoutImpl.this);
	        overlays = ViewImpl.drawOverlay(MotionLayoutImpl.this, overlays);
			
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
        		ViewImpl.drawableStateChanged(MotionLayoutImpl.this);
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
    		
    		IWidget widget = template.loadLazyWidgets(MotionLayoutImpl.this);
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
        	MotionLayoutImpl.this.getParent().remove(MotionLayoutImpl.this);
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
			MotionLayoutImpl.this.setAttribute(name, value, !(value instanceof String));
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
    		ViewImpl.setState(MotionLayoutImpl.this, 0, value);
    	}
    	public void setState1(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 1, value);
    	}
    	public void setState2(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 2, value);
    	}
    	public void setState3(Object value) {
    		ViewImpl.setState(MotionLayoutImpl.this, 3, value);
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
     
		@Override
		public void endViewTransition(r.android.view.View view) {
			super.endViewTransition(view);
			runBufferedRunnables();
		}
	
	}
	@Override
	public Class getViewClass() {
		return MotionLayoutExt.class;
	}
	
	@SuppressLint("NewApi")
	@Override
	public void setAttribute(WidgetAttribute key, String strValue, Object objValue, ILifeCycleDecorator decorator) {
				ViewGroupImpl.setAttribute(this, key, strValue, objValue, decorator);
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
        return pane;
    }
    private void nativeCreate(Map<String, Object> params) {
        pane = new org.eclipse.swt.widgets.Composite((org.eclipse.swt.widgets.Composite)ViewImpl.getParent(this), getStyle(params, fragment));
        ((org.eclipse.swt.widgets.Composite)pane).setLayout(new org.eclipse.nebula.widgets.layout.AbsoluteLayout());
    }
    public boolean isWidgetDisposed() {
		return ((org.eclipse.swt.widgets.Control) pane).isDisposed();
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

	
private MotionLayoutCommandBuilder builder;
private MotionLayoutBean bean;
public Object getPlugin(String plugin) {
	return WidgetFactory.getAttributable(plugin).newInstance(this);
}
public MotionLayoutBean getBean() {
	if (bean == null) {
		bean = new MotionLayoutBean();
	}
	return bean;
}
public MotionLayoutCommandBuilder getBuilder() {
	if (builder == null) {
		builder = new MotionLayoutCommandBuilder();
	}
	return builder;
}


public  class MotionLayoutCommandBuilder extends com.ashera.layout.ViewGroupImpl.ViewGroupCommandBuilder <MotionLayoutCommandBuilder> {
    public MotionLayoutCommandBuilder() {
	}
	
	public MotionLayoutCommandBuilder execute(boolean setter) {
		if (setter) {
			executeCommand(command, null, IWidget.COMMAND_EXEC_SETTER_METHOD);
			getFragment().remeasure();
		}
		executeCommand(command, null, IWidget.COMMAND_EXEC_GETTER_METHOD);
return this;	}

public MotionLayoutCommandBuilder tryGetMinWidth() {
	Map<String, Object> attrs = initCommand("minWidth");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getMinWidth() {
	Map<String, Object> attrs = initCommand("minWidth");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setMinWidth(String value) {
	Map<String, Object> attrs = initCommand("minWidth");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder tryGetMinHeight() {
	Map<String, Object> attrs = initCommand("minHeight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getMinHeight() {
	Map<String, Object> attrs = initCommand("minHeight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setMinHeight(String value) {
	Map<String, Object> attrs = initCommand("minHeight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder tryGetMaxWidth() {
	Map<String, Object> attrs = initCommand("maxWidth");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getMaxWidth() {
	Map<String, Object> attrs = initCommand("maxWidth");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setMaxWidth(String value) {
	Map<String, Object> attrs = initCommand("maxWidth");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder tryGetMaxHeight() {
	Map<String, Object> attrs = initCommand("maxHeight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getMaxHeight() {
	Map<String, Object> attrs = initCommand("maxHeight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setMaxHeight(String value) {
	Map<String, Object> attrs = initCommand("maxHeight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder setLayoutDescription(String value) {
	Map<String, Object> attrs = initCommand("layoutDescription");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder tryGetProgress() {
	Map<String, Object> attrs = initCommand("progress");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getProgress() {
	Map<String, Object> attrs = initCommand("progress");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setProgress(float value) {
	Map<String, Object> attrs = initCommand("progress");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder setReduceFlicker(boolean value) {
	Map<String, Object> attrs = initCommand("reduceFlicker");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder tryGetOptimizationLevel() {
	Map<String, Object> attrs = initCommand("optimizationLevel");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getOptimizationLevel() {
	Map<String, Object> attrs = initCommand("optimizationLevel");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setOptimizationLevel(String value) {
	Map<String, Object> attrs = initCommand("optimizationLevel");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandBuilder tryGetLayout_optimizationLevel() {
	Map<String, Object> attrs = initCommand("optimizationLevel");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayout_optimizationLevel() {
	Map<String, Object> attrs = initCommand("optimizationLevel");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandBuilder setLayout_optimizationLevel(String value) {
	Map<String, Object> attrs = initCommand("layout_optimizationLevel");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
}
public class MotionLayoutBean extends com.ashera.layout.ViewGroupImpl.ViewGroupBean{
		public MotionLayoutBean() {
			super(MotionLayoutImpl.this);
		}
public Object getMinWidth() {
	return getBuilder().reset().tryGetMinWidth().execute(false).getMinWidth(); 
}
public void setMinWidth(String value) {
	getBuilder().reset().setMinWidth(value).execute(true);
}

public Object getMinHeight() {
	return getBuilder().reset().tryGetMinHeight().execute(false).getMinHeight(); 
}
public void setMinHeight(String value) {
	getBuilder().reset().setMinHeight(value).execute(true);
}

public Object getMaxWidth() {
	return getBuilder().reset().tryGetMaxWidth().execute(false).getMaxWidth(); 
}
public void setMaxWidth(String value) {
	getBuilder().reset().setMaxWidth(value).execute(true);
}

public Object getMaxHeight() {
	return getBuilder().reset().tryGetMaxHeight().execute(false).getMaxHeight(); 
}
public void setMaxHeight(String value) {
	getBuilder().reset().setMaxHeight(value).execute(true);
}

public void setLayoutDescription(String value) {
	getBuilder().reset().setLayoutDescription(value).execute(true);
}

public Object getProgress() {
	return getBuilder().reset().tryGetProgress().execute(false).getProgress(); 
}
public void setProgress(float value) {
	getBuilder().reset().setProgress(value).execute(true);
}

public void setReduceFlicker(boolean value) {
	getBuilder().reset().setReduceFlicker(value).execute(true);
}

public Object getOptimizationLevel() {
	return getBuilder().reset().tryGetOptimizationLevel().execute(false).getOptimizationLevel(); 
}
public void setOptimizationLevel(String value) {
	getBuilder().reset().setOptimizationLevel(value).execute(true);
}

public Object getLayout_optimizationLevel() {
	return getBuilder().reset().tryGetLayout_optimizationLevel().execute(false).getLayout_optimizationLevel();
}
public void setLayout_optimizationLevel(String value) {
	getBuilder().reset().setLayout_optimizationLevel(value).execute(true); 
}

}


private MotionLayoutCommandParamsBuilder paramsBuilder;
private MotionLayoutParamsBean paramsBean;

public MotionLayoutParamsBean getParamsBean() {
	if (paramsBean == null) {
		paramsBean = new MotionLayoutParamsBean();
	}
	return paramsBean;
}
public MotionLayoutCommandParamsBuilder getParamsBuilder() {
	if (paramsBuilder == null) {
		paramsBuilder = new MotionLayoutCommandParamsBuilder();
	}
	return paramsBuilder;
}



public class MotionLayoutParamsBean extends com.ashera.layout.ViewGroupImpl.ViewGroupParamsBean{
public Object getLayoutOrientation(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutOrientation().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutOrientation();
}
public void setLayoutOrientation(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutOrientation(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintCircle(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintCircle().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintCircle();
}
public void setLayoutConstraintCircle(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintCircle(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintCircleRadius(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintCircleRadius().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintCircleRadius();
}
public void setLayoutConstraintCircleRadius(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintCircleRadius(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintCircleAngle(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintCircleAngle().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintCircleAngle();
}
public void setLayoutConstraintCircleAngle(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintCircleAngle(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintGuide_begin(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintGuide_begin().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintGuide_begin();
}
public void setLayoutConstraintGuide_begin(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintGuide_begin(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintGuide_end(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintGuide_end().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintGuide_end();
}
public void setLayoutConstraintGuide_end(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintGuide_end(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintGuide_percent(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintGuide_percent().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintGuide_percent();
}
public void setLayoutConstraintGuide_percent(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintGuide_percent(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintLeft_toLeftOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintLeft_toLeftOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintLeft_toLeftOf();
}
public void setLayoutConstraintLeft_toLeftOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintLeft_toLeftOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintLeft_toRightOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintLeft_toRightOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintLeft_toRightOf();
}
public void setLayoutConstraintLeft_toRightOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintLeft_toRightOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintRight_toLeftOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintRight_toLeftOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintRight_toLeftOf();
}
public void setLayoutConstraintRight_toLeftOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintRight_toLeftOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintRight_toRightOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintRight_toRightOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintRight_toRightOf();
}
public void setLayoutConstraintRight_toRightOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintRight_toRightOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintTop_toTopOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintTop_toTopOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintTop_toTopOf();
}
public void setLayoutConstraintTop_toTopOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintTop_toTopOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintTop_toBottomOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintTop_toBottomOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintTop_toBottomOf();
}
public void setLayoutConstraintTop_toBottomOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintTop_toBottomOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintBottom_toTopOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintBottom_toTopOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintBottom_toTopOf();
}
public void setLayoutConstraintBottom_toTopOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintBottom_toTopOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintBottom_toBottomOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintBottom_toBottomOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintBottom_toBottomOf();
}
public void setLayoutConstraintBottom_toBottomOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintBottom_toBottomOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintBaseline_toBaselineOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintBaseline_toBaselineOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintBaseline_toBaselineOf();
}
public void setLayoutConstraintBaseline_toBaselineOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintBaseline_toBaselineOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintBaseline_toTopOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintBaseline_toTopOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintBaseline_toTopOf();
}
public void setLayoutConstraintBaseline_toTopOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintBaseline_toTopOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintBaseline_toBottomOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintBaseline_toBottomOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintBaseline_toBottomOf();
}
public void setLayoutConstraintBaseline_toBottomOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintBaseline_toBottomOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintStart_toEndOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintStart_toEndOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintStart_toEndOf();
}
public void setLayoutConstraintStart_toEndOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintStart_toEndOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintStart_toStartOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintStart_toStartOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintStart_toStartOf();
}
public void setLayoutConstraintStart_toStartOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintStart_toStartOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintEnd_toStartOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintEnd_toStartOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintEnd_toStartOf();
}
public void setLayoutConstraintEnd_toStartOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintEnd_toStartOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintEnd_toEndOf(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintEnd_toEndOf().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintEnd_toEndOf();
}
public void setLayoutConstraintEnd_toEndOf(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintEnd_toEndOf(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginLeft(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginLeft().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginLeft();
}
public void setLayoutGoneMarginLeft(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginLeft(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginTop(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginTop().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginTop();
}
public void setLayoutGoneMarginTop(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginTop(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginRight(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginRight().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginRight();
}
public void setLayoutGoneMarginRight(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginRight(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginBottom(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginBottom().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginBottom();
}
public void setLayoutGoneMarginBottom(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginBottom(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginStart(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginStart().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginStart();
}
public void setLayoutGoneMarginStart(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginStart(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginEnd(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginEnd().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginEnd();
}
public void setLayoutGoneMarginEnd(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginEnd(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutGoneMarginBaseline(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutGoneMarginBaseline().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutGoneMarginBaseline();
}
public void setLayoutGoneMarginBaseline(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutGoneMarginBaseline(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutMarginBaseline(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutMarginBaseline().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutMarginBaseline();
}
public void setLayoutMarginBaseline(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutMarginBaseline(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintWidth(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintWidth().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintWidth();
}
public void setLayoutConstraintWidth(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintWidth(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHeight(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHeight().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHeight();
}
public void setLayoutConstraintHeight(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHeight(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object isLayoutConstrainedWidth(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstrainedWidth().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().isLayoutConstrainedWidth();
}
public void setLayoutConstrainedWidth(IWidget w, boolean value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstrainedWidth(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object isLayoutConstrainedHeight(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstrainedHeight().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().isLayoutConstrainedHeight();
}
public void setLayoutConstrainedHeight(IWidget w, boolean value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstrainedHeight(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHorizontal_bias(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHorizontal_bias().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHorizontal_bias();
}
public void setLayoutConstraintHorizontal_bias(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHorizontal_bias(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintVertical_bias(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintVertical_bias().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintVertical_bias();
}
public void setLayoutConstraintVertical_bias(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintVertical_bias(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintWidth_default(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintWidth_default().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintWidth_default();
}
public void setLayoutConstraintWidth_default(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintWidth_default(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHeight_default(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHeight_default().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHeight_default();
}
public void setLayoutConstraintHeight_default(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHeight_default(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintWidth_min(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintWidth_min().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintWidth_min();
}
public void setLayoutConstraintWidth_min(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintWidth_min(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintWidth_max(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintWidth_max().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintWidth_max();
}
public void setLayoutConstraintWidth_max(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintWidth_max(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintWidth_percent(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintWidth_percent().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintWidth_percent();
}
public void setLayoutConstraintWidth_percent(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintWidth_percent(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHeight_min(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHeight_min().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHeight_min();
}
public void setLayoutConstraintHeight_min(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHeight_min(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHeight_max(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHeight_max().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHeight_max();
}
public void setLayoutConstraintHeight_max(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHeight_max(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHeight_percent(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHeight_percent().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHeight_percent();
}
public void setLayoutConstraintHeight_percent(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHeight_percent(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintDimensionRatio(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintDimensionRatio().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintDimensionRatio();
}
public void setLayoutConstraintDimensionRatio(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintDimensionRatio(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHorizontal_weight(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHorizontal_weight().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHorizontal_weight();
}
public void setLayoutConstraintHorizontal_weight(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHorizontal_weight(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintVertical_weight(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintVertical_weight().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintVertical_weight();
}
public void setLayoutConstraintVertical_weight(IWidget w, float value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintVertical_weight(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintHorizontal_chainStyle(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintHorizontal_chainStyle().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintHorizontal_chainStyle();
}
public void setLayoutConstraintHorizontal_chainStyle(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintHorizontal_chainStyle(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintVertical_chainStyle(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintVertical_chainStyle().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintVertical_chainStyle();
}
public void setLayoutConstraintVertical_chainStyle(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintVertical_chainStyle(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutEditor_absoluteX(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutEditor_absoluteX().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutEditor_absoluteX();
}
public void setLayoutEditor_absoluteX(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutEditor_absoluteX(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutEditor_absoluteY(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutEditor_absoluteY().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutEditor_absoluteY();
}
public void setLayoutEditor_absoluteY(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutEditor_absoluteY(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutConstraintTag(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutConstraintTag().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutConstraintTag();
}
public void setLayoutConstraintTag(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutConstraintTag(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

public Object getLayoutWrapBehaviorInParent(IWidget w) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	java.util.Map<String, Object> command = getParamsBuilder().reset().tryGetLayoutWrapBehaviorInParent().getCommand();
	
	layoutParams.put("layoutParams", command);
	w.executeCommand(layoutParams, null, COMMAND_EXEC_GETTER_METHOD); 
	return getParamsBuilder().getLayoutWrapBehaviorInParent();
}
public void setLayoutWrapBehaviorInParent(IWidget w, String value) {
	java.util.Map<String, Object> layoutParams = new java.util.HashMap<String, Object>();
	layoutParams.put("layoutParams", getParamsBuilder().reset().setLayoutWrapBehaviorInParent(value).getCommand());
	w.executeCommand(layoutParams, null, COMMAND_EXEC_SETTER_METHOD);
	w.getFragment().remeasure();
}

}





public class MotionLayoutCommandParamsBuilder extends com.ashera.layout.ViewGroupImpl.ViewGroupCommandParamsBuilder<MotionLayoutCommandParamsBuilder>{
public MotionLayoutCommandParamsBuilder tryGetLayoutOrientation() {
	Map<String, Object> attrs = initCommand("layout_orientation");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutOrientation() {
	Map<String, Object> attrs = initCommand("layout_orientation");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutOrientation(String value) {
	Map<String, Object> attrs = initCommand("layout_orientation");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintCircle() {
	Map<String, Object> attrs = initCommand("layout_constraintCircle");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintCircle() {
	Map<String, Object> attrs = initCommand("layout_constraintCircle");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintCircle(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintCircle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintCircleRadius() {
	Map<String, Object> attrs = initCommand("layout_constraintCircleRadius");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintCircleRadius() {
	Map<String, Object> attrs = initCommand("layout_constraintCircleRadius");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintCircleRadius(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintCircleRadius");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintCircleAngle() {
	Map<String, Object> attrs = initCommand("layout_constraintCircleAngle");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintCircleAngle() {
	Map<String, Object> attrs = initCommand("layout_constraintCircleAngle");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintCircleAngle(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintCircleAngle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintGuide_begin() {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_begin");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintGuide_begin() {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_begin");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintGuide_begin(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_begin");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintGuide_end() {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_end");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintGuide_end() {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_end");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintGuide_end(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_end");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintGuide_percent() {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_percent");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintGuide_percent() {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_percent");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintGuide_percent(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintGuide_percent");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintLeft_toLeftOf() {
	Map<String, Object> attrs = initCommand("layout_constraintLeft_toLeftOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintLeft_toLeftOf() {
	Map<String, Object> attrs = initCommand("layout_constraintLeft_toLeftOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintLeft_toLeftOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintLeft_toLeftOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintLeft_toRightOf() {
	Map<String, Object> attrs = initCommand("layout_constraintLeft_toRightOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintLeft_toRightOf() {
	Map<String, Object> attrs = initCommand("layout_constraintLeft_toRightOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintLeft_toRightOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintLeft_toRightOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintRight_toLeftOf() {
	Map<String, Object> attrs = initCommand("layout_constraintRight_toLeftOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintRight_toLeftOf() {
	Map<String, Object> attrs = initCommand("layout_constraintRight_toLeftOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintRight_toLeftOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintRight_toLeftOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintRight_toRightOf() {
	Map<String, Object> attrs = initCommand("layout_constraintRight_toRightOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintRight_toRightOf() {
	Map<String, Object> attrs = initCommand("layout_constraintRight_toRightOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintRight_toRightOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintRight_toRightOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintTop_toTopOf() {
	Map<String, Object> attrs = initCommand("layout_constraintTop_toTopOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintTop_toTopOf() {
	Map<String, Object> attrs = initCommand("layout_constraintTop_toTopOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintTop_toTopOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintTop_toTopOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintTop_toBottomOf() {
	Map<String, Object> attrs = initCommand("layout_constraintTop_toBottomOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintTop_toBottomOf() {
	Map<String, Object> attrs = initCommand("layout_constraintTop_toBottomOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintTop_toBottomOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintTop_toBottomOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintBottom_toTopOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBottom_toTopOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintBottom_toTopOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBottom_toTopOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintBottom_toTopOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintBottom_toTopOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintBottom_toBottomOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBottom_toBottomOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintBottom_toBottomOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBottom_toBottomOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintBottom_toBottomOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintBottom_toBottomOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintBaseline_toBaselineOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toBaselineOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintBaseline_toBaselineOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toBaselineOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintBaseline_toBaselineOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toBaselineOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintBaseline_toTopOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toTopOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintBaseline_toTopOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toTopOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintBaseline_toTopOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toTopOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintBaseline_toBottomOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toBottomOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintBaseline_toBottomOf() {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toBottomOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintBaseline_toBottomOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintBaseline_toBottomOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintStart_toEndOf() {
	Map<String, Object> attrs = initCommand("layout_constraintStart_toEndOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintStart_toEndOf() {
	Map<String, Object> attrs = initCommand("layout_constraintStart_toEndOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintStart_toEndOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintStart_toEndOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintStart_toStartOf() {
	Map<String, Object> attrs = initCommand("layout_constraintStart_toStartOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintStart_toStartOf() {
	Map<String, Object> attrs = initCommand("layout_constraintStart_toStartOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintStart_toStartOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintStart_toStartOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintEnd_toStartOf() {
	Map<String, Object> attrs = initCommand("layout_constraintEnd_toStartOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintEnd_toStartOf() {
	Map<String, Object> attrs = initCommand("layout_constraintEnd_toStartOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintEnd_toStartOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintEnd_toStartOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintEnd_toEndOf() {
	Map<String, Object> attrs = initCommand("layout_constraintEnd_toEndOf");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintEnd_toEndOf() {
	Map<String, Object> attrs = initCommand("layout_constraintEnd_toEndOf");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintEnd_toEndOf(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintEnd_toEndOf");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginLeft() {
	Map<String, Object> attrs = initCommand("layout_goneMarginLeft");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginLeft() {
	Map<String, Object> attrs = initCommand("layout_goneMarginLeft");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginLeft(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginLeft");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginTop() {
	Map<String, Object> attrs = initCommand("layout_goneMarginTop");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginTop() {
	Map<String, Object> attrs = initCommand("layout_goneMarginTop");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginTop(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginTop");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginRight() {
	Map<String, Object> attrs = initCommand("layout_goneMarginRight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginRight() {
	Map<String, Object> attrs = initCommand("layout_goneMarginRight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginRight(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginRight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginBottom() {
	Map<String, Object> attrs = initCommand("layout_goneMarginBottom");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginBottom() {
	Map<String, Object> attrs = initCommand("layout_goneMarginBottom");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginBottom(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginBottom");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginStart() {
	Map<String, Object> attrs = initCommand("layout_goneMarginStart");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginStart() {
	Map<String, Object> attrs = initCommand("layout_goneMarginStart");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginStart(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginStart");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginEnd() {
	Map<String, Object> attrs = initCommand("layout_goneMarginEnd");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginEnd() {
	Map<String, Object> attrs = initCommand("layout_goneMarginEnd");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginEnd(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginEnd");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutGoneMarginBaseline() {
	Map<String, Object> attrs = initCommand("layout_goneMarginBaseline");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutGoneMarginBaseline() {
	Map<String, Object> attrs = initCommand("layout_goneMarginBaseline");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutGoneMarginBaseline(String value) {
	Map<String, Object> attrs = initCommand("layout_goneMarginBaseline");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutMarginBaseline() {
	Map<String, Object> attrs = initCommand("layout_marginBaseline");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutMarginBaseline() {
	Map<String, Object> attrs = initCommand("layout_marginBaseline");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutMarginBaseline(String value) {
	Map<String, Object> attrs = initCommand("layout_marginBaseline");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintWidth() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintWidth() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintWidth(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintWidth");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHeight() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHeight() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHeight(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintHeight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstrainedWidth() {
	Map<String, Object> attrs = initCommand("layout_constrainedWidth");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object isLayoutConstrainedWidth() {
	Map<String, Object> attrs = initCommand("layout_constrainedWidth");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstrainedWidth(boolean value) {
	Map<String, Object> attrs = initCommand("layout_constrainedWidth");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstrainedHeight() {
	Map<String, Object> attrs = initCommand("layout_constrainedHeight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object isLayoutConstrainedHeight() {
	Map<String, Object> attrs = initCommand("layout_constrainedHeight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstrainedHeight(boolean value) {
	Map<String, Object> attrs = initCommand("layout_constrainedHeight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHorizontal_bias() {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_bias");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHorizontal_bias() {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_bias");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHorizontal_bias(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_bias");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintVertical_bias() {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_bias");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintVertical_bias() {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_bias");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintVertical_bias(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_bias");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintWidth_default() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_default");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintWidth_default() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_default");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintWidth_default(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_default");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHeight_default() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_default");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHeight_default() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_default");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHeight_default(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_default");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintWidth_min() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_min");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintWidth_min() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_min");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintWidth_min(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_min");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintWidth_max() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_max");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintWidth_max() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_max");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintWidth_max(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_max");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintWidth_percent() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_percent");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintWidth_percent() {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_percent");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintWidth_percent(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintWidth_percent");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHeight_min() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_min");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHeight_min() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_min");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHeight_min(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_min");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHeight_max() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_max");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHeight_max() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_max");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHeight_max(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_max");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHeight_percent() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_percent");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHeight_percent() {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_percent");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHeight_percent(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintHeight_percent");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintDimensionRatio() {
	Map<String, Object> attrs = initCommand("layout_constraintDimensionRatio");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintDimensionRatio() {
	Map<String, Object> attrs = initCommand("layout_constraintDimensionRatio");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintDimensionRatio(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintDimensionRatio");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHorizontal_weight() {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_weight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHorizontal_weight() {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_weight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHorizontal_weight(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_weight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintVertical_weight() {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_weight");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintVertical_weight() {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_weight");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintVertical_weight(float value) {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_weight");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintHorizontal_chainStyle() {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_chainStyle");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintHorizontal_chainStyle() {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_chainStyle");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintHorizontal_chainStyle(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintHorizontal_chainStyle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintVertical_chainStyle() {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_chainStyle");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintVertical_chainStyle() {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_chainStyle");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintVertical_chainStyle(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintVertical_chainStyle");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutEditor_absoluteX() {
	Map<String, Object> attrs = initCommand("layout_editor_absoluteX");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutEditor_absoluteX() {
	Map<String, Object> attrs = initCommand("layout_editor_absoluteX");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutEditor_absoluteX(String value) {
	Map<String, Object> attrs = initCommand("layout_editor_absoluteX");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutEditor_absoluteY() {
	Map<String, Object> attrs = initCommand("layout_editor_absoluteY");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutEditor_absoluteY() {
	Map<String, Object> attrs = initCommand("layout_editor_absoluteY");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutEditor_absoluteY(String value) {
	Map<String, Object> attrs = initCommand("layout_editor_absoluteY");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutConstraintTag() {
	Map<String, Object> attrs = initCommand("layout_constraintTag");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutConstraintTag() {
	Map<String, Object> attrs = initCommand("layout_constraintTag");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutConstraintTag(String value) {
	Map<String, Object> attrs = initCommand("layout_constraintTag");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
public MotionLayoutCommandParamsBuilder tryGetLayoutWrapBehaviorInParent() {
	Map<String, Object> attrs = initCommand("layout_wrapBehaviorInParent");
	attrs.put("type", "attribute");
	attrs.put("getter", true);
	attrs.put("orderGet", ++orderGet);
return this;}

public Object getLayoutWrapBehaviorInParent() {
	Map<String, Object> attrs = initCommand("layout_wrapBehaviorInParent");
	return attrs.get("commandReturnValue");
}
public MotionLayoutCommandParamsBuilder setLayoutWrapBehaviorInParent(String value) {
	Map<String, Object> attrs = initCommand("layout_wrapBehaviorInParent");
	attrs.put("type", "attribute");
	attrs.put("setter", true);
	attrs.put("orderSet", ++orderSet);

	attrs.put("value", value);
return this;}
}

	//end - body
	//start - codecopy
	private int constraintId = -1;
	private int action;
	private androidx.constraintlayout.motion.widget.KeyFrames keyFrames;
	private int idCounter = 0;
	private String layoutDescription;
	private MotionEvent motionEvent = new MotionEvent();
		private void setLayoutDescription(Object objValue) {
			layoutDescription = (String) objValue;
		motionLayout.initMotionScene();
		String html = fragment.getInlineResource(layoutDescription);
		if (html == null) {
			html = PluginInvoker.getFileAsset("res/" + ((String) objValue).substring(1) + ".xml", fragment);
		}
		
		com.ashera.parser.html.HtmlParser.parse(new org.xml.sax.ContentHandler() {
			private androidx.constraintlayout.widget.ConstraintSet constraintSet;
			private int constraintSetId;
			private androidx.constraintlayout.motion.widget.MotionScene.Transition transition;
			private Stack<String> parents = new Stack<String>();
			public HashMap<String,androidx.constraintlayout.widget.ConstraintAttribute> mCustomConstraints=new HashMap<>();
			@Override
			public void setDocumentLocator(org.xml.sax.Locator locator) {
			}
	
			@Override
			public void startDocument() throws org.xml.sax.SAXException {
			}
	
			@Override
			public void endDocument() throws org.xml.sax.SAXException {
			}
	
			@Override
			public void startPrefixMapping(String prefix, String uri) throws org.xml.sax.SAXException {
			}
	
			@Override
			public void endPrefixMapping(String prefix) throws org.xml.sax.SAXException {
			}
	
			
			@Override
			public void startElement(String uri, String localName, String qName, org.xml.sax.Attributes atts) throws org.xml.sax.SAXException {
				switch (localName) {
				case "ConstraintSet": {
					constraintSet = new androidx.constraintlayout.widget.ConstraintSet();
					constraintSet.setForceId(false);
					constraintSet.clone(motionLayout);
					
					String id = null;
					String derivedId = null;
					
					for (int i = 0; i < atts.getLength(); i++) {
						String attrName = atts.getLocalName(i);
						switch (attrName) {
						case "id":
							id = atts.getValue(i);
							break;
						case "deriveConstraintsFrom":
							derivedId = ViewImpl.getValue(attrName, atts);
							break;
						}
					}
					if (id != null) {
						constraintSetId = getId(id);
						
						if (derivedId != null) {
							motionLayout.getScene().putDerivedId(constraintSetId, getId(derivedId));
							motionLayout.getScene().copyDerivedContraints(constraintSet, constraintSetId, motionLayout);
						}
					}
					break;
				}
				case "CustomAttribute": {
					String name = null;
					androidx.constraintlayout.widget.ConstraintAttribute.AttributeType type = null;
					Object value = null;
					boolean method = false;
					for (int i = 0; i < atts.getLength(); i++) {
						String attrName = atts.getLocalName(i);
						String attrValue = ViewImpl.getValue(attrName, atts);
						switch (attrName) {
						case "name":
							name = attrValue;
							break;
						case "customColorValue":
							value = r.android.graphics.Color.parseColor(attrValue);
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.COLOR_TYPE;
							break;
						case "customIntegerValue":
							value = quickConvert(attrValue, "int");
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.INT_TYPE;
							break;
						case "customFloatValue":
							value = quickConvert(attrValue, "float");
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.FLOAT_TYPE;
							break;
						case "customStringValue":
							value = attrValue;
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.STRING_TYPE;
							break;
						case "customDimension":
							value = quickConvert(attrValue, "dimensionfloat");
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.DIMENSION_TYPE;
							break;
						case "customBoolean":
							value = quickConvert(attrValue, "boolean");
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.BOOLEAN_TYPE;
							break;
						case "customReference":
							value = quickConvert(attrValue, "id");
							type = androidx.constraintlayout.widget.ConstraintAttribute.AttributeType.REFERENCE_TYPE;
							break;
						}
					}

					androidx.constraintlayout.widget.ConstraintAttribute customAttr = new androidx.constraintlayout.widget.ConstraintAttribute(
							name, type, value, method);

					switch (parents.peek()) {
					case "Constraint":
						constraintSet.getConstraint(constraintId).mCustomConstraints.put(name, customAttr);
						break;
					case "KeyFrameSet":
						mCustomConstraints.put(name, customAttr);
						break;
					default:
						break;
					}
					
					break;
	
				}
				case "Constraint": {
					String id = atts.getValue("android:id");
					
					if (id != null) {
						constraintId = getId(id);
						if (atts.getLength() > 1) {
							androidx.constraintlayout.widget.ConstraintSet.Constraint constraint = constraintSet.getConstraint(constraintId);
							
							if (constraint != null) {
								androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams = new androidx.constraintlayout.widget.Constraints.LayoutParams(-2, -2);
								androidx.constraintlayout.widget.Barrier barrier = new androidx.constraintlayout.widget.Barrier();
								
								parseConstraint(MotionLayoutImpl.this, barrier, constraint.motion, constraint.propertySet, layoutParams, atts);
								constraint.fillFromConstraints(barrier, constraintId, layoutParams);
							}
						}
					}
					break;
				}
				
				case "Layout": {
					if (constraintId != -1) {
						androidx.constraintlayout.widget.ConstraintSet.Constraint constraint = constraintSet.getConstraint(constraintId);
						parseLayout(MotionLayoutImpl.this, constraint.layout, atts);
					}
					break;
				}
				case "Motion": {
					if (constraintId != -1) {
						androidx.constraintlayout.widget.ConstraintSet.Constraint constraint = constraintSet.getConstraint(constraintId);
						parseMotion(MotionLayoutImpl.this, constraint.motion, atts);
					}
					break;
				}
				case "Transform": {
					
					if (constraintId != -1) {
						androidx.constraintlayout.widget.ConstraintSet.Constraint constraint = constraintSet.getConstraint(constraintId);
						parseTransform(MotionLayoutImpl.this, constraint.transform, atts);
					}
					break;
				}
				case "PropertySet": {
					if (constraintId != -1) {
						androidx.constraintlayout.widget.ConstraintSet.Constraint constraint = constraintSet.getConstraint(constraintId);
						parsePropertySet(MotionLayoutImpl.this, constraint.propertySet, atts);
					}
					break;
				}
				case "Transition": {
					String id = atts.getValue("android:id");
					int idInt = -1;
					if (id != null) {
						idInt = (int) quickConvert(id, "id");
					} else {
						idInt = idCounter;
						idCounter++;
					}
					transition = new androidx.constraintlayout.motion.widget.MotionScene.Transition(idInt, motionLayout.getScene(), -1, -1);
					parseTransition(MotionLayoutImpl.this, transition, atts);
					motionLayout.getScene().addTransition(transition);
					break;
				}
				
				case "OnClick": {
					int clickAction = -1;
					int targetId = -1;

					for (int i = 0; i < atts.getLength(); i++) {
						String name = atts.getLocalName(i);
						switch (name) {
						case "clickAction":
							clickAction = (int) getClickAction(ViewImpl.getValue(name, atts));
							break;
						case "targetId":
							targetId = (int) getId(ViewImpl.getValue(name, atts));
							break;
						default:
							break;
						}
					}
					
					if (clickAction != -1) {
						androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick clickListener = new androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick(transition, 
							targetId, clickAction);
						clickListener.addOnClickListeners(motionLayout, transition.mId, transition);
					}

					
					break;
				}
				case "OnSwipe": {
					int dragDirection = -1; 
					int touchAnchorId = -1;
					int touchAnchorSide = -1;

					for (int i = 0; i < atts.getLength(); i++) {
						String name = atts.getLocalName(i);
						switch (name) {
						case "dragDirection":
							dragDirection = (int) getDragDirection(ViewImpl.getValue(name, atts));
							break;
						case "touchAnchorId":
							touchAnchorId = (int) getId(ViewImpl.getValue(name, atts));
							break;
						case "touchAnchorSide":
							touchAnchorSide = (int) getTouchAnchorSide(ViewImpl.getValue(name, atts));
							break;
							
						default:
							break;
						}
					}
					
					androidx.constraintlayout.motion.widget.OnSwipe onSwipe = new androidx.constraintlayout.motion.widget.OnSwipe();
					onSwipe.setDragDirection(dragDirection);
					onSwipe.setTouchAnchorId(touchAnchorId);
					if (touchAnchorSide != -1) {
						onSwipe.setTouchAnchorSide(touchAnchorSide);
					}
					transition.setOnSwipe(onSwipe);
					IWidget widget;
					
					if (touchAnchorId == -1) {
						widget = MotionLayoutImpl.this;
					} else {
						widget = findWidgetById(IdGenerator.getName(touchAnchorId));
					}
					
					nativeAddOnSwipe(transition, widget);
					
					break;
				}
				
				case "KeyFrameSet": {
					keyFrames = new androidx.constraintlayout.motion.widget.KeyFrames();
					transition.addKeyFrame(keyFrames);
					break;
				}
				case "KeyPosition": {
					androidx.constraintlayout.motion.widget.KeyPosition keyPosition = new androidx.constraintlayout.motion.widget.KeyPosition();
					parseKeyPosition(MotionLayoutImpl.this, keyPosition, atts);
					keyFrames.addKey(keyPosition);
					break;
				}
				
				case "KeyTrigger": {
					androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger = new androidx.constraintlayout.motion.widget.KeyTrigger();
					parseKeyTrigger(MotionLayoutImpl.this, keyTrigger, atts);
					keyTrigger.mCustomConstraints.putAll(mCustomConstraints);
					keyFrames.addKey(keyTrigger);
					break;
				}
				case "KeyCycle": {
					androidx.constraintlayout.motion.widget.KeyCycle keyCycle = new androidx.constraintlayout.motion.widget.KeyCycle();
					for (int i = 0; i < atts.getLength(); i++) {
						String name = atts.getLocalName(i);
						String value = ViewImpl.getValue(name, atts);
						switch (name) {
						case "rotation":
						case "rotationX":
						case "rotationY":
						case "scaleX":
						case "scaleY":
						case "alpha":
						case "elevation":
						case "motionProgress":
						case "transitionPathRotate": 
							keyCycle.setValue(name, (float) quickConvert(value, "float"));
							break;
						case "translationX":
						case "translationY":
						case "translationZ":
							keyCycle.setValue(name, (float) quickConvert(value, "dimensionfloat"));
							break;
						case "waveOffset":
							keyCycle.mWaveOffset = (float) quickConvert(value, "float");
							break;
						case "wavePeriod":
							keyCycle.mWavePeriod = (float) quickConvert(value, "float");
							break;
						case "waveShape":
							keyCycle.mWaveShape = (int) getWaveShape(value);
							break;
						case "waveVariesBy":
							keyCycle.mWaveVariesBy = (int) getWaveVariesBy(value);
							break;
						case "wavePhase":
							keyCycle.mWavePhase = (float) quickConvert(value, "float");
							break;
						case "framePosition":
							keyCycle.setFramePosition((int) quickConvert(value, "int"));
							break;
						case "curveFit":
							keyCycle.setValue(name, getCurveFit(value));
							break;
						case "motionTarget":
							keyCycle.setViewId((int) getId(value));
							break;
						case "transitionEasing":
							keyCycle.setValue(name, value);
							break;	
							
						default:
							break;
						}
					}
					
					keyFrames.addKey(keyCycle);
					break;
				}
				
				case "KeyTimeCycle": {
					androidx.constraintlayout.motion.widget.KeyTimeCycle keyCycle = new androidx.constraintlayout.motion.widget.KeyTimeCycle();
					for (int i = 0; i < atts.getLength(); i++) {
						String name = atts.getLocalName(i);
						String value = ViewImpl.getValue(name, atts);
						switch (name) {
						case "rotation":
						case "rotationX":
						case "rotationY":
						case "scaleX":
						case "scaleY":
						case "alpha":
						case "elevation":
						case "motionProgress":
						case "transitionPathRotate": 
							keyCycle.setValue(name, (float) quickConvert(value, "float"));
							break;
						case "translationX":
						case "translationY":
						case "translationZ":
							keyCycle.setValue(name, (float) quickConvert(value, "dimensionfloat"));
							break;
						case "waveOffset":
							keyCycle.setValue(name, (float) quickConvert(value, "float"));
							break;
						case "wavePeriod":
							keyCycle.setValue(name, (float) quickConvert(value, "float"));
							break;
						case "waveShape":
							keyCycle.setValue(name, getWaveShape(value));
							break;
						case "wavePhase":
							keyCycle.setValue(name, quickConvert(value, "float"));
							break;
						case "framePosition":
							keyCycle.setFramePosition((int) quickConvert(value, "int"));
							break;
						case "curveFit":
							keyCycle.setValue(name, getCurveFit(value));
							break;
						case "motionTarget":
							keyCycle.setViewId((int) getId(value));
							break;
						case "transitionEasing":
							keyCycle.setValue(name, value);
							break;	
							
						default:
							break;
						}
					}
					
					keyFrames.addKey(keyCycle);
					break;
				}
				
				case "KeyAttribute": {
					androidx.constraintlayout.motion.widget.KeyAttributes keyAttribute = new androidx.constraintlayout.motion.widget.KeyAttributes();
					for (int i = 0; i < atts.getLength(); i++) {
						String name = atts.getLocalName(i);
						String value = ViewImpl.getValue(name, atts);
						switch (name) {
						case "rotation":
						case "rotationX":
						case "rotationY":
						case "scaleX":
						case "scaleY":
						case "alpha":
						case "elevation":
						case "motionProgress":
						case "transitionPathRotate": 
							keyAttribute.setValue(name, (float) quickConvert(value, "float"));
							break;
						case "transformPivotX":
						case "transformPivotY":
						case "translationX":
						case "translationY":
						case "translationZ":
							keyAttribute.setValue(name, (float) quickConvert(value, "dimensionfloat"));
							break;
						case "framePosition":
							keyAttribute.setFramePosition((int) quickConvert(value, "int"));
							break;
						case "motionTarget":
							keyAttribute.setViewId((int) getId(value));
							break;
						case "transitionEasing":
							keyAttribute.setValue(name, value);
							break;	
						case "curveFit":
							keyAttribute.setValue(name, (int) getCurveFit(value));
							break;
						default:
							break;
						}
					}
					
					keyFrames.addKey(keyAttribute);
					break;
				}

				

				default:
					break;
				}
				
				parents.push(localName);
			}
	
			private int getClickAction(String value) {
	//            <flag name="toggle" value="0x0011"/>
	//            <flag name="transitionToEnd" value="0x0001"/>
	//            <flag name="transitionToStart" value="0x0010"/>
	//            <flag name="jumpToEnd" value="0x100"/>
	//            <flag name="jumpToStart" value="0x1000"/>
	
				switch (value) {
				case "toggle":
					return androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick.ANIM_TOGGLE;
				case "transitionToEnd":
					return androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick.ANIM_TO_END;
				case "transitionToStart":
					return androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick.ANIM_TO_START;
				case "jumpToEnd":
					return androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick.JUMP_TO_END;
				case "jumpToStart":
					return androidx.constraintlayout.motion.widget.MotionScene.Transition.TransitionOnClick.JUMP_TO_START;
				default:
					break;
				}
			
				return 0;
			}

			@Override
			public void endElement(String uri, String localName, String qName) throws org.xml.sax.SAXException {
				switch (localName) {
				case "ConstraintSet":
					motionLayout.getScene().setConstraintSet(constraintSetId, constraintSet);
					break;
				case "Constraint":
					break;
				case "KeyFrameSet":
					mCustomConstraints.clear();;
					break;
				default:
					break;
				}
				
				parents.pop();
			}
	
			@Override
			public void characters(char[] ch, int start, int length) throws org.xml.sax.SAXException {
			}
	
			@Override
			public void ignorableWhitespace(char[] ch, int start, int length) throws org.xml.sax.SAXException {
			}
	
			@Override
			public void processingInstruction(String target, String data) throws org.xml.sax.SAXException {
			}
	
			@Override
			public void skippedEntity(String name) throws org.xml.sax.SAXException {
			}
			
		}, html);
		if (!isInitialised()) {
			getFragment().getEventBus().notifyObservers("layoutDescription", new Object());
		}
	}

@Override
public void initialized() {
	super.initialized();
	
	int transitionId = getFirstTransitionId();
	
	if (transitionId != -1) {
		motionLayout.setTransition(transitionId);
	}
	motionLayout.postInit();
}

private int getFirstTransitionId() {
	ArrayList<androidx.constraintlayout.motion.widget.MotionScene.Transition> definedTransitions = motionLayout.getScene().getDefinedTransitions();
	if (definedTransitions.size() > 0) {
		return definedTransitions.get(0).mId;
	}
	
	return -1;
}


protected int getTouchAnchorSide(String value) {
//    <enum name="top" value="0"/>
//    <enum name="left" value="1"/>
//    <enum name="right" value="2"/>
//    <enum name="bottom" value="3"/>
//    <enum name="middle" value="4"/>
//    <enum name="start" value="5"/>
//    <enum name="end" value="6"/>
	switch (value) {
	case "top":
		return 0;
	case "left":
		return 1;
	case "right":
		return 2;
	case "bottom":
		return 3;
	case "middle":
		return 4;
	case "start":
		return 5;
	case "end":
		return 6;
	default:
		break;
}
	return 0;
}

protected int getDragDirection(String value) {
//	<enum name="dragUp" value="0"/>
//  <enum name="dragDown" value="1"/>
//  <enum name="dragLeft" value="2"/>
//  <enum name="dragRight" value="3"/>
//  <enum name="dragStart" value="4"/>
//  <enum name="dragEnd" value="5"/>
//  <enum name="dragClockwise" value="6"/>
//  <enum name="dragAnticlockwise" value="7"/>	
switch (value) {
	case "dragUp":
		return 0;
	case "dragDown":
		return 1;
	case "dragLeft":
		return 2;
	case "dragRight":
		return 3;
	case "dragStart":
		return 4;
	case "dragEnd":
		return 5;
	case "dragClockwise":
		return 6;
	case "dragAnticlockwise":
		return 7;
	default:
		break;
}
return 0;
}


private int getWaveVariesBy(String value) {
//    <enum name="position" value="0" />
//    <enum name="path" value="1" />
	switch (value) {
	case "position":
		return 0;
	case "path":
		return 1;
	default:
		break;
	}	
	return 0;
}
	
private int getWaveShape(String value) {
//    <enum name="sin" value="0"/>
//    <enum name="square" value="1"/>
//    <enum name="triangle" value="2"/>
//    <enum name="sawtooth" value="3"/>
//    <enum name="reverseSawtooth" value="4"/>
//    <enum name="cos" value="5"/>
//    <enum name="bounce" value="6"/>
	switch (value) {
	case "sin":
		return 0;
	case "square":
		return 1;
	case "triangle":
		return 2;
	case "sawtooth":
		return 3;
	case "reverseSawtooth":
		return 4;
	case "cos":
		return 5;
	case "bounce":
		return 6;
	default:
		break;
}
	return 0;
}

//start - Constraint
private void parseConstraint(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "orientation":
setOrientation(w, barrier, motion, propertySet, layoutParams, value);
break;
case "visibility":
setVisibility(w, barrier, motion, propertySet, layoutParams, value);
break;
case "visibilityMode":
setVisibilityMode(w, barrier, motion, propertySet, layoutParams, value);
break;
case "alpha":
setAlpha(w, barrier, motion, propertySet, layoutParams, value);
break;
case "elevation":
setElevation(w, barrier, motion, propertySet, layoutParams, value);
setElevationAdditional(w, barrier, motion, propertySet, layoutParams, value);
break;
case "rotation":
setRotation(w, barrier, motion, propertySet, layoutParams, value);
break;
case "rotationX":
setRotationX(w, barrier, motion, propertySet, layoutParams, value);
break;
case "rotationY":
setRotationY(w, barrier, motion, propertySet, layoutParams, value);
break;
case "scaleX":
setScaleX(w, barrier, motion, propertySet, layoutParams, value);
break;
case "scaleY":
setScaleY(w, barrier, motion, propertySet, layoutParams, value);
break;
case "transformPivotX":
setTransformPivotX(w, barrier, motion, propertySet, layoutParams, value);
break;
case "transformPivotY":
setTransformPivotY(w, barrier, motion, propertySet, layoutParams, value);
break;
case "translationX":
setTranslationX(w, barrier, motion, propertySet, layoutParams, value);
break;
case "translationY":
setTranslationY(w, barrier, motion, propertySet, layoutParams, value);
break;
case "translationZ":
setTranslationZ(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_width":
setWidth(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_height":
setHeight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintWidth":
setConstraintWidth(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHeight":
setConstraintHeight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginStart":
setMarginStart(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginBottom":
setMarginBottom(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginTop":
setMarginTop(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginEnd":
setMarginEnd(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginLeft":
setMarginLeft(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginRight":
setMarginRight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintCircle":
setConstraintCircle(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintCircleRadius":
setConstraintCircleRadius(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintCircleAngle":
setConstraintCircleAngle(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintGuide_begin":
setConstraintGuide_begin(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintGuide_end":
setConstraintGuide_end(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintGuide_percent":
setConstraintGuide_percent(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintLeft_toLeftOf":
setConstraintLeft_toLeftOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintLeft_toRightOf":
setConstraintLeft_toRightOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintRight_toLeftOf":
setConstraintRight_toLeftOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintRight_toRightOf":
setConstraintRight_toRightOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintTop_toTopOf":
setConstraintTop_toTopOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintTop_toBottomOf":
setConstraintTop_toBottomOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintBottom_toTopOf":
setConstraintBottom_toTopOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintBottom_toBottomOf":
setConstraintBottom_toBottomOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintBaseline_toBaselineOf":
setConstraintBaseline_toBaselineOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintBaseline_toTopOf":
setConstraintBaseline_toTopOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintBaseline_toBottomOf":
setConstraintBaseline_toBottomOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintStart_toEndOf":
setConstraintStart_toEndOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintStart_toStartOf":
setConstraintStart_toStartOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintEnd_toStartOf":
setConstraintEnd_toStartOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintEnd_toEndOf":
setConstraintEnd_toEndOf(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginLeft":
setGoneMarginLeft(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginTop":
setGoneMarginTop(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginRight":
setGoneMarginRight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginBottom":
setGoneMarginBottom(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginStart":
setGoneMarginStart(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginEnd":
setGoneMarginEnd(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_goneMarginBaseline":
setGoneMarginBaseline(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_marginBaseline":
setMarginBaseline(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constrainedWidth":
setConstrainedWidth(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constrainedHeight":
setConstrainedHeight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHorizontal_bias":
setConstraintHorizontal_bias(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintVertical_bias":
setConstraintVertical_bias(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintWidth_default":
setConstraintWidth_default(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHeight_default":
setConstraintHeight_default(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintWidth_min":
setConstraintWidth_min(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintWidth_max":
setConstraintWidth_max(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintWidth_percent":
setConstraintWidth_percent(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHeight_min":
setConstraintHeight_min(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHeight_max":
setConstraintHeight_max(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHeight_percent":
setConstraintHeight_percent(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintDimensionRatio":
setConstraintDimensionRatio(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHorizontal_weight":
setConstraintHorizontal_weight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintVertical_weight":
setConstraintVertical_weight(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintHorizontal_chainStyle":
setConstraintHorizontal_chainStyle(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintVertical_chainStyle":
setConstraintVertical_chainStyle(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_editor_absoluteX":
setEditor_absoluteX(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_editor_absoluteY":
setEditor_absoluteY(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_wrapBehaviorInParent":
setWrapBehaviorInParent(w, barrier, motion, propertySet, layoutParams, value);
break;
case "barrierDirection":
setBarrierDirection(w, barrier, motion, propertySet, layoutParams, value);
break;
case "barrierMargin":
setBarrierMargin(w, barrier, motion, propertySet, layoutParams, value);
break;
case "constraint_referenced_ids":
setConstraint_referenced_ids(w, barrier, motion, propertySet, layoutParams, value);
break;
case "barrierAllowsGoneWidgets":
setBarrierAllowsGoneWidgets(w, barrier, motion, propertySet, layoutParams, value);
break;
case "animateRelativeTo":
setAnimateRelativeTo(w, barrier, motion, propertySet, layoutParams, value);
break;
case "animateCircleAngleTo":
setAnimateCircleAngleTo(w, barrier, motion, propertySet, layoutParams, value);
break;
case "transitionEasing":
setTransitionEasing(w, barrier, motion, propertySet, layoutParams, value);
break;
case "pathMotionArc":
setPathMotionArc(w, barrier, motion, propertySet, layoutParams, value);
break;
case "polarRelativeTo":
setPolarRelativeTo(w, barrier, motion, propertySet, layoutParams, value);
break;
case "transitionPathRotate":
setTransitionPathRotate(w, barrier, motion, propertySet, layoutParams, value);
break;
case "drawPath":
setDrawPath(w, barrier, motion, propertySet, layoutParams, value);
break;
case "layout_constraintTag":
setConstraintTag(w, barrier, motion, propertySet, layoutParams, value);
break;
case "motionStagger":
setMotionStagger(w, barrier, motion, propertySet, layoutParams, value);
break;
case "quantizeMotionSteps":
setQuantizeMotionSteps(w, barrier, motion, propertySet, layoutParams, value);
break;
case "quantizeMotionPhase":
setQuantizeMotionPhase(w, barrier, motion, propertySet, layoutParams, value);
break;
case "quantizeMotionInterpolator":
setQuantizeMotionInterpolator(w, barrier, motion, propertySet, layoutParams, value);
break;}
}
}

private void setOrientation(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.orientation = (int) w.quickConvert(strValue, "LinearLayout.orientation");
}

private void setVisibility(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
propertySet.visibility = (int) w.quickConvert(strValue, "View.visibility");
}

private int getVisibilityMode(String value) {
	switch (value) {
case "normal":
		return 0;
case "ignore":
		return 1;
default:
		break;
}
	return 0;
}

private void setVisibilityMode(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
propertySet.mVisibilityMode = getVisibilityMode(strValue);
}

private void setAlpha(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.alpha = (float) w.quickConvert(strValue, "float");
}

private void setElevation(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.elevation = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setRotation(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.rotation = (float) w.quickConvert(strValue, "float");
}

private void setRotationX(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.rotationX = (float) w.quickConvert(strValue, "float");
}

private void setRotationY(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.rotationY = (float) w.quickConvert(strValue, "float");
}

private void setScaleX(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.scaleX = (float) w.quickConvert(strValue, "float");
}

private void setScaleY(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.scaleY = (float) w.quickConvert(strValue, "float");
}

private void setTransformPivotX(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.transformPivotX = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTransformPivotY(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.transformPivotY = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTranslationX(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.translationX = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTranslationY(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.translationY = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTranslationZ(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.translationZ = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setWidth(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.width = (int) w.quickConvert(strValue, "dimension");
}

private void setHeight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
layoutParams.height = (int) w.quickConvert(strValue, "dimension");
}

private void setConstraintWidth(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth");
 setLayout_constraintWidth(layoutParams, objValue);
}

private void setConstraintHeight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight");
 setLayout_constraintHeight(layoutParams, objValue);
}

private void setMarginStart(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
setStartMargin(objValue, layoutParams, w);
}

private void setMarginBottom(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
setBottomMargin(objValue, layoutParams);
}

private void setMarginTop(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
setTopMargin(objValue, layoutParams);
}

private void setMarginEnd(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
setEndMargin(objValue, layoutParams, w);
}

private void setMarginLeft(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
setLeftMargin(objValue, layoutParams, w);
}

private void setMarginRight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
setRightMargin(objValue, layoutParams, w);
}

private void setConstraintCircle(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.circleConstraint =  (int) objValue;
}

private void setConstraintCircleRadius(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.circleRadius =  (int) objValue;
}

private void setConstraintCircleAngle(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.circleAngle =  (float) objValue;
}

private void setConstraintGuide_begin(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.guideBegin =  (int) objValue;
}

private void setConstraintGuide_end(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.guideEnd =  (int) objValue;
}

private void setConstraintGuide_percent(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.guidePercent =  (float) objValue;
}

private void setConstraintLeft_toLeftOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.leftToLeft = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.leftToLeft =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintLeft_toRightOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.leftToRight = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.leftToRight =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintRight_toLeftOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.rightToLeft = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.rightToLeft =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintRight_toRightOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.rightToRight = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.rightToRight =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintTop_toTopOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.topToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.topToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintTop_toBottomOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.topToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.topToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBottom_toTopOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.bottomToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.bottomToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBottom_toBottomOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.bottomToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.bottomToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBaseline_toBaselineOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.baselineToBaseline = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToBaseline =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBaseline_toTopOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.baselineToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBaseline_toBottomOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.baselineToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintStart_toEndOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.startToEnd = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.startToEnd =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintStart_toStartOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.startToStart = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.startToStart =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintEnd_toStartOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.endToStart = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.endToStart =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintEnd_toEndOf(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.endToEnd = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.endToEnd =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setGoneMarginLeft(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneLeftMargin =  (int) objValue;
}

private void setGoneMarginTop(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneTopMargin =  (int) objValue;
}

private void setGoneMarginRight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneRightMargin =  (int) objValue;
}

private void setGoneMarginBottom(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneBottomMargin =  (int) objValue;
}

private void setGoneMarginStart(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneStartMargin =  (int) objValue;
}

private void setGoneMarginEnd(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneEndMargin =  (int) objValue;
}

private void setGoneMarginBaseline(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneBaselineMargin =  (int) objValue;
}

private void setMarginBaseline(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.baselineMargin =  (int) objValue;
}

private void setConstrainedWidth(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "boolean");
layoutParams.constrainedWidth =  (boolean) objValue;
}

private void setConstrainedHeight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "boolean");
layoutParams.constrainedHeight =  (boolean) objValue;
}

private void setConstraintHorizontal_bias(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.horizontalBias =  (float) objValue;
}

private void setConstraintVertical_bias(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.verticalBias =  (float) objValue;
}

private void setConstraintWidth_default(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth_default");
layoutParams.matchConstraintDefaultWidth =  (int) objValue;
}

private void setConstraintHeight_default(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight_default");
layoutParams.matchConstraintDefaultHeight =  (int) objValue;
}

private void setConstraintWidth_min(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.matchConstraintMinWidth =  (int) objValue;
}

private void setConstraintWidth_max(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.matchConstraintMaxWidth =  (int) objValue;
}

private void setConstraintWidth_percent(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.matchConstraintPercentWidth =  (float) objValue;
}

private void setConstraintHeight_min(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.matchConstraintMinHeight =  (int) objValue;
}

private void setConstraintHeight_max(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.matchConstraintMaxHeight =  (int) objValue;
}

private void setConstraintHeight_percent(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.matchConstraintPercentHeight =  (float) objValue;
}

private void setConstraintDimensionRatio(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "string");
layoutParams.dimensionRatio =  (String) objValue;
}

private void setConstraintHorizontal_weight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.horizontalWeight =  (float) objValue;
}

private void setConstraintVertical_weight(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.verticalWeight =  (float) objValue;
}

private void setConstraintHorizontal_chainStyle(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHorizontal_chainStyle");
layoutParams.horizontalChainStyle =  (int) objValue;
}

private void setConstraintVertical_chainStyle(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintVertical_chainStyle");
layoutParams.verticalChainStyle =  (int) objValue;
}

private void setEditor_absoluteX(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.editorAbsoluteX =  (int) objValue;
}

private void setEditor_absoluteY(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.editorAbsoluteY =  (int) objValue;
}

private void setWrapBehaviorInParent(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_wrapBehaviorInParent");
layoutParams.wrapBehaviorInParent =  (int) objValue;
}

private void setBarrierDirection(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "BarrierImpl.barrierDirection");
 barrier.setType((int)objValue);
}

private void setBarrierMargin(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
 barrier.setMargin((int)objValue);
}

private void setConstraint_referenced_ids(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "BarrierImpl.constraintReferencedIds");
 barrier.setReferencedIds((int[]) objValue);
}

private void setBarrierAllowsGoneWidgets(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "boolean");
barrier.setAllowsGoneWidget((boolean)objValue);
}

private void setAnimateRelativeTo(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mAnimateRelativeTo = (int) w.quickConvert(strValue, "id");
}

private int getAnimateCircleAngleTo(String value) {
	switch (value) {
case "bestChoice":
		return 0;
case "closest":
		return 1;
case "clockwise":
		return 2;
case "antiClockwise":
		return 3;
case "constraint":
		return 4;
default:
		break;
}
	return 0;
}

private void setAnimateCircleAngleTo(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mAnimateCircleAngleTo = getAnimateCircleAngleTo(strValue);
}

private int getTransitionEasing(String value) {
	switch (value) {
case "standard":
		return 0;
case "accelerate":
		return 1;
case "decelerate":
		return 2;
case "linear":
		return 3;
default:
		break;
}
	return 0;
}

private void setTransitionEasing(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mTransitionEasing = strValue;
}

private int getPathMotionArc(String value) {
	switch (value) {
case "none":
		return 0;
case "startVertical":
		return 1;
case "startHorizontal":
		return 2;
case "flip":
		return 3;
default:
		break;
}
	return 0;
}

private void setPathMotionArc(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mPathMotionArc = getPathMotionArc(strValue);
}

private void setPolarRelativeTo(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mPolarRelativeTo = (int) w.quickConvert(strValue, "id");
}

private int getDrawPath(String value) {
	switch (value) {
case "none":
		return 0;
case "path":
		return 1;
case "pathRelative":
		return 2;
case "deltaRelative":
		return 3;
case "asConfigured":
		return 4;
case "rectangles":
		return 5;
default:
		break;
}
	return 0;
}

private void setDrawPath(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mDrawPath = getDrawPath(strValue);
}

private void setConstraintTag(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "string");
layoutParams.constraintTag =  (String) objValue;
}

private void setMotionStagger(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mMotionStagger = (float) w.quickConvert(strValue, "float");
}

private void setQuantizeMotionSteps(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mQuantizeMotionSteps = (int) w.quickConvert(strValue, "int");
}

private void setQuantizeMotionPhase(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
motion.mQuantizeMotionPhase = (float) w.quickConvert(strValue, "float");
}

private int getQuantizeMotionInterpolator(String value) {
	switch (value) {
case "easeInOut":
		return 0;
case "easeIn":
		return 1;
case "easeOut":
		return 2;
case "linear":
		return 3;
case "bounce":
		return 4;
case "overshoot":
		return 5;
default:
		break;
}
	return 0;
}

//end - Constraint

private void setEndMargin(Object objValue, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, IWidget w) {
	layoutParams.setMarginEnd((int) objValue);	
}

private void setLeftMargin(Object objValue, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, IWidget w) {
	layoutParams.setMarginStart((int) objValue);	
}


private void setRightMargin(Object objValue, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, IWidget w) {
	layoutParams.setMarginEnd((int) objValue);
}

//start - Motion
private void parseMotion(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "animateRelativeTo":
setAnimateRelativeTo(w, motion, value);
break;
case "animateCircleAngleTo":
setAnimateCircleAngleTo(w, motion, value);
break;
case "transitionEasing":
setTransitionEasing(w, motion, value);
break;
case "pathMotionArc":
setPathMotionArc(w, motion, value);
break;
case "motionPathRotate":
setMotionPathRotate(w, motion, value);
break;
case "motionStagger":
setMotionStagger(w, motion, value);
break;
case "drawPath":
setDrawPath(w, motion, value);
break;
case "quantizeMotionSteps":
setQuantizeMotionSteps(w, motion, value);
break;
case "quantizeMotionPhase":
setQuantizeMotionPhase(w, motion, value);
break;
case "quantizeMotionInterpolator":
setQuantizeMotionInterpolator(w, motion, value);
break;}
}
}

private void setAnimateRelativeTo(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mAnimateRelativeTo = (int) w.quickConvert(strValue, "id");
}

private void setAnimateCircleAngleTo(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mAnimateCircleAngleTo = getAnimateCircleAngleTo(strValue);
}

private void setTransitionEasing(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mTransitionEasing = strValue;
}

private void setPathMotionArc(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mPathMotionArc = getPathMotionArc(strValue);
}

private void setMotionStagger(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mMotionStagger = (float) w.quickConvert(strValue, "float");
}

private void setDrawPath(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mDrawPath = getDrawPath(strValue);
}

private void setQuantizeMotionSteps(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mQuantizeMotionSteps = (int) w.quickConvert(strValue, "int");
}

private void setQuantizeMotionPhase(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
motion.mQuantizeMotionPhase = (float) w.quickConvert(strValue, "float");
}

//end - Motion
//start - Layout
private void parseLayout(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "layout_width":
setWidth(w, layoutParams, value);
break;
case "layout_height":
setHeight(w, layoutParams, value);
break;
case "layout_constraintWidth":
setConstraintWidth(w, layoutParams, value);
break;
case "layout_constraintHeight":
setConstraintHeight(w, layoutParams, value);
break;
case "layout_marginStart":
setMarginStart(w, layoutParams, value);
break;
case "layout_marginBottom":
setMarginBottom(w, layoutParams, value);
break;
case "layout_marginTop":
setMarginTop(w, layoutParams, value);
break;
case "layout_marginEnd":
setMarginEnd(w, layoutParams, value);
break;
case "layout_marginLeft":
setMarginLeft(w, layoutParams, value);
break;
case "layout_marginRight":
setMarginRight(w, layoutParams, value);
break;
case "layout_constraintCircle":
setConstraintCircle(w, layoutParams, value);
break;
case "layout_constraintCircleRadius":
setConstraintCircleRadius(w, layoutParams, value);
break;
case "layout_constraintCircleAngle":
setConstraintCircleAngle(w, layoutParams, value);
break;
case "layout_constraintGuide_begin":
setConstraintGuide_begin(w, layoutParams, value);
break;
case "layout_constraintGuide_end":
setConstraintGuide_end(w, layoutParams, value);
break;
case "layout_constraintGuide_percent":
setConstraintGuide_percent(w, layoutParams, value);
break;
case "layout_constraintLeft_toLeftOf":
setConstraintLeft_toLeftOf(w, layoutParams, value);
break;
case "layout_constraintLeft_toRightOf":
setConstraintLeft_toRightOf(w, layoutParams, value);
break;
case "layout_constraintRight_toLeftOf":
setConstraintRight_toLeftOf(w, layoutParams, value);
break;
case "layout_constraintRight_toRightOf":
setConstraintRight_toRightOf(w, layoutParams, value);
break;
case "layout_constraintTop_toTopOf":
setConstraintTop_toTopOf(w, layoutParams, value);
break;
case "layout_constraintTop_toBottomOf":
setConstraintTop_toBottomOf(w, layoutParams, value);
break;
case "layout_constraintBottom_toTopOf":
setConstraintBottom_toTopOf(w, layoutParams, value);
break;
case "layout_constraintBottom_toBottomOf":
setConstraintBottom_toBottomOf(w, layoutParams, value);
break;
case "layout_constraintBaseline_toBaselineOf":
setConstraintBaseline_toBaselineOf(w, layoutParams, value);
break;
case "layout_constraintBaseline_toTopOf":
setConstraintBaseline_toTopOf(w, layoutParams, value);
break;
case "layout_constraintBaseline_toBottomOf":
setConstraintBaseline_toBottomOf(w, layoutParams, value);
break;
case "layout_constraintStart_toEndOf":
setConstraintStart_toEndOf(w, layoutParams, value);
break;
case "layout_constraintStart_toStartOf":
setConstraintStart_toStartOf(w, layoutParams, value);
break;
case "layout_constraintEnd_toStartOf":
setConstraintEnd_toStartOf(w, layoutParams, value);
break;
case "layout_constraintEnd_toEndOf":
setConstraintEnd_toEndOf(w, layoutParams, value);
break;
case "layout_goneMarginLeft":
setGoneMarginLeft(w, layoutParams, value);
break;
case "layout_goneMarginTop":
setGoneMarginTop(w, layoutParams, value);
break;
case "layout_goneMarginRight":
setGoneMarginRight(w, layoutParams, value);
break;
case "layout_goneMarginBottom":
setGoneMarginBottom(w, layoutParams, value);
break;
case "layout_goneMarginStart":
setGoneMarginStart(w, layoutParams, value);
break;
case "layout_goneMarginEnd":
setGoneMarginEnd(w, layoutParams, value);
break;
case "layout_goneMarginBaseline":
setGoneMarginBaseline(w, layoutParams, value);
break;
case "layout_marginBaseline":
setMarginBaseline(w, layoutParams, value);
break;
case "layout_constrainedWidth":
setConstrainedWidth(w, layoutParams, value);
break;
case "layout_constrainedHeight":
setConstrainedHeight(w, layoutParams, value);
break;
case "layout_constraintHorizontal_bias":
setConstraintHorizontal_bias(w, layoutParams, value);
break;
case "layout_constraintVertical_bias":
setConstraintVertical_bias(w, layoutParams, value);
break;
case "layout_constraintWidth_default":
setConstraintWidth_default(w, layoutParams, value);
break;
case "layout_constraintHeight_default":
setConstraintHeight_default(w, layoutParams, value);
break;
case "layout_constraintWidth_min":
setConstraintWidth_min(w, layoutParams, value);
break;
case "layout_constraintWidth_max":
setConstraintWidth_max(w, layoutParams, value);
break;
case "orientation":
setOrientation(w, layoutParams, value);
break;
case "layout_constraintWidth_percent":
setConstraintWidth_percent(w, layoutParams, value);
break;
case "layout_constraintHeight_min":
setConstraintHeight_min(w, layoutParams, value);
break;
case "layout_constraintHeight_max":
setConstraintHeight_max(w, layoutParams, value);
break;
case "layout_constraintHeight_percent":
setConstraintHeight_percent(w, layoutParams, value);
break;
case "layout_constraintDimensionRatio":
setConstraintDimensionRatio(w, layoutParams, value);
break;
case "layout_constraintHorizontal_weight":
setConstraintHorizontal_weight(w, layoutParams, value);
break;
case "layout_constraintVertical_weight":
setConstraintVertical_weight(w, layoutParams, value);
break;
case "layout_constraintHorizontal_chainStyle":
setConstraintHorizontal_chainStyle(w, layoutParams, value);
break;
case "layout_constraintVertical_chainStyle":
setConstraintVertical_chainStyle(w, layoutParams, value);
break;
case "layout_editor_absoluteX":
setEditor_absoluteX(w, layoutParams, value);
break;
case "layout_editor_absoluteY":
setEditor_absoluteY(w, layoutParams, value);
break;
case "layout_mWrapBehavior":
setWrapBehaviorInParent(w, layoutParams, value);
break;
case "barrierDirection":
setBarrierDirection(w, layoutParams, value);
break;
case "barrierMargin":
setBarrierMargin(w, layoutParams, value);
break;
case "constraint_referenced_ids":
setConstraint_referenced_ids(w, layoutParams, value);
break;
case "barrierAllowsGoneWidgets":
setBarrierAllowsGoneWidgets(w, layoutParams, value);
break;}
}
}

private void setWidth(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
layoutParams.mWidth = (int) w.quickConvert(strValue, "dimension");
}

private void setHeight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
layoutParams.mHeight = (int) w.quickConvert(strValue, "dimension");
}

private void setConstraintWidth(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth");
 setLayout_constraintWidth(layoutParams, objValue);
}

private void setConstraintHeight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight");
 setLayout_constraintHeight(layoutParams, objValue);
}

private void setConstraintCircle(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.circleConstraint =  (int) objValue;
}

private void setConstraintCircleRadius(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.circleRadius =  (int) objValue;
}

private void setConstraintCircleAngle(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.circleAngle =  (float) objValue;
}

private void setConstraintGuide_begin(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.guideBegin =  (int) objValue;
}

private void setConstraintGuide_end(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.guideEnd =  (int) objValue;
}

private void setConstraintGuide_percent(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.guidePercent =  (float) objValue;
}

private void setConstraintLeft_toLeftOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.leftToLeft = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.leftToLeft =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintLeft_toRightOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.leftToRight = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.leftToRight =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintRight_toLeftOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.rightToLeft = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.rightToLeft =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintRight_toRightOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.rightToRight = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.rightToRight =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintTop_toTopOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.topToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.topToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintTop_toBottomOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.topToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.topToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBottom_toTopOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.bottomToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.bottomToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBottom_toBottomOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.bottomToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.bottomToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBaseline_toBaselineOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.baselineToBaseline = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToBaseline =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBaseline_toTopOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.baselineToTop = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToTop =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintBaseline_toBottomOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.baselineToBottom = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.baselineToBottom =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintStart_toEndOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.startToEnd = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.startToEnd =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintStart_toStartOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.startToStart = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.startToStart =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintEnd_toStartOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.endToStart = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.endToStart =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setConstraintEnd_toEndOf(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "id");
layoutParams.endToEnd = ((int) objValue);
							if (strValue.equals("parent")) {
								layoutParams.endToEnd =  androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.PARENT_ID;
							}
}

private void setGoneMarginLeft(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneLeftMargin =  (int) objValue;
}

private void setGoneMarginTop(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneTopMargin =  (int) objValue;
}

private void setGoneMarginRight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneRightMargin =  (int) objValue;
}

private void setGoneMarginBottom(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneBottomMargin =  (int) objValue;
}

private void setGoneMarginStart(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneStartMargin =  (int) objValue;
}

private void setGoneMarginEnd(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneEndMargin =  (int) objValue;
}

private void setGoneMarginBaseline(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.goneBaselineMargin =  (int) objValue;
}

private void setMarginBaseline(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.baselineMargin =  (int) objValue;
}

private void setConstrainedWidth(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "boolean");
layoutParams.constrainedWidth =  (boolean) objValue;
}

private void setConstrainedHeight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "boolean");
layoutParams.constrainedHeight =  (boolean) objValue;
}

private void setConstraintHorizontal_bias(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.horizontalBias =  (float) objValue;
}

private void setConstraintVertical_bias(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.verticalBias =  (float) objValue;
}

private void setConstraintWidth_default(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintWidth_default");
layoutParams.widthDefault =  (int) objValue;
}

private void setConstraintHeight_default(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHeight_default");
layoutParams.heightDefault =  (int) objValue;
}

private void setConstraintWidth_min(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.widthMin =  (int) objValue;
}

private void setConstraintWidth_max(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.widthMax =  (int) objValue;
}

private void setOrientation(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
layoutParams.orientation = (int) w.quickConvert(strValue, "LinearLayout.orientation");
}

private void setConstraintWidth_percent(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.widthPercent =  (float) objValue;
}

private void setConstraintHeight_min(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.heightMin =  (int) objValue;
}

private void setConstraintHeight_max(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.heightMax =  (int) objValue;
}

private void setConstraintHeight_percent(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.heightPercent =  (float) objValue;
}

private void setConstraintDimensionRatio(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "string");
layoutParams.dimensionRatio =  (String) objValue;
}

private void setConstraintHorizontal_weight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.horizontalWeight =  (float) objValue;
}

private void setConstraintVertical_weight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "float");
layoutParams.verticalWeight =  (float) objValue;
}

private void setConstraintHorizontal_chainStyle(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintHorizontal_chainStyle");
layoutParams.horizontalChainStyle =  (int) objValue;
}

private void setConstraintVertical_chainStyle(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_constraintVertical_chainStyle");
layoutParams.verticalChainStyle =  (int) objValue;
}

private void setEditor_absoluteX(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.editorAbsoluteX =  (int) objValue;
}

private void setEditor_absoluteY(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "dimension");
layoutParams.editorAbsoluteY =  (int) objValue;
}

private void setWrapBehaviorInParent(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
Object objValue = w.quickConvert(strValue, "androidx.constraintlayout.motion.widget.MotionLayout.layout_mWrapBehavior");
layoutParams.mWrapBehavior =  (int) objValue;
}

private int getBarrierDirection(String value) {
	switch (value) {
case "left":
		return 0;
case "right":
		return 1;
case "top":
		return 2;
case "bottom":
		return 3;
case "start":
		return 5;
case "end":
		return 6;
default:
		break;
}
	return 0;
}

private void setBarrierDirection(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
layoutParams.mBarrierDirection = getBarrierDirection(strValue);
}

private void setBarrierMargin(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
layoutParams.mBarrierMargin = (int) w.quickConvert(strValue, "dimension");
}

private void setBarrierAllowsGoneWidgets(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
layoutParams.mBarrierAllowsGoneWidgets = (boolean) w.quickConvert(strValue, "boolean");
}

//end - Layout

//start - Transform
private void parseTransform(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "elevation":
setElevation(w, transform, value);
setElevationAdditional(w, transform, value);
break;
case "rotation":
setRotation(w, transform, value);
break;
case "rotationX":
setRotationX(w, transform, value);
break;
case "rotationY":
setRotationY(w, transform, value);
break;
case "scaleX":
setScaleX(w, transform, value);
break;
case "scaleY":
setScaleY(w, transform, value);
break;
case "transformPivotX":
setTransformPivotX(w, transform, value);
break;
case "transformPivotY":
setTransformPivotY(w, transform, value);
break;
case "translationX":
setTranslationX(w, transform, value);
break;
case "translationY":
setTranslationY(w, transform, value);
break;
case "translationZ":
setTranslationZ(w, transform, value);
break;}
}
}

private void setElevation(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.elevation = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setRotation(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.rotation = (float) w.quickConvert(strValue, "float");
}

private void setRotationX(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.rotationX = (float) w.quickConvert(strValue, "float");
}

private void setRotationY(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.rotationY = (float) w.quickConvert(strValue, "float");
}

private void setScaleX(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.scaleX = (float) w.quickConvert(strValue, "float");
}

private void setScaleY(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.scaleY = (float) w.quickConvert(strValue, "float");
}

private void setTransformPivotX(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.transformPivotX = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTransformPivotY(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.transformPivotY = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTranslationX(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.translationX = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTranslationY(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.translationY = (float) w.quickConvert(strValue, "dimensionfloat");
}

private void setTranslationZ(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String strValue) {
transform.translationZ = (float) w.quickConvert(strValue, "dimensionfloat");
}

//end - Transform


//start - PropertySet
private void parsePropertySet(IWidget w, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "visibility":
setVisibility(w, propertySet, value);
break;
case "visibilityMode":
setVisibilityMode(w, propertySet, value);
break;
case "alpha":
setAlpha(w, propertySet, value);
break;}
}
}

private void setVisibility(IWidget w, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, String strValue) {
propertySet.visibility = (int) w.quickConvert(strValue, "View.visibility");
}

private void setVisibilityMode(IWidget w, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, String strValue) {
propertySet.mVisibilityMode = getVisibilityMode(strValue);
}

private void setAlpha(IWidget w, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, String strValue) {
propertySet.alpha = (float) w.quickConvert(strValue, "float");
}

//end - PropertySet


//start - KeyPosition
private void parseKeyPosition(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "keyPositionType":
setKeyPositionType(w, keyPosition, value);
break;
case "percentX":
setPercentX(w, keyPosition, value);
break;
case "percentY":
setPercentY(w, keyPosition, value);
break;
case "percentWidth":
setPercentWidth(w, keyPosition, value);
break;
case "percentHeight":
setPercentHeight(w, keyPosition, value);
break;
case "framePosition":
setFramePosition(w, keyPosition, value);
break;
case "motionTarget":
setMotionTarget(w, keyPosition, value);
break;
case "transitionEasing":
setTransitionEasing(w, keyPosition, value);
break;
case "pathMotionArc":
setPathMotionArc(w, keyPosition, value);
break;
case "curveFit":
setCurveFit(w, keyPosition, value);
break;
case "drawPath":
setDrawPath(w, keyPosition, value);
break;
case "sizePercent":
setSizePercent(w, keyPosition, value);
break;}
}
}

private int getKeyPositionType(String value) {
	switch (value) {
case "deltaRelative":
		return 0;
case "pathRelative":
		return 1;
case "parentRelative":
		return 2;
default:
		break;
}
	return 0;
}

private void setPercentX(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mPercentX = (float) w.quickConvert(strValue, "float");
}

private void setPercentY(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mPercentY = (float) w.quickConvert(strValue, "float");
}

private void setPercentWidth(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mPercentWidth = (float) w.quickConvert(strValue, "float");
}

private void setPercentHeight(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mPercentHeight = (float) w.quickConvert(strValue, "float");
}

private void setTransitionEasing(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mTransitionEasing = strValue;
}

private void setPathMotionArc(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mPathMotionArc = getPathMotionArc(strValue);
}

private int getCurveFit(String value) {
	switch (value) {
case "spline":
		return 0;
case "linear":
		return 1;
default:
		break;
}
	return 0;
}

private void setDrawPath(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
keyPosition.mDrawPath = getDrawPath(strValue);
}

//end - KeyPosition


//start - Transition
private void parseTransition(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "constraintSetStart":
setConstraintSetStart(w, transition, value);
break;
case "constraintSetEnd":
setConstraintSetEnd(w, transition, value);
break;
case "transitionDisable":
setTransitionDisable(w, transition, value);
break;
case "layoutDuringTransition":
setLayoutDuringTransition(w, transition, value);
break;
case "pathMotionArc":
setPathMotionArc(w, transition, value);
break;
case "autoTransition":
setAutoTransition(w, transition, value);
break;
case "motionInterpolator":
setMotionInterpolator(w, transition, value);
break;
case "duration":
setDuration(w, transition, value);
break;
case "staggered":
setStaggered(w, transition, value);
break;
case "transitionFlags":
setTransitionFlags(w, transition, value);
break;}
}
}

private void setConstraintSetStart(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mConstraintSetStart = (int) w.quickConvert(strValue, "id");
}

private void setConstraintSetEnd(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mConstraintSetEnd = (int) w.quickConvert(strValue, "id");
}

private int getLayoutDuringTransition(String value) {
	switch (value) {
case "ignoreRequest":
		return 0;
case "honorRequest":
		return 1;
default:
		break;
}
	return 0;
}

private void setLayoutDuringTransition(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mLayoutDuringTransition = getLayoutDuringTransition(strValue);
}

private void setPathMotionArc(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mPathMotionArc = getPathMotionArc(strValue);
}

private int getAutoTransition(String value) {
	switch (value) {
case "none":
		return 0;
case "jumpToStart":
		return 1;
case "jumpToEnd":
		return 2;
case "animateToStart":
		return 3;
case "animateToEnd":
		return 4;
default:
		break;
}
	return 0;
}

private void setAutoTransition(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mAutoTransition = getAutoTransition(strValue);
}

private int getMotionInterpolator(String value) {
	switch (value) {
case "easeInOut":
		return 0;
case "easeIn":
		return 1;
case "easeOut":
		return 2;
case "linear":
		return 3;
case "bounce":
		return 4;
case "overshoot":
		return 5;
case "anticipate":
		return 6;
default:
		break;
}
	return 0;
}

private void setDuration(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mDuration = (int) w.quickConvert(strValue, "int");
}
		final static class TransitionFlagsConverter  extends AbstractBitFlagConverter{
		private Map<String, Integer> mapping = new HashMap<>();
				{
				mapping.put("none", 0);
mapping.put("beginOnFirstDraw", 1);
mapping.put("disableIntraAutoTransition", 2);
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

static {
        ConverterFactory.register("transitionFlags.flag", new TransitionFlagsConverter());
    }

private void setTransitionFlags(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
transition.mTransitionFlags = (int) w.quickConvert(strValue, "transitionFlags.flag");
}

//end - Transition

//start - KeyTrigger
private void parseKeyTrigger(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger,  org.xml.sax.Attributes atts) {
for (int i = 0; i < atts.getLength(); i++) {
					String name = atts.getLocalName(i);
					String value = ViewImpl.getValue(name, atts);
					switch (atts.getLocalName(i)) {
case "framePosition":
setFramePosition(w, keyTrigger, value);
break;
case "motionTarget":
setMotionTarget(w, keyTrigger, value);
break;
case "triggerReceiver":
setTriggerReceiver(w, keyTrigger, value);
break;
case "onNegativeCross":
setOnNegativeCross(w, keyTrigger, value);
break;
case "onPositiveCross":
setOnPositiveCross(w, keyTrigger, value);
break;
case "onCross":
setOnCross(w, keyTrigger, value);
break;
case "viewTransitionOnNegativeCross":
setViewTransitionOnNegativeCross(w, keyTrigger, value);
break;
case "viewTransitionOnPositiveCross":
setViewTransitionOnPositiveCross(w, keyTrigger, value);
break;
case "viewTransitionOnCross":
setViewTransitionOnCross(w, keyTrigger, value);
break;
case "triggerSlack":
setTriggerSlack(w, keyTrigger, value);
break;
case "triggerId":
setTriggerId(w, keyTrigger, value);
break;
case "motion_postLayoutCollision":
setMotion_postLayoutCollision(w, keyTrigger, value);
break;
case "motion_triggerOnCollision":
setMotion_triggerOnCollision(w, keyTrigger, value);
break;}
}
}

//end - KeyTrigger
private void setQuantizeMotionInterpolator(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
	motion.mQuantizeInterpolatorString = strValue;
	motion.mQuantizeInterpolatorType = getQuantizeMotionInterpolator(strValue);	
}

private void setMotionPathRotate(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Motion motion, String strValue) {
	motion.mPathRotate = (float) w.quickConvert(strValue, "float");	
}


private void setQuantizeMotionInterpolator(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
	motion.mQuantizeInterpolatorString = strValue;
	motion.mQuantizeInterpolatorType = getQuantizeMotionInterpolator(strValue);
}

private void setTransitionPathRotate(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
	motion.mPathRotate = (float) w.quickConvert(strValue, "float");
	
}


private void setLayout_constraintHeight(androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, Object objValue) {
	layoutParams.height = (int) objValue;
}

private void setLayout_constraintWidth(androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, Object objValue) {
	layoutParams.width = (int) objValue;	
}


private void setStartMargin(Object objValue, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, IWidget w) {
	layoutParams.setMarginStart((int) objValue);
}


private void setBottomMargin(Object objValue, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams) {
	layoutParams.bottomMargin = (int) objValue;
}


private void setTopMargin(Object objValue, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams) {
	layoutParams.topMargin = (int) objValue;
}



private void setMarginRight(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "dimension");
	layoutParams.endMargin = (int) objValue;
}

private void setMarginLeft(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "dimension");
	layoutParams.startMargin = (int) objValue;
}

private void setMarginEnd(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "dimension");
	layoutParams.endMargin = (int) objValue;
}

private void setMarginTop(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "dimension");
	layoutParams.topMargin = (int) objValue;
}

private void setMarginBottom(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "dimension");
	layoutParams.bottomMargin = (int) objValue;
}


private void setMarginStart(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "dimension");
	layoutParams.startMargin = (int) objValue;	
}


private void setLayout_constraintWidth(androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, Object objValue) {
	layoutParams.mWidth = (int) objValue;
	layoutParams.constrainedWidth = true;
}


private void setLayout_constraintHeight(androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, Object objValue) {
	layoutParams.mHeight = (int) objValue;
	layoutParams.constrainedHeight = true;
	
}


private void setConstraint_referenced_ids(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Layout layoutParams, String strValue) {
	Object objValue = w.quickConvert(strValue, "BarrierImpl.constraintReferencedIds");
	layoutParams.mReferenceIds = (int[])objValue;
	
}


private void setSizePercent(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
	keyPosition.mPercentHeight = keyPosition.mPercentWidth = (float) w.quickConvert(strValue, "float");	
}

private void setCurveFit(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
	keyPosition.mCurveFit = getCurveFit(strValue);
}

private void setMotionTarget(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
	keyPosition.setViewId((int) getId(strValue));
}

private void setFramePosition(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
	keyPosition.setFramePosition((int) quickConvert(strValue, "int"));
}

private void setKeyPositionType(IWidget w, androidx.constraintlayout.motion.widget.KeyPosition keyPosition, String strValue) {
	keyPosition.setType((int) getKeyPositionType(strValue));
	
}

private int getId(String id) {
	if (id.equals("parent")) {
		return androidx.constraintlayout.widget.ConstraintSet.PARENT_ID;
	}
	return (int) quickConvert(id, "id");
}


private void setStaggered(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
	transition.setStagger((float) quickConvert(strValue, "float"));
}


private void setMotionInterpolator(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
	transition.setInterpolatorInfo(getMotionInterpolator(strValue), strValue, -1);
}

private void setTransitionDisable(IWidget w, androidx.constraintlayout.motion.widget.MotionScene.Transition transition, String strValue) {
	transition.setEnable(!(boolean) quickConvert(strValue, "boolean"));	
}


private void setMotion_triggerOnCollision(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.TRIGGER_COLLISION_ID, getId(strValue));
	
}

private void setMotion_postLayoutCollision(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	
}

private void setTriggerId(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.TRIGGER_ID, getId(strValue));
}

private void setTriggerSlack(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.TRIGGER_SLACK, quickConvert(strValue, "float"));	
}

private void setViewTransitionOnCross(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.VIEW_TRANSITION_ON_CROSS, getId(strValue));
}

private void setViewTransitionOnPositiveCross(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.VIEW_TRANSITION_ON_POSITIVE_CROSS, getId(strValue));
}

private void setViewTransitionOnNegativeCross(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.VIEW_TRANSITION_ON_NEGATIVE_CROSS, getId(strValue));
}

private void setOnCross(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.CROSS, strValue);	
}

private void setOnPositiveCross(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.POSITIVE_CROSS, strValue);	
}

private void setOnNegativeCross(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.NEGATIVE_CROSS, strValue);
}

private void setTriggerReceiver(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setValue(androidx.constraintlayout.motion.widget.KeyTrigger.TRIGGER_RECEIVER, (int) getId(strValue));
	
}

private void setMotionTarget(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	keyTrigger.setViewId((int) getId(strValue));	
}

private void setFramePosition(IWidget w, androidx.constraintlayout.motion.widget.KeyTrigger keyTrigger, String strValue) {
	int val = (int) quickConvert(strValue, "int");
	keyTrigger.setFramePosition(val);
	keyTrigger.mFireThreshold = (val + .5f) / 100f;
}


private void processTouchEvent(androidx.constraintlayout.motion.widget.MotionScene.Transition transition, int event, int clientX, int clientY) {
	motionEvent.setRawX(clientX);
	motionEvent.setRawY(clientY);
	motionEvent.setAction(event);
	motionLayout.post(() -> {
		motionLayout.onTouchEvent(motionEvent);	
	});
		
}


private void setElevationAdditional(IWidget w, androidx.constraintlayout.widget.Barrier barrier, androidx.constraintlayout.widget.ConstraintSet.Motion motion, androidx.constraintlayout.widget.ConstraintSet.PropertySet propertySet, androidx.constraintlayout.widget.Constraints.LayoutParams layoutParams, String strValue) {
	layoutParams.applyElevation = true;
}

private void setElevationAdditional(IWidget w, androidx.constraintlayout.widget.ConstraintSet.Transform transform, String value) {
	transform.applyElevation = true;	
}

private void setReduceFlicker(boolean flag) {
	motionLayout.setReduceFlicker(flag);
	
}
//end - codecopy

private final class MouseListener implements org.eclipse.swt.widgets.Listener {
	private androidx.constraintlayout.motion.widget.MotionScene.Transition transition;
	public MouseListener(androidx.constraintlayout.motion.widget.MotionScene.Transition transition) {
		this.transition = transition;
	}

	@Override
	public void handleEvent(org.eclipse.swt.widgets.Event event) {
		java.awt.PointerInfo p = java.awt.MouseInfo.getPointerInfo();
		int x = p.getLocation().x;
		int y = p.getLocation().y;
		switch (event.type) {
		case org.eclipse.swt.SWT.MouseDown:
			action = 1;
			processTouchEvent(transition, MotionEvent.ACTION_DOWN, x, y);
			break;
		case org.eclipse.swt.SWT.MouseMove:
			if (action == 1) {
				processTouchEvent(transition, MotionEvent.ACTION_MOVE, x, y);
			}
			break;
		case org.eclipse.swt.SWT.MouseUp:
			if (action == 1) {
				processTouchEvent(transition, MotionEvent.ACTION_UP, x, y);
	        	action = 0;
			}
			break;

		default:
			break;
		}
	}
}


private void nativeAddOnSwipe(androidx.constraintlayout.motion.widget.MotionScene.Transition transition, IWidget widget) {
	org.eclipse.swt.widgets.Control control = (org.eclipse.swt.widgets.Control) widget.asNativeWidget();
	MouseListener listener = new MouseListener(transition);
	ViewImpl.addListener(control, org.eclipse.swt.SWT.MouseDown, listener);
	ViewImpl.addListener(control, org.eclipse.swt.SWT.MouseMove, listener);
	ViewImpl.addListener(control, org.eclipse.swt.SWT.MouseUp, listener);
}

}
