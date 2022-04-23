package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajk.class */
final class ajk extends ahg {

    /* renamed from: a */
    private final ajm f7479a;

    /* renamed from: b */
    private zzdqp f7480b = m5190a();

    /* renamed from: c */
    private final /* synthetic */ ajh f7481c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajk(ajh ajhVar) {
        this.f7481c = ajhVar;
        this.f7479a = new ajm(this.f7481c, (byte) 0);
    }

    /* renamed from: a */
    private final zzdqp m5190a() {
        if (this.f7479a.hasNext()) {
            return (zzdqp) ((ahl) this.f7479a.next()).iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7480b != null;
    }

    @Override // com.google.android.gms.internal.ads.zzdqp
    public final byte nextByte() {
        zzdqp zzdqpVar = this.f7480b;
        if (zzdqpVar != null) {
            byte nextByte = zzdqpVar.nextByte();
            if (!this.f7480b.hasNext()) {
                this.f7480b = m5190a();
            }
            return nextByte;
        }
        throw new NoSuchElementException();
    }
}
