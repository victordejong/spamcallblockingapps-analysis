package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbo;
import com.google.android.gms.internal.ads.zzbs;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzex.class */
public final class zzex extends zzfw {

    /* renamed from: d */
    private static final zzfv<zzcl> f14762d = new zzfv<>();

    /* renamed from: e */
    private final Context f14763e;

    /* renamed from: f */
    private zzbo.zza f14764f;

    public zzex(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2, Context context, zzbo.zza zzaVar) {
        super(zzeiVar, str, str2, zzbVar, i, 27);
        this.f14764f = null;
        this.f14763e = context;
        this.f14764f = zzaVar;
    }

    /* renamed from: a */
    private static String m3273a(zzbo.zza zzaVar) {
        if (zzaVar == null || !zzaVar.zzy() || zzep.zzau(zzaVar.zzz().zzag())) {
            return null;
        }
        return zzaVar.zzz().zzag();
    }

    /* renamed from: b */
    private final String m3272b() {
        try {
            if (this.f14794a.zzcg() != null) {
                this.f14794a.zzcg().get();
            }
            zzbs.zza zzcf = this.f14794a.zzcf();
            if (zzcf == null || !zzcf.zzaj()) {
                return null;
            }
            return zzcf.zzag();
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0135, code lost:
        if (com.google.android.gms.internal.ads.zzep.zzau(r10) == false) goto L_0x0138;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[Catch: all -> 0x01ae, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0010, B:7:0x001e, B:9:0x0028, B:11:0x0034, B:18:0x0051, B:20:0x005e, B:21:0x0065, B:25:0x0078, B:27:0x007f, B:34:0x009a, B:36:0x00a4, B:37:0x00ab, B:39:0x00b0, B:41:0x00bc, B:45:0x00c4, B:47:0x0106, B:49:0x0113, B:49:0x0113, B:50:0x0116, B:55:0x012c, B:58:0x013a, B:59:0x0141, B:60:0x014f, B:62:0x0156, B:63:0x015e), top: B:85:0x0010 }] */
    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo3267a() {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzex.mo3267a():void");
    }
}
