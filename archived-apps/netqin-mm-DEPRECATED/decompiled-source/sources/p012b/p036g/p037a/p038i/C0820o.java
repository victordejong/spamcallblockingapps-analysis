package p012b.p036g.p037a.p038i;

import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import p012b.p036g.p037a.C0797c;
/* renamed from: b.g.a.i.o */
/* loaded from: classes-dex2jar.jar:b/g/a/i/o.class */
public class C0820o extends ConstraintWidget {

    /* renamed from: k0 */
    public ArrayList<ConstraintWidget> f3866k0 = new ArrayList<>();

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: E */
    public void mo35837E() {
        this.f3866k0.clear();
        super.mo35837E();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: I */
    public void mo35836I() {
        super.mo35836I();
        ArrayList<ConstraintWidget> arrayList = this.f3866k0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = this.f3866k0.get(i);
                constraintWidget.mo35831b(m38752h(), m38750i());
                if (!(constraintWidget instanceof C0808e)) {
                    constraintWidget.mo35836I();
                }
            }
        }
    }

    /* renamed from: K */
    public C0808e m35835K() {
        ConstraintWidget l = m38744l();
        C0808e eVar = this instanceof C0808e ? (C0808e) this : null;
        while (l != null) {
            l = l.m38744l();
            if (l instanceof C0808e) {
                eVar = (C0808e) l;
            }
        }
        return eVar;
    }

    /* renamed from: L */
    public void mo35834L() {
        mo35836I();
        ArrayList<ConstraintWidget> arrayList = this.f3866k0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = this.f3866k0.get(i);
                if (constraintWidget instanceof C0820o) {
                    ((C0820o) constraintWidget).mo35834L();
                }
            }
        }
    }

    /* renamed from: M */
    public void m35833M() {
        this.f3866k0.clear();
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: a */
    public void mo35832a(C0797c cVar) {
        super.mo35832a(cVar);
        int size = this.f3866k0.size();
        for (int i = 0; i < size; i++) {
            this.f3866k0.get(i).mo35832a(cVar);
        }
    }

    @Override // androidx.constraintlayout.solver.widgets.ConstraintWidget
    /* renamed from: b */
    public void mo35831b(int i, int i2) {
        super.mo35831b(i, i2);
        int size = this.f3866k0.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f3866k0.get(i3).mo35831b(m38736p(), m38734q());
        }
    }

    /* renamed from: b */
    public void m35830b(ConstraintWidget constraintWidget) {
        this.f3866k0.add(constraintWidget);
        if (constraintWidget.m38744l() != null) {
            ((C0820o) constraintWidget.m38744l()).m35829c(constraintWidget);
        }
        constraintWidget.m38780a((ConstraintWidget) this);
    }

    /* renamed from: c */
    public void m35829c(ConstraintWidget constraintWidget) {
        this.f3866k0.remove(constraintWidget);
        constraintWidget.m38780a((ConstraintWidget) null);
    }
}
