package p012b.p122v.p123d;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: b.v.d.j */
/* loaded from: classes-dex2jar.jar:b/v/d/j.class */
public class C1938j {
    /* renamed from: a */
    public static int m31574a(RecyclerView.C0526y yVar, AbstractC1933h hVar, View view, View view2, RecyclerView.AbstractC0511o oVar, boolean z) {
        if (oVar.m37299e() == 0 || yVar.m37201a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(oVar.m37281l(view) - oVar.m37281l(view2)) + 1;
        }
        return Math.min(hVar.mo31588g(), hVar.mo31599a(view2) - hVar.mo31593d(view));
    }

    /* renamed from: a */
    public static int m31573a(RecyclerView.C0526y yVar, AbstractC1933h hVar, View view, View view2, RecyclerView.AbstractC0511o oVar, boolean z, boolean z2) {
        if (oVar.m37299e() == 0 || yVar.m37201a() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (yVar.m37201a() - Math.max(oVar.m37281l(view), oVar.m37281l(view2))) - 1) : Math.max(0, Math.min(oVar.m37281l(view), oVar.m37281l(view2)));
        if (!z) {
            return max;
        }
        return Math.round((max * (Math.abs(hVar.mo31599a(view2) - hVar.mo31593d(view)) / (Math.abs(oVar.m37281l(view) - oVar.m37281l(view2)) + 1))) + (hVar.mo31590f() - hVar.mo31593d(view)));
    }

    /* renamed from: b */
    public static int m31572b(RecyclerView.C0526y yVar, AbstractC1933h hVar, View view, View view2, RecyclerView.AbstractC0511o oVar, boolean z) {
        if (oVar.m37299e() == 0 || yVar.m37201a() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return yVar.m37201a();
        }
        return (int) (((hVar.mo31599a(view2) - hVar.mo31593d(view)) / (Math.abs(oVar.m37281l(view) - oVar.m37281l(view2)) + 1)) * yVar.m37201a());
    }
}
