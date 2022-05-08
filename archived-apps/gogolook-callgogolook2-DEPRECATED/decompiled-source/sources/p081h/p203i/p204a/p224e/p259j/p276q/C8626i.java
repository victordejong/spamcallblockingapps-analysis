package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzek;
import java.util.HashMap;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.j.q.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/i.class */
public final class C8626i extends C8613h.AbstractRunnableC8615b {

    /* renamed from: e */
    public final /* synthetic */ Context f19750e;

    /* renamed from: f */
    public final /* synthetic */ String f19751f;

    /* renamed from: g */
    public final /* synthetic */ String f19752g;

    /* renamed from: h */
    public final /* synthetic */ Bundle f19753h;

    /* renamed from: i */
    public final /* synthetic */ C8613h f19754i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8626i(C8613h hVar, Context context, String str, String str2, Bundle bundle) {
        super(hVar);
        this.f19754i = hVar;
        this.f19750e = context;
        this.f19751f = str;
        this.f19752g = str2;
        this.f19753h = bundle;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.C8613h.AbstractRunnableC8615b
    /* renamed from: a */
    public final void mo16955a() {
        AbstractC8554b bVar;
        boolean b;
        String str;
        String str2;
        String str3;
        int d;
        int c;
        AbstractC8554b bVar2;
        try {
            this.f19754i.f19720e = new HashMap();
            this.f19754i.f19724i = this.f19754i.m17618a(this.f19750e);
            bVar = this.f19754i.f19724i;
            if (bVar == null) {
                String unused = this.f19754i.f19716a;
                return;
            }
            C8613h hVar = this.f19754i;
            b = C8613h.m17596b(this.f19751f, this.f19752g);
            if (b) {
                str2 = this.f19752g;
                str3 = this.f19751f;
                str = this.f19754i.f19716a;
            } else {
                str = null;
                str3 = null;
                str2 = null;
            }
            d = C8613h.m17589d(this.f19750e);
            c = C8613h.m17593c(this.f19750e);
            zzek zzekVar = new zzek(13001L, Math.max(d, c), c < d, str, str3, str2, this.f19753h);
            bVar2 = this.f19754i.f19724i;
            bVar2.mo17731a(BinderC7110d.m21058a(this.f19750e), zzekVar, this.f19728a);
        } catch (RemoteException e) {
            this.f19754i.m17607a((Exception) e, true, false);
        }
    }
}
