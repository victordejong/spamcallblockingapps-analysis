package p193e.p194a.p798g5;

import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.g5.g */
/* loaded from: classes14-dex2jar.jar:e/a/g5/g.class */
public abstract class AbstractC14514g extends AbstractView$OnClickListenerC14526l implements b {

    /* renamed from: e */
    public volatile a f41771e;

    /* renamed from: f */
    public final Object f41772f = new Object();

    /* renamed from: g */
    public boolean f41773g = false;

    public AbstractC14514g() {
        addOnContextAvailableListener(new C14513f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20043Yt() {
        if (this.f41771e == null) {
            synchronized (this.f41772f) {
                if (this.f41771e == null) {
                    this.f41771e = new a(this);
                }
            }
        }
        return this.f41771e.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14514g.super.getDefaultViewModelProviderFactory());
    }
}
