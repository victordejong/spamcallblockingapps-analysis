package p193e.p194a.p682e;

import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.d1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/d1.class */
public abstract class AbstractC13223d1 extends AbstractC13325w0 implements b {

    /* renamed from: d */
    public volatile a f38421d;

    /* renamed from: e */
    public final Object f38422e = new Object();

    /* renamed from: f */
    public boolean f38423f = false;

    public AbstractC13223d1() {
        addOnContextAvailableListener(new C13176c1(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m21988Yt() {
        if (this.f38421d == null) {
            synchronized (this.f38422e) {
                if (this.f38421d == null) {
                    this.f38421d = new a(this);
                }
            }
        }
        return this.f38421d.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13223d1.super.getDefaultViewModelProviderFactory());
    }
}
