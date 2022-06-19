package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/m.class */
public final class C8727m extends BottomSheetBehavior$d {

    /* renamed from: a */
    public final /* synthetic */ DialogInterface$OnShowListenerC8722l f26670a;

    public C8727m(DialogInterface$OnShowListenerC8722l dialogInterface$OnShowListenerC8722l) {
        this.f26670a = dialogInterface$OnShowListenerC8722l;
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
        if (i == 4) {
            this.f26670a.dismiss();
        }
    }
}
