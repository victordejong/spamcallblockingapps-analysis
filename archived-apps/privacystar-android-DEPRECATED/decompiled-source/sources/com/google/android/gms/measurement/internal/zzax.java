package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzax.class */
public final class zzax implements Runnable {
    private final String packageName;
    private final URL url;
    private final byte[] zzamv;
    private final zzav zzamw;
    private final Map<String, String> zzamx;
    private final /* synthetic */ zzat zzamy;

    public zzax(zzat zzatVar, String str, URL url, byte[] bArr, Map<String, String> map, zzav zzavVar) {
        this.zzamy = zzatVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzavVar);
        this.url = url;
        this.zzamv = bArr;
        this.zzamw = zzavVar;
        this.packageName = str;
        this.zzamx = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0169 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzax.run():void");
    }
}
