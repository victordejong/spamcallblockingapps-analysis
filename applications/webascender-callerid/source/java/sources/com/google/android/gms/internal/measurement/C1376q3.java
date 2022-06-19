package com.google.android.gms.internal.measurement;

import android.net.Uri;
import f.e.a;
/* renamed from: com.google.android.gms.internal.measurement.q3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q3.class */
public final class C1376q3 {

    /* renamed from: a */
    private static final a<String, Uri> f3952a = new a<>();

    /* renamed from: a */
    public static Uri m1997a(String str) {
        Uri uri;
        synchronized (C1376q3.class) {
            try {
                a<String, Uri> aVar = f3952a;
                Uri uri2 = (Uri) aVar.get("com.google.android.gms.measurement");
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode("com.google.android.gms.measurement"));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    aVar.put("com.google.android.gms.measurement", uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
