package p193e.p194a.p947k.p948a.p949a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.a.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/d.class */
public abstract class AbstractC15602d extends h implements b {

    /* renamed from: a */
    public volatile a f44124a;

    /* renamed from: b */
    public final Object f44125b = new Object();

    /* renamed from: c */
    public boolean f44126c = false;

    public AbstractC15602d() {
        addOnContextAvailableListener(new C15601c(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18592Yt() {
        if (this.f44124a == null) {
            synchronized (this.f44125b) {
                if (this.f44124a == null) {
                    this.f44124a = new a(this);
                }
            }
        }
        return this.f44124a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15602d.super.getDefaultViewModelProviderFactory());
    }
}
