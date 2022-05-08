package android.support.constraint;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.constraint.solver.widgets.ConstraintAnchor;
import android.support.constraint.solver.widgets.ConstraintWidget;
import android.support.constraint.solver.widgets.ConstraintWidgetContainer;
import android.support.constraint.solver.widgets.Guideline;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/constraint/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {
    static final boolean ALLOWS_EMBEDDED = false;
    private static final boolean SIMPLE_LAYOUT = true;
    private static final String TAG = "ConstraintLayout";
    public static final String VERSION = "ConstraintLayout-1.0.0";
    SparseArray<View> mChildrenByIds = new SparseArray<>();
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>(100);
    ConstraintWidgetContainer mLayoutWidget = new ConstraintWidgetContainer();
    private int mMinWidth = 0;
    private int mMinHeight = 0;
    private int mMaxWidth = Integer.MAX_VALUE;
    private int mMaxHeight = Integer.MAX_VALUE;
    private boolean mDirtyHierarchy = true;
    private int mOptimizationLevel = 2;
    private ConstraintSet mConstraintSet = null;

    /* loaded from: classes-dex2jar.jar:android/support/constraint/ConstraintLayout$LayoutParams.class */
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
        public String dimensionRatio;
        int dimensionRatioSide;
        float dimensionRatioValue;
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
        public float horizontalBias;
        public int horizontalChainStyle;
        boolean horizontalDimensionFixed;
        public float horizontalWeight;
        boolean isGuideline;
        public int leftToLeft;
        public int leftToRight;
        public int matchConstraintDefaultHeight;
        public int matchConstraintDefaultWidth;
        public int matchConstraintMaxHeight;
        public int matchConstraintMaxWidth;
        public int matchConstraintMinHeight;
        public int matchConstraintMinWidth;
        boolean needsBaseline;
        public int orientation;
        int resolveGoneLeftMargin;
        int resolveGoneRightMargin;
        float resolvedHorizontalBias;
        int resolvedLeftToLeft;
        int resolvedLeftToRight;
        int resolvedRightToLeft;
        int resolvedRightToRight;
        public int rightToLeft;
        public int rightToRight;
        public int startToEnd;
        public int startToStart;
        public int topToBottom;
        public int topToTop;
        public float verticalBias;
        public int verticalChainStyle;
        boolean verticalDimensionFixed;
        public float verticalWeight;
        ConstraintWidget widget;

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
            this.horizontalWeight = 0.0f;
            this.verticalWeight = 0.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
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
            this.horizontalWeight = 0.0f;
            this.verticalWeight = 0.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0056R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf) {
                    this.leftToLeft = obtainStyledAttributes.getResourceId(index, this.leftToLeft);
                    if (this.leftToLeft == -1) {
                        this.leftToLeft = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf) {
                    this.leftToRight = obtainStyledAttributes.getResourceId(index, this.leftToRight);
                    if (this.leftToRight == -1) {
                        this.leftToRight = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf) {
                    this.rightToLeft = obtainStyledAttributes.getResourceId(index, this.rightToLeft);
                    if (this.rightToLeft == -1) {
                        this.rightToLeft = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf) {
                    this.rightToRight = obtainStyledAttributes.getResourceId(index, this.rightToRight);
                    if (this.rightToRight == -1) {
                        this.rightToRight = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf) {
                    this.topToTop = obtainStyledAttributes.getResourceId(index, this.topToTop);
                    if (this.topToTop == -1) {
                        this.topToTop = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf) {
                    this.topToBottom = obtainStyledAttributes.getResourceId(index, this.topToBottom);
                    if (this.topToBottom == -1) {
                        this.topToBottom = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf) {
                    this.bottomToTop = obtainStyledAttributes.getResourceId(index, this.bottomToTop);
                    if (this.bottomToTop == -1) {
                        this.bottomToTop = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf) {
                    this.bottomToBottom = obtainStyledAttributes.getResourceId(index, this.bottomToBottom);
                    if (this.bottomToBottom == -1) {
                        this.bottomToBottom = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf) {
                    this.baselineToBaseline = obtainStyledAttributes.getResourceId(index, this.baselineToBaseline);
                    if (this.baselineToBaseline == -1) {
                        this.baselineToBaseline = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX) {
                    this.editorAbsoluteX = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY) {
                    this.editorAbsoluteY = obtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin) {
                    this.guideBegin = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end) {
                    this.guideEnd = obtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent) {
                    this.guidePercent = obtainStyledAttributes.getFloat(index, this.guidePercent);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_android_orientation) {
                    this.orientation = obtainStyledAttributes.getInt(index, this.orientation);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf) {
                    this.startToEnd = obtainStyledAttributes.getResourceId(index, this.startToEnd);
                    if (this.startToEnd == -1) {
                        this.startToEnd = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf) {
                    this.startToStart = obtainStyledAttributes.getResourceId(index, this.startToStart);
                    if (this.startToStart == -1) {
                        this.startToStart = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf) {
                    this.endToStart = obtainStyledAttributes.getResourceId(index, this.endToStart);
                    if (this.endToStart == -1) {
                        this.endToStart = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf) {
                    this.endToEnd = obtainStyledAttributes.getResourceId(index, this.endToEnd);
                    if (this.endToEnd == -1) {
                        this.endToEnd = obtainStyledAttributes.getInt(index, -1);
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft) {
                    this.goneLeftMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_goneMarginTop) {
                    this.goneTopMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_goneMarginRight) {
                    this.goneRightMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom) {
                    this.goneBottomMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_goneMarginStart) {
                    this.goneStartMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd) {
                    this.goneEndMargin = obtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias) {
                    this.horizontalBias = obtainStyledAttributes.getFloat(index, this.horizontalBias);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias) {
                    this.verticalBias = obtainStyledAttributes.getFloat(index, this.verticalBias);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio) {
                    this.dimensionRatio = obtainStyledAttributes.getString(index);
                    this.dimensionRatioValue = Float.NaN;
                    this.dimensionRatioSide = -1;
                    if (this.dimensionRatio != null) {
                        int length = this.dimensionRatio.length();
                        int indexOf = this.dimensionRatio.indexOf(44);
                        if (indexOf <= 0 || indexOf >= length - 1) {
                            i = 0;
                        } else {
                            String substring = this.dimensionRatio.substring(0, indexOf);
                            if (substring.equalsIgnoreCase("W")) {
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
                                        } else {
                                            this.dimensionRatioValue = Math.abs(parseFloat / parseFloat2);
                                        }
                                    }
                                } catch (NumberFormatException e) {
                                }
                            }
                        }
                    }
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight) {
                    this.horizontalWeight = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight) {
                    this.verticalWeight = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle) {
                    this.horizontalChainStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle) {
                    this.verticalChainStyle = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default) {
                    this.matchConstraintDefaultWidth = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default) {
                    this.matchConstraintDefaultHeight = obtainStyledAttributes.getInt(index, 0);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min) {
                    this.matchConstraintMinWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinWidth);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max) {
                    this.matchConstraintMaxWidth = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxWidth);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min) {
                    this.matchConstraintMinHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMinHeight);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max) {
                    this.matchConstraintMaxHeight = obtainStyledAttributes.getDimensionPixelSize(index, this.matchConstraintMaxHeight);
                } else if (!(index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator || index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator || index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator || index == C0056R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator)) {
                    int i3 = C0056R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator;
                }
            }
            obtainStyledAttributes.recycle();
            validate();
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
            this.horizontalWeight = 0.0f;
            this.verticalWeight = 0.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
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
            this.matchConstraintDefaultWidth = layoutParams.matchConstraintDefaultWidth;
            this.matchConstraintDefaultHeight = layoutParams.matchConstraintDefaultHeight;
            this.matchConstraintMinWidth = layoutParams.matchConstraintMinWidth;
            this.matchConstraintMaxWidth = layoutParams.matchConstraintMaxWidth;
            this.matchConstraintMinHeight = layoutParams.matchConstraintMinHeight;
            this.matchConstraintMaxHeight = layoutParams.matchConstraintMaxHeight;
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
            this.horizontalWeight = 0.0f;
            this.verticalWeight = 0.0f;
            this.horizontalChainStyle = 0;
            this.verticalChainStyle = 0;
            this.matchConstraintDefaultWidth = 0;
            this.matchConstraintDefaultHeight = 0;
            this.matchConstraintMinWidth = 0;
            this.matchConstraintMinHeight = 0;
            this.matchConstraintMaxWidth = 0;
            this.matchConstraintMaxHeight = 0;
            this.editorAbsoluteX = -1;
            this.editorAbsoluteY = -1;
            this.orientation = -1;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            this.needsBaseline = false;
            this.isGuideline = false;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolvedHorizontalBias = 0.5f;
            this.widget = new ConstraintWidget();
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @TargetApi(17)
        public void resolveLayoutDirection(int i) {
            super.resolveLayoutDirection(i);
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolveGoneLeftMargin = this.goneLeftMargin;
            this.resolveGoneRightMargin = this.goneRightMargin;
            this.resolvedHorizontalBias = this.horizontalBias;
            boolean z = true;
            if (1 != getLayoutDirection()) {
                z = false;
            }
            if (z) {
                if (this.startToEnd != -1) {
                    this.resolvedRightToLeft = this.startToEnd;
                } else if (this.startToStart != -1) {
                    this.resolvedRightToRight = this.startToStart;
                }
                if (this.endToStart != -1) {
                    this.resolvedLeftToRight = this.endToStart;
                }
                if (this.endToEnd != -1) {
                    this.resolvedLeftToLeft = this.endToEnd;
                }
                if (this.goneStartMargin != -1) {
                    this.resolveGoneRightMargin = this.goneStartMargin;
                }
                if (this.goneEndMargin != -1) {
                    this.resolveGoneLeftMargin = this.goneEndMargin;
                }
                this.resolvedHorizontalBias = 1.0f - this.horizontalBias;
            } else {
                if (this.startToEnd != -1) {
                    this.resolvedLeftToRight = this.startToEnd;
                }
                if (this.startToStart != -1) {
                    this.resolvedLeftToLeft = this.startToStart;
                }
                if (this.endToStart != -1) {
                    this.resolvedRightToLeft = this.endToStart;
                }
                if (this.endToEnd != -1) {
                    this.resolvedRightToRight = this.endToEnd;
                }
                if (this.goneStartMargin != -1) {
                    this.resolveGoneLeftMargin = this.goneStartMargin;
                }
                if (this.goneEndMargin != -1) {
                    this.resolveGoneRightMargin = this.goneEndMargin;
                }
            }
            if (this.endToStart == -1 && this.endToEnd == -1) {
                if (this.rightToLeft != -1) {
                    this.resolvedRightToLeft = this.rightToLeft;
                } else if (this.rightToRight != -1) {
                    this.resolvedRightToRight = this.rightToRight;
                }
            }
            if (this.startToStart != -1 || this.startToEnd != -1) {
                return;
            }
            if (this.leftToLeft != -1) {
                this.resolvedLeftToLeft = this.leftToLeft;
            } else if (this.leftToRight != -1) {
                this.resolvedLeftToRight = this.leftToRight;
            }
        }

        public void validate() {
            this.isGuideline = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            if (this.width == 0 || this.width == -1) {
                this.horizontalDimensionFixed = false;
            }
            if (this.height == 0 || this.height == -1) {
                this.verticalDimensionFixed = false;
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
        View view;
        if (!(i == 0 || (view = this.mChildrenByIds.get(i)) == this)) {
            return view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
        }
        return this.mLayoutWidget;
    }

    private final ConstraintWidget getViewWidget(View view) {
        if (view == this) {
            return this.mLayoutWidget;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
    }

    private void init(AttributeSet attributeSet) {
        this.mLayoutWidget.setCompanionWidget(this);
        this.mChildrenByIds.put(getId(), this);
        this.mConstraintSet = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0056R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0056R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.mMinWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinWidth);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.mMinHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMinHeight);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.mMaxWidth = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxWidth);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.mMaxHeight = obtainStyledAttributes.getDimensionPixelOffset(index, this.mMaxHeight);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.mOptimizationLevel = obtainStyledAttributes.getInt(index, this.mOptimizationLevel);
                } else if (index == C0056R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    this.mConstraintSet = new ConstraintSet();
                    this.mConstraintSet.load(getContext(), resourceId);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.mLayoutWidget.setOptimizationLevel(this.mOptimizationLevel);
    }

    private void internalMeasureChildren(int i, int i2) {
        boolean z;
        int baseline;
        int i3;
        int i4;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ConstraintWidget constraintWidget = layoutParams.widget;
                if (!layoutParams.isGuideline) {
                    int i6 = layoutParams.width;
                    int i7 = layoutParams.height;
                    boolean z2 = true;
                    if (layoutParams.horizontalDimensionFixed || layoutParams.verticalDimensionFixed || (!layoutParams.horizontalDimensionFixed && layoutParams.matchConstraintDefaultWidth == 1) || layoutParams.width == -1 || (!layoutParams.verticalDimensionFixed && (layoutParams.matchConstraintDefaultHeight == 1 || layoutParams.height == -1))) {
                        if (i6 == 0 || i6 == -1) {
                            i3 = getChildMeasureSpec(i, paddingLeft, -2);
                            z = true;
                        } else {
                            i3 = getChildMeasureSpec(i, paddingLeft, i6);
                            z = false;
                        }
                        if (i7 == 0 || i7 == -1) {
                            i4 = getChildMeasureSpec(i2, paddingTop, -2);
                        } else {
                            i4 = getChildMeasureSpec(i2, paddingTop, i7);
                            z2 = false;
                        }
                        childAt.measure(i3, i4);
                        i6 = childAt.getMeasuredWidth();
                        i7 = childAt.getMeasuredHeight();
                    } else {
                        z2 = false;
                        z = false;
                    }
                    constraintWidget.setWidth(i6);
                    constraintWidget.setHeight(i7);
                    if (z) {
                        constraintWidget.setWrapWidth(i6);
                    }
                    if (z2) {
                        constraintWidget.setWrapHeight(i7);
                    }
                    if (layoutParams.needsBaseline && (baseline = childAt.getBaseline()) != -1) {
                        constraintWidget.setBaselineDistance(baseline);
                    }
                }
            }
        }
    }

    private void setChildrenConstraints() {
        ConstraintWidget targetWidget;
        ConstraintWidget targetWidget2;
        ConstraintWidget targetWidget3;
        ConstraintWidget targetWidget4;
        if (this.mConstraintSet != null) {
            this.mConstraintSet.applyToInternal(this);
        }
        int childCount = getChildCount();
        this.mLayoutWidget.removeAllChildren();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            ConstraintWidget viewWidget = getViewWidget(childAt);
            if (viewWidget != null) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                viewWidget.reset();
                viewWidget.setVisibility(childAt.getVisibility());
                viewWidget.setCompanionWidget(childAt);
                this.mLayoutWidget.add(viewWidget);
                if (!layoutParams.verticalDimensionFixed || !layoutParams.horizontalDimensionFixed) {
                    this.mVariableDimensionsWidgets.add(viewWidget);
                }
                if (layoutParams.isGuideline) {
                    Guideline guideline = (Guideline) viewWidget;
                    if (layoutParams.guideBegin != -1) {
                        guideline.setGuideBegin(layoutParams.guideBegin);
                    }
                    if (layoutParams.guideEnd != -1) {
                        guideline.setGuideEnd(layoutParams.guideEnd);
                    }
                    if (layoutParams.guidePercent != -1.0f) {
                        guideline.setGuidePercent(layoutParams.guidePercent);
                    }
                } else if (layoutParams.resolvedLeftToLeft != -1 || layoutParams.resolvedLeftToRight != -1 || layoutParams.resolvedRightToLeft != -1 || layoutParams.resolvedRightToRight != -1 || layoutParams.topToTop != -1 || layoutParams.topToBottom != -1 || layoutParams.bottomToTop != -1 || layoutParams.bottomToBottom != -1 || layoutParams.baselineToBaseline != -1 || layoutParams.editorAbsoluteX != -1 || layoutParams.editorAbsoluteY != -1 || layoutParams.width == -1 || layoutParams.height == -1) {
                    int i2 = layoutParams.resolvedLeftToLeft;
                    int i3 = layoutParams.resolvedLeftToRight;
                    int i4 = layoutParams.resolvedRightToLeft;
                    int i5 = layoutParams.resolvedRightToRight;
                    int i6 = layoutParams.resolveGoneLeftMargin;
                    int i7 = layoutParams.resolveGoneRightMargin;
                    float f = layoutParams.resolvedHorizontalBias;
                    if (Build.VERSION.SDK_INT < 17) {
                        int i8 = layoutParams.leftToLeft;
                        int i9 = layoutParams.leftToRight;
                        int i10 = layoutParams.rightToLeft;
                        int i11 = layoutParams.rightToRight;
                        int i12 = layoutParams.goneLeftMargin;
                        int i13 = layoutParams.goneRightMargin;
                        float f2 = layoutParams.horizontalBias;
                        int i14 = i8;
                        int i15 = i9;
                        if (i8 == -1) {
                            i14 = i8;
                            i15 = i9;
                            if (i9 == -1) {
                                if (layoutParams.startToStart != -1) {
                                    i14 = layoutParams.startToStart;
                                    i15 = i9;
                                } else {
                                    i14 = i8;
                                    i15 = i9;
                                    if (layoutParams.startToEnd != -1) {
                                        i15 = layoutParams.startToEnd;
                                        i14 = i8;
                                    }
                                }
                            }
                        }
                        i2 = i14;
                        i3 = i15;
                        i4 = i10;
                        i5 = i11;
                        i6 = i12;
                        i7 = i13;
                        f = f2;
                        if (i10 == -1) {
                            i2 = i14;
                            i3 = i15;
                            i4 = i10;
                            i5 = i11;
                            i6 = i12;
                            i7 = i13;
                            f = f2;
                            if (i11 == -1) {
                                if (layoutParams.endToStart != -1) {
                                    i4 = layoutParams.endToStart;
                                    i2 = i14;
                                    i3 = i15;
                                    i5 = i11;
                                    i6 = i12;
                                    i7 = i13;
                                    f = f2;
                                } else {
                                    i2 = i14;
                                    i3 = i15;
                                    i4 = i10;
                                    i5 = i11;
                                    i6 = i12;
                                    i7 = i13;
                                    f = f2;
                                    if (layoutParams.endToEnd != -1) {
                                        i5 = layoutParams.endToEnd;
                                        f = f2;
                                        i7 = i13;
                                        i6 = i12;
                                        i4 = i10;
                                        i3 = i15;
                                        i2 = i14;
                                    }
                                }
                            }
                        }
                    }
                    if (i2 != -1) {
                        ConstraintWidget targetWidget5 = getTargetWidget(i2);
                        if (targetWidget5 != null) {
                            viewWidget.immediateConnect(ConstraintAnchor.Type.LEFT, targetWidget5, ConstraintAnchor.Type.LEFT, layoutParams.leftMargin, i6);
                        }
                    } else if (!(i3 == -1 || (targetWidget4 = getTargetWidget(i3)) == null)) {
                        viewWidget.immediateConnect(ConstraintAnchor.Type.LEFT, targetWidget4, ConstraintAnchor.Type.RIGHT, layoutParams.leftMargin, i6);
                    }
                    if (i4 != -1) {
                        ConstraintWidget targetWidget6 = getTargetWidget(i4);
                        if (targetWidget6 != null) {
                            viewWidget.immediateConnect(ConstraintAnchor.Type.RIGHT, targetWidget6, ConstraintAnchor.Type.LEFT, layoutParams.rightMargin, i7);
                        }
                    } else if (!(i5 == -1 || (targetWidget3 = getTargetWidget(i5)) == null)) {
                        viewWidget.immediateConnect(ConstraintAnchor.Type.RIGHT, targetWidget3, ConstraintAnchor.Type.RIGHT, layoutParams.rightMargin, i7);
                    }
                    if (layoutParams.topToTop != -1) {
                        ConstraintWidget targetWidget7 = getTargetWidget(layoutParams.topToTop);
                        if (targetWidget7 != null) {
                            viewWidget.immediateConnect(ConstraintAnchor.Type.TOP, targetWidget7, ConstraintAnchor.Type.TOP, layoutParams.topMargin, layoutParams.goneTopMargin);
                        }
                    } else if (!(layoutParams.topToBottom == -1 || (targetWidget2 = getTargetWidget(layoutParams.topToBottom)) == null)) {
                        viewWidget.immediateConnect(ConstraintAnchor.Type.TOP, targetWidget2, ConstraintAnchor.Type.BOTTOM, layoutParams.topMargin, layoutParams.goneTopMargin);
                    }
                    if (layoutParams.bottomToTop != -1) {
                        ConstraintWidget targetWidget8 = getTargetWidget(layoutParams.bottomToTop);
                        if (targetWidget8 != null) {
                            viewWidget.immediateConnect(ConstraintAnchor.Type.BOTTOM, targetWidget8, ConstraintAnchor.Type.TOP, layoutParams.bottomMargin, layoutParams.goneBottomMargin);
                        }
                    } else if (!(layoutParams.bottomToBottom == -1 || (targetWidget = getTargetWidget(layoutParams.bottomToBottom)) == null)) {
                        viewWidget.immediateConnect(ConstraintAnchor.Type.BOTTOM, targetWidget, ConstraintAnchor.Type.BOTTOM, layoutParams.bottomMargin, layoutParams.goneBottomMargin);
                    }
                    if (layoutParams.baselineToBaseline != -1) {
                        View view = this.mChildrenByIds.get(layoutParams.baselineToBaseline);
                        ConstraintWidget targetWidget9 = getTargetWidget(layoutParams.baselineToBaseline);
                        if (!(targetWidget9 == null || view == null || !(view.getLayoutParams() instanceof LayoutParams))) {
                            layoutParams.needsBaseline = true;
                            ((LayoutParams) view.getLayoutParams()).needsBaseline = true;
                            viewWidget.getAnchor(ConstraintAnchor.Type.BASELINE).connect(targetWidget9.getAnchor(ConstraintAnchor.Type.BASELINE), 0, -1, ConstraintAnchor.Strength.STRONG, 0, true);
                            viewWidget.getAnchor(ConstraintAnchor.Type.TOP).reset();
                            viewWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).reset();
                        }
                    }
                    if (f >= 0.0f && f != 0.5f) {
                        viewWidget.setHorizontalBiasPercent(f);
                    }
                    if (layoutParams.verticalBias >= 0.0f && layoutParams.verticalBias != 0.5f) {
                        viewWidget.setVerticalBiasPercent(layoutParams.verticalBias);
                    }
                    if (isInEditMode() && !(layoutParams.editorAbsoluteX == -1 && layoutParams.editorAbsoluteY == -1)) {
                        viewWidget.setOrigin(layoutParams.editorAbsoluteX, layoutParams.editorAbsoluteY);
                    }
                    if (layoutParams.horizontalDimensionFixed) {
                        viewWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        viewWidget.setWidth(layoutParams.width);
                    } else if (layoutParams.width == -1) {
                        viewWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                        viewWidget.getAnchor(ConstraintAnchor.Type.LEFT).mMargin = layoutParams.leftMargin;
                        viewWidget.getAnchor(ConstraintAnchor.Type.RIGHT).mMargin = layoutParams.rightMargin;
                    } else {
                        viewWidget.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                        viewWidget.setWidth(0);
                    }
                    if (layoutParams.verticalDimensionFixed) {
                        viewWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
                        viewWidget.setHeight(layoutParams.height);
                    } else if (layoutParams.height == -1) {
                        viewWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                        viewWidget.getAnchor(ConstraintAnchor.Type.TOP).mMargin = layoutParams.topMargin;
                        viewWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).mMargin = layoutParams.bottomMargin;
                    } else {
                        viewWidget.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                        viewWidget.setHeight(0);
                    }
                    if (layoutParams.dimensionRatio != null) {
                        viewWidget.setDimensionRatio(layoutParams.dimensionRatio);
                    }
                    viewWidget.setHorizontalWeight(layoutParams.horizontalWeight);
                    viewWidget.setVerticalWeight(layoutParams.verticalWeight);
                    viewWidget.setHorizontalChainStyle(layoutParams.horizontalChainStyle);
                    viewWidget.setVerticalChainStyle(layoutParams.verticalChainStyle);
                    viewWidget.setHorizontalMatchStyle(layoutParams.matchConstraintDefaultWidth, layoutParams.matchConstraintMinWidth, layoutParams.matchConstraintMaxWidth);
                    viewWidget.setVerticalMatchStyle(layoutParams.matchConstraintDefaultHeight, layoutParams.matchConstraintMinHeight, layoutParams.matchConstraintMaxHeight);
                }
            }
        }
    }

    private void setSelfDimensionBehaviour(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode == 1073741824) {
                size = Math.min(this.mMaxWidth, size) - (paddingLeft + paddingRight);
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

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || layoutParams.isGuideline || isInEditMode) {
                ConstraintWidget constraintWidget = layoutParams.widget;
                int drawX = constraintWidget.getDrawX();
                int drawY = constraintWidget.getDrawY();
                childAt.layout(drawX, drawY, constraintWidget.getWidth() + drawX, constraintWidget.getHeight() + drawY);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        View view;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.mLayoutWidget.setX(paddingLeft);
        this.mLayoutWidget.setY(paddingTop);
        setSelfDimensionBehaviour(i, i2);
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            updateHierarchy();
        }
        internalMeasureChildren(i, i2);
        if (getChildCount() > 0) {
            solveLinearSystem();
        }
        int size = this.mVariableDimensionsWidgets.size();
        int paddingBottom = paddingTop + getPaddingBottom();
        int paddingRight = paddingLeft + getPaddingRight();
        if (size > 0) {
            boolean z = this.mLayoutWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z2 = this.mLayoutWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z3 = false;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                ConstraintWidget constraintWidget = this.mVariableDimensionsWidgets.get(i5);
                if ((constraintWidget instanceof Guideline) || (view = (View) constraintWidget.getCompanionWidget()) == null || view.getVisibility() == 8) {
                    z3 = z3;
                    i4 = i4;
                } else {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    view.measure(layoutParams.width == -2 ? getChildMeasureSpec(i, paddingRight, layoutParams.width) : View.MeasureSpec.makeMeasureSpec(constraintWidget.getWidth(), 1073741824), layoutParams.height == -2 ? getChildMeasureSpec(i2, paddingBottom, layoutParams.height) : View.MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), 1073741824));
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    if (measuredWidth != constraintWidget.getWidth()) {
                        constraintWidget.setWidth(measuredWidth);
                        if (z && constraintWidget.getRight() > this.mLayoutWidget.getWidth()) {
                            this.mLayoutWidget.setWidth(Math.max(this.mMinWidth, constraintWidget.getRight() + constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin()));
                        }
                        z3 = true;
                    }
                    if (measuredHeight != constraintWidget.getHeight()) {
                        constraintWidget.setHeight(measuredHeight);
                        if (z2 && constraintWidget.getBottom() > this.mLayoutWidget.getHeight()) {
                            this.mLayoutWidget.setHeight(Math.max(this.mMinHeight, constraintWidget.getBottom() + constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin()));
                        }
                        z3 = true;
                    }
                    boolean z4 = z3;
                    if (layoutParams.needsBaseline) {
                        int baseline = view.getBaseline();
                        z4 = z3;
                        if (baseline != -1) {
                            z4 = z3;
                            if (baseline != constraintWidget.getBaselineDistance()) {
                                constraintWidget.setBaselineDistance(baseline);
                                z4 = true;
                            }
                        }
                    }
                    z3 = z4;
                    i4 = i4;
                    if (Build.VERSION.SDK_INT >= 11) {
                        i4 = combineMeasuredStates(i4, view.getMeasuredState());
                        z3 = z4;
                    }
                }
            }
            i3 = i4;
            if (z3) {
                solveLinearSystem();
                i3 = i4;
            }
        } else {
            i3 = 0;
        }
        int width = this.mLayoutWidget.getWidth() + paddingRight;
        int height = this.mLayoutWidget.getHeight() + paddingBottom;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = resolveSizeAndState(width, i, i3);
            int resolveSizeAndState2 = resolveSizeAndState(height, i2, i3 << 16);
            int min = Math.min(this.mMaxWidth, resolveSizeAndState);
            int min2 = Math.min(this.mMaxHeight, resolveSizeAndState2);
            int i6 = min & ViewCompat.MEASURED_SIZE_MASK;
            int i7 = min2 & ViewCompat.MEASURED_SIZE_MASK;
            int i8 = i6;
            if (this.mLayoutWidget.isWidthMeasuredTooSmall()) {
                i8 = i6 | 16777216;
            }
            int i9 = i7;
            if (this.mLayoutWidget.isHeightMeasuredTooSmall()) {
                i9 = i7 | 16777216;
            }
            setMeasuredDimension(i8, i9);
            return;
        }
        setMeasuredDimension(width, height);
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
            ConstraintWidget constraintWidget = layoutParams.widget;
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
        this.mLayoutWidget.remove(getViewWidget(view));
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
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.mConstraintSet = constraintSet;
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

    protected void solveLinearSystem() {
        this.mLayoutWidget.layout();
    }
}
