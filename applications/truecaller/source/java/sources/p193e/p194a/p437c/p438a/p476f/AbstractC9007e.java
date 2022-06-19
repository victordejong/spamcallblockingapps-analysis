package p193e.p194a.p437c.p438a.p476f;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.a.f.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/f/e.class */
public abstract class AbstractC9007e extends h implements b {

    /* renamed from: a */
    public volatile a f27350a;

    /* renamed from: b */
    public final Object f27351b = new Object();

    /* renamed from: c */
    public boolean f27352c = false;

    public AbstractC9007e() {
        addOnContextAvailableListener(new C9006d(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m27891Yt() {
        if (this.f27350a == null) {
            synchronized (this.f27351b) {
                if (this.f27350a == null) {
                    this.f27350a = new a(this);
                }
            }
        }
        return this.f27350a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC9007e.super.getDefaultViewModelProviderFactory());
    }
}
