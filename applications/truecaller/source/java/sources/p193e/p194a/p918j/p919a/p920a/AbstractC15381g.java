package p193e.p194a.p918j.p919a.p920a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.j.a.a.g */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/g.class */
public abstract class AbstractC15381g extends h implements b {

    /* renamed from: a */
    public volatile a f43684a;

    /* renamed from: b */
    public final Object f43685b = new Object();

    /* renamed from: c */
    public boolean f43686c = false;

    public AbstractC15381g() {
        addOnContextAvailableListener(new C15380f(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18876Yt() {
        if (this.f43684a == null) {
            synchronized (this.f43685b) {
                if (this.f43684a == null) {
                    this.f43684a = new a(this);
                }
            }
        }
        return this.f43684a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15381g.super.getDefaultViewModelProviderFactory());
    }
}
