package p193e.p194a.p437c.p438a.p442b.p443a;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import s1.z.c.l;
/* renamed from: e.a.c.a.b.a.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/a0.class */
public final class C8695a0 extends BottomSheetBehavior$d {

    /* renamed from: a */
    public final /* synthetic */ DialogInterface$OnShowListenerC8755z f26610a;

    public C8695a0(DialogInterface$OnShowListenerC8755z dialogInterface$OnShowListenerC8755z) {
        this.f26610a = dialogInterface$OnShowListenerC8755z;
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
            this.f26610a.dismiss();
        }
    }
}
