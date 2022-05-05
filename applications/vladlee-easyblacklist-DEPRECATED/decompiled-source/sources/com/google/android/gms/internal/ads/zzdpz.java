package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdpz;
import com.google.android.gms.internal.ads.zzdqa;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpz.class */
public abstract class zzdpz<MessageType extends zzdqa<MessageType, BuilderType>, BuilderType extends zzdpz<MessageType, BuilderType>> implements zzdtd {
    /* renamed from: a */
    protected abstract BuilderType mo3358a(MessageType messagetype);

    public abstract BuilderType zza(zzdqw zzdqwVar, zzdrg zzdrgVar);

    public BuilderType zza(byte[] bArr, int i, int i2, zzdrg zzdrgVar) {
        try {
            zzdqw a = zzdqw.m3393a(bArr, 0, i2, false);
            zza(a, zzdrgVar);
            a.zzfh(0);
            return this;
        } catch (zzdse e) {
            throw e;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 60 + "byte array".length());
            sb.append("Reading ");
            sb.append(name);
            sb.append(" from a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    /* renamed from: zzaxj */
    public abstract BuilderType clone();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdtd
    public final /* synthetic */ zzdtd zzf(zzdte zzdteVar) {
        if (zzazz().getClass().isInstance(zzdteVar)) {
            return mo3358a((zzdqa) zzdteVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
