package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzeie;
import com.google.android.gms.internal.ads.zzeif;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeie.class */
public abstract class zzeie<MessageType extends zzeif<MessageType, BuilderType>, BuilderType extends zzeie<MessageType, BuilderType>> implements zzelm {
    /* renamed from: a */
    public abstract BuilderType mo12387a(MessageType messagetype);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzelm
    /* renamed from: a */
    public final /* synthetic */ zzelm mo12341a(zzelj zzeljVar) {
        if (mo12344h().getClass().isInstance(zzeljVar)) {
            mo12387a((zzeie<MessageType, BuilderType>) ((zzeif) zzeljVar));
            return this;
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    /* renamed from: l */
    public abstract BuilderType clone();
}
