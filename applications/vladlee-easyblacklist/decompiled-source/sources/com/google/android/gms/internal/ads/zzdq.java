package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdq.class */
public final class zzdq {

    /* renamed from: e */
    private static final String[] f14454e = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* renamed from: a */
    private String f14455a = "googleads.g.doubleclick.net";

    /* renamed from: b */
    private String f14456b = "/pagead/ads";

    /* renamed from: c */
    private String f14457c = "ad.doubleclick.net";

    /* renamed from: d */
    private String[] f14458d = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* renamed from: f */
    private zzdg f14459f;

    public zzdq(zzdg zzdgVar) {
        this.f14459f = zzdgVar;
    }

    /* renamed from: a */
    private final Uri m3410a(Uri uri, String str) {
        try {
            boolean a = m3411a(uri);
            if (a) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzdt("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzdt("Query parameter already exists: ms");
            }
            if (a) {
                String uri2 = uri.toString();
                int indexOf = uri2.indexOf(";adurl");
                if (indexOf != -1) {
                    int i = indexOf + 1;
                    return Uri.parse(uri2.substring(0, i) + "dc_ms=" + str + ";" + uri2.substring(i));
                }
                String encodedPath = uri.getEncodedPath();
                int indexOf2 = uri2.indexOf(encodedPath);
                return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";dc_ms=" + str + ";" + uri2.substring(indexOf2 + encodedPath.length()));
            }
            String uri3 = uri.toString();
            int indexOf3 = uri3.indexOf("&adurl");
            int i2 = indexOf3;
            if (indexOf3 == -1) {
                i2 = uri3.indexOf("?adurl");
            }
            if (i2 == -1) {
                return uri.buildUpon().appendQueryParameter("ms", str).build();
            }
            int i3 = i2 + 1;
            return Uri.parse(uri3.substring(0, i3) + "ms=" + str + "&" + uri3.substring(i3));
        } catch (UnsupportedOperationException e) {
            throw new zzdt("Provided Uri is not in a valid state");
        }
    }

    /* renamed from: a */
    private final boolean m3411a(Uri uri) {
        if (uri != null) {
            try {
                return uri.getHost().equals(this.f14457c);
            } catch (NullPointerException e) {
                return false;
            }
        } else {
            throw new NullPointerException();
        }
    }

    public final Uri zza(Uri uri, Context context) {
        return m3410a(uri, this.f14459f.zzb(context));
    }

    public final Uri zza(Uri uri, Context context, View view, Activity activity) {
        try {
            return m3410a(uri, this.f14459f.zza(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException e) {
            throw new zzdt("Provided Uri is not in a valid state");
        }
    }

    public final void zza(MotionEvent motionEvent) {
        this.f14459f.zza(motionEvent);
    }

    public final boolean zzb(Uri uri) {
        if (uri != null) {
            try {
                String host = uri.getHost();
                for (String str : this.f14458d) {
                    if (host.endsWith(str)) {
                        return true;
                    }
                }
                return false;
            } catch (NullPointerException e) {
                return false;
            }
        } else {
            throw new NullPointerException();
        }
    }

    public final zzdg zzbw() {
        return this.f14459f;
    }

    public final boolean zzc(Uri uri) {
        if (!zzb(uri)) {
            return false;
        }
        for (String str : f14454e) {
            if (uri.getPath().endsWith(str)) {
                return true;
            }
        }
        return false;
    }
}
