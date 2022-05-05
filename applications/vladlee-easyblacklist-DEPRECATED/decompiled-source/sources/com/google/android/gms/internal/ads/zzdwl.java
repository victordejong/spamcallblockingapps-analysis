package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwl.class */
public abstract class zzdwl implements zzbf {

    /* renamed from: b */
    private static zzdwy f14661b = zzdwy.zzn(zzdwl.class);

    /* renamed from: c */
    private String f14663c;

    /* renamed from: d */
    private zzbi f14664d;

    /* renamed from: f */
    private ByteBuffer f14666f;

    /* renamed from: g */
    private long f14667g;

    /* renamed from: h */
    private long f14668h;

    /* renamed from: j */
    private zzdws f14670j;

    /* renamed from: i */
    private long f14669i = -1;

    /* renamed from: k */
    private ByteBuffer f14671k = null;

    /* renamed from: e */
    private boolean f14665e = true;

    /* renamed from: a */
    boolean f14662a = true;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzdwl(String str) {
        this.f14663c = str;
    }

    /* renamed from: a */
    private final void m3299a() {
        synchronized (this) {
            if (!this.f14665e) {
                try {
                    zzdwy zzdwyVar = f14661b;
                    String valueOf = String.valueOf(this.f14663c);
                    zzdwyVar.zzhp(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                    this.f14666f = this.f14670j.zzh(this.f14667g, this.f14669i);
                    this.f14665e = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final String getType() {
        return this.f14663c;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final void zza(zzbi zzbiVar) {
        this.f14664d = zzbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbf
    public final void zza(zzdws zzdwsVar, ByteBuffer byteBuffer, long j, zzbe zzbeVar) {
        this.f14667g = zzdwsVar.position();
        this.f14668h = this.f14667g - byteBuffer.remaining();
        this.f14669i = j;
        this.f14670j = zzdwsVar;
        zzdwsVar.zzfc(zzdwsVar.position() + j);
        this.f14665e = false;
        this.f14662a = false;
        zzbdj();
    }

    public final void zzbdj() {
        synchronized (this) {
            m3299a();
            zzdwy zzdwyVar = f14661b;
            String valueOf = String.valueOf(this.f14663c);
            zzdwyVar.zzhp(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
            if (this.f14666f != null) {
                ByteBuffer byteBuffer = this.f14666f;
                this.f14662a = true;
                byteBuffer.rewind();
                zzg(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    this.f14671k = byteBuffer.slice();
                }
                this.f14666f = null;
            }
        }
    }

    protected abstract void zzg(ByteBuffer byteBuffer);
}
