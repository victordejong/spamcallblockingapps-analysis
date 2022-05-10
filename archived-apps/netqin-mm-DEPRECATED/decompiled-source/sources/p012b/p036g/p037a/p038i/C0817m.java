package p012b.p036g.p037a.p038i;

import java.util.HashSet;
import java.util.Iterator;
/* renamed from: b.g.a.i.m */
/* loaded from: classes-dex2jar.jar:b/g/a/i/m.class */
public class C0817m {

    /* renamed from: a */
    public HashSet<C0817m> f3854a = new HashSet<>(2);

    /* renamed from: b */
    public int f3855b = 0;

    /* renamed from: a */
    public void m35847a() {
        this.f3855b = 1;
        Iterator<C0817m> it = this.f3854a.iterator();
        while (it.hasNext()) {
            it.next().mo35842e();
        }
    }

    /* renamed from: a */
    public void m35846a(C0817m mVar) {
        this.f3854a.add(mVar);
    }

    /* renamed from: b */
    public void m35845b() {
        this.f3855b = 0;
        Iterator<C0817m> it = this.f3854a.iterator();
        while (it.hasNext()) {
            it.next().m35845b();
        }
    }

    /* renamed from: c */
    public boolean m35844c() {
        boolean z = true;
        if (this.f3855b != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public void mo35843d() {
        this.f3855b = 0;
        this.f3854a.clear();
    }

    /* renamed from: e */
    public void mo35842e() {
    }
}
