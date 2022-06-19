package p193e.p194a.p912i4.p915z;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.i4.z.b */
/* loaded from: classes11-dex2jar.jar:e/a/i4/z/b.class */
public abstract class AbstractC15312b extends h implements b {

    /* renamed from: a */
    public volatile a f43573a;

    /* renamed from: b */
    public final Object f43574b = new Object();

    /* renamed from: c */
    public boolean f43575c = false;

    public AbstractC15312b() {
        addOnContextAvailableListener(new C15311a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m18939Yt() {
        if (this.f43573a == null) {
            synchronized (this.f43574b) {
                if (this.f43573a == null) {
                    this.f43573a = new a(this);
                }
            }
        }
        return this.f43573a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC15312b.super.getDefaultViewModelProviderFactory());
    }
}
