package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.f0;
import com.google.android.gms.internal.firebase-auth-api.zzaak;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/zzaal.class */
public class zzaal extends IOException {

    /* renamed from: f */
    private f0 f3862f;

    public zzaal(String str) {
        super(str);
    }

    /* renamed from: b */
    public static com.google.android.gms.internal.firebase-auth-api.zzaal m2272b() {
        return new zzaal("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: c */
    public static com.google.android.gms.internal.firebase-auth-api.zzaal m2271c() {
        return new zzaal("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: d */
    static com.google.android.gms.internal.firebase-auth-api.zzaal m2270d() {
        return new zzaal("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: e */
    public static com.google.android.gms.internal.firebase-auth-api.zzaal m2269e() {
        return new zzaal("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: f */
    public static com.google.android.gms.internal.firebase-auth-api.zzaal m2268f() {
        return new zzaal("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: g */
    public static zzaak m2267g() {
        return new zzaak("Protocol message tag had invalid wire type.");
    }

    /* renamed from: h */
    public static com.google.android.gms.internal.firebase-auth-api.zzaal m2266h() {
        return new zzaal("Failed to parse the message.");
    }

    /* renamed from: i */
    public static com.google.android.gms.internal.firebase-auth-api.zzaal m2265i() {
        return new zzaal("Protocol message had invalid UTF-8.");
    }

    /* renamed from: a */
    public final com.google.android.gms.internal.firebase-auth-api.zzaal m2273a(f0 f0Var) {
        this.f3862f = f0Var;
        return this;
    }
}
