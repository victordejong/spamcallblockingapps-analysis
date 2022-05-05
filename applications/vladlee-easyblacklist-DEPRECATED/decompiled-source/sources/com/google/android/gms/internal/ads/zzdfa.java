package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfa.class */
public final class zzdfa<E> extends abf<E> {
    @NullableDecl

    /* renamed from: d */
    private Object[] f14256d;

    /* renamed from: e */
    private int f14257e;

    public zzdfa() {
        super(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdfa(int i) {
        super(i);
        this.f14256d = new Object[zzdfb.m3587a(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdev
    public final /* synthetic */ zzdev zza(Iterator it) {
        zzdei.checkNotNull(it);
        while (it.hasNext()) {
            zzae(it.next());
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.abf
    public final /* synthetic */ abf zzad(Object obj) {
        return (zzdfa) zzae(obj);
    }

    @Override // com.google.android.gms.internal.ads.abf, com.google.android.gms.internal.ads.zzdev
    public final /* synthetic */ zzdev zzae(Object obj) {
        zzdei.checkNotNull(obj);
        if (this.f14256d != null) {
            int a = zzdfb.m3587a(this.f7154b);
            Object[] objArr = this.f14256d;
            if (a <= objArr.length) {
                int length = objArr.length;
                int hashCode = obj.hashCode();
                int a2 = abe.m5499a(hashCode);
                while (true) {
                    int i = a2 & (length - 1);
                    Object[] objArr2 = this.f14256d;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        a2 = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.f14257e += hashCode;
                        super.zzae(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.f14256d = null;
        super.zzae(obj);
        return this;
    }

    public final zzdfb<E> zzarh() {
        zzdfb<E> zzdfbVar;
        boolean b;
        int i = this.f7154b;
        if (i == 0) {
            return abp.f7177a;
        }
        if (i == 1) {
            return zzdfb.zzag(this.f7153a[0]);
        }
        if (this.f14256d == null || zzdfb.m3587a(this.f7154b) != this.f14256d.length) {
            zzdfbVar = zzdfb.m3583b(this.f7154b, this.f7153a);
            this.f7154b = zzdfbVar.size();
        } else {
            b = zzdfb.m3584b(this.f7154b, this.f7153a.length);
            Object[] copyOf = b ? Arrays.copyOf(this.f7153a, this.f7154b) : this.f7153a;
            int i2 = this.f14257e;
            Object[] objArr = this.f14256d;
            zzdfbVar = new abp<>(copyOf, i2, objArr, objArr.length - 1, this.f7154b);
        }
        this.f7155c = true;
        this.f14256d = null;
        return zzdfbVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.abf, com.google.android.gms.internal.ads.zzdev
    public final /* synthetic */ zzdev zze(Iterable iterable) {
        zzdei.checkNotNull(iterable);
        if (this.f14256d != null) {
            for (Object obj : iterable) {
                zzae(obj);
            }
        } else {
            super.zze(iterable);
        }
        return this;
    }
}
