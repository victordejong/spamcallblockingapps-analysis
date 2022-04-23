package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbr.class */
public final class zzbbr implements zznl {

    /* renamed from: a */
    private InputStream f11675a;

    /* renamed from: b */
    private boolean f11676b;

    /* renamed from: c */
    private final Context f11677c;

    /* renamed from: d */
    private final zznl f11678d;

    /* renamed from: e */
    private final zznz<zznl> f11679e;

    /* renamed from: f */
    private final zzbbq f11680f;

    /* renamed from: g */
    private Uri f11681g;

    public zzbbr(Context context, zznl zznlVar, zznz<zznl> zznzVar, zzbbq zzbbqVar) {
        this.f11677c = context;
        this.f11678d = zznlVar;
        this.f11679e = zznzVar;
        this.f11680f = zzbbqVar;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final void close() {
        if (this.f11676b) {
            this.f11676b = false;
            this.f11681g = null;
            InputStream inputStream = this.f11675a;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.f11675a = null;
            } else {
                this.f11678d.close();
            }
            zznz<zznl> zznzVar = this.f11679e;
            if (zznzVar != null) {
                zznzVar.zze(this);
                return;
            }
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final Uri getUri() {
        return this.f11681g;
    }

    @Override // com.google.android.gms.internal.ads.zznl
    public final int read(byte[] bArr, int i, int i2) {
        if (this.f11676b) {
            InputStream inputStream = this.f11675a;
            int read = inputStream != null ? inputStream.read(bArr, i, i2) : this.f11678d.read(bArr, i, i2);
            zznz<zznl> zznzVar = this.f11679e;
            if (zznzVar != null) {
                zznzVar.zzc(this, read);
            }
            return read;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x01d4  */
    @Override // com.google.android.gms.internal.ads.zznl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zznq r14) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbbr.zza(com.google.android.gms.internal.ads.zznq):long");
    }
}
