package p193e.p194a.p804h.p830o0;

import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p703e3.p710k.AbstractC13426b;
import p193e.p194a.p912i4.AbstractC15275e;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.o0.b */
/* loaded from: classes2-dex2jar.jar:e/a/h/o0/b.class */
public final class C14707b implements AbstractC13426b {

    /* renamed from: a */
    public final g f42205a = C25225a.m3978P1(new C14708a());

    /* renamed from: b */
    public final Context f42206b;

    /* renamed from: e.a.h.o0.b$a */
    /* loaded from: classes2-dex2jar.jar:e/a/h/o0/b$a.class */
    public static final class C14708a extends m implements a<AbstractC15275e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14708a() {
            super(0);
            C14707b.this = r4;
        }

        public Object invoke() {
            Context context = C14707b.this.f42206b;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) context).mo10154s().mo12617O1();
        }
    }

    public C14707b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f42206b = context;
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13426b
    /* renamed from: a */
    public String mo19747a(String str) {
        l.e(str, "channelKey");
        return m19744d().mo18973a(str);
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13426b
    /* renamed from: b */
    public void mo19746b(String str, int i) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        m19744d().mo18972b(str, i);
    }

    @Override // p193e.p194a.p703e3.p710k.AbstractC13426b
    /* renamed from: c */
    public void mo19745c(String str, int i, Notification notification, String str2, Bundle bundle) {
        l.e(notification, RemoteMessageConst.NOTIFICATION);
        m19744d().mo18971c(str, i, notification, str2, bundle);
    }

    /* renamed from: d */
    public final AbstractC15275e m19744d() {
        return (AbstractC15275e) this.f42205a.getValue();
    }
}
