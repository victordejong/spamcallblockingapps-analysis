package p193e.p194a.p616c5.p618b;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c5.b.g */
/* loaded from: classes13-dex2jar.jar:e/a/c5/b/g.class */
public abstract class AbstractC10967g extends h implements b {

    /* renamed from: a */
    public volatile a f32485a;

    /* renamed from: b */
    public final Object f32486b = new Object();

    /* renamed from: c */
    public boolean f32487c = false;

    public AbstractC10967g() {
        addOnContextAvailableListener(new C10966f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m25461Yt() {
        if (this.f32485a == null) {
            synchronized (this.f32486b) {
                if (this.f32485a == null) {
                    this.f32485a = new a(this);
                }
            }
        }
        return this.f32485a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC10967g.super.getDefaultViewModelProviderFactory());
    }
}
