package p193e.p194a.p437c.p610y;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.webkit.URLUtil;
import java.util.Objects;
import p193e.p194a.p372b0.p430q.C8613t;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.y.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/g.class */
public final class C10873g extends AbstractC10864a {

    /* renamed from: g */
    public final f f32291g = this.f32265d;

    /* renamed from: h */
    public final String f32292h;

    public C10873g(String str) {
        l.e(str, "url");
        this.f32292h = str;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        s sVar = s.a;
        String str = this.f32292h;
        Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
        if (v.g0(str).toString().length() == 0) {
            return sVar;
        }
        Context context = this.f32267f;
        String guessUrl = URLUtil.guessUrl(this.f32292h);
        Intent m28205g = C8613t.m28205g(guessUrl);
        m28205g.addFlags(268435456);
        if (!TextUtils.isEmpty(guessUrl)) {
            C8613t.m28198n(context, m28205g);
        }
        return sVar;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f32291g;
    }
}
