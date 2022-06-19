package p193e.p194a.p437c.p438a.p471e.p472a;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import s1.z.c.l;
/* renamed from: e.a.c.a.e.a.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/j.class */
public final class C8981j extends BottomSheetBehavior$d {

    /* renamed from: a */
    public final /* synthetic */ C8977i f27290a;

    public C8981j(C8977i c8977i) {
        this.f27290a = c8977i;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
    /* renamed from: a */
    public void mo24294a(View view, float f) {
        l.e(view, "bottomSheet");
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
    /* renamed from: b */
    public void mo24293b(View view, int i) {
        l.e(view, "bottomSheet");
        if (i == 5) {
            C8977i c8977i = this.f27290a;
            s1.a.l[] lVarArr = C8977i.f27283d;
            c8977i.m27904OA();
        }
    }
}
