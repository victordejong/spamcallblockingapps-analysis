package com.google.firebase.appindexing.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tasks.Task;
import com.google.firebase.appindexing.FirebaseAppIndex;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzi.class */
public final class zzi extends FirebaseAppIndex {
    private static String[] zzez = {"com.google.android.googlequicksearchbox", "com.google.android.gms"};
    @NonNull
    private final Context zzcs;
    @NonNull
    private final GoogleApi<?> zzfa;
    @VisibleForTesting
    private final zzk zzfb;

    public zzi(@NonNull Context context) {
        this(context, new zzh(context));
    }

    @VisibleForTesting
    private zzi(@NonNull Context context, @NonNull GoogleApi<Api.ApiOptions.NoOptions> googleApi) {
        this.zzfa = googleApi;
        this.zzcs = context;
        this.zzfb = new zzk(googleApi);
    }

    private final Task<Void> zza(@NonNull zzy zzyVar) {
        return this.zzfb.zzb(zzyVar);
    }

    @Override // com.google.firebase.appindexing.FirebaseAppIndex
    public final Task<Void> remove(String... strArr) {
        return zza(new zzy(3, null, strArr, null, null, null, null));
    }

    @Override // com.google.firebase.appindexing.FirebaseAppIndex
    public final Task<Void> removeAll() {
        return zza(new zzy(4, null, null, null, null, null, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00ea A[Catch: ArrayStoreException -> 0x0198, TRY_ENTER, TryCatch #0 {ArrayStoreException -> 0x0198, blocks: (B:5:0x0009, B:7:0x001a, B:9:0x0020, B:11:0x0026, B:15:0x0031, B:17:0x0036, B:19:0x0043, B:20:0x004f, B:22:0x0059, B:28:0x0071, B:30:0x007e, B:33:0x0090, B:37:0x00a3, B:42:0x00b1, B:44:0x00c0, B:47:0x00d3, B:51:0x00ea, B:63:0x010e, B:70:0x0138, B:72:0x0176, B:73:0x017e, B:68:0x0129), top: B:80:0x0009, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0184 A[ADDED_TO_REGION, SYNTHETIC] */
    @Override // com.google.firebase.appindexing.FirebaseAppIndex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.tasks.Task<java.lang.Void> update(com.google.firebase.appindexing.Indexable... r7) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.appindexing.internal.zzi.update(com.google.firebase.appindexing.Indexable[]):com.google.android.gms.tasks.Task");
    }
}
