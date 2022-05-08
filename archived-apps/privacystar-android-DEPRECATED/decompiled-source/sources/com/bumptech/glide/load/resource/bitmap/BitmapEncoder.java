package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/BitmapEncoder.class */
public class BitmapEncoder implements ResourceEncoder<Bitmap> {
    private static final String TAG = "BitmapEncoder";
    @Nullable
    private final ArrayPool arrayPool;
    public static final Option<Integer> COMPRESSION_QUALITY = Option.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);
    public static final Option<Bitmap.CompressFormat> COMPRESSION_FORMAT = Option.memory("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    @Deprecated
    public BitmapEncoder() {
        this.arrayPool = null;
    }

    public BitmapEncoder(@NonNull ArrayPool arrayPool) {
        this.arrayPool = arrayPool;
    }

    private Bitmap.CompressFormat getFormat(Bitmap bitmap, Options options) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) options.get(COMPRESSION_FORMAT);
        return compressFormat != null ? compressFormat : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00ec A[Catch: all -> 0x0164, TryCatch #1 {all -> 0x0164, blocks: (B:3:0x002b, B:20:0x00a6, B:36:0x00e3, B:38:0x00ec, B:39:0x0152, B:44:0x015d, B:46:0x0163), top: B:54:0x002b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean encode(@android.support.annotation.NonNull com.bumptech.glide.load.engine.Resource<android.graphics.Bitmap> r6, @android.support.annotation.NonNull java.io.File r7, @android.support.annotation.NonNull com.bumptech.glide.load.Options r8) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.BitmapEncoder.encode(com.bumptech.glide.load.engine.Resource, java.io.File, com.bumptech.glide.load.Options):boolean");
    }

    @Override // com.bumptech.glide.load.ResourceEncoder
    @NonNull
    public EncodeStrategy getEncodeStrategy(@NonNull Options options) {
        return EncodeStrategy.TRANSFORMED;
    }
}
