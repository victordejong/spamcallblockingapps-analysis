package p193e.p194a.p715e5.p716a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e5.a.d */
/* loaded from: classes13-dex2jar.jar:e/a/e5/a/d.class */
public abstract class AbstractC13516d extends h implements b {

    /* renamed from: a */
    public volatile a f39199a;

    /* renamed from: b */
    public final Object f39200b = new Object();

    /* renamed from: c */
    public boolean f39201c = false;

    public AbstractC13516d() {
        addOnContextAvailableListener(new C13515c(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m21716Yt() {
        if (this.f39199a == null) {
            synchronized (this.f39200b) {
                if (this.f39199a == null) {
                    this.f39199a = new a(this);
                }
            }
        }
        return this.f39199a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13516d.super.getDefaultViewModelProviderFactory());
    }
}
