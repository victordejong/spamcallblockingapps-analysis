package p131c.p161d.p170b.p224d.p225a.p228c.p229a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzazd;
/* renamed from: c.d.b.d.a.c.a.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/a/c/a/e.class */
public final class C3228e extends zzayl {

    /* renamed from: c */
    public final /* synthetic */ zze f11916c;

    public C3228e(zze zzeVar) {
        this.f11916c = zzeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    /* renamed from: a */
    public final void mo15673a() {
        Bitmap a = zzp.m17950v().m15932a(Integer.valueOf(this.f11916c.f22755b.f22743o.f22808f));
        if (a != null) {
            zzazd e = zzp.m17967e();
            zze zzeVar = this.f11916c;
            Activity activity = zzeVar.f22754a;
            zzi zziVar = zzeVar.f22755b.f22743o;
            final Drawable a2 = e.mo16041a(activity, a, zziVar.f22806d, zziVar.f22807e);
            zzayu.f24665h.post(new Runnable(this, a2) { // from class: c.d.b.d.a.c.a.f

                /* renamed from: a */
                public final C3228e f11917a;

                /* renamed from: b */
                public final Drawable f11918b;

                {
                    this.f11917a = this;
                    this.f11918b = a2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C3228e eVar = this.f11917a;
                    eVar.f11916c.f22754a.getWindow().setBackgroundDrawable(this.f11918b);
                }
            });
        }
    }
}
