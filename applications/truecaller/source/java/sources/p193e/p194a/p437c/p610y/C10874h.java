package p193e.p194a.p437c.p610y;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.y.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/h.class */
public final class C10874h extends AbstractC10864a {

    /* renamed from: g */
    public final f f32293g = this.f32265d;

    /* renamed from: h */
    public final AbstractC10443f f32294h;

    /* renamed from: e.a.c.y.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/y/h$a.class */
    public static final class C10875a extends m implements l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10875a() {
            super(1);
            C10874h.this = r4;
        }

        /* renamed from: d */
        public Object m25532d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "link");
            Context context = C10874h.this.f32267f;
            s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(str, "deeplink");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setFlags(268435456);
            C8613t.m28198n(context, intent);
            return s.a;
        }
    }

    public C10874h(AbstractC10443f abstractC10443f) {
        s1.z.c.l.e(abstractC10443f, "deepLink");
        this.f32294h = abstractC10443f;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    public Object mo25534a(d<? super s> dVar) {
        this.f32266e.mo26135a(this.f32294h, new C10875a());
        return s.a;
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return this.f32293g;
    }
}
