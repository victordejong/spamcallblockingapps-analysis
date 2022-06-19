package p193e.p194a.p786g0.p789k;

import android.content.Context;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hmf.tasks.Tasks;
import com.huawei.hms.common.ApiException;
import com.huawei.hms.support.api.entity.safetydetect.UserDetectResponse;
import com.huawei.hms.support.api.safetydetect.SafetyDetect;
import com.huawei.hms.support.api.safetydetect.SafetyDetectClient;
import com.huawei.hms.support.api.safetydetect.SafetyDetectStatusCodes;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p786g0.p789k.AbstractC14390e;
import p193e.p194a.p786g0.p789k.AbstractC14393f;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.g0.k.h */
/* loaded from: classes14-dex2jar.jar:e/a/g0/k/h.class */
public final class C14398h implements AbstractC14389d {

    /* renamed from: a */
    public final g f41535a = C25225a.m3978P1(new C14399a());

    /* renamed from: b */
    public final Context f41536b;

    /* renamed from: e.a.g0.k.h$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/k/h$a.class */
    public static final class C14399a extends m implements a<SafetyDetectClient> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14399a() {
            super(0);
            C14398h.this = r4;
        }

        public Object invoke() {
            return SafetyDetect.getClient(C14398h.this.f41536b);
        }
    }

    @Inject
    public C14398h(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f41536b = context;
    }

    @Override // p193e.p194a.p786g0.p789k.AbstractC14389d
    /* renamed from: a */
    public void mo20149a() {
        m20146d().shutdownUserDetect();
    }

    @Override // p193e.p194a.p786g0.p789k.AbstractC14389d
    /* renamed from: b */
    public AbstractC14390e mo20148b() {
        AbstractC14390e abstractC14390e;
        Integer num;
        AbstractC12603e.C12605b c12605b = AbstractC12603e.C12605b.f36738c;
        try {
            Object await = Tasks.await(m20146d().userDetection(AGConnectServicesConfig.fromContext(this.f41536b).getString("client/app_id")));
            l.d(await, "HMSTasks.await(hmsClient.userDetection(appId))");
            String responseToken = ((UserDetectResponse) await).getResponseToken();
            l.d(responseToken, "HMSTasks.await(hmsClient…ion(appId)).responseToken");
            Tasks.await(m20146d().shutdownUserDetect());
            abstractC14390e = new AbstractC14390e.C14392b(responseToken, c12605b);
        } catch (Exception e) {
            if (e instanceof ApiException) {
                num = Integer.valueOf(((ApiException) e).getStatusCode());
            } else if (e.getCause() instanceof ApiException) {
                Throwable cause = e.getCause();
                Objects.requireNonNull(cause, "null cannot be cast to non-null type com.huawei.hms.common.ApiException");
                num = Integer.valueOf(((ApiException) cause).getStatusCode());
            } else {
                num = null;
            }
            abstractC14390e = new AbstractC14390e.C14391a(new C14384a((num != null && num.intValue() == 19801) ? new AbstractC14393f.C14396c(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : (num != null && num.intValue() == 19002) ? new AbstractC14393f.C14396c(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : (num != null && num.intValue() == 19001) ? new AbstractC14393f.C14396c(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : (num != null && num.intValue() == 19003) ? new AbstractC14393f.C14396c(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : (num != null && num.intValue() == 19202) ? new AbstractC14393f.C14396c(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : (num != null && num.intValue() == 19802) ? new AbstractC14393f.C14394a(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : (num != null && num.intValue() == 19800) ? new AbstractC14393f.C14394a(SafetyDetectStatusCodes.getStatusCodeString(num.intValue())) : num == null ? new AbstractC14393f.C14395b(null) : new AbstractC14393f.C14395b(SafetyDetectStatusCodes.getStatusCodeString(num.intValue()))), c12605b);
        }
        return abstractC14390e;
    }

    @Override // p193e.p194a.p786g0.p789k.AbstractC14389d
    /* renamed from: c */
    public void mo20147c() {
        m20146d().initUserDetect();
    }

    /* renamed from: d */
    public final SafetyDetectClient m20146d() {
        return (SafetyDetectClient) this.f41535a.getValue();
    }
}
