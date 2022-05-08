package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.Helper;
import androidx.constraintlayout.widget.C0188R;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintHelper.class */
public abstract class ConstraintHelper extends View {
    public int mCount;
    public Helper mHelperWidget;
    public int[] mIds;
    public String mReferenceIds;
    public boolean mUseViewMeasure;
    public Context myContext;

    public ConstraintHelper(Context context) {
        super(context);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.myContext = context;
        init(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.myContext = context;
        init(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.myContext = context;
        init(attributeSet);
    }

    private void addID(String str) {
        int i;
        if (str != null && this.myContext != null) {
            String trim = str.trim();
            try {
                i = C0188R.C0189id.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            int i2 = i;
            if (i == 0) {
                i2 = this.myContext.getResources().getIdentifier(trim, "id", this.myContext.getPackageName());
            }
            int i3 = i2;
            if (i2 == 0) {
                i3 = i2;
                if (isInEditMode()) {
                    i3 = i2;
                    if (getParent() instanceof ConstraintLayout) {
                        Object designInformation = ((ConstraintLayout) getParent()).getDesignInformation(0, trim);
                        i3 = i2;
                        if (designInformation != null) {
                            i3 = i2;
                            if (designInformation instanceof Integer) {
                                i3 = ((Integer) designInformation).intValue();
                            }
                        }
                    }
                }
            }
            if (i3 != 0) {
                setTag(i3, null);
                return;
            }
            String str2 = "Could not find id of \"" + trim + "\"";
        }
    }

    private void setIds(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    addID(str.substring(i));
                    return;
                } else {
                    addID(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.mIds, this.mCount);
    }

    public void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0188R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0188R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.mReferenceIds = obtainStyledAttributes.getString(index);
                    setIds(this.mReferenceIds);
                }
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mUseViewMeasure) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.mCount = 0;
        for (int i : iArr) {
            setTag(i, null);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        int i2 = this.mCount;
        int[] iArr = this.mIds;
        if (i2 + 1 > iArr.length) {
            this.mIds = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mIds;
        int i3 = this.mCount;
        iArr2[i3] = i;
        this.mCount = i3 + 1;
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.mReferenceIds);
        }
        Helper helper = this.mHelperWidget;
        if (helper != null) {
            helper.removeAllIds();
            for (int i = 0; i < this.mCount; i++) {
                View viewById = constraintLayout.getViewById(this.mIds[i]);
                if (viewById != null) {
                    this.mHelperWidget.add(constraintLayout.getViewWidget(viewById));
                }
            }
        }
    }

    public void validateParams() {
        if (this.mHelperWidget != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).widget = this.mHelperWidget;
            }
        }
    }
}
