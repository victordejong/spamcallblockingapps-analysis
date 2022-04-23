package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abf.class */
class abf<E> extends zzdev<E> {

    /* renamed from: a */
    Object[] f7153a;

    /* renamed from: b */
    int f7154b = 0;

    /* renamed from: c */
    boolean f7155c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abf(int i) {
        abc.m5501a(i, "initialCapacity");
        this.f7153a = new Object[i];
    }

    /* renamed from: a */
    private final void m5498a(int i) {
        Object[] objArr = this.f7153a;
        if (objArr.length < i) {
            int length = objArr.length;
            if (i >= 0) {
                int i2 = length + (length >> 1) + 1;
                int i3 = i2;
                if (i2 < i) {
                    i3 = Integer.highestOneBit(i - 1) << 1;
                }
                int i4 = i3;
                if (i3 < 0) {
                    i4 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                }
                this.f7153a = Arrays.copyOf(objArr, i4);
                this.f7155c = false;
                return;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        } else if (this.f7155c) {
            this.f7153a = (Object[]) objArr.clone();
            this.f7155c = false;
        }
    }

    /* renamed from: zzad */
    public abf<E> zzae(E e) {
        zzdei.checkNotNull(e);
        m5498a(this.f7154b + 1);
        Object[] objArr = this.f7153a;
        int i = this.f7154b;
        this.f7154b = i + 1;
        objArr[i] = e;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdev
    public zzdev<E> zze(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            m5498a(this.f7154b + collection.size());
            if (collection instanceof zzdet) {
                this.f7154b = ((zzdet) collection).mo3592a(this.f7153a, this.f7154b);
                return this;
            }
        }
        super.zze(iterable);
        return this;
    }
}
