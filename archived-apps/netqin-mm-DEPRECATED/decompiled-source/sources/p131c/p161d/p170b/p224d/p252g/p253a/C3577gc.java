package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbml;
import com.google.android.gms.internal.ads.zzbmu;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.gc */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gc.class */
public final class C3577gc implements zzahq<Object> {

    /* renamed from: a */
    public final /* synthetic */ zzbml f13152a;

    public C3577gc(zzbml zzbmlVar) {
        this.f13152a = zzbmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        boolean a;
        Executor executor;
        a = this.f13152a.m15314a(map);
        if (a) {
            executor = this.f13152a.f25174c;
            executor.execute(new Runnable(this) { // from class: c.d.b.d.g.a.fc

                /* renamed from: a */
                public final C3577gc f12950a;

                {
                    this.f12950a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzbmu zzbmuVar;
                    zzbmuVar = this.f12950a.f13152a.f25175d;
                    zzbmuVar.m15303n();
                }
            });
        }
    }
}
