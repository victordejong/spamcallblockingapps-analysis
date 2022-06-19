package p193e.p194a.p751f4.p753b.p756h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p194a.p1129p5.AbstractC19321u;
import p3.a.l0;
import s1.z.c.l;
/* renamed from: e.a.f4.b.h.d */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/d.class */
public final class C13974d implements AbstractC13973c {

    /* renamed from: a */
    public final Map<Object, l0> f40399a = new LinkedHashMap();

    /* renamed from: b */
    public final C13975a f40400b = new C13975a();

    /* renamed from: c */
    public final Context f40401c;

    /* renamed from: d */
    public final AbstractC19321u f40402d;

    /* renamed from: e.a.f4.b.h.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/d$a.class */
    public static final class C13975a extends BroadcastReceiver {

        /* renamed from: a */
        public boolean f40403a;

        public C13975a() {
            C13974d.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = this.f40403a;
            boolean mo13429d = C13974d.this.f40402d.mo13429d();
            this.f40403a = mo13429d;
            if (!mo13429d || z) {
                return;
            }
            for (l0 l0Var : C13974d.this.f40399a.values()) {
                l0Var.i();
            }
        }
    }

    public C13974d(Context context, AbstractC19321u abstractC19321u) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19321u, "networkUtil");
        this.f40401c = context;
        this.f40402d = abstractC19321u;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13973c
    /* renamed from: a */
    public void mo20919a(Object obj, l0 l0Var) {
        l.e(obj, RemoteMessageConst.Notification.TAG);
        l.e(l0Var, AppsFlyerProperties.CHANNEL);
        this.f40399a.put(obj, l0Var);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.f40401c.registerReceiver(this.f40400b, intentFilter);
    }
}
