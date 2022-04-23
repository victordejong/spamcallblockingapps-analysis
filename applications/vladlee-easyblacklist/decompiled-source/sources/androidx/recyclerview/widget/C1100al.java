package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.al */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/al.class */
final class C1100al {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m6851a(RecyclerView.C1079q qVar, AbstractC1148y yVar, View view, View view2, RecyclerView.AbstractC1066i iVar, boolean z) {
        if (iVar.m7102o() == 0 || qVar.m7040a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(RecyclerView.AbstractC1066i.m7120e(view) - RecyclerView.AbstractC1066i.m7120e(view2)) + 1;
        }
        return Math.min(yVar.mo6705f(), yVar.mo6712b(view2) - yVar.mo6713a(view));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m6850a(RecyclerView.C1079q qVar, AbstractC1148y yVar, View view, View view2, RecyclerView.AbstractC1066i iVar, boolean z, boolean z2) {
        if (iVar.m7102o() == 0 || qVar.m7040a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (qVar.m7040a() - Math.max(RecyclerView.AbstractC1066i.m7120e(view), RecyclerView.AbstractC1066i.m7120e(view2))) - 1) : Math.max(0, Math.min(RecyclerView.AbstractC1066i.m7120e(view), RecyclerView.AbstractC1066i.m7120e(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(yVar.mo6712b(view2) - yVar.mo6713a(view)) / (Math.abs(RecyclerView.AbstractC1066i.m7120e(view) - RecyclerView.AbstractC1066i.m7120e(view2)) + 1))) + (yVar.mo6711c() - yVar.mo6713a(view)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static int m6849b(RecyclerView.C1079q qVar, AbstractC1148y yVar, View view, View view2, RecyclerView.AbstractC1066i iVar, boolean z) {
        if (iVar.m7102o() == 0 || qVar.m7040a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return qVar.m7040a();
        }
        return (int) (((yVar.mo6712b(view2) - yVar.mo6713a(view)) / (Math.abs(RecyclerView.AbstractC1066i.m7120e(view) - RecyclerView.AbstractC1066i.m7120e(view2)) + 1)) * qVar.m7040a());
    }
}
