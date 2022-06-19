package p193e.p194a.p682e.p683a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.a.q2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/q2.class */
public abstract class AbstractC12803q2 extends h implements b {

    /* renamed from: a */
    public volatile a f37270a;

    /* renamed from: b */
    public final Object f37271b = new Object();

    /* renamed from: c */
    public boolean f37272c = false;

    public AbstractC12803q2() {
        addOnContextAvailableListener(new C12797p2(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m22652Yt() {
        if (this.f37270a == null) {
            synchronized (this.f37271b) {
                if (this.f37270a == null) {
                    this.f37270a = new a(this);
                }
            }
        }
        return this.f37270a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC12803q2.super.getDefaultViewModelProviderFactory());
    }
}
