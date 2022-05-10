package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.RewardedVideoCompletionRequest;
import com.mopub.network.Networking;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequestHandler.class */
public class RewardedVideoCompletionRequestHandler implements RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener {

    /* renamed from: g */
    public static final int[] f34220g = {5000, 10000, 20000, 40000, 60000};

    /* renamed from: a */
    public final String f34221a;

    /* renamed from: b */
    public final Handler f34222b;

    /* renamed from: c */
    public final RequestQueue f34223c;

    /* renamed from: d */
    public final Context f34224d;

    /* renamed from: e */
    public int f34225e;

    /* renamed from: f */
    public volatile boolean f34226f;

    /* renamed from: com.mopub.mobileads.RewardedVideoCompletionRequestHandler$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/RewardedVideoCompletionRequestHandler$a.class */
    public class RunnableC8813a implements Runnable {
        public RunnableC8813a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardedVideoCompletionRequestHandler.this.m4285a();
        }
    }

    public RewardedVideoCompletionRequestHandler(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        this(context, str, str2, str3, str4, str5, str6, new Handler());
    }

    @VisibleForTesting
    public RewardedVideoCompletionRequestHandler(Context context, String str, String str2, String str3, String str4, String str5, String str6, Handler handler) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str3);
        Preconditions.checkNotNull(str4);
        Preconditions.checkNotNull(handler);
        this.f34221a = m4283a(str, str2, str3, str4, str5, str6);
        this.f34225e = 0;
        this.f34222b = handler;
        this.f34223c = Networking.getRequestQueue(context);
        this.f34224d = context.getApplicationContext();
    }

    /* renamed from: a */
    public static int m4284a(int i) {
        if (i >= 0) {
            int[] iArr = f34220g;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        int[] iArr2 = f34220g;
        return iArr2[iArr2.length - 1];
    }

    /* renamed from: a */
    public static String m4283a(String str, String str2, String str3, String str4, String str5, String str6) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str3);
        Preconditions.checkNotNull(str4);
        StringBuilder sb = new StringBuilder(str);
        sb.append("&customer_id=");
        String str7 = "";
        sb.append(str2 == null ? "" : Uri.encode(str2));
        sb.append("&rcn=");
        sb.append(Uri.encode(str3));
        sb.append("&rca=");
        sb.append(Uri.encode(str4));
        sb.append("&nv=");
        sb.append(Uri.encode("5.11.1"));
        sb.append("&v=");
        sb.append(1);
        sb.append("&cec=");
        if (str5 != null) {
            str7 = Uri.encode(str5);
        }
        sb.append(str7);
        if (!TextUtils.isEmpty(str6)) {
            sb.append("&rcd=");
            sb.append(Uri.encode(str6));
        }
        return sb.toString();
    }

    public static void makeRewardedVideoCompletionRequest(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        if (context != null && !TextUtils.isEmpty(str) && str3 != null && str4 != null) {
            new RewardedVideoCompletionRequestHandler(context, str, str2, str3, str4, str5, str6).m4285a();
        }
    }

    /* renamed from: a */
    public void m4285a() {
        if (this.f34226f) {
            this.f34223c.cancelAll(this.f34221a);
            return;
        }
        RewardedVideoCompletionRequest rewardedVideoCompletionRequest = new RewardedVideoCompletionRequest(this.f34224d, this.f34221a, new DefaultRetryPolicy(m4284a(this.f34225e) - 1000, 0, 0.0f), this);
        rewardedVideoCompletionRequest.setTag(this.f34221a);
        this.f34223c.add(rewardedVideoCompletionRequest);
        if (this.f34225e >= 17) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Exceeded number of retries for rewarded video completion request.");
            return;
        }
        this.f34222b.postDelayed(new RunnableC8813a(), m4284a(this.f34225e));
        this.f34225e++;
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        NetworkResponse networkResponse;
        if (volleyError != null && (networkResponse = volleyError.networkResponse) != null) {
            int i = networkResponse.statusCode;
            if (i < 500 || i >= 600) {
                this.f34226f = true;
            }
        }
    }

    @Override // com.mopub.mobileads.RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener
    public void onResponse(Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() < 500 || num.intValue() >= 600) {
            this.f34226f = true;
        }
    }
}
