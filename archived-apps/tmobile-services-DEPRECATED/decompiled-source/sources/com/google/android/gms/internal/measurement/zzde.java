package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzde.class */
public final class zzde {
    @GuardedBy

    /* renamed from: a */
    private static final ArrayMap<String, Uri> f8341a = new ArrayMap<>();

    /* renamed from: a */
    public static Uri m12780a(String str) {
        Uri uri;
        synchronized (zzde.class) {
            try {
                Uri uri2 = f8341a.get(str);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    f8341a.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
