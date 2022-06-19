package p193e.p194a.p793g3;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.firebase.messaging.RemoteMessage;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.clevertap.CleverTapManager;
import e.h.a.c.w0.h;
import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import org.json.JSONObject;
import p193e.p1485h.p1486a.p1487a.AbstractC22668b;
import p193e.p1485h.p1486a.p1493c.C22741j0;
import p193e.p1485h.p1486a.p1493c.C22773p;
import p193e.p1485h.p1486a.p1493c.p1507w0.AbstractC22865g;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22861c;
import p193e.p1485h.p1486a.p1493c.p1507w0.C22867i;
import p193e.p1485h.p1486a.p1493c.p1507w0.h$b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.g3.f */
/* loaded from: classes7-dex2jar.jar:e/a/g3/f.class */
public final class C14426f implements AbstractC14425e {

    /* renamed from: a */
    public final Context f41579a;

    /* renamed from: b */
    public final AbstractC8541a f41580b;

    /* renamed from: c */
    public final a<CleverTapManager> f41581c;

    /* renamed from: d */
    public final a<C20592g> f41582d;

    @Inject
    public C14426f(Context context, AbstractC8541a abstractC8541a, a<CleverTapManager> aVar, @Named("features_registry") a<C20592g> aVar2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8541a, "coreSettings");
        l.e(aVar, "cleverTapManager");
        l.e(aVar2, "featuresRegistry");
        this.f41579a = context;
        this.f41580b = abstractC8541a;
        this.f41581c = aVar;
        this.f41582d = aVar2;
    }

    @Override // p193e.p194a.p793g3.AbstractC14425e
    /* renamed from: a */
    public void mo20109a(Object obj) {
        Map<String, String> map;
        h hVar = h$b.f63486a;
        l.e(obj, "remoRemoteMessage");
        try {
            if (obj instanceof RemoteMessage) {
                map = ((RemoteMessage) obj).o2();
            } else if (!(obj instanceof com.huawei.hms.push.RemoteMessage)) {
                C10480a.m26061I1(new IllegalArgumentException("RemoteMessage -Unsupported type"));
                return;
            } else {
                map = ((com.huawei.hms.push.RemoteMessage) obj).getDataOfMap();
            }
            l.d(map, RemoteMessageConst.DATA);
            if (!(!map.isEmpty())) {
                return;
            }
            Bundle bundle = new Bundle();
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                bundle.putString((String) entry.getKey(), (String) entry.getValue());
            }
            ((CleverTapManager) this.f41581c.get()).initWithoutActivityLifeCycleCallBacks();
            C20592g c20592g = (C20592g) this.f41582d.get();
            if (c20592g.f57814Q5.m10941a(c20592g, C20592g.f57695p6[360]).isEnabled()) {
                if (obj instanceof RemoteMessage) {
                    Context context = this.f41579a;
                    RemoteMessage remoteMessage = (RemoteMessage) obj;
                    Bundle bundle2 = new Bundle();
                    for (Map.Entry entry2 : remoteMessage.o2().entrySet()) {
                        bundle2.putString((String) entry2.getKey(), (String) entry2.getValue());
                    }
                    String str = AbstractC22865g.f63475a;
                    if (bundle2 != null) {
                        hVar.a(context, bundle2, AbstractC22865g.EnumC22866a.FCM.toString());
                    }
                } else if (obj instanceof com.huawei.hms.push.RemoteMessage) {
                    Context context2 = this.f41579a;
                    String data = ((com.huawei.hms.push.RemoteMessage) obj).getData();
                    boolean z = C22741j0.f62977a;
                    Bundle bundle3 = new Bundle();
                    if (!TextUtils.isEmpty(data)) {
                        JSONObject jSONObject = new JSONObject(data);
                        Iterator<String> keys = jSONObject.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            bundle3.putString(next, jSONObject.getString(next));
                        }
                    }
                    String str2 = AbstractC22668b.f62733a;
                    if (bundle3 != null) {
                        hVar.a(context2, bundle3, AbstractC22865g.EnumC22866a.HPS.toString());
                    }
                }
                C22773p m7793h = C22773p.m7793h(this.f41579a);
                if (m7793h != null) {
                    m7793h.f63088b.f63518d.m7877n(bundle);
                }
            } else {
                Context context3 = this.f41579a;
                C22773p m7796e = C22773p.m7796e(context3, bundle.getString("wzrk_acct_id"));
                if (m7796e != null) {
                    try {
                        C22867i c22867i = m7796e.f63088b.f63525k;
                        c22867i.f63494h = new C22861c();
                        c22867i.m7659b(context3, bundle, -1000);
                    } catch (Throwable th) {
                    }
                }
            }
            this.f41580b.putBoolean("shouldInitClevertapSDK", true);
        } catch (Throwable th2) {
        }
    }
}
