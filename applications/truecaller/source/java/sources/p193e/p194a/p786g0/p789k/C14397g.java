package p193e.p194a.p786g0.p789k;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.PendingResultUtil;
import com.google.android.gms.safetynet.SafetyNet;
import com.google.android.gms.safetynet.SafetyNetApi;
import com.google.android.gms.safetynet.SafetyNetClient;
import com.google.android.gms.tasks.Tasks;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p786g0.p789k.AbstractC14390e;
import p193e.p194a.p786g0.p789k.AbstractC14393f;
import s1.z.c.l;
/* renamed from: e.a.g0.k.g */
/* loaded from: classes14-dex2jar.jar:e/a/g0/k/g.class */
public final class C14397g implements AbstractC14389d {

    /* renamed from: a */
    public final String f41533a;

    /* renamed from: b */
    public final SafetyNetClient f41534b;

    @Inject
    public C14397g(@Named("pu+rsk") String str, SafetyNetClient safetyNetClient) {
        l.e(str, "recaptchaKey");
        l.e(safetyNetClient, "safetyNetClient");
        this.f41533a = str;
        this.f41534b = safetyNetClient;
    }

    @Override // p193e.p194a.p786g0.p789k.AbstractC14389d
    /* renamed from: a */
    public void mo20149a() {
    }

    @Override // p193e.p194a.p786g0.p789k.AbstractC14389d
    /* renamed from: b */
    public AbstractC14390e mo20148b() {
        AbstractC14390e abstractC14390e;
        Integer num;
        AbstractC14393f.C14394a c14394a;
        AbstractC12603e.C12604a c12604a = AbstractC12603e.C12604a.f36737c;
        try {
            SafetyNetClient safetyNetClient = this.f41534b;
            String str = this.f41533a;
            Objects.requireNonNull(safetyNetClient);
            Object m38514a = Tasks.m38514a(PendingResultUtil.m38908a(SafetyNet.f6461d.verifyWithRecaptcha(safetyNetClient.asGoogleApiClient(), str), new SafetyNetApi.RecaptchaTokenResponse()));
            l.d(m38514a, "GMSTasks.await(safetyNet…hRecaptcha(recaptchaKey))");
            String tokenResult = ((SafetyNetApi.RecaptchaTokenResponse) m38514a).f5719a.getTokenResult();
            l.d(tokenResult, "GMSTasks.await(safetyNet…ecaptchaKey)).tokenResult");
            abstractC14390e = new AbstractC14390e.C14392b(tokenResult, c12604a);
        } catch (Exception e) {
            String str2 = null;
            if (e instanceof ApiException) {
                num = Integer.valueOf(((ApiException) e).f5693a.f5728b);
            } else if (e.getCause() instanceof ApiException) {
                Throwable cause = e.getCause();
                Objects.requireNonNull(cause, "null cannot be cast to non-null type com.google.android.gms.common.api.ApiException");
                num = Integer.valueOf(((ApiException) cause).f5693a.f5728b);
            } else {
                num = null;
            }
            if (num != null && num.intValue() == 12007) {
                c14394a = new AbstractC14393f.C14394a("RECAPTCHA_INVALID_SITEKEY");
            } else if (num != null && num.intValue() == 12008) {
                c14394a = new AbstractC14393f.C14394a("RECAPTCHA_INVALID_KEYTYPE");
            } else if (num != null && num.intValue() == 12013) {
                c14394a = new AbstractC14393f.C14394a("RECAPTCHA_INVALID_PACKAGE_NAME");
            } else if (num != null && num.intValue() == 12006) {
                c14394a = new AbstractC14393f.C14394a("UNSUPPORTED_SDK_VERSION");
            } else if (num != null && num.intValue() == 15) {
                c14394a = new AbstractC14393f.C14396c("TIMEOUT");
            } else if (num != null && num.intValue() == 7) {
                c14394a = new AbstractC14393f.C14396c("NETWORK_ERROR");
            } else if (num != null && num.intValue() == 13) {
                c14394a = new AbstractC14393f.C14396c("ERROR");
            } else {
                if (num != null) {
                    str2 = String.valueOf(num.intValue());
                }
                c14394a = new AbstractC14393f.C14395b(str2);
            }
            abstractC14390e = new AbstractC14390e.C14391a(new C14384a(c14394a), c12604a);
        }
        return abstractC14390e;
    }

    @Override // p193e.p194a.p786g0.p789k.AbstractC14389d
    /* renamed from: c */
    public void mo20147c() {
    }
}
