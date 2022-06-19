package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzic.class */
public class zzic extends IOException {
    public zzic(String str) {
        super(str);
    }

    /* renamed from: a */
    public static zzic m1807a() {
        return new zzic("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static zzic m1806b() {
        return new zzic("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static zzic m1805c() {
        return new zzic("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: d */
    public static zzib m1804d() {
        return new zzib("Protocol message tag had invalid wire type.");
    }

    /* renamed from: e */
    public static zzic m1803e() {
        return new zzic("Failed to parse the message.");
    }

    /* renamed from: f */
    public static zzic m1802f() {
        return new zzic("Protocol message had invalid UTF-8.");
    }
}
