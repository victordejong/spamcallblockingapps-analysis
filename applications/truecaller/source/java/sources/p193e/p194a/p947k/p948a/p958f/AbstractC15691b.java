package p193e.p194a.p947k.p948a.p958f;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.f.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/f/b.class */
public abstract class AbstractC15691b extends h implements b {

    /* renamed from: a */
    public volatile a f44262a;

    /* renamed from: b */
    public final Object f44263b = new Object();

    /* renamed from: c */
    public boolean f44264c = false;

    public AbstractC15691b() {
        addOnContextAvailableListener(new C15690a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18511Yt() {
        if (this.f44262a == null) {
            synchronized (this.f44263b) {
                if (this.f44262a == null) {
                    this.f44262a = new a(this);
                }
            }
        }
        return this.f44262a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15691b.super.getDefaultViewModelProviderFactory());
    }
}
