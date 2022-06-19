package p193e.p194a.p437c.p610y;

import android.content.Context;
import android.content.Intent;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.y.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/d.class */
public final class C10870d extends AbstractC10864a {

    /* renamed from: g */
    public final f f32278g = this.f32265d;

    /* renamed from: h */
    public final String f32279h;

    public C10870d(String str) {
        l.e(str, "number");
        this.f32279h = str;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        s sVar = s.a;
        if (this.f32279h.length() == 0) {
            return sVar;
        }
        Context context = this.f32267f;
        Intent m28209c = C8613t.m28209c(this.f32279h);
        m28209c.addFlags(268435456);
        C8613t.m28198n(context, m28209c);
        return sVar;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f32278g;
    }
}
