package com.google.firebase.iid;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzu.class */
public final class zzu implements Continuation<Bundle, String> {
    private final /* synthetic */ zzr zzbn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(zzr zzrVar) {
        this.zzbn = zzrVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ String then(@NonNull Task<Bundle> task) throws Exception {
        String zza;
        Bundle result = task.getResult(IOException.class);
        zzr zzrVar = this.zzbn;
        zza = zzr.zza(result);
        return zza;
    }
}
