package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.Metrics;
import androidx.constraintlayout.solver.widgets.Analyzer;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.Guideline;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {
    public static final boolean ALLOWS_EMBEDDED = false;
    public static final boolean CACHE_MEASURED_DIMENSION = false;
    public static final boolean DEBUG = false;
    public static final int DESIGN_INFO_ID = 0;
    public static final String TAG = "ConstraintLayout";
    public static final boolean USE_CONSTRAINTS_HELPER = true;
    public static final String VERSION = "ConstraintLayout-1.1.3";
    public Metrics mMetrics;
    public SparseArray<View> mChildrenByIds = new SparseArray<>();
    public ArrayList<ConstraintHelper> mConstraintHelpers = new ArrayList<>(4);
    public final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>(100);
    public ConstraintWidgetContainer mLayoutWidget = new ConstraintWidgetContainer();
    public int mMinWidth = 0;
    public int mMinHeight = 0;
    public int mMaxWidth = Integer.MAX_VALUE;
    public int mMaxHeight = Integer.MAX_VALUE;
    public boolean mDirtyHierarchy = true;
    public int mOptimizationLevel = 7;
    public ConstraintSet mConstraintSet = null;
    public int mConstraintSetId = -1;
    public HashMap<String, Integer> mDesignIds = new HashMap<>();
    public int mLastMeasureWidth = -1;
    public int mLastMeasureHeight = -1;
    public int mLastMeasureWidthSize = -1;
    public int mLastMeasureHeightSize = -1;
    public int mLastMeasureWidthMode = 0;
    public int mLastMeasureHeightMode = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public static final int BASELINE = 5;
        public static final int BOTTOM = 4;
        public static final int CHAIN_PACKED = 2;
        public static final int CHAIN_SPREAD = 0;
        public static final int CHAIN_SPREAD_INSIDE = 1;
        public static final int END = 7;
        public static final int HORIZONTAL = 0;
        public static final int LEFT = 1;
        public static final int MATCH_CONSTRAINT = 0;
        public static final int MATCH_CONSTRAINT_PERCENT = 2;
        public static final int MATCH_CONSTRAINT_SPREAD = 0;
        public static final int MATCH_CONSTRAINT_WRAP = 1;
        public static final int PARENT_ID = 0;
        public static final int RIGHT = 2;
        public static final int START = 6;
        public static final int TOP = 3;
        public static final int UNSET = -1;
        public static final int VERTICAL = 1;
        public int baselineToBaseline;
        public int bottomToBottom;
        public int bottomToTop;
        public float circleAngle;
        public int circleConstraint;
        public int circleRadius;
        public boolean constrainedHeight;
        public boolean constrainedWidth;
        public String dimensionRatio;
        public int dimensionRatioSide;
        public float dimensionRatioValue;
        public int editorAbsoluteX;
        public int editorAbsoluteY;
        public int endToEnd;
        public int endToStart;
        public int goneBottomMargin;
        public int goneEndMargin;
        public int goneLeftMargin;
        public int goneRightMargin;
        public int goneStartMargin;
        public int goneTopMargin;
        public int guideBegin;
        public int guideEnd;
        public float guidePercent;
        public boolean helped;
        public float horizontalBias;
        public int horizontalChainStyle;
        public boolean horizontalDimensionFixed;
        public float horizontalWeight;
        public boolean isGuideline;
        public boolean isHelper;
        public boolean isInPlaceholder;
        public int leftToLeft;
        public int leftToRight;
        public int matchConstraintDefaultHeight;
        public int matchConstraintDefaultWidth;
        public int matchConstraintMaxHeight;
        public int matchConstraintMaxWidth;
        public int matchConstraintMinHeight;
        public int matchConstraintMinWidth;
        public float matchConstraintPercentHeight;
        public float matchConstraintPercentWidth;
        public boolean needsBaseline;
        public int orientation;
        public int resolveGoneLeftMargin;
        public int resolveGoneRightMargin;
        public int resolvedGuideBegin;
        public int resolvedGuideEnd;
        public float resolvedGuidePercent;
        public float resolvedHorizontalBias;
        public int resolvedLeftToLeft;
        public int resolvedLeftToRight;
        public int resolvedRightToLeft;
        public int resolvedRightToRight;
        public int rightToLeft;
        public int rightToRight;
        public int startToEnd;
        public int startToStart;
        public int topToBottom;
        public int topToTop;
        public float verticalBias;
        public int verticalChainStyle;
        public boolean verticalDimensionFixed;
        public float verticalWeight;
        public ConstraintWidget widget;

        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table.class */
        public static class Table {
            public static final int ANDROID_ORIENTATION = 1;
            public static final int LAYOUT_CONSTRAINED_HEIGHT = 28;
            public static final int LAYOUT_CONSTRAINED_WIDTH = 27;
            public static final int LAYOUT_CONSTRAINT_BASELINE_CREATOR = 43;
            public static final int LAYOUT_CONSTRAINT_BASELINE_TO_BASELINE_OF = 16;
            public static final int LAYOUT_CONSTRAINT_BOTTOM_CREATOR = 42;
            public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_BOTTOM_OF = 15;
            public static final int LAYOUT_CONSTRAINT_BOTTOM_TO_TOP_OF = 14;
            public static final int LAYOUT_CONSTRAINT_CIRCLE = 2;
            public static final int LAYOUT_CONSTRAINT_CIRCLE_ANGLE = 4;
            public static final int LAYOUT_CONSTRAINT_CIRCLE_RADIUS = 3;
            public static final int LAYOUT_CONSTRAINT_DIMENSION_RATIO = 44;
            public static final int LAYOUT_CONSTRAINT_END_TO_END_OF = 20;
            public static final int LAYOUT_CONSTRAINT_END_TO_START_OF = 19;
            public static final int LAYOUT_CONSTRAINT_GUIDE_BEGIN = 5;
            public static final int LAYOUT_CONSTRAINT_GUIDE_END = 6;
            public static final int LAYOUT_CONSTRAINT_GUIDE_PERCENT = 7;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_DEFAULT = 32;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_MAX = 37;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_MIN = 36;
            public static final int LAYOUT_CONSTRAINT_HEIGHT_PERCENT = 38;
            public static final int LAYOUT_CONSTRAINT_HORIZONTAL_BIAS = 29;
            public static final int LAYOUT_CONSTRAINT_HORIZONTAL_CHAINSTYLE = 47;
            public static final int LAYOUT_CONSTRAINT_HORIZONTAL_WEIGHT = 45;
            public static final int LAYOUT_CONSTRAINT_LEFT_CREATOR = 39;
            public static final int LAYOUT_CONSTRAINT_LEFT_TO_LEFT_OF = 8;
            public static final int LAYOUT_CONSTRAINT_LEFT_TO_RIGHT_OF = 9;
            public static final int LAYOUT_CONSTRAINT_RIGHT_CREATOR = 41;
            public static final int LAYOUT_CONSTRAINT_RIGHT_TO_LEFT_OF = 10;
            public static final int LAYOUT_CONSTRAINT_RIGHT_TO_RIGHT_OF = 11;
            public static final int LAYOUT_CONSTRAINT_START_TO_END_OF = 17;
            public static final int LAYOUT_CONSTRAINT_START_TO_START_OF = 18;
            public static final int LAYOUT_CONSTRAINT_TOP_CREATOR = 40;
            public static final int LAYOUT_CONSTRAINT_TOP_TO_BOTTOM_OF = 13;
            public static final int LAYOUT_CONSTRAINT_TOP_TO_TOP_OF = 12;
            public static final int LAYOUT_CONSTRAINT_VERTICAL_BIAS = 30;
            public static final int LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE = 48;
            public static final int LAYOUT_CONSTRAINT_VERTICAL_WEIGHT = 46;
            public static final int LAYOUT_CONSTRAINT_WIDTH_DEFAULT = 31;
            public static final int LAYOUT_CONSTRAINT_WIDTH_MAX = 34;
            public static final int LAYOUT_CONSTRAINT_WIDTH_MIN = 33;
            public static final int LAYOUT_CONSTRAINT_WIDTH_PERCENT = 35;
            public static final int LAYOUT_EDITOR_ABSOLUTEX = 49;
            public static final int LAYOUT_EDITOR_ABSOLUTEY = 50;
            public static final int LAYOUT_GONE_MARGIN_BOTTOM = 24;
            public static final int LAYOUT_GONE_MARGIN_END = 26;
            public static final int LAYOUT_GONE_MARGIN_LEFT = 21;
            public static final int LAYOUT_GONE_MARGIN_RIGHT = 23;
            public static final int LAYOUT_GONE_MARGIN_START = 25;
            public static final int LAYOUT_GONE_MARGIN_TOP = 22;
            public static final int UNUSED = 0;
            public static final SparseIntArray map = new SparseIntArray();

            static {
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                map.append(C0188R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                map.append(C0188R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = -1;
            this.goneTopMargin = -1;
            this.goneRightMargin = -1;
            this.goneBottomMargin = -1;
            this.goneStartMargin = -1;
            this.goneEndMargin = -1;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.dimensionRatioValue = 0.0f;
            this.dimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.isHelper = false;
            this.isInPlaceholder = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
            this.helped = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = -1;
            this.goneTopMargin = -1;
            this.goneRightMargin = -1;
            this.goneBottomMargin = -1;
            this.goneStartMargin = -1;
            this.goneEndMargin = -1;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.dimensionRatioValue = 0.0f;
            this.dimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.isHelper = false;
            this.isInPlaceholder = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
            this.helped = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0188R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                switch (Table.map.get(index)) {
                    case 1:
                        this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 2:
                        this.circleConstraint = obtainStyledAttributes.getResourceId(index, this.circleConstraint);
                        if (this.circleConstraint == -1) {
                            this.circleConstraint = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.circleRadius = obtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                        break;
                    case 4:
                        this.circleAngle = obtainStyledAttributes.getFloat(index, this.circleAngle) % 360.0f;
                        float f = this.circleAngle;
                        if (f < 0.0f) {
                            this.circleAngle = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 6:
                        this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 7:
                        this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 8:
                        this.leftToLeft = obtainStyledAttributes.getResourceId(index, this.leftToLeft);
                        if (this.leftToLeft == -1) {
                            this.leftToLeft = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        this.leftToRight = obtainStyledAttributes.getResourceId(index, this.leftToRight);
                        if (this.leftToRight == -1) {
                            this.leftToRight = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        this.rightToLeft = obtainStyledAttributes.getResourceId(index, this.rightToLeft);
                        if (this.rightToLeft == -1) {
                            this.rightToLeft = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        this.rightToRight = obtainStyledAttributes.getResourceId(index, this.rightToRight);
                        if (this.rightToRight == -1) {
                            this.rightToRight = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        this.topToTop = obtainStyledAttributes.getResourceId(index, this.topToTop);
                        if (this.topToTop == -1) {
                            this.topToTop = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        this.topToBottom = obtainStyledAttributes.getResourceId(index, this.topToBottom);
                        if (this.topToBottom == -1) {
                            this.topToBottom = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        this.bottomToTop = obtainStyledAttributes.getResourceId(index, this.bottomToTop);
                        if (this.bottomToTop == -1) {
                            this.bottomToTop = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        this.bottomToBottom = obtainStyledAttributes.getResourceId(index, this.bottomToBottom);
                        if (this.bottomToBottom == -1) {
                            this.bottomToBottom = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        this.baselineToBaseline = obtainStyledAttributes.getResourceId(index, this.baselineToBaseline);
                        if (this.baselineToBaseline == -1) {
                            this.baselineToBaseline = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        this.startToEnd = obtainStyledAttributes.getResourceId(index, this.startToEnd);
                        if (this.startToEnd == -1) {
                            this.startToEnd = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        this.startToStart = obtainStyledAttributes.getResourceId(index, this.startToStart);
                        if (this.startToStart == -1) {
                            this.startToStart = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        this.endToStart = obtainStyledAttributes.getResourceId(index, this.endToStart);
                        if (this.endToStart == -1) {
                            this.endToStart = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        this.endToEnd = obtainStyledAttributes.getResourceId(index, this.endToEnd);
                        if (this.endToEnd == -1) {
                            this.endToEnd = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 22:
                        this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 23:
                        this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 24:
                        this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 25:
                        this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 26:
                        this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 27:
                        this.constrainedWidth = obtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                        break;
                    case 28:
                        this.constrainedHeight = obtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                        break;
                    case 29:
                        this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 30:
                        this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 31:
                        this.matchConstraintDefaultWidth = obtainStyledAttributes.getInt(index, 0);
                        if (this.matchConstraintDefaultWidth == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        this.matchConstraintDefaultHeight = obtainStyledAttributes.getInt(index, 0);
                        if (this.matchConstraintDefaultHeight == 1) {
                            Log.e(ConstraintLayout.TAG, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.matchConstraintMinWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinWidth);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMinWidth) == -2) {
                                this.matchConstraintMinWidth = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.matchConstraintMaxWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxWidth);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMaxWidth) == -2) {
                                this.matchConstraintMaxWidth = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.matchConstraintPercentWidth = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.matchConstraintPercentWidth));
                        break;
                    case 36:
                        try {
                            this.matchConstraintMinHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinHeight);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMinHeight) == -2) {
                                this.matchConstraintMinHeight = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.matchConstraintMaxHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxHeight);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.matchConstraintMaxHeight) == -2) {
                                this.matchConstraintMaxHeight = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.matchConstraintPercentHeight = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.matchConstraintPercentHeight));
                        break;
                    case 44:
                        this.dimensionRatio = obtainStyledAttributes.getString(index);
                        this.dimensionRatioValue = Float.NaN;
                        this.dimensionRatioSide = -1;
                        String str = this.dimensionRatio;
                        if (str != null) {
                            int length = str.length();
                            int indexOf = this.dimensionRatio.indexOf(44);
                            if (indexOf <= 0 || indexOf >= length - 1) {
                                i = 0;
                            } else {
                                String substring = this.dimensionRatio.substring(0, indexOf);
                                if (substring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                                    this.dimensionRatioSide = 0;
                                } else if (substring.equalsIgnoreCase("H")) {
                                    this.dimensionRatioSide = 1;
                                }
                                i = indexOf + 1;
                            }
                            int indexOf2 = this.dimensionRatio.indexOf(58);
                            if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                String substring2 = this.dimensionRatio.substring(i);
                                if (substring2.length() > 0) {
                                    this.dimensionRatioValue = Float.parseFloat(substring2);
                                    break;
                                } else {
                                    break;
                                }
                            } else {
                                String substring3 = this.dimensionRatio.substring(i, indexOf2);
                                String substring4 = this.dimensionRatio.substring(indexOf2 + 1);
                                if (substring3.length() > 0 && substring4.length() > 0) {
                                    try {
                                        float parseFloat = Float.parseFloat(substring3);
                                        float parseFloat2 = Float.parseFloat(substring4);
                                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                            if (this.dimensionRatioSide == 1) {
                                                this.dimensionRatioValue = Math.abs(parseFloat2 / parseFloat);
                                                break;
                                            } else {
                                                this.dimensionRatioValue = Math.abs(parseFloat / parseFloat2);
                                                break;
                                            }
                                        }
                                    } catch (NumberFormatException e5) {
                                        break;
                                    }
                                }
                            }
                        } else {
                            break;
                        }
                        break;
                    case 45:
                        this.horizontalWeight = obtainStyledAttributes.getFloat(index, this.horizontalWeight);
                        break;
                    case 46:
                        this.verticalWeight = obtainStyledAttributes.getFloat(index, this.verticalWeight);
                        break;
                    case 47:
                        this.horizontalChainStyle = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 48:
                        this.verticalChainStyle = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 49:
                        this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                        break;
                    case 50:
                        this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
            validate();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = -1;
            this.goneTopMargin = -1;
            this.goneRightMargin = -1;
            this.goneBottomMargin = -1;
            this.goneStartMargin = -1;
            this.goneEndMargin = -1;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.dimensionRatioValue = 0.0f;
            this.dimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.isHelper = false;
            this.isInPlaceholder = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
            this.helped = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.guideBegin = -1;
            this.guideEnd = -1;
            this.guidePercent = -1.0f;
            this.leftToLeft = -1;
            this.leftToRight = -1;
            this.rightToLeft = -1;
            this.rightToRight = -1;
            this.topToTop = -1;
            this.topToBottom = -1;
            this.bottomToTop = -1;
            this.bottomToBottom = -1;
            this.baselineToBaseline = -1;
            this.circleConstraint = -1;
            this.circleRadius = 0;
            this.circleAngle = 0.0f;
            this.startToEnd = -1;
            this.startToStart = -1;
            this.endToStart = -1;
            this.endToEnd = -1;
            this.goneLeftMargin = -1;
            this.goneTopMargin = -1;
            this.goneRightMargin = -1;
            this.goneBottomMargin = -1;
            this.goneStartMargin = -1;
            this.goneEndMargin = -1;
            this.horizontalBias = 0.5f;
            this.verticalBias = 0.5f;
            this.dimensionRatio = null;
            this.dimensionRatioValue = 0.0f;
            this.dimensionRatioSide = 1;
            this.horizontalWeight = -1.0f;
            this.verticalWeight = -1.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.matchConstraintPercentWidth = 1.0f;
            this.matchConstraintPercentHeight = 1.0f;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.constrainedWidth = false;
            this.constrainedHeight = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.isHelper = false;
            this.isInPlaceholder = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
            this.helped = false;
            this.guideBegin = layoutParams.guideBegin;
            this.guideEnd = layoutParams.guideEnd;
            this.guidePercent = layoutParams.guidePercent;
            this.leftToLeft = layoutParams.leftToLeft;
            this.leftToRight = layoutParams.leftToRight;
            this.rightToLeft = layoutParams.rightToLeft;
            this.rightToRight = layoutParams.rightToRight;
            this.topToTop = layoutParams.topToTop;
            this.topToBottom = layoutParams.topToBottom;
            this.bottomToTop = layoutParams.bottomToTop;
            this.bottomToBottom = layoutParams.bottomToBottom;
            this.baselineToBaseline = layoutParams.baselineToBaseline;
            this.circleConstraint = layoutParams.circleConstraint;
            this.circleRadius = layoutParams.circleRadius;
            this.circleAngle = layoutParams.circleAngle;
            this.startToEnd = layoutParams.startToEnd;
            this.startToStart = layoutParams.startToStart;
            this.endToStart = layoutParams.endToStart;
            this.endToEnd = layoutParams.endToEnd;
            this.goneLeftMargin = layoutParams.goneLeftMargin;
            this.goneTopMargin = layoutParams.goneTopMargin;
            this.goneRightMargin = layoutParams.goneRightMargin;
            this.goneBottomMargin = layoutParams.goneBottomMargin;
            this.goneStartMargin = layoutParams.goneStartMargin;
            this.goneEndMargin = layoutParams.goneEndMargin;
            this.horizontalBias = layoutParams.horizontalBias;
            this.verticalBias = layoutParams.verticalBias;
            this.dimensionRatio = layoutParams.dimensionRatio;
            this.dimensionRatioValue = layoutParams.dimensionRatioValue;
            this.dimensionRatioSide = layoutParams.dimensionRatioSide;
            this.horizontalWeight = layoutParams.horizontalWeight;
            this.verticalWeight = layoutParams.verticalWeight;
            this.horizontalChainStyle = layoutParams.horizontalChainStyle;
            this.verticalChainStyle = layoutParams.verticalChainStyle;
            this.constrainedWidth = layoutParams.constrainedWidth;
            this.constrainedHeight = layoutParams.constrainedHeight;
            this.matchConstraintDefaultWidth = layoutParams.matchConstraintDefaultWidth;
            this.matchConstraintDefaultHeight = layoutParams.matchConstraintDefaultHeight;
            this.matchConstraintMinWidth = layoutParams.matchConstraintMinWidth;
            this.matchConstraintMaxWidth = layoutParams.matchConstraintMaxWidth;
            this.matchConstraintMinHeight = layoutParams.matchConstraintMinHeight;
            this.matchConstraintMaxHeight = layoutParams.matchConstraintMaxHeight;
            this.matchConstraintPercentWidth = layoutParams.matchConstraintPercentWidth;
            this.matchConstraintPercentHeight = layoutParams.matchConstraintPercentHeight;
            this.editorAbsoluteX = layoutParams.editorAbsoluteX;
            this.editorAbsoluteY = layoutParams.editorAbsoluteY;
            this.orientation = layoutParams.orientation;
            this.horizontalDimensionFixed = layoutParams.horizontalDimensionFixed;
            this.verticalDimensionFixed = layoutParams.verticalDimensionFixed;
            this.needsBaseline = layoutParams.needsBaseline;
            this.isGuideline = layoutParams.isGuideline;
            this.resolvedLeftToLeft = layoutParams.resolvedLeftToLeft;
            this.resolvedLeftToRight = layoutParams.resolvedLeftToRight;
            this.resolvedRightToLeft = layoutParams.resolvedRightToLeft;
            this.resolvedRightToRight = layoutParams.resolvedRightToRight;
            this.resolveGoneLeftMargin = layoutParams.resolveGoneLeftMargin;
            this.resolveGoneRightMargin = layoutParams.resolveGoneRightMargin;
            this.resolvedHorizontalBias = layoutParams.resolvedHorizontalBias;
            this.widget = layoutParams.widget;
        }

        public void reset() {
            ConstraintWidget constraintWidget = this.widget;
            if (constraintWidget != null) {
                constraintWidget.reset();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x012d  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 612
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public void validate() {
            this.isGuideline = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.constrainedWidth) {
                this.horizontalDimensionFixed = false;
                this.matchConstraintDefaultWidth = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.constrainedHeight) {
                this.verticalDimensionFixed = false;
                this.matchConstraintDefaultHeight = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).width == 0 || ((ViewGroup.MarginLayoutParams) this).width == -1) {
                this.horizontalDimensionFixed = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.matchConstraintDefaultWidth == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (((ViewGroup.MarginLayoutParams) this).height == 0 || ((ViewGroup.MarginLayoutParams) this).height == -1) {
                this.verticalDimensionFixed = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.matchConstraintDefaultHeight == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent != -1.0f || this.guideBegin != -1 || this.guideEnd != -1) {
                this.isGuideline = true;
                this.horizontalDimensionFixed = true;
                this.verticalDimensionFixed = true;
                if (!(this.widget instanceof Guideline)) {
                    this.widget = new Guideline();
                }
                ((Guideline) this.widget).setOrientation(this.orientation);
            }
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        init(null);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private final ConstraintWidget getTargetWidget(int i) {
        if (i == 0) {
            return this.mLayoutWidget;
        }
        View view = this.mChildrenByIds.get(i);
        View view2 = view;
        if (view == null) {
            View findViewById = findViewById(i);
            view2 = findViewById;
            if (findViewById != null) {
                view2 = findViewById;
                if (findViewById != this) {
                    view2 = findViewById;
                    if (findViewById.getParent() == this) {
                        onViewAdded(findViewById);
                        view2 = findViewById;
                    }
                }
            }
        }
        if (view2 == this) {
            return this.mLayoutWidget;
        }
        return view2 == null ? null : ((LayoutParams) view2.getLayoutParams()).widget;
    }

    private void init(AttributeSet attributeSet) {
        this.mLayoutWidget.setCompanionWidget(this);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0188R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0188R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == C0188R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == C0188R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == C0188R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == C0188R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = obtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == C0188R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        this.mConstraintSet = new ConstraintSet();
                        this.mConstraintSet.load(getContext(), resourceId);
                    } catch (Resources.NotFoundException e) {
                        this.mConstraintSet = null;
                    }
                    this.mConstraintSetId = resourceId;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.setOptimizationLevel(this.mOptimizationLevel);
    }

    private void internalMeasureChildren(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        boolean z2;
        int baseline;
        int i5;
        int i6;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ConstraintWidget constraintWidget = layoutParams.widget;
                if (!layoutParams.isGuideline && !layoutParams.isHelper) {
                    constraintWidget.setVisibility(childAt.getVisibility());
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    boolean z3 = layoutParams.horizontalDimensionFixed;
                    if (z3 || layoutParams.verticalDimensionFixed || (!z3 && layoutParams.matchConstraintDefaultWidth == 1) || ((ViewGroup.MarginLayoutParams) layoutParams).width == -1 || (!layoutParams.verticalDimensionFixed && (layoutParams.matchConstraintDefaultHeight == 1 || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1))) {
                        if (i8 == 0) {
                            i5 = ViewGroup.getChildMeasureSpec(i, paddingLeft, -2);
                            z2 = true;
                        } else if (i8 == -1) {
                            i5 = ViewGroup.getChildMeasureSpec(i, paddingLeft, -1);
                            z2 = false;
                        } else {
                            z2 = i8 == -2;
                            i5 = ViewGroup.getChildMeasureSpec(i, paddingLeft, i8);
                        }
                        if (i9 == 0) {
                            i6 = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
                            z = true;
                        } else if (i9 == -1) {
                            i6 = ViewGroup.getChildMeasureSpec(i2, paddingTop, -1);
                            z = false;
                        } else {
                            z = i9 == -2;
                            i6 = ViewGroup.getChildMeasureSpec(i2, paddingTop, i9);
                        }
                        childAt.measure(i5, i6);
                        Metrics metrics = this.mMetrics;
                        if (metrics != null) {
                            metrics.measures++;
                        }
                        constraintWidget.setWidthWrapContent(i8 == -2);
                        constraintWidget.setHeightWrapContent(i9 == -2);
                        i3 = childAt.getMeasuredWidth();
                        i4 = childAt.getMeasuredHeight();
                    } else {
                        z2 = false;
                        z = false;
                        i4 = i9;
                        i3 = i8;
                    }
                    constraintWidget.setWidth(i3);
                    constraintWidget.setHeight(i4);
                    if (z2) {
                        constraintWidget.setWrapWidth(i3);
                    }
                    if (z) {
                        constraintWidget.setWrapHeight(i4);
                    }
                    if (layoutParams.needsBaseline && (baseline = childAt.getBaseline()) != -1) {
                        constraintWidget.setBaselineDistance(baseline);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04d0  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0512  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void internalMeasureDimensions(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.internalMeasureDimensions(int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0494  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x06f1  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0795  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x07b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setChildrenConstraints() {
        /*
            Method dump skipped, instructions count: 2087
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.setChildrenConstraints():void");
    }

    private void setSelfDimensionBehaviour(int i, int i2) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode != 1073741824) {
                dimensionBehaviour = dimensionBehaviour2;
            } else {
                size = Math.min(this.mMaxWidth, size) - (paddingLeft + paddingRight);
                dimensionBehaviour = dimensionBehaviour2;
            }
            size = 0;
        } else {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = Math.min(this.mMaxHeight, size2) - (paddingTop + paddingBottom);
            }
            size2 = 0;
        } else {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        this.mLayoutWidget.setMinWidth(0);
        this.mLayoutWidget.setMinHeight(0);
        this.mLayoutWidget.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.mLayoutWidget.setWidth(size);
        this.mLayoutWidget.setVerticalDimensionBehaviour(dimensionBehaviour2);
        this.mLayoutWidget.setHeight(size2);
        this.mLayoutWidget.setMinWidth((this.mMinWidth - getPaddingLeft()) - getPaddingRight());
        this.mLayoutWidget.setMinHeight((this.mMinHeight - getPaddingTop()) - getPaddingBottom());
    }

    private void updateHierarchy() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            this.mVariableDimensionsWidgets.clear();
            setChildrenConstraints();
        }
    }

    private void updatePostMeasures() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Placeholder) {
                ((Placeholder) childAt).updatePostMeasure(this);
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                this.mConstraintHelpers.get(i2).updatePostMeasure(this);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (!(childAt.getVisibility() == 8 || (tag = childAt.getTag()) == null || !(tag instanceof String))) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int parseInt4 = Integer.parseInt(split[3]);
                        int i2 = (int) ((parseInt / 1080.0f) * width);
                        int i3 = (int) ((parseInt2 / 1920.0f) * height);
                        int i4 = (int) ((parseInt3 / 1080.0f) * width);
                        int i5 = (int) ((parseInt4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(SupportMenu.CATEGORY_MASK);
                        float f = i2;
                        float f2 = i3;
                        float f3 = i2 + i4;
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i3 + i5;
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    public void fillMetrics(Metrics metrics) {
        this.mMetrics = metrics;
        this.mLayoutWidget.fillMetrics(metrics);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public Object getDesignInformation(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.mDesignIds;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.mDesignIds.get(str);
    }

    public int getMaxHeight() {
        return this.mMaxHeight;
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public int getOptimizationLevel() {
        return this.mLayoutWidget.getOptimizationLevel();
    }

    public View getViewById(int i) {
        return this.mChildrenByIds.get(i);
    }

    public final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.widget;
            if ((childAt.getVisibility() != 8 || layoutParams.isGuideline || layoutParams.isHelper || isInEditMode) && !layoutParams.isInPlaceholder) {
                int drawX = constraintWidget.getDrawX();
                int drawY = constraintWidget.getDrawY();
                int width = constraintWidget.getWidth() + drawX;
                int height = constraintWidget.getHeight() + drawY;
                childAt.layout(drawX, drawY, width, height);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(drawX, drawY, width, height);
                }
            }
        }
        int size = this.mConstraintHelpers.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.mConstraintHelpers.get(i6).updatePostLayout(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        System.currentTimeMillis();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.mLayoutWidget.setX(paddingLeft);
        this.mLayoutWidget.setY(paddingTop);
        this.mLayoutWidget.setMaxWidth(this.mMaxWidth);
        this.mLayoutWidget.setMaxHeight(this.mMaxHeight);
        if (Build.VERSION.SDK_INT >= 17) {
            this.mLayoutWidget.setRtl(getLayoutDirection() == 1);
        }
        setSelfDimensionBehaviour(i, i2);
        int width = this.mLayoutWidget.getWidth();
        int height = this.mLayoutWidget.getHeight();
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            updateHierarchy();
            z = true;
        } else {
            z = false;
        }
        boolean z3 = (this.mOptimizationLevel & 8) == 8;
        if (z3) {
            this.mLayoutWidget.preOptimize();
            this.mLayoutWidget.optimizeForDimensions(width, height);
            internalMeasureDimensions(i, i2);
        } else {
            internalMeasureChildren(i, i2);
        }
        updatePostMeasures();
        if (getChildCount() > 0 && z) {
            Analyzer.determineGroups(this.mLayoutWidget);
        }
        ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutWidget;
        if (constraintWidgetContainer.mGroupsWrapOptimized) {
            if (constraintWidgetContainer.mHorizontalWrapOptimized && mode == Integer.MIN_VALUE) {
                int i4 = constraintWidgetContainer.mWrapFixedWidth;
                if (i4 < size) {
                    constraintWidgetContainer.setWidth(i4);
                }
                this.mLayoutWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            }
            ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutWidget;
            if (constraintWidgetContainer2.mVerticalWrapOptimized && mode2 == Integer.MIN_VALUE) {
                int i5 = constraintWidgetContainer2.mWrapFixedHeight;
                if (i5 < size2) {
                    constraintWidgetContainer2.setHeight(i5);
                }
                this.mLayoutWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            }
        }
        if ((this.mOptimizationLevel & 32) == 32) {
            int width2 = this.mLayoutWidget.getWidth();
            int height2 = this.mLayoutWidget.getHeight();
            if (this.mLastMeasureWidth != width2 && mode == 1073741824) {
                Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 0, width2);
            }
            if (this.mLastMeasureHeight != height2 && mode2 == 1073741824) {
                Analyzer.setPosition(this.mLayoutWidget.mWidgetGroups, 1, height2);
            }
            ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutWidget;
            if (constraintWidgetContainer3.mHorizontalWrapOptimized && constraintWidgetContainer3.mWrapFixedWidth > size) {
                Analyzer.setPosition(constraintWidgetContainer3.mWidgetGroups, 0, size);
            }
            ConstraintWidgetContainer constraintWidgetContainer4 = this.mLayoutWidget;
            if (constraintWidgetContainer4.mVerticalWrapOptimized && constraintWidgetContainer4.mWrapFixedHeight > size2) {
                Analyzer.setPosition(constraintWidgetContainer4.mWidgetGroups, 1, size2);
            }
        }
        if (getChildCount() > 0) {
            solveLinearSystem("First pass");
        }
        int size3 = this.mVariableDimensionsWidgets.size();
        int paddingBottom = paddingTop + getPaddingBottom();
        int paddingRight = paddingLeft + getPaddingRight();
        if (size3 > 0) {
            boolean z4 = this.mLayoutWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z5 = this.mLayoutWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            int max = Math.max(this.mLayoutWidget.getWidth(), this.mMinWidth);
            int max2 = Math.max(this.mLayoutWidget.getHeight(), this.mMinHeight);
            boolean z6 = false;
            int i6 = 0;
            for (int i7 = 0; i7 < size3; i7++) {
                ConstraintWidget constraintWidget = this.mVariableDimensionsWidgets.get(i7);
                View view = (View) constraintWidget.getCompanionWidget();
                if (view != null) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    if (!layoutParams.isHelper && !layoutParams.isGuideline) {
                        boolean z7 = z6;
                        if (view.getVisibility() != 8 && (!z3 || !constraintWidget.getResolutionWidth().isResolved() || !constraintWidget.getResolutionHeight().isResolved())) {
                            view.measure((((ViewGroup.MarginLayoutParams) layoutParams).width != -2 || !layoutParams.horizontalDimensionFixed) ? View.MeasureSpec.makeMeasureSpec(constraintWidget.getWidth(), 1073741824) : ViewGroup.getChildMeasureSpec(i, paddingRight, ((ViewGroup.MarginLayoutParams) layoutParams).width), (((ViewGroup.MarginLayoutParams) layoutParams).height != -2 || !layoutParams.verticalDimensionFixed) ? View.MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), 1073741824) : ViewGroup.getChildMeasureSpec(i2, paddingBottom, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                            Metrics metrics = this.mMetrics;
                            if (metrics != null) {
                                metrics.additionalMeasures++;
                            }
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            int i8 = max;
                            if (measuredWidth != constraintWidget.getWidth()) {
                                constraintWidget.setWidth(measuredWidth);
                                if (z3) {
                                    constraintWidget.getResolutionWidth().resolve(measuredWidth);
                                }
                                i8 = max;
                                if (z4) {
                                    i8 = max;
                                    if (constraintWidget.getRight() > max) {
                                        i8 = Math.max(max, constraintWidget.getRight() + constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                                    }
                                }
                                z7 = true;
                            }
                            int i9 = max2;
                            if (measuredHeight != constraintWidget.getHeight()) {
                                constraintWidget.setHeight(measuredHeight);
                                if (z3) {
                                    constraintWidget.getResolutionHeight().resolve(measuredHeight);
                                }
                                i9 = max2;
                                if (z5) {
                                    i9 = max2;
                                    if (constraintWidget.getBottom() > max2) {
                                        i9 = Math.max(max2, constraintWidget.getBottom() + constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                                    }
                                }
                                z7 = true;
                            }
                            boolean z8 = z7;
                            if (layoutParams.needsBaseline) {
                                int baseline = view.getBaseline();
                                z8 = z7;
                                if (baseline != -1) {
                                    z8 = z7;
                                    if (baseline != constraintWidget.getBaselineDistance()) {
                                        constraintWidget.setBaselineDistance(baseline);
                                        z8 = true;
                                    }
                                }
                            }
                            if (Build.VERSION.SDK_INT >= 11) {
                                i6 = ViewGroup.combineMeasuredStates(i6, view.getMeasuredState());
                                max2 = i9;
                                max = i8;
                                z6 = z8;
                            } else {
                                max2 = i9;
                                max = i8;
                                z6 = z8;
                            }
                        }
                    }
                }
                max2 = max2;
            }
            if (z6) {
                this.mLayoutWidget.setWidth(width);
                this.mLayoutWidget.setHeight(height);
                if (z3) {
                    this.mLayoutWidget.solveGraph();
                }
                solveLinearSystem("2nd pass");
                if (this.mLayoutWidget.getWidth() < max) {
                    this.mLayoutWidget.setWidth(max);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.mLayoutWidget.getHeight() < max2) {
                    this.mLayoutWidget.setHeight(max2);
                    z2 = true;
                }
                if (z2) {
                    solveLinearSystem("3rd pass");
                }
            }
            int i10 = 0;
            while (true) {
                i3 = i6;
                if (i10 >= size3) {
                    break;
                }
                ConstraintWidget constraintWidget2 = this.mVariableDimensionsWidgets.get(i10);
                View view2 = (View) constraintWidget2.getCompanionWidget();
                if (!(view2 == null || ((view2.getMeasuredWidth() == constraintWidget2.getWidth() && view2.getMeasuredHeight() == constraintWidget2.getHeight()) || constraintWidget2.getVisibility() == 8))) {
                    view2.measure(View.MeasureSpec.makeMeasureSpec(constraintWidget2.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(constraintWidget2.getHeight(), 1073741824));
                    Metrics metrics2 = this.mMetrics;
                    if (metrics2 != null) {
                        metrics2.additionalMeasures++;
                    }
                }
                i10++;
            }
        } else {
            i3 = 0;
        }
        int width3 = this.mLayoutWidget.getWidth() + paddingRight;
        int height3 = this.mLayoutWidget.getHeight() + paddingBottom;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = ViewGroup.resolveSizeAndState(width3, i, i3);
            int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(height3, i2, i3 << 16);
            int min = Math.min(this.mMaxWidth, resolveSizeAndState & ViewCompat.MEASURED_SIZE_MASK);
            int min2 = Math.min(this.mMaxHeight, resolveSizeAndState2 & ViewCompat.MEASURED_SIZE_MASK);
            int i11 = min;
            if (this.mLayoutWidget.isWidthMeasuredTooSmall()) {
                i11 = min | 16777216;
            }
            int i12 = min2;
            if (this.mLayoutWidget.isHeightMeasuredTooSmall()) {
                i12 = min2 | 16777216;
            }
            setMeasuredDimension(i11, i12);
            this.mLastMeasureWidth = i11;
            this.mLastMeasureHeight = i12;
            return;
        }
        setMeasuredDimension(width3, height3);
        this.mLastMeasureWidth = width3;
        this.mLastMeasureHeight = height3;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget viewWidget = getViewWidget(view);
        if ((view instanceof Guideline) && !(viewWidget instanceof Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.widget = new Guideline();
            layoutParams.isGuideline = true;
            ((Guideline) layoutParams.widget).setOrientation(layoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((LayoutParams) view.getLayoutParams()).isHelper = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.mChildrenByIds.remove(view.getId());
        ConstraintWidget viewWidget = getViewWidget(view);
        this.mLayoutWidget.remove(viewWidget);
        this.mConstraintHelpers.remove(view);
        this.mVariableDimensionsWidgets.remove(viewWidget);
        this.mDirtyHierarchy = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.mConstraintSet = constraintSet;
    }

    public void setDesignInformation(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            String str2 = str;
            if (indexOf != -1) {
                str2 = str.substring(indexOf + 1);
            }
            this.mDesignIds.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    @Override // android.view.View
    public void setId(int i) {
        this.mChildrenByIds.remove(getId());
        super.setId(i);
        this.mChildrenByIds.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i != this.mMaxHeight) {
            this.mMaxHeight = i;
            requestLayout();
        }
    }

    public void setMaxWidth(int i) {
        if (i != this.mMaxWidth) {
            this.mMaxWidth = i;
            requestLayout();
        }
    }

    public void setMinHeight(int i) {
        if (i != this.mMinHeight) {
            this.mMinHeight = i;
            requestLayout();
        }
    }

    public void setMinWidth(int i) {
        if (i != this.mMinWidth) {
            this.mMinWidth = i;
            requestLayout();
        }
    }

    public void setOptimizationLevel(int i) {
        this.mLayoutWidget.setOptimizationLevel(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void solveLinearSystem(String str) {
        this.mLayoutWidget.layout();
        Metrics metrics = this.mMetrics;
        if (metrics != null) {
            metrics.resolutions++;
        }
    }
}
