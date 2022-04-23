package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdse.class */
public class zzdse extends IOException {

    /* renamed from: a */
    private zzdte f14570a = null;

    public zzdse(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdse m3347a() {
        return new zzdse("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static zzdse m3346b() {
        return new zzdse("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static zzdse m3345c() {
        return new zzdse("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static zzdse m3344d() {
        return new zzdse("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static zzdse m3343e() {
        return new zzdse("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static zzdsd m3342f() {
        return new zzdsd("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static zzdse m3341g() {
        return new zzdse("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static zzdse m3340h() {
        return new zzdse("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static zzdse m3339i() {
        return new zzdse("Protocol message had invalid UTF-8.");
    }

    public final zzdse zzl(zzdte zzdteVar) {
        this.f14570a = zzdteVar;
        return this;
    }
}
