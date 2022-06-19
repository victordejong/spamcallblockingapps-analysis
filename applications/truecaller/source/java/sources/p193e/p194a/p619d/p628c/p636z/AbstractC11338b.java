package p193e.p194a.p619d.p628c.p636z;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.d.c.z.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/b.class */
public abstract class AbstractC11338b extends h implements b {

    /* renamed from: a */
    public volatile a f33355a;

    /* renamed from: b */
    public final Object f33356b = new Object();

    /* renamed from: c */
    public boolean f33357c = false;

    public AbstractC11338b() {
        addOnContextAvailableListener(new C11337a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m24798Yt() {
        if (this.f33355a == null) {
            synchronized (this.f33356b) {
                if (this.f33355a == null) {
                    this.f33355a = new a(this);
                }
            }
        }
        return this.f33355a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC11338b.super.getDefaultViewModelProviderFactory());
    }
}
