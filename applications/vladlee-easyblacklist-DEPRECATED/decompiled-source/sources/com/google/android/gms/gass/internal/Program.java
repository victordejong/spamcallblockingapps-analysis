package com.google.android.gms.gass.internal;

import com.google.android.gms.internal.ads.zzfz;
import java.io.File;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/internal/Program.class */
public class Program {
    public static final long PROGRAM_ALMOST_EXPIRED_TIME_SECS = 3600;

    /* renamed from: a */
    private final zzfz f7090a;

    /* renamed from: b */
    private final File f7091b;

    /* renamed from: c */
    private final File f7092c;

    /* renamed from: d */
    private final File f7093d;

    /* renamed from: e */
    private byte[] f7094e;

    /* renamed from: f */
    private byte[] f7095f;

    public Program(zzfz zzfzVar, File file, File file2, File file3) {
        this.f7090a = zzfzVar;
        this.f7091b = file;
        this.f7092c = file3;
        this.f7093d = file2;
    }

    public File getBytecodeFile() {
        return this.f7093d;
    }

    public byte[] getBytecodeFileContents() {
        if (this.f7095f == null) {
            this.f7095f = zzj.zze(this.f7093d);
        }
        byte[] bArr = this.f7095f;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public File getOptFile() {
        return this.f7092c;
    }

    public zzfz getProgramMetadata() {
        return this.f7090a;
    }

    public File getVmFile() {
        return this.f7091b;
    }

    public byte[] getVmFileContents() {
        if (this.f7094e == null) {
            this.f7094e = zzj.zze(this.f7091b);
        }
        byte[] bArr = this.f7094e;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }

    public boolean isAlmostExpired() {
        return isAlmostExpired(PROGRAM_ALMOST_EXPIRED_TIME_SECS);
    }

    public boolean isAlmostExpired(long j) {
        return this.f7090a.zzcz() - (System.currentTimeMillis() / 1000) < j;
    }

    public boolean isExpired() {
        return System.currentTimeMillis() / 1000 > this.f7090a.zzcz();
    }
}
