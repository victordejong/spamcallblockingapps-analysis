package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzano.class */
public class zzano {
    public static zzani zzdp(String str) {
        try {
            return new zzann((RtbAdapter) Class.forName(str, false, zzano.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }
}
