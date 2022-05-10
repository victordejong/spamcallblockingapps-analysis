package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.ads.ExtraHints;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduf.class */
public final class zzduf {

    /* renamed from: a */
    public final Context f27835a;

    /* renamed from: b */
    public final zzdtc f27836b;

    public zzduf(Context context, zzdtc zzdtcVar) {
        this.f27835a = context;
        this.f27836b = zzdtcVar;
    }

    /* renamed from: a */
    public final String m13164a() {
        HashSet hashSet = new HashSet(Arrays.asList("i686", "armv71"));
        String value = zzdwc.OS_ARCH.value();
        if (!TextUtils.isEmpty(value) && hashSet.contains(value)) {
            return value;
        }
        try {
            String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
            if (strArr != null) {
                if (strArr.length > 0) {
                    return strArr[0];
                }
            }
        } catch (IllegalAccessException e) {
            zzdtc zzdtcVar = this.f27836b;
            if (zzdtcVar != null) {
                zzdtcVar.m13221a(2024, 0L, e);
            }
        } catch (NoSuchFieldException e2) {
            zzdtc zzdtcVar2 = this.f27836b;
            if (zzdtcVar2 != null) {
                zzdtcVar2.m13221a(2024, 0L, e2);
            }
        }
        String str = Build.CPU_ABI;
        return str != null ? str : Build.CPU_ABI2;
    }

    /* renamed from: a */
    public final void m13163a(byte[] bArr) {
        if (this.f27836b != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("os.arch:");
            sb.append(zzdwc.OS_ARCH.value());
            sb.append(ExtraHints.KEYWORD_SEPARATOR);
            try {
                String[] strArr = (String[]) Build.class.getField("SUPPORTED_ABIS").get(null);
                if (strArr != null) {
                    sb.append("supported_abis:");
                    sb.append(Arrays.toString(strArr));
                    sb.append(ExtraHints.KEYWORD_SEPARATOR);
                }
            } catch (IllegalAccessException | NoSuchFieldException e) {
            }
            sb.append("CPU_ABI:");
            sb.append(Build.CPU_ABI);
            sb.append(ExtraHints.KEYWORD_SEPARATOR);
            sb.append("CPU_ABI2:");
            sb.append(Build.CPU_ABI2);
            sb.append(ExtraHints.KEYWORD_SEPARATOR);
            if (bArr != null) {
                sb.append("ELF:");
                sb.append(Arrays.toString(bArr));
                sb.append(ExtraHints.KEYWORD_SEPARATOR);
            }
            this.f27836b.m13218a(4007, sb.toString());
        }
    }

    /* renamed from: b */
    public final zzgo m13162b() {
        FileInputStream fileInputStream;
        byte[] bArr;
        File file = new File(new File(this.f27835a.getApplicationInfo().dataDir), "lib");
        if (!file.exists()) {
            return zzgo.UNSUPPORTED;
        }
        File[] listFiles = file.listFiles(new zzdxk(Pattern.compile(".*\\.so$", 2)));
        if (listFiles == null || listFiles.length == 0) {
            return zzgo.UNSUPPORTED;
        }
        try {
            fileInputStream = new FileInputStream(listFiles[0]);
            bArr = new byte[20];
        } catch (IOException e) {
        }
        if (fileInputStream.read(bArr) == 20) {
            byte[] bArr2 = new byte[2];
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            if (bArr[5] == 2) {
                m13163a(bArr);
                zzgo zzgoVar = zzgo.UNSUPPORTED;
                fileInputStream.close();
                return zzgoVar;
            }
            bArr2[0] = bArr[19];
            bArr2[1] = bArr[18];
            short s = ByteBuffer.wrap(bArr2).getShort();
            if (s == 3) {
                zzgo zzgoVar2 = zzgo.X86;
                fileInputStream.close();
                return zzgoVar2;
            } else if (s == 40) {
                zzgo zzgoVar3 = zzgo.ARM7;
                fileInputStream.close();
                return zzgoVar3;
            } else if (s == 62) {
                zzgo zzgoVar4 = zzgo.X86_64;
                fileInputStream.close();
                return zzgoVar4;
            } else if (s != 183) {
                zzgo zzgoVar5 = zzgo.UNSUPPORTED;
                fileInputStream.close();
                return zzgoVar5;
            } else {
                zzgo zzgoVar6 = zzgo.ARM64;
                fileInputStream.close();
                return zzgoVar6;
            }
        } else {
            fileInputStream.close();
            return zzgo.UNSUPPORTED;
        }
    }

    /* renamed from: c */
    public final zzgo m13161c() {
        zzgo b = m13162b();
        zzgo zzgoVar = b;
        if (b == zzgo.UNSUPPORTED) {
            String a = m13164a();
            if (!TextUtils.isEmpty(a)) {
                if (a.equalsIgnoreCase("i686") || a.equalsIgnoreCase("x86")) {
                    return zzgo.X86;
                }
                if (a.equalsIgnoreCase("x86_64")) {
                    return zzgo.X86_64;
                }
                if (a.equalsIgnoreCase("arm64-v8a")) {
                    return zzgo.ARM64;
                }
                if (a.equalsIgnoreCase("armeabi-v7a") || a.equalsIgnoreCase("armv71")) {
                    return zzgo.ARM7;
                }
            }
            m13163a(null);
            zzgoVar = zzgo.UNSUPPORTED;
        }
        return zzgoVar;
    }
}
