package p193e.p194a.p765f5.p768g;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.f5.g.b */
/* loaded from: classes14-dex2jar.jar:e/a/f5/g/b.class */
public abstract class AbstractC14055b extends h implements b {

    /* renamed from: a */
    public volatile a f40644a;

    /* renamed from: b */
    public final Object f40645b = new Object();

    /* renamed from: c */
    public boolean f40646c = false;

    public AbstractC14055b() {
        addOnContextAvailableListener(new C14054a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20811Yt() {
        if (this.f40644a == null) {
            synchronized (this.f40645b) {
                if (this.f40644a == null) {
                    this.f40644a = new a(this);
                }
            }
        }
        return this.f40644a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14055b.super.getDefaultViewModelProviderFactory());
    }
}
