package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzij.class */
public class zzij extends IOException {
    public zzjj zza = null;

    public zzij(String str) {
        super(str);
    }

    public static zzij zza() {
        return new zzij("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzij zzb() {
        return new zzij("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzij zzc() {
        return new zzij("CodedInputStream encountered a malformed varint.");
    }

    public static zzij zzd() {
        return new zzij("Protocol message contained an invalid tag (zero).");
    }

    public static zzij zze() {
        return new zzij("Protocol message end-group tag did not match expected tag.");
    }

    public static zzii zzf() {
        return new zzii("Protocol message tag had invalid wire type.");
    }

    public static zzij zzg() {
        return new zzij("Failed to parse the message.");
    }

    public static zzij zzh() {
        return new zzij("Protocol message had invalid UTF-8.");
    }
}
