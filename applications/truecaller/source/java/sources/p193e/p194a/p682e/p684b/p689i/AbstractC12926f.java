package p193e.p194a.p682e.p684b.p689i;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.b.i.f */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/i/f.class */
public abstract class AbstractC12926f extends h implements b {

    /* renamed from: a */
    public volatile a f37532a;

    /* renamed from: b */
    public final Object f37533b = new Object();

    /* renamed from: c */
    public boolean f37534c = false;

    public AbstractC12926f() {
        addOnContextAvailableListener(new C12925e(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m22401Yt() {
        if (this.f37532a == null) {
            synchronized (this.f37533b) {
                if (this.f37532a == null) {
                    this.f37532a = new a(this);
                }
            }
        }
        return this.f37532a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC12926f.super.getDefaultViewModelProviderFactory());
    }
}
