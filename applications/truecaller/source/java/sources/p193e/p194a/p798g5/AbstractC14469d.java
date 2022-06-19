package p193e.p194a.p798g5;

import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.g5.d */
/* loaded from: classes14-dex2jar.jar:e/a/g5/d.class */
public abstract class AbstractC14469d extends AbstractView$OnClickListenerC14526l implements b {

    /* renamed from: e */
    public volatile a f41662e;

    /* renamed from: f */
    public final Object f41663f = new Object();

    /* renamed from: g */
    public boolean f41664g = false;

    public AbstractC14469d() {
        addOnContextAvailableListener(new C14465c(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20063Yt() {
        if (this.f41662e == null) {
            synchronized (this.f41663f) {
                if (this.f41662e == null) {
                    this.f41662e = new a(this);
                }
            }
        }
        return this.f41662e.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14469d.super.getDefaultViewModelProviderFactory());
    }
}
