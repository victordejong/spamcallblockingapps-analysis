package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeoe.class */
public abstract class zzeoe implements zzbp {

    /* renamed from: h */
    public static zzeoq f28101h = zzeoq.m12204a(zzeoe.class);

    /* renamed from: a */
    public String f28102a;

    /* renamed from: d */
    public ByteBuffer f28105d;

    /* renamed from: e */
    public long f28106e;

    /* renamed from: g */
    public zzeok f28108g;

    /* renamed from: f */
    public long f28107f = -1;

    /* renamed from: c */
    public boolean f28104c = true;

    /* renamed from: b */
    public boolean f28103b = true;

    public zzeoe(String str) {
        this.f28102a = str;
    }

    /* renamed from: a */
    public final void m12218a() {
        synchronized (this) {
            if (!this.f28104c) {
                try {
                    zzeoq zzeoqVar = f28101h;
                    String valueOf = String.valueOf(this.f28102a);
                    zzeoqVar.mo12203a(valueOf.length() != 0 ? "mem mapping ".concat(valueOf) : new String("mem mapping "));
                    this.f28105d = this.f28108g.mo12208a(this.f28106e, this.f28107f);
                    this.f28104c = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    /* renamed from: a */
    public final void mo12213a(zzbs zzbsVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    /* renamed from: a */
    public final void mo12212a(zzeok zzeokVar, ByteBuffer byteBuffer, long j, zzbo zzboVar) throws IOException {
        this.f28106e = zzeokVar.position();
        byteBuffer.remaining();
        this.f28107f = j;
        this.f28108g = zzeokVar;
        zzeokVar.mo12207b(zzeokVar.position() + j);
        this.f28104c = false;
        this.f28103b = false;
        m12216b();
    }

    /* renamed from: a */
    public abstract void mo12217a(ByteBuffer byteBuffer);

    /* renamed from: b */
    public final void m12216b() {
        synchronized (this) {
            m12218a();
            zzeoq zzeoqVar = f28101h;
            String valueOf = String.valueOf(this.f28102a);
            zzeoqVar.mo12203a(valueOf.length() != 0 ? "parsing details of ".concat(valueOf) : new String("parsing details of "));
            if (this.f28105d != null) {
                ByteBuffer byteBuffer = this.f28105d;
                this.f28103b = true;
                byteBuffer.rewind();
                mo12217a(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.f28105d = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbp
    public final String getType() {
        return this.f28102a;
    }
}
