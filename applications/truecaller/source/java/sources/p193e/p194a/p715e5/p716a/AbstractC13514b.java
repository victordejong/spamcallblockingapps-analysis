package p193e.p194a.p715e5.p716a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e5.a.b */
/* loaded from: classes13-dex2jar.jar:e/a/e5/a/b.class */
public abstract class AbstractC13514b extends h implements b {

    /* renamed from: a */
    public volatile a f39195a;

    /* renamed from: b */
    public final Object f39196b = new Object();

    /* renamed from: c */
    public boolean f39197c = false;

    public AbstractC13514b() {
        addOnContextAvailableListener(new C13513a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m21717Yt() {
        if (this.f39195a == null) {
            synchronized (this.f39196b) {
                if (this.f39195a == null) {
                    this.f39195a = new a(this);
                }
            }
        }
        return this.f39195a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC13514b.super.getDefaultViewModelProviderFactory());
    }
}
