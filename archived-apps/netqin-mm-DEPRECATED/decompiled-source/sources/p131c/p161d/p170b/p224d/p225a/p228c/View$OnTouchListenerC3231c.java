package p131c.p161d.p170b.p224d.p225a.p228c;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.internal.ads.zzeg;
/* renamed from: c.d.b.d.a.c.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/c.class */
public final class View$OnTouchListenerC3231c implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ zzj f11920a;

    public View$OnTouchListenerC3231c(zzj zzjVar) {
        this.f11920a = zzjVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzeg zzegVar;
        zzeg zzegVar2;
        zzegVar = this.f11920a.f22819h;
        if (zzegVar == null) {
            return false;
        }
        zzegVar2 = this.f11920a.f22819h;
        zzegVar2.m12599a(motionEvent);
        return false;
    }
}
