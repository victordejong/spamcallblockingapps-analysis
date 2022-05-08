package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzaa;
import java.util.Iterator;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.v4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/v4.class */
public final class C9075v4 {

    /* renamed from: a */
    public final String f20720a;

    /* renamed from: b */
    public final String f20721b;

    /* renamed from: c */
    public final String f20722c;

    /* renamed from: d */
    public final long f20723d;

    /* renamed from: e */
    public final long f20724e;

    /* renamed from: f */
    public final zzaa f20725f;

    public C9075v4(C9052s0 s0Var, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        zzaa zzaaVar;
        C7021t.m21283b(str2);
        C7021t.m21283b(str3);
        this.f20720a = str2;
        this.f20721b = str3;
        this.f20722c = TextUtils.isEmpty(str) ? null : str;
        this.f20723d = j;
        this.f20724e = j2;
        long j3 = this.f20724e;
        if (j3 != 0 && j3 > this.f20723d) {
            s0Var.mo16178c().m16372v().m16337a("Event created with reverse previous/current timestamps. appId", C9027o.m16380a(str2));
        }
        if (bundle == null || bundle.isEmpty()) {
            zzaaVar = new zzaa(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    s0Var.mo16178c().m16375s().m16338a("Param name can't be null");
                    it.remove();
                } else {
                    Object a = s0Var.m16274s().m16726a(next, bundle2.get(next));
                    if (a == null) {
                        s0Var.mo16178c().m16372v().m16337a("Param value can't be null", s0Var.m16275r().m16471b(next));
                        it.remove();
                    } else {
                        s0Var.m16274s().m16733a(bundle2, next, a);
                    }
                }
            }
            zzaaVar = new zzaa(bundle2);
        }
        this.f20725f = zzaaVar;
    }

    public C9075v4(C9052s0 s0Var, String str, String str2, String str3, long j, long j2, zzaa zzaaVar) {
        C7021t.m21283b(str2);
        C7021t.m21283b(str3);
        C7021t.m21290a(zzaaVar);
        this.f20720a = str2;
        this.f20721b = str3;
        this.f20722c = TextUtils.isEmpty(str) ? null : str;
        this.f20723d = j;
        this.f20724e = j2;
        long j3 = this.f20724e;
        if (j3 != 0 && j3 > this.f20723d) {
            s0Var.mo16178c().m16372v().m16336a("Event created with reverse previous/current timestamps. appId, name", C9027o.m16380a(str2), C9027o.m16380a(str3));
        }
        this.f20725f = zzaaVar;
    }

    /* renamed from: a */
    public final C9075v4 m16123a(C9052s0 s0Var, long j) {
        return new C9075v4(s0Var, this.f20722c, this.f20720a, this.f20721b, this.f20723d, j, this.f20725f);
    }

    public final String toString() {
        String str = this.f20720a;
        String str2 = this.f20721b;
        String valueOf = String.valueOf(this.f20725f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }
}
