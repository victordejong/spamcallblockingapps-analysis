package p193e.p194a.p437c.p438a.p456d.p463f.p469e;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.a.d.f.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/e/b.class */
public abstract class AbstractC8934b extends h implements b {

    /* renamed from: a */
    public volatile a f27213a;

    /* renamed from: b */
    public final Object f27214b = new Object();

    /* renamed from: c */
    public boolean f27215c = false;

    public AbstractC8934b() {
        addOnContextAvailableListener(new C8933a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m27929Yt() {
        if (this.f27213a == null) {
            synchronized (this.f27214b) {
                if (this.f27213a == null) {
                    this.f27213a = new a(this);
                }
            }
        }
        return this.f27213a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC8934b.super.getDefaultViewModelProviderFactory());
    }
}
