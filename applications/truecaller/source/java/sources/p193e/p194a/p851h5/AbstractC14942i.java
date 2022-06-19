package p193e.p194a.p851h5;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.h5.i */
/* loaded from: classes14-dex2jar.jar:e/a/h5/i.class */
public abstract class AbstractC14942i extends h implements b {

    /* renamed from: a */
    public volatile a f42672a;

    /* renamed from: b */
    public final Object f42673b = new Object();

    /* renamed from: c */
    public boolean f42674c = false;

    public AbstractC14942i() {
        addOnContextAvailableListener(new C14941h(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m19395Yt() {
        if (this.f42672a == null) {
            synchronized (this.f42673b) {
                if (this.f42672a == null) {
                    this.f42672a = new a(this);
                }
            }
        }
        return this.f42672a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14942i.super.getDefaultViewModelProviderFactory());
    }
}
