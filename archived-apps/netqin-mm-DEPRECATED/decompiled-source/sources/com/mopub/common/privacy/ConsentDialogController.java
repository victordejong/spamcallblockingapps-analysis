package com.mopub.common.privacy;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentDialogRequest;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import p131c.p421j.p422a.p423g.C6640a;
import p131c.p421j.p422a.p423g.C6641b;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController.class */
public class ConsentDialogController implements ConsentDialogRequest.Listener {

    /* renamed from: a */
    public final Context f33841a;

    /* renamed from: b */
    public String f33842b;

    /* renamed from: c */
    public ConsentDialogListener f33843c;

    /* renamed from: d */
    public volatile boolean f33844d;

    /* renamed from: e */
    public volatile boolean f33845e;

    /* renamed from: f */
    public final Handler f33846f = new Handler();

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$a.class */
    public class RunnableC8729a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ConsentDialogListener f33847a;

        public RunnableC8729a(ConsentDialogController consentDialogController, ConsentDialogListener consentDialogListener) {
            this.f33847a = consentDialogListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
            this.f33847a.onConsentDialogLoaded();
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogController$b.class */
    public static /* synthetic */ class C8730b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33848a;

        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f33848a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    public ConsentDialogController(Context context) {
        Preconditions.checkNotNull(context);
        this.f33841a = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m4566a(ConsentDialogListener consentDialogListener, Boolean bool, C6641b bVar) {
        synchronized (this) {
            Preconditions.checkNotNull(bVar);
            if (this.f33844d) {
                if (consentDialogListener != null) {
                    this.f33846f.post(new RunnableC8729a(this, consentDialogListener));
                }
            } else if (this.f33845e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Already making a consent dialog load request.");
            } else {
                this.f33843c = consentDialogListener;
                this.f33845e = true;
                Context context = this.f33841a;
                ConsentDialogUrlGenerator consentDialogUrlGenerator = new ConsentDialogUrlGenerator(this.f33841a, bVar.m20247b(), bVar.m20237e().getValue());
                consentDialogUrlGenerator.withGdprApplies(bool);
                consentDialogUrlGenerator.withConsentedPrivacyPolicyVersion(bVar.getConsentedPrivacyPolicyVersion());
                consentDialogUrlGenerator.withConsentedVendorListVersion(bVar.getConsentedVendorListVersion());
                consentDialogUrlGenerator.withForceGdprApplies(bVar.isForceGdprApplies());
                Networking.getRequestQueue(this.f33841a).add(new ConsentDialogRequest(context, consentDialogUrlGenerator.generateUrlString(Constants.HOST), this));
            }
        }
    }

    /* renamed from: a */
    public boolean m4567a() {
        return this.f33844d;
    }

    /* renamed from: b */
    public final void m4565b() {
        this.f33845e = false;
        this.f33844d = false;
        this.f33843c = null;
        this.f33842b = null;
    }

    /* renamed from: c */
    public boolean m4564c() {
        MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_ATTEMPTED, new Object[0]);
        if (!this.f33844d || TextUtils.isEmpty(this.f33842b)) {
            MoPubLog.log(MoPubLog.ConsentLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            return false;
        }
        this.f33844d = false;
        ConsentDialogActivity.m4568b(this.f33841a, this.f33842b);
        m4565b();
        return true;
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        ConsentDialogListener consentDialogListener = this.f33843c;
        m4565b();
        if (consentDialogListener != null) {
            if (volleyError instanceof MoPubNetworkError) {
                if (C8730b.f33848a[((MoPubNetworkError) volleyError).getReason().ordinal()] != 1) {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.UNSPECIFIED.getIntCode()), MoPubErrorCode.UNSPECIFIED);
                } else {
                    MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                    consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
            }
            consentDialogListener.onConsentDialogLoadFailed(MoPubErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.mopub.common.privacy.ConsentDialogRequest.Listener
    public void onSuccess(C6640a aVar) {
        this.f33845e = false;
        String html = aVar.getHtml();
        this.f33842b = html;
        if (TextUtils.isEmpty(html)) {
            this.f33844d = false;
            if (this.f33843c != null) {
                MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                this.f33843c.onConsentDialogLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
            return;
        }
        MoPubLog.log(MoPubLog.ConsentLogEvent.LOAD_SUCCESS, new Object[0]);
        this.f33844d = true;
        ConsentDialogListener consentDialogListener = this.f33843c;
        if (consentDialogListener != null) {
            consentDialogListener.onConsentDialogLoaded();
        }
    }
}
