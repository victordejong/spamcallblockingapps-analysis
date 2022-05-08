package com.google.android.gms.common.util;

import android.content.Context;
import android.os.DropBoxManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import javax.annotation.concurrent.GuardedBy;
import org.spongycastle.asn1.cmp.PKIFailureInfo;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CrashUtils.class */
public final class CrashUtils {
    private static final String[] zzge = {"android.", "com.android.", "dalvik.", "java.", "javax."};
    private static DropBoxManager zzgf;
    private static boolean zzgg = false;
    private static int zzgh = -1;
    @GuardedBy("CrashUtils.class")
    private static int zzgi;
    @GuardedBy("CrashUtils.class")
    private static int zzgj;

    @KeepForSdk
    public static boolean addDynamiteErrorToDropBox(Context context, Throwable th) {
        return zza(context, th, PKIFailureInfo.duplicateCertReq);
    }

    private static boolean zza(Context context, Throwable th, int i) {
        try {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
