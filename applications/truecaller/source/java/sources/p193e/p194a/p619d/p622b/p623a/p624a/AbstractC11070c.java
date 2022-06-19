package p193e.p194a.p619d.p622b.p623a.p624a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.d.b.a.a.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/c.class */
public abstract class AbstractC11070c extends h implements b {

    /* renamed from: a */
    public volatile a f32730a;

    /* renamed from: b */
    public final Object f32731b = new Object();

    /* renamed from: c */
    public boolean f32732c = false;

    public AbstractC11070c() {
        addOnContextAvailableListener(new C11069b(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m25327Yt() {
        if (this.f32730a == null) {
            synchronized (this.f32731b) {
                if (this.f32730a == null) {
                    this.f32730a = new a(this);
                }
            }
        }
        return this.f32730a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC11070c.super.getDefaultViewModelProviderFactory());
    }
}
