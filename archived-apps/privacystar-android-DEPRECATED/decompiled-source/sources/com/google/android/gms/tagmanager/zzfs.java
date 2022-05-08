package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfs.class */
final class zzfs implements Handler.Callback {
    private final /* synthetic */ zzfr zzbga;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfs(zzfr zzfrVar) {
        this.zzbga = zzfrVar;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Object obj;
        boolean isPowerSaveMode;
        int i;
        if (1 != message.what) {
            return true;
        }
        obj = zzfn.zzbfn;
        if (!obj.equals(message.obj)) {
            return true;
        }
        this.zzbga.zzbfz.dispatch();
        isPowerSaveMode = this.zzbga.zzbfz.isPowerSaveMode();
        if (isPowerSaveMode) {
            return true;
        }
        zzfr zzfrVar = this.zzbga;
        i = this.zzbga.zzbfz.zzbfr;
        zzfrVar.zzh(i);
        return true;
    }
}
