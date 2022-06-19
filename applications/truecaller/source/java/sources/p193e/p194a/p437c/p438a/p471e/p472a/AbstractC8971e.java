package p193e.p194a.p437c.p438a.p471e.p472a;

import n3.b.a.h;
import o3.b.a.c.c.a;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.a.e.a.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/e.class */
public abstract class AbstractC8971e extends h implements b {

    /* renamed from: a */
    public volatile a f27275a;

    /* renamed from: b */
    public final Object f27276b = new Object();

    /* renamed from: c */
    public boolean f27277c = false;

    public AbstractC8971e() {
        addOnContextAvailableListener(new C8970d(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Yt */
    public final Object m27908Yt() {
        if (this.f27275a == null) {
            synchronized (this.f27276b) {
                if (this.f27275a == null) {
                    this.f27275a = new a(this);
                }
            }
        }
        return this.f27275a.Yt();
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m4039A0(this, AbstractC8971e.super.getDefaultViewModelProviderFactory());
    }
}
