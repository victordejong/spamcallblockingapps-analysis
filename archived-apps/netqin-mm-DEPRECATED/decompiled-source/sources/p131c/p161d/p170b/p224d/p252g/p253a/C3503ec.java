package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbml;
import com.google.android.gms.internal.ads.zzbmu;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.ec */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ec.class */
public final class C3503ec implements zzahq<Object> {

    /* renamed from: a */
    public final /* synthetic */ zzbml f12823a;

    public C3503ec(zzbml zzbmlVar) {
        this.f12823a = zzbmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        boolean a;
        Executor executor;
        a = this.f12823a.m15314a(map);
        if (a) {
            executor = this.f12823a.f25174c;
            executor.execute(new Runnable(this) { // from class: c.d.b.d.g.a.dc

                /* renamed from: a */
                public final C3503ec f12731a;

                {
                    this.f12731a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbmu zzbmuVar;
                    zzbmuVar = this.f12731a.f12823a.f25175d;
                    zzbmuVar.m15305j();
                }
            });
        }
    }
}
