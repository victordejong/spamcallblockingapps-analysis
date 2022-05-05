package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzio.class */
public final class zzio {

    /* renamed from: a */
    private byte[] f14934a;

    /* renamed from: b */
    private int f14935b;

    /* renamed from: c */
    private int f14936c;

    /* renamed from: d */
    private int f14937d;

    /* renamed from: e */
    private int f14938e;

    /* renamed from: f */
    private final MediaCodec.CryptoInfo f14939f;

    /* renamed from: g */
    private final ana f14940g;

    /* renamed from: iv */
    public byte[] f14941iv;
    public int[] numBytesOfClearData;
    public int[] numBytesOfEncryptedData;

    public zzio() {
        ana anaVar = null;
        this.f14939f = zzoq.SDK_INT >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f14940g = zzoq.SDK_INT >= 24 ? new ana(this.f14939f, (byte) 0) : anaVar;
    }

    public final void set(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2) {
        this.f14936c = i;
        this.numBytesOfClearData = iArr;
        this.numBytesOfEncryptedData = iArr2;
        this.f14934a = bArr;
        this.f14941iv = bArr2;
        this.f14935b = i2;
        this.f14937d = 0;
        this.f14938e = 0;
        if (zzoq.SDK_INT >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f14939f;
            cryptoInfo.numSubSamples = this.f14936c;
            cryptoInfo.numBytesOfClearData = this.numBytesOfClearData;
            cryptoInfo.numBytesOfEncryptedData = this.numBytesOfEncryptedData;
            cryptoInfo.key = this.f14934a;
            cryptoInfo.iv = this.f14941iv;
            cryptoInfo.mode = this.f14935b;
            if (zzoq.SDK_INT >= 24) {
                ana.m4873a(this.f14940g);
            }
        }
    }

    public final MediaCodec.CryptoInfo zzfz() {
        return this.f14939f;
    }
}
