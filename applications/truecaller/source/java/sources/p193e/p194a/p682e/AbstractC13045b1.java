package p193e.p194a.p682e;

import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.b1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/b1.class */
public abstract class AbstractC13045b1 extends AbstractC13287n0 implements b {

    /* renamed from: g */
    public volatile a f37887g;

    /* renamed from: h */
    public final Object f37888h = new Object();

    /* renamed from: i */
    public boolean f37889i = false;

    public AbstractC13045b1() {
        addOnContextAvailableListener(new C12863a1(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m22104Yt() {
        if (this.f37887g == null) {
            synchronized (this.f37888h) {
                if (this.f37887g == null) {
                    this.f37887g = new a(this);
                }
            }
        }
        return this.f37887g.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13045b1.super.getDefaultViewModelProviderFactory());
    }
}
