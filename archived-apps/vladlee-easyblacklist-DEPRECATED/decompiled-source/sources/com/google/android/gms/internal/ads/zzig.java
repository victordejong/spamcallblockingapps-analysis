package com.google.android.gms.internal.ads;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.ads.AdRequest;
import java.nio.ByteBuffer;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzig.class */
public final class zzig {

    /* renamed from: a */
    private static final int[] f14911a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    private static final int[] f14912b = {-1, AbstractC0079b.MAX_BYTE_SIZE_PER_FILE, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    private static final int[] f14913c = {64, 112, 128, 192, 224, 256, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, CodedOutputStream.DEFAULT_BUFFER_SIZE, 6144, 7680};

    public static int zzj(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        return ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) << 5;
    }
}
