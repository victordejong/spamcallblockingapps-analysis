package p193e.p194a.p773g.p774a.p775a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.g.a.a.l */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/l.class */
public abstract class AbstractC14115l extends h implements b {

    /* renamed from: a */
    public volatile a f40786a;

    /* renamed from: b */
    public final Object f40787b = new Object();

    /* renamed from: c */
    public boolean f40788c = false;

    public AbstractC14115l() {
        addOnContextAvailableListener(new C14114k(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m20728Yt() {
        if (this.f40786a == null) {
            synchronized (this.f40787b) {
                if (this.f40786a == null) {
                    this.f40786a = new a(this);
                }
            }
        }
        return this.f40786a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC14115l.super.getDefaultViewModelProviderFactory());
    }
}
