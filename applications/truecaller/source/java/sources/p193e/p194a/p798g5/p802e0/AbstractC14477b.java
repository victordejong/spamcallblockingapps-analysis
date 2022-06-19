package p193e.p194a.p798g5.p802e0;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.g5.e0.b */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/b.class */
public abstract class AbstractC14477b extends h implements b {

    /* renamed from: a */
    public volatile a f41694a;

    /* renamed from: b */
    public final Object f41695b = new Object();

    /* renamed from: c */
    public boolean f41696c = false;

    public AbstractC14477b() {
        addOnContextAvailableListener(new C14476a(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20059Yt() {
        if (this.f41694a == null) {
            synchronized (this.f41695b) {
                if (this.f41694a == null) {
                    this.f41694a = new a(this);
                }
            }
        }
        return this.f41694a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14477b.super.getDefaultViewModelProviderFactory());
    }
}
