package p193e.p194a.p616c5.p617a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c5.a.l */
/* loaded from: classes13-dex2jar.jar:e/a/c5/a/l.class */
public abstract class AbstractC10960l extends h implements b {

    /* renamed from: a */
    public volatile a f32477a;

    /* renamed from: b */
    public final Object f32478b = new Object();

    /* renamed from: c */
    public boolean f32479c = false;

    public AbstractC10960l() {
        addOnContextAvailableListener(new C10959k(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m25468Yt() {
        if (this.f32477a == null) {
            synchronized (this.f32478b) {
                if (this.f32477a == null) {
                    this.f32477a = new a(this);
                }
            }
        }
        return this.f32477a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC10960l.super.getDefaultViewModelProviderFactory());
    }
}
