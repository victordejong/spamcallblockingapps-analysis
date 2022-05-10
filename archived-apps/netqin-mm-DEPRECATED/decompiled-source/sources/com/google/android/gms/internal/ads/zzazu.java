package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4166w5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazu.class */
public final class zzazu {

    /* renamed from: a */
    public final Object f24688a = new Object();

    /* renamed from: b */
    public String f24689b = "";

    /* renamed from: c */
    public String f24690c = "";

    /* renamed from: d */
    public boolean f24691d = false;
    @VisibleForTesting

    /* renamed from: e */
    public String f24692e = "";

    @VisibleForTesting
    /* renamed from: e */
    public static String m15992e(Context context, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", zzp.m17969c().m16141a(context, str2));
        zzdzc<String> a = new zzbag(context).m15970a(str, hashMap);
        try {
            return a.get(((Integer) zzwm.m11166e().m16921a(zzabb.f23829i2)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(str);
            zzbbq.m15855b(valueOf.length() != 0 ? "Interrupted while retriving a response from: ".concat(valueOf) : new String("Interrupted while retriving a response from: "), e);
            a.cancel(true);
            return null;
        } catch (TimeoutException e2) {
            String valueOf2 = String.valueOf(str);
            zzbbq.m15855b(valueOf2.length() != 0 ? "Timeout while retriving a response from: ".concat(valueOf2) : new String("Timeout while retriving a response from: "), e2);
            a.cancel(true);
            return null;
        } catch (Exception e3) {
            String valueOf3 = String.valueOf(str);
            zzbbq.m15855b(valueOf3.length() != 0 ? "Error retriving a response from: ".concat(valueOf3) : new String("Error retriving a response from: "), e3);
            return null;
        }
    }

    /* renamed from: a */
    public final String m16004a() {
        String str;
        synchronized (this.f24688a) {
            str = this.f24690c;
        }
        return str;
    }

    /* renamed from: a */
    public final String m16003a(Context context) {
        String str;
        synchronized (this.f24688a) {
            if (TextUtils.isEmpty(this.f24689b)) {
                zzp.m17969c();
                String c = zzayu.m16102c(context, "debug_signals_id.txt");
                this.f24689b = c;
                if (TextUtils.isEmpty(c)) {
                    zzp.m17969c();
                    this.f24689b = zzayu.m16115b();
                    zzp.m17969c();
                    zzayu.m16110b(context, "debug_signals_id.txt", this.f24689b);
                }
            }
            str = this.f24689b;
        }
        return str;
    }

    /* renamed from: a */
    public final void m16002a(Context context, String str, String str2) {
        if (!m15998b(context, str, str2)) {
            m16000a(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if (InternalAvidAdSessionContext.AVID_API_LEVEL.equals(this.f24692e)) {
            zzbbq.m15858a("Creative is not pushed for this device.");
            m16000a(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.f24692e)) {
            zzbbq.m15858a("The app is not linked for creative preview.");
            m15994d(context, str, str2);
        } else if ("0".equals(this.f24692e)) {
            zzbbq.m15858a("Device is linked for in app preview.");
            m16000a(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    /* renamed from: a */
    public final void m16001a(Context context, String str, String str2, String str3) {
        boolean b = m15999b();
        if (m15996c(context, str, str2)) {
            if (!b && !TextUtils.isEmpty(str3)) {
                m15995c(context, str2, str3, str);
            }
            zzbbq.m15858a("Device is linked for debug signals.");
            m16000a(context, "The device is successfully linked for troubleshooting.", false, true);
            return;
        }
        m15994d(context, str, str2);
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m16000a(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzbbq.m15854c("Can not create dialog without Activity Context");
        } else {
            zzayu.f24665h.post(new RunnableC4166w5(this, context, str, z, z2));
        }
    }

    /* renamed from: b */
    public final boolean m15999b() {
        boolean z;
        synchronized (this.f24688a) {
            z = this.f24691d;
        }
        return z;
    }

    @VisibleForTesting
    /* renamed from: b */
    public final boolean m15998b(Context context, String str, String str2) {
        String e = m15992e(context, m15993d(context, (String) zzwm.m11166e().m16921a(zzabb.f23811f2), str, str2).toString(), str2);
        if (TextUtils.isEmpty(e)) {
            zzbbq.m15858a("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(e.trim());
            String optString = jSONObject.optString("gct");
            this.f24692e = jSONObject.optString("status");
            synchronized (this.f24688a) {
                this.f24690c = optString;
            }
            return true;
        } catch (JSONException e2) {
            zzbbq.m15853c("Fail to get in app preview response json.", e2);
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m15997b(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzp.m17959m().m15999b()) {
            return false;
        }
        zzbbq.m15858a("Sending troubleshooting signals to the server.");
        m15995c(context, str, str2, str3);
        return true;
    }

    /* renamed from: c */
    public final void m15995c(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m15993d(context, (String) zzwm.m11166e().m16921a(zzabb.f23823h2), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzp.m17969c();
        zzayu.m16139a(context, str, buildUpon.build().toString());
    }

    @VisibleForTesting
    /* renamed from: c */
    public final boolean m15996c(Context context, String str, String str2) {
        String e = m15992e(context, m15993d(context, (String) zzwm.m11166e().m16921a(zzabb.f23817g2), str, str2).toString(), str2);
        if (TextUtils.isEmpty(e)) {
            zzbbq.m15858a("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(e.trim()).optString("debug_mode"));
            synchronized (this.f24688a) {
                this.f24691d = equals;
            }
            return equals;
        } catch (JSONException e2) {
            zzbbq.m15853c("Fail to get debug mode response json.", e2);
            return false;
        }
    }

    /* renamed from: d */
    public final Uri m15993d(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", m16003a(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    /* renamed from: d */
    public final void m15994d(Context context, String str, String str2) {
        zzp.m17969c();
        zzayu.m16142a(context, m15993d(context, (String) zzwm.m11166e().m16921a(zzabb.f23805e2), str, str2));
    }
}
