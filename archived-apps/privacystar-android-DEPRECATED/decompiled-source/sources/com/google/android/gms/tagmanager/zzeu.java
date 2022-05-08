package com.google.android.gms.tagmanager;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzeu.class */
public final class zzeu implements zzev {
    private final /* synthetic */ zzes zzbem;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeu(zzes zzesVar) {
        this.zzbem = zzesVar;
    }

    @Override // com.google.android.gms.tagmanager.zzev
    public final zzer zza(zzal zzalVar) {
        Context context;
        String str;
        context = this.zzbem.zzri;
        str = this.zzbem.zzazf;
        return new zzer(context, str, zzalVar);
    }
}
