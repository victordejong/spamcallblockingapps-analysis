package p081h.p203i.p325c.p379z.p381c;

import androidx.annotation.NonNull;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.metrics.zza;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p269j.C7910s;
import p081h.p203i.p204a.p224e.p259j.p269j.C7917t;
import p081h.p203i.p204a.p224e.p259j.p269j.C7929u;
import p081h.p203i.p204a.p224e.p259j.p269j.C7936v;
/* renamed from: h.i.c.z.c.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/z/c/f.class */
public final class C10069f {

    /* renamed from: a */
    public final Trace f22762a;

    public C10069f(@NonNull Trace trace) {
        this.f22762a = trace;
    }

    /* renamed from: a */
    public final C7917t m13509a() {
        C7917t tVar = new C7917t();
        tVar.f18568c = this.f22762a.m31043q();
        tVar.f18570e = Long.valueOf(this.f22762a.m31039u().m31841b());
        tVar.f18571f = Long.valueOf(this.f22762a.m31039u().m31842a(this.f22762a.m31038v()));
        Map<String, zza> t = this.f22762a.m31040t();
        if (!t.isEmpty()) {
            tVar.f18572g = new C7929u[t.size()];
            int i = 0;
            for (String str : t.keySet()) {
                zza zzaVar = t.get(str);
                C7929u uVar = new C7929u();
                uVar.f18607c = str;
                uVar.f18608d = Long.valueOf(zzaVar.m31035a());
                tVar.f18572g[i] = uVar;
                i++;
            }
        }
        List<Trace> w = this.f22762a.m31037w();
        if (!w.isEmpty()) {
            tVar.f18573h = new C7917t[w.size()];
            int i2 = 0;
            for (Trace trace : w) {
                tVar.f18573h[i2] = new C10069f(trace).m13509a();
                i2++;
            }
        }
        Map<String, String> attributes = this.f22762a.getAttributes();
        if (!attributes.isEmpty()) {
            tVar.f18574i = new C7936v[attributes.size()];
            int i3 = 0;
            for (String str2 : attributes.keySet()) {
                String str3 = attributes.get(str2);
                C7936v vVar = new C7936v();
                vVar.f18614c = str2;
                vVar.f18615d = str3;
                tVar.f18574i[i3] = vVar;
                i3++;
            }
        }
        tVar.f18575j = new C7910s[this.f22762a.m31036x().size()];
        for (int i4 = 0; i4 < this.f22762a.m31036x().size(); i4++) {
            tVar.f18575j[i4] = this.f22762a.m31036x().get(i4).m31838b();
        }
        return tVar;
    }
}
