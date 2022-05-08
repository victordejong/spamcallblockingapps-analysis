package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.solver.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/Barrier.class */
public class Barrier extends ConstraintHelper {

    /* renamed from: n */
    private int f2485n;

    /* renamed from: o */
    private int f2486o;

    /* renamed from: p */
    private androidx.constraintlayout.solver.widgets.Barrier f2487p;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        super.setVisibility(8);
    }

    /* renamed from: w */
    private void m20076w(ConstraintWidget constraintWidget, int i, boolean z) {
        this.f2486o = i;
        if (Build.VERSION.SDK_INT < 17) {
            int i2 = this.f2485n;
            if (i2 == 5) {
                this.f2486o = 0;
            } else if (i2 == 6) {
                this.f2486o = 1;
            }
        } else if (z) {
            int i3 = this.f2485n;
            if (i3 == 5) {
                this.f2486o = 1;
            } else if (i3 == 6) {
                this.f2486o = 0;
            }
        } else {
            int i4 = this.f2485n;
            if (i4 == 5) {
                this.f2486o = 0;
            } else if (i4 == 6) {
                this.f2486o = 1;
            }
        }
        if (constraintWidget instanceof androidx.constraintlayout.solver.widgets.Barrier) {
            ((androidx.constraintlayout.solver.widgets.Barrier) constraintWidget).m20424n1(this.f2486o);
        }
    }

    public int getMargin() {
        return this.f2487p.m20428j1();
    }

    public int getType() {
        return this.f2485n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: m */
    public void mo19955m(AttributeSet attributeSet) {
        super.mo19955m(attributeSet);
        this.f2487p = new androidx.constraintlayout.solver.widgets.Barrier();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f2487p.m20425m1(obtainStyledAttributes.getBoolean(index, true));
                } else if (index == C0178R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f2487p.m20423o1(obtainStyledAttributes.getDimensionPixelSize(index, 0));
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f2499i = this.f2487p;
        m20051u();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: n */
    public void mo20057n(ConstraintSet.Constraint constraint, HelperWidget helperWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        super.mo20057n(constraint, helperWidget, layoutParams, sparseArray);
        if (helperWidget instanceof androidx.constraintlayout.solver.widgets.Barrier) {
            androidx.constraintlayout.solver.widgets.Barrier barrier = (androidx.constraintlayout.solver.widgets.Barrier) helperWidget;
            m20076w(barrier, constraint.f2624d.f2657b0, ((ConstraintWidgetContainer) helperWidget.m20374L()).m20299C1());
            barrier.m20425m1(constraint.f2624d.f2673j0);
            barrier.m20423o1(constraint.f2624d.f2659c0);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: o */
    public void mo20056o(ConstraintWidget constraintWidget, boolean z) {
        m20076w(constraintWidget, this.f2485n, z);
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f2487p.m20425m1(z);
    }

    public void setDpMargin(int i) {
        this.f2487p.m20423o1((int) ((i * getResources().getDisplayMetrics().density) + 0.5f));
    }

    public void setMargin(int i) {
        this.f2487p.m20423o1(i);
    }

    public void setType(int i) {
        this.f2485n = i;
    }

    /* renamed from: v */
    public boolean m20077v() {
        return this.f2487p.m20430h1();
    }
}
