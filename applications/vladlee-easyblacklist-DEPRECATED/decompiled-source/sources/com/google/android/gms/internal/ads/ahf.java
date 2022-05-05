package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ahf.class */
public final class ahf extends ahg {

    /* renamed from: a */
    private int f7357a = 0;

    /* renamed from: b */
    private final int f7358b;

    /* renamed from: c */
    private final /* synthetic */ zzdqk f7359c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ahf(zzdqk zzdqkVar) {
        this.f7359c = zzdqkVar;
        this.f7358b = this.f7359c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7357a < this.f7358b;
    }

    @Override // com.google.android.gms.internal.ads.zzdqp
    public final byte nextByte() {
        int i = this.f7357a;
        if (i < this.f7358b) {
            this.f7357a = i + 1;
            return this.f7359c.mo3407a(i);
        }
        throw new NoSuchElementException();
    }
}
