package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.p026b.C0529a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcm.class */
public final class zzcm {

    /* renamed from: a */
    private static final C0529a<String, Uri> f16178a = new C0529a<>();

    public static Uri zza(String str) {
        Uri uri;
        synchronized (zzcm.class) {
            try {
                Uri uri2 = f16178a.get(str);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    f16178a.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
