package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.analyzer.Grouping;
import androidx.constraintlayout.solver.widgets.analyzer.WidgetGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/HelperWidget.class */
public class HelperWidget extends ConstraintWidget implements Helper {

    /* renamed from: L0 */
    public ConstraintWidget[] f2358L0 = new ConstraintWidget[4];

    /* renamed from: M0 */
    public int f2359M0 = 0;

    @Override // androidx.constraintlayout.solver.widgets.Helper
    /* renamed from: a */
    public void mo20198a(ConstraintWidget constraintWidget) {
        if (constraintWidget != this && constraintWidget != null) {
            int i = this.f2359M0;
            ConstraintWidget[] constraintWidgetArr = this.f2358L0;
            if (i + 1 > constraintWidgetArr.length) {
                this.f2358L0 = (ConstraintWidget[]) Arrays.copyOf(constraintWidgetArr, constraintWidgetArr.length * 2);
            }
            ConstraintWidget[] constraintWidgetArr2 = this.f2358L0;
            int i2 = this.f2359M0;
            constraintWidgetArr2[i2] = constraintWidget;
            this.f2359M0 = i2 + 1;
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.Helper
    /* renamed from: b */
    public void mo20197b() {
        this.f2359M0 = 0;
        Arrays.fill(this.f2358L0, (Object) null);
    }

    @Override // androidx.constraintlayout.solver.widgets.Helper
    /* renamed from: c */
    public void mo20190c(ConstraintWidgetContainer constraintWidgetContainer) {
    }

    /* renamed from: e1 */
    public void m20196e1(ArrayList<WidgetGroup> arrayList, int i, WidgetGroup widgetGroup) {
        for (int i2 = 0; i2 < this.f2359M0; i2++) {
            widgetGroup.m20115a(this.f2358L0[i2]);
        }
        for (int i3 = 0; i3 < this.f2359M0; i3++) {
            Grouping.m20128a(this.f2358L0[i3], i, arrayList, widgetGroup);
        }
    }

    /* renamed from: f1 */
    public int m20195f1(int i) {
        int i2;
        int i3;
        for (int i4 = 0; i4 < this.f2359M0; i4++) {
            ConstraintWidget constraintWidget = this.f2358L0[i4];
            if (i == 0 && (i3 = constraintWidget.f2215I0) != -1) {
                return i3;
            }
            if (i == 1 && (i2 = constraintWidget.f2217J0) != -1) {
                return i2;
            }
        }
        return -1;
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: m */
    public void mo20194m(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.mo20194m(constraintWidget, hashMap);
        HelperWidget helperWidget = (HelperWidget) constraintWidget;
        this.f2359M0 = 0;
        int i = helperWidget.f2359M0;
        for (int i2 = 0; i2 < i; i2++) {
            mo20198a(hashMap.get(helperWidget.f2358L0[i2]));
        }
    }
}
