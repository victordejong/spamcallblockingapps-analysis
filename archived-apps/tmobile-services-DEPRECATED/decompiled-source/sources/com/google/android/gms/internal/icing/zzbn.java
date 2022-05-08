package com.google.android.gms.internal.icing;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbn.class */
public final class zzbn {
    @GuardedBy

    /* renamed from: a */
    private static final ArrayMap<String, Uri> f7913a = new ArrayMap<>();

    /* renamed from: a */
    public static Uri m14015a(String str) {
        Uri uri;
        synchronized (zzbn.class) {
            try {
                Uri uri2 = f7913a.get(str);
                uri = uri2;
                if (uri2 == null) {
                    String valueOf = String.valueOf(Uri.encode(str));
                    uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                    f7913a.put(str, uri);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return uri;
    }
}
