package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawy.class */
public final class zzawy {

    /* renamed from: a */
    private final Object f11486a = new Object();

    /* renamed from: b */
    private String f11487b = "";

    /* renamed from: c */
    private String f11488c = "";

    /* renamed from: d */
    private boolean f11489d = false;

    /* renamed from: e */
    private String f11490e = "";

    /* renamed from: a */
    private final String m4233a(Context context) {
        String str;
        synchronized (this.f11486a) {
            if (TextUtils.isEmpty(this.f11487b)) {
                zzq.zzkq();
                this.f11487b = zzawb.zzs(context, "debug_signals_id.txt");
                if (TextUtils.isEmpty(this.f11487b)) {
                    zzq.zzkq();
                    this.f11487b = zzawb.zzwk();
                    zzq.zzkq();
                    zzawb.zzc(context, "debug_signals_id.txt", this.f11487b);
                }
            }
            str = this.f11487b;
        }
        return str;
    }

    /* renamed from: a */
    private final void m4231a(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = m4228b(context, (String) zzve.zzoy().zzd(zzzn.zzcnp), str3, str).buildUpon();
        buildUpon.appendQueryParameter("debugData", str2);
        zzq.zzkq();
        zzawb.zzb(context, str, buildUpon.build().toString());
    }

    /* renamed from: a */
    private static void m4230a(Context context, String str, boolean z, boolean z2) {
        if (!(context instanceof Activity)) {
            zzavs.zzey("Can not create dialog without Activity Context");
        } else {
            zzawb.zzdsr.post(new RunnableC1870fh(context, str, z, z2));
        }
    }

    /* renamed from: a */
    private final boolean m4232a(Context context, String str, String str2) {
        String c = m4227c(context, m4228b(context, (String) zzve.zzoy().zzd(zzzn.zzcnn), str, str2).toString(), str2);
        if (TextUtils.isEmpty(c)) {
            zzavs.zzea("Not linked for in app preview.");
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(c.trim());
            String optString = jSONObject.optString("gct");
            this.f11490e = jSONObject.optString("status");
            synchronized (this.f11486a) {
                this.f11488c = optString;
            }
            return true;
        } catch (JSONException e) {
            zzavs.zzd("Fail to get in app preview response json.", e);
            return false;
        }
    }

    /* renamed from: b */
    private final Uri m4228b(Context context, String str, String str2, String str3) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendQueryParameter("linkedDeviceId", m4233a(context));
        buildUpon.appendQueryParameter("adSlotPath", str2);
        buildUpon.appendQueryParameter("afmaVersion", str3);
        return buildUpon.build();
    }

    /* renamed from: b */
    private final boolean m4229b(Context context, String str, String str2) {
        String c = m4227c(context, m4228b(context, (String) zzve.zzoy().zzd(zzzn.zzcno), str, str2).toString(), str2);
        if (TextUtils.isEmpty(c)) {
            zzavs.zzea("Not linked for debug signals.");
            return false;
        }
        try {
            boolean equals = "1".equals(new JSONObject(c.trim()).optString("debug_mode"));
            synchronized (this.f11486a) {
                this.f11489d = equals;
            }
            return equals;
        } catch (JSONException e) {
            zzavs.zzd("Fail to get debug mode response json.", e);
            return false;
        }
    }

    /* renamed from: c */
    private static String m4227c(Context context, String str, String str2) {
        String str3;
        Throwable e;
        String str4;
        String str5;
        HashMap hashMap = new HashMap();
        hashMap.put(AbstractC0007a.HEADER_USER_AGENT, zzq.zzkq().zzr(context, str2));
        zzdhe<String> zzc = new zzaxk(context).zzc(str, hashMap);
        try {
            return zzc.get(((Integer) zzve.zzoy().zzd(zzzn.zzcnq)).intValue(), TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            e = e2;
            str4 = "Interrupted while retriving a response from: ";
            str5 = String.valueOf(str);
            if (str5.length() == 0) {
                str3 = new String("Interrupted while retriving a response from: ");
                zzavs.zzc(str3, e);
                zzc.cancel(true);
                return null;
            }
            str3 = str4.concat(str5);
            zzavs.zzc(str3, e);
            zzc.cancel(true);
            return null;
        } catch (TimeoutException e3) {
            e = e3;
            str4 = "Timeout while retriving a response from: ";
            str5 = String.valueOf(str);
            if (str5.length() == 0) {
                str3 = new String("Timeout while retriving a response from: ");
                zzavs.zzc(str3, e);
                zzc.cancel(true);
                return null;
            }
            str3 = str4.concat(str5);
            zzavs.zzc(str3, e);
            zzc.cancel(true);
            return null;
        } catch (Exception e4) {
            String valueOf = String.valueOf(str);
            zzavs.zzc(valueOf.length() != 0 ? "Error retriving a response from: ".concat(valueOf) : new String("Error retriving a response from: "), e4);
            return null;
        }
    }

    /* renamed from: d */
    private final void m4226d(Context context, String str, String str2) {
        zzq.zzkq();
        zzawb.zza(context, m4228b(context, (String) zzve.zzoy().zzd(zzzn.zzcnm), str, str2));
    }

    public final void zza(Context context, String str, String str2, String str3) {
        boolean zzwy = zzwy();
        if (m4229b(context, str, str2)) {
            if (!zzwy && !TextUtils.isEmpty(str3)) {
                m4231a(context, str2, str3, str);
            }
            zzavs.zzea("Device is linked for debug signals.");
            m4230a(context, "The device is successfully linked for troubleshooting.", false, true);
            return;
        }
        m4226d(context, str, str2);
    }

    public final boolean zzb(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str2) || !zzq.zzla().zzwy()) {
            return false;
        }
        zzavs.zzea("Sending troubleshooting signals to the server.");
        m4231a(context, str, str2, str3);
        return true;
    }

    public final void zze(Context context, String str, String str2) {
        if (!m4232a(context, str, str2)) {
            m4230a(context, "In-app preview failed to load because of a system error. Please try again later.", true, true);
        } else if ("2".equals(this.f11490e)) {
            zzavs.zzea("Creative is not pushed for this device.");
            m4230a(context, "There was no creative pushed from DFP to the device.", false, false);
        } else if ("1".equals(this.f11490e)) {
            zzavs.zzea("The app is not linked for creative preview.");
            m4226d(context, str, str2);
        } else if ("0".equals(this.f11490e)) {
            zzavs.zzea("Device is linked for in app preview.");
            m4230a(context, "The device is successfully linked for creative preview.", false, true);
        }
    }

    public final String zzwx() {
        String str;
        synchronized (this.f11486a) {
            str = this.f11488c;
        }
        return str;
    }

    public final boolean zzwy() {
        boolean z;
        synchronized (this.f11486a) {
            z = this.f11489d;
        }
        return z;
    }
}
