package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/p.class */
public final class RunnableC9033p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f20551a;

    /* renamed from: b */
    public final /* synthetic */ String f20552b;

    /* renamed from: c */
    public final /* synthetic */ Object f20553c;

    /* renamed from: d */
    public final /* synthetic */ Object f20554d;

    /* renamed from: e */
    public final /* synthetic */ Object f20555e;

    /* renamed from: f */
    public final /* synthetic */ C9027o f20556f;

    public RunnableC9033p(C9027o oVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f20556f = oVar;
        this.f20551a = i;
        this.f20552b = str;
        this.f20553c = obj;
        this.f20554d = obj2;
        this.f20555e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        C8943a0 t = this.f20556f.f20541a.m16273t();
        if (!t.m16343m()) {
            this.f20556f.m16385a(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f20556f.f20519c;
        if (c == 0) {
            if (this.f20556f.m16349l().m16492m()) {
                C9027o oVar = this.f20556f;
                oVar.mo16187b();
                oVar.f20519c = 'C';
            } else {
                C9027o oVar2 = this.f20556f;
                oVar2.mo16187b();
                oVar2.f20519c = 'c';
            }
        }
        j = this.f20556f.f20520d;
        if (j < 0) {
            C9027o oVar3 = this.f20556f;
            oVar3.f20520d = oVar3.m16349l().m16490n();
        }
        char charAt = "01VDIWEA?".charAt(this.f20551a);
        c2 = this.f20556f.f20519c;
        j2 = this.f20556f.f20520d;
        String a = C9027o.m16378a(true, this.f20552b, this.f20553c, this.f20554d, this.f20555e);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(a);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f20552b.substring(0, 1024);
        }
        t.f20199d.m16666a(str, 1L);
    }
}
