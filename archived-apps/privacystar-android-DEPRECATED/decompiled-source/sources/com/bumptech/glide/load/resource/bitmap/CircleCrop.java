package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/CircleCrop.class */
public class CircleCrop extends BitmapTransformation {

    /* renamed from: ID */
    private static final String f105ID = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1";
    private static final byte[] ID_BYTES = f105ID.getBytes(CHARSET);
    private static final int VERSION = 1;

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        return obj instanceof CircleCrop;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return f105ID.hashCode();
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    protected Bitmap transform(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.circleCrop(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID_BYTES);
    }
}
