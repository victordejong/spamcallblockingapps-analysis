package p193e.p194a.p912i4;

import android.content.Context;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.data.entity.Contact;
import e.m.f.a.e;
import java.io.IOException;
import java.util.UUID;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
/* renamed from: e.a.i4.n */
/* loaded from: classes11-dex2jar.jar:e/a/i4/n.class */
public abstract class AbstractC15284n {
    /* renamed from: a */
    public void mo18948a() {
    }

    /* renamed from: b */
    public void mo18947b(StatusBarNotification statusBarNotification) {
    }

    /* renamed from: c */
    public void mo18953c(StatusBarNotification statusBarNotification) {
    }

    /* renamed from: d */
    public Contact m18957d(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C8572b0.m28376c(str);
        try {
            C14022p c14022p = new C14022p(context, UUID.randomUUID(), RemoteMessageConst.NOTIFICATION);
            c14022p.f40566p = str;
            c14022p.m20844d();
            c14022p.f40557g = true;
            c14022p.f40559i = true;
            c14022p.f40560j = true;
            c14022p.f40562l = false;
            c14022p.f40565o = 19;
            C14030t mo20821a = c14022p.mo20821a();
            if (mo20821a == null) {
                return null;
            }
            return mo20821a.m20837a();
        } catch (IOException | RuntimeException | e e) {
            return null;
        }
    }
}
