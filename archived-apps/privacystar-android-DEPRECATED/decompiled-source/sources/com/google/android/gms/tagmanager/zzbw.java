package com.google.android.gms.tagmanager;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbw.class */
final class zzbw {
    private final long zzaax;
    private final long zzbbz;
    private final long zzbca;
    private String zzbcb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbw(long j, long j2, long j3) {
        this.zzbbz = j;
        this.zzaax = j2;
        this.zzbca = j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzdo(String str) {
        if (str != null && !TextUtils.isEmpty(str.trim())) {
            this.zzbcb = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzom() {
        return this.zzbbz;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long zzon() {
        return this.zzbca;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzoo() {
        return this.zzbcb;
    }
}
