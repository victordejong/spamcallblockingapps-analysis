package com.google.android.gms.internal.icing;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbt.class */
public final class zzbt extends zzbr {
    private final byte[] buffer;
    private int limit;
    private int pos;
    private final boolean zzec;
    private int zzed;
    private int zzee;
    private int zzef;

    private zzbt(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzef = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i2 + i;
        this.pos = i;
        this.zzee = this.pos;
        this.zzec = z;
    }

    @Override // com.google.android.gms.internal.icing.zzbr
    public final int zzaa() {
        return this.pos - this.zzee;
    }

    @Override // com.google.android.gms.internal.icing.zzbr
    public final int zzk(int i) throws zzcs {
        if (i < 0) {
            throw new zzcs("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        int zzaa = i + zzaa();
        int i2 = this.zzef;
        if (zzaa > i2) {
            throw new zzcs("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        this.zzef = zzaa;
        this.limit += this.zzed;
        int i3 = this.limit - this.zzee;
        if (i3 > this.zzef) {
            this.zzed = i3 - this.zzef;
            this.limit -= this.zzed;
            return i2;
        }
        this.zzed = 0;
        return i2;
    }
}
