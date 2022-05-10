package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzby;
import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfo.class */
public final class zzfo extends zzgm {

    /* renamed from: j */
    public static final zzgl<zzcy> f28208j = new zzgl<>();

    /* renamed from: h */
    public final Context f28209h;

    /* renamed from: i */
    public zzby.zza f28210i;

    public zzfo(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2, Context context, zzby.zza zzaVar2) {
        super(zzexVar, str, str2, zzaVar, i, 27);
        this.f28210i = null;
        this.f28209h = context;
        this.f28210i = zzaVar2;
    }

    /* renamed from: a */
    public static String m12127a(zzby.zza zzaVar) {
        if (zzaVar == null || !zzaVar.m14953p() || zzfg.m12137b(zzaVar.m14956m().m14948m())) {
            return null;
        }
        return zzaVar.m14956m().m14948m();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[Catch: all -> 0x01ba, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0010, B:7:0x001e, B:9:0x0028, B:11:0x0034, B:18:0x0051, B:20:0x005e, B:21:0x0065, B:25:0x0078, B:27:0x007f, B:32:0x0095, B:34:0x00a0, B:36:0x00aa, B:37:0x00b1, B:39:0x00b6, B:41:0x00c4, B:45:0x00ce, B:47:0x0111, B:49:0x011e, B:49:0x011e, B:50:0x0121, B:55:0x0137, B:57:0x0143, B:58:0x014c, B:60:0x015c, B:62:0x0162, B:63:0x016a), top: B:85:0x0010 }] */
    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo12118a() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfo.mo12118a():void");
    }

    /* renamed from: c */
    public final String m12126c() {
        try {
            if (this.f28235a.m12151n() != null) {
                this.f28235a.m12151n().get();
            }
            zzcf.zza m = this.f28235a.m12152m();
            if (m == null || !m.m14560n()) {
                return null;
            }
            return m.m14563m();
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }
}
