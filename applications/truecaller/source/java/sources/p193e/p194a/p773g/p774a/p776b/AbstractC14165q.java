package p193e.p194a.p773g.p774a.p776b;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.g.a.b.q */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/q.class */
public abstract class AbstractC14165q extends h implements b {

    /* renamed from: a */
    public volatile a f40895a;

    /* renamed from: b */
    public final Object f40896b = new Object();

    /* renamed from: c */
    public boolean f40897c = false;

    public AbstractC14165q() {
        addOnContextAvailableListener(new C14164p(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20621Yt() {
        if (this.f40895a == null) {
            synchronized (this.f40896b) {
                if (this.f40895a == null) {
                    this.f40895a = new a(this);
                }
            }
        }
        return this.f40895a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14165q.super.getDefaultViewModelProviderFactory());
    }
}
