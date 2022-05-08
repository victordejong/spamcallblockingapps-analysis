package p459j.p460a.p474c0.p488f;

import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.p590x4.p591a0.C14231a;
import p459j.p460a.p582w0.p590x4.p591a0.C14234c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.f.k */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/k.class */
public final class C11837k {
    static {
        new C11837k();
    }

    /* renamed from: a */
    public static final void m8068a(String str, boolean z, long j, long j2, long j3) {
        C15149k.m377b(str, "eventName");
        C14234c cVar = new C14234c(str);
        C14231a aVar = new C14231a();
        aVar.m2100a("success", Long.valueOf(z ? 1L : 0L));
        aVar.m2100a("quantity", Long.valueOf(j));
        aVar.m2100a("score", Long.valueOf(j2));
        aVar.m2100a(C13032a.f29462d, Long.valueOf(j3));
        cVar.mo2087a(aVar);
    }

    /* renamed from: a */
    public static final void m8067a(boolean z, long j) {
        C14234c cVar = new C14234c("Pre_Download_Status");
        C14231a aVar = new C14231a();
        aVar.m2100a("success", Long.valueOf(z ? 1L : 0L));
        aVar.m2100a(C13032a.f29462d, Long.valueOf(j));
        cVar.mo2087a(aVar);
    }

    /* renamed from: b */
    public static final void m8066b(boolean z, long j) {
        C14234c cVar = new C14234c("Single_Infer_Complete_Status");
        C14231a aVar = new C14231a();
        aVar.m2100a("success", Long.valueOf(z ? 1L : 0L));
        aVar.m2100a(C13032a.f29462d, Long.valueOf(j));
        cVar.mo2087a(aVar);
    }
}
