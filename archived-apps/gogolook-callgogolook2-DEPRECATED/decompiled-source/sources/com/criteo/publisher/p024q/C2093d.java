package com.criteo.publisher.p024q;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.AbstractC1966c;
import java.util.UUID;
/* renamed from: com.criteo.publisher.q.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/q/d.class */
public class C2093d {
    @NonNull

    /* renamed from: a */
    public final AbstractC1966c f2341a;

    public C2093d(@NonNull AbstractC1966c cVar) {
        this.f2341a = cVar;
    }

    /* renamed from: a */
    private byte m35706a(long j, int i) {
        int i2 = (64 - (i + 1)) << 2;
        return (byte) (((j & (15 << i2)) >> i2) & 15);
    }

    /* renamed from: a */
    private long m35705a(long j, int i, byte b) {
        int i2 = (64 - (i + 1)) << 2;
        return (j & ((15 << i2) ^ (-1))) | (b << i2);
    }

    @NonNull
    /* renamed from: a */
    public String m35707a() {
        return m35704a(UUID.randomUUID(), this.f2341a.mo35877a() / 1000);
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public String m35704a(@NonNull UUID uuid, long j) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        long a = m35705a(mostSignificantBits, 12, m35706a(mostSignificantBits, 0));
        return String.format("%016x%016x", Long.valueOf((j << 32) | (a & 4294967295L)), Long.valueOf(m35705a(leastSignificantBits, 0, m35706a(a, 1))));
    }
}
