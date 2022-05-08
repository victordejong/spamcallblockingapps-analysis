package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/f.class */
public abstract class f implements a<InputStream> {
    private static final Set<ImageHeaderParser.ImageType> d = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);
    private static final Queue<BitmapFactory.Options> e = h.a(0);

    /* renamed from: a  reason: collision with root package name */
    public static final f f3604a = new f() { // from class: com.bumptech.glide.load.resource.bitmap.f.1
        @Override // com.bumptech.glide.load.resource.bitmap.f
        protected final int a(int i, int i2, int i3, int i4) {
            return Math.min(i2 / i4, i / i3);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.a
        public final String a() {
            return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public static final f f3605b = new f() { // from class: com.bumptech.glide.load.resource.bitmap.f.2
        @Override // com.bumptech.glide.load.resource.bitmap.f
        protected final int a(int i, int i2, int i3, int i4) {
            int i5 = 1;
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int max = Math.max(1, Integer.highestOneBit(ceil));
            if (max >= ceil) {
                i5 = 0;
            }
            return max << i5;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.a
        public final String a() {
            return "AT_MOST.com.bumptech.glide.load.data.bitmap";
        }
    };
    public static final f c = new f() { // from class: com.bumptech.glide.load.resource.bitmap.f.3
        @Override // com.bumptech.glide.load.resource.bitmap.f
        protected final int a(int i, int i2, int i3, int i4) {
            return 0;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.a
        public final String a() {
            return "NONE.com.bumptech.glide.load.data.bitmap";
        }
    };

    private static Bitmap.Config a(InputStream inputStream, a aVar) {
        Bitmap.Config config;
        boolean z;
        if (aVar == a.ALWAYS_ARGB_8888 || aVar == a.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            config = Bitmap.Config.ARGB_8888;
        } else {
            inputStream.mark(1024);
            try {
                try {
                    boolean hasAlpha = new ImageHeaderParser(inputStream).a().hasAlpha();
                    try {
                        inputStream.reset();
                        z = hasAlpha;
                    } catch (IOException e2) {
                        z = hasAlpha;
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e2);
                            z = hasAlpha;
                        }
                    }
                } catch (IOException e3) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot determine whether the image has alpha or not from header for format " + aVar, e3);
                    }
                    try {
                        inputStream.reset();
                        z = false;
                    } catch (IOException e4) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e4);
                        }
                        z = false;
                    }
                }
                config = z ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            } catch (Throwable th) {
                try {
                    inputStream.reset();
                } catch (IOException e5) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot reset the input stream", e5);
                    }
                }
                throw th;
            }
        }
        return config;
    }

    private static Bitmap a(com.bumptech.glide.i.f fVar, n nVar, BitmapFactory.Options options) {
        if (options.inJustDecodeBounds) {
            fVar.mark(5242880);
        } else {
            nVar.a();
        }
        Bitmap decodeStream = BitmapFactory.decodeStream(fVar, null, options);
        try {
            if (options.inJustDecodeBounds) {
                fVar.reset();
            }
        } catch (IOException e2) {
            if (Log.isLoggable("Downsampler", 6)) {
                Log.e("Downsampler", "Exception loading inDecodeBounds=" + options.inJustDecodeBounds + " sample=" + options.inSampleSize, e2);
            }
        }
        return decodeStream;
    }

    private static void a(BitmapFactory.Options options) {
        b(options);
        synchronized (e) {
            e.offer(options);
        }
    }

    private static boolean a(InputStream inputStream) {
        boolean z;
        if (19 <= Build.VERSION.SDK_INT) {
            z = true;
        } else {
            inputStream.mark(1024);
            try {
                try {
                    boolean contains = d.contains(new ImageHeaderParser(inputStream).a());
                    try {
                        inputStream.reset();
                        z = contains;
                    } catch (IOException e2) {
                        z = contains;
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e2);
                            z = contains;
                        }
                    }
                } catch (Throwable th) {
                    try {
                        inputStream.reset();
                    } catch (IOException e3) {
                        if (Log.isLoggable("Downsampler", 5)) {
                            Log.w("Downsampler", "Cannot reset the input stream", e3);
                        }
                    }
                    throw th;
                }
            } catch (IOException e4) {
                if (Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Cannot determine the image type from header", e4);
                }
                try {
                    inputStream.reset();
                } catch (IOException e5) {
                    if (Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Cannot reset the input stream", e5);
                    }
                }
                z = false;
            }
        }
        return z;
    }

    @TargetApi(11)
    private static BitmapFactory.Options b() {
        BitmapFactory.Options poll;
        BitmapFactory.Options options;
        synchronized (f.class) {
            try {
                synchronized (e) {
                    poll = e.poll();
                }
                options = poll;
                if (poll == null) {
                    options = new BitmapFactory.Options();
                    b(options);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return options;
    }

    @TargetApi(11)
    private static void b(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        if (11 <= Build.VERSION.SDK_INT) {
            options.inBitmap = null;
            options.inMutable = true;
        }
    }

    protected abstract int a(int i, int i2, int i3, int i4);

    /* JADX WARN: Can't wrap try/catch for region: R(32:168|3|162|4|5|(7:(4:7|8|9|(5:171|11|(1:13)|14|15)(3:74|75|(2:173|77)(2:78|(5:169|80|(1:82)|83|84)(3:85|86|(3:88|89|(5:170|91|(1:93)|94|95))(4:172|96|97|(4:99|(1:101)|102|103)(0))))))|16|(1:104)(2:20|21)|22|(2:24|(3:25|26|(1:175)(2:28|(3:174|30|31)(1:105))))(0)|32|(21:34|35|166|36|37|38|39|40|42|(1:44)|45|(1:47)|48|(1:52)(1:128)|53|(1:55)(1:129)|56|(2:63|(1:65))|66|67|(2:69|70)(4:130|(7:132|133|134|(2:136|137)(5:156|157|(1:159)|160|161)|138|139|(4:141|142|143|(2:145|146)))|147|148)))|106|35|166|36|37|38|39|40|42|(0)|45|(0)|48|(1:50)|52|53|(0)(0)|56|(1:58)|60|61|63|(0)|66|67|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0333, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x033a, code lost:
        if (android.util.Log.isLoggable("Downsampler", 5) != false) goto L_0x033d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x033d, code lost:
        android.util.Log.w("Downsampler", "Cannot reset the input stream", r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03c6 A[Catch: all -> 0x0208, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x0208, blocks: (B:3:0x0036, B:4:0x003d, B:36:0x00e2, B:38:0x00e7, B:52:0x0178, B:56:0x018b, B:58:0x01ae, B:61:0x01b8, B:63:0x01be, B:65:0x01e2, B:67:0x01ea, B:69:0x01fd, B:70:0x0207, B:108:0x0334, B:110:0x033d, B:117:0x035f, B:120:0x0369, B:122:0x0372, B:128:0x03b6, B:129:0x03c6, B:132:0x03d6, B:134:0x040c, B:139:0x041a, B:143:0x0426, B:145:0x0431, B:149:0x0456, B:150:0x0462, B:151:0x046d, B:152:0x0482, B:153:0x0497, B:154:0x04a2, B:155:0x04b7, B:156:0x04c2, B:159:0x0511, B:161:0x051c, B:5:0x0040, B:8:0x0059, B:11:0x0069, B:13:0x0073, B:18:0x0094, B:26:0x00b0, B:28:0x00b9, B:34:0x00ce, B:74:0x0225, B:80:0x0244, B:82:0x024e, B:85:0x025d, B:88:0x0271, B:91:0x0287, B:93:0x0291, B:96:0x02c7, B:99:0x02de, B:101:0x02e8, B:113:0x034a, B:115:0x0353), top: B:168:0x0036, inners: #0, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01e2 A[Catch: all -> 0x0208, TryCatch #5 {all -> 0x0208, blocks: (B:3:0x0036, B:4:0x003d, B:36:0x00e2, B:38:0x00e7, B:52:0x0178, B:56:0x018b, B:58:0x01ae, B:61:0x01b8, B:63:0x01be, B:65:0x01e2, B:67:0x01ea, B:69:0x01fd, B:70:0x0207, B:108:0x0334, B:110:0x033d, B:117:0x035f, B:120:0x0369, B:122:0x0372, B:128:0x03b6, B:129:0x03c6, B:132:0x03d6, B:134:0x040c, B:139:0x041a, B:143:0x0426, B:145:0x0431, B:149:0x0456, B:150:0x0462, B:151:0x046d, B:152:0x0482, B:153:0x0497, B:154:0x04a2, B:155:0x04b7, B:156:0x04c2, B:159:0x0511, B:161:0x051c, B:5:0x0040, B:8:0x0059, B:11:0x0069, B:13:0x0073, B:18:0x0094, B:26:0x00b0, B:28:0x00b9, B:34:0x00ce, B:74:0x0225, B:80:0x0244, B:82:0x024e, B:85:0x025d, B:88:0x0271, B:91:0x0287, B:93:0x0291, B:96:0x02c7, B:99:0x02de, B:101:0x02e8, B:113:0x034a, B:115:0x0353), top: B:168:0x0036, inners: #0, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01fd A[Catch: all -> 0x0208, TRY_ENTER, TryCatch #5 {all -> 0x0208, blocks: (B:3:0x0036, B:4:0x003d, B:36:0x00e2, B:38:0x00e7, B:52:0x0178, B:56:0x018b, B:58:0x01ae, B:61:0x01b8, B:63:0x01be, B:65:0x01e2, B:67:0x01ea, B:69:0x01fd, B:70:0x0207, B:108:0x0334, B:110:0x033d, B:117:0x035f, B:120:0x0369, B:122:0x0372, B:128:0x03b6, B:129:0x03c6, B:132:0x03d6, B:134:0x040c, B:139:0x041a, B:143:0x0426, B:145:0x0431, B:149:0x0456, B:150:0x0462, B:151:0x046d, B:152:0x0482, B:153:0x0497, B:154:0x04a2, B:155:0x04b7, B:156:0x04c2, B:159:0x0511, B:161:0x051c, B:5:0x0040, B:8:0x0059, B:11:0x0069, B:13:0x0073, B:18:0x0094, B:26:0x00b0, B:28:0x00b9, B:34:0x00ce, B:74:0x0225, B:80:0x0244, B:82:0x024e, B:85:0x025d, B:88:0x0271, B:91:0x0287, B:93:0x0291, B:96:0x02c7, B:99:0x02de, B:101:0x02e8, B:113:0x034a, B:115:0x0353), top: B:168:0x0036, inners: #0, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap a(java.io.InputStream r8, com.bumptech.glide.load.b.a.c r9, int r10, int r11, com.bumptech.glide.load.a r12) {
        /*
            Method dump skipped, instructions count: 1361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.f.a(java.io.InputStream, com.bumptech.glide.load.b.a.c, int, int, com.bumptech.glide.load.a):android.graphics.Bitmap");
    }
}
