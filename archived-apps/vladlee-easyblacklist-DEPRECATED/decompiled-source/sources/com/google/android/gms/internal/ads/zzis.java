package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzis.class */
public final class zzis extends zzip {
    public long zzamd;
    public ByteBuffer zzcs;
    public final zzio zzamc = new zzio();

    /* renamed from: a */
    private final int f14943a = 0;

    public zzis(int i) {
    }

    /* renamed from: b */
    private final ByteBuffer m3227b(int i) {
        ByteBuffer byteBuffer = this.zzcs;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        StringBuilder sb = new StringBuilder(44);
        sb.append("Buffer too small (");
        sb.append(capacity);
        sb.append(" < ");
        sb.append(i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzip
    public final void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.zzcs;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final boolean zzgd() {
        return m3228a(1073741824);
    }

    public final void zzy(int i) {
        ByteBuffer byteBuffer = this.zzcs;
        if (byteBuffer == null) {
            this.zzcs = m3227b(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.zzcs.position();
        int i2 = i + position;
        if (capacity < i2) {
            ByteBuffer b = m3227b(i2);
            if (position > 0) {
                this.zzcs.position(0);
                this.zzcs.limit(position);
                b.put(this.zzcs);
            }
            this.zzcs = b;
        }
    }
}
