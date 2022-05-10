package p131c.p161d.p170b.p224d.p225a.p228c.p229a;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzazp;
@VisibleForTesting
/* renamed from: c.d.b.d.a.c.a.d */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/a/d.class */
public final class C3227d extends RelativeLayout {
    @VisibleForTesting

    /* renamed from: a */
    public zzazp f11914a;
    @VisibleForTesting

    /* renamed from: b */
    public boolean f11915b;

    public C3227d(Context context, String str, String str2) {
        super(context);
        zzazp zzazpVar = new zzazp(context, str);
        this.f11914a = zzazpVar;
        zzazpVar.m16009b(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f11915b) {
            return false;
        }
        this.f11914a.m16014a(motionEvent);
        return false;
    }
}
