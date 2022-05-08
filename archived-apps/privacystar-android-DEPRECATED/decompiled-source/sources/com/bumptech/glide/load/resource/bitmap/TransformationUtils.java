package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/TransformationUtils.class */
public final class TransformationUtils {
    private static final Lock BITMAP_DRAWABLE_LOCK;
    private static final Paint CIRCLE_CROP_BITMAP_PAINT;
    private static final int CIRCLE_CROP_PAINT_FLAGS = 7;
    public static final int PAINT_FLAGS = 6;
    private static final String TAG = "TransformationUtils";
    private static final Paint DEFAULT_PAINT = new Paint(6);
    private static final Paint CIRCLE_CROP_SHAPE_PAINT = new Paint(7);
    private static final Set<String> MODELS_REQUIRING_BITMAP_LOCK = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/TransformationUtils$NoLock.class */
    private static final class NoLock implements Lock {
        NoLock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    static {
        BITMAP_DRAWABLE_LOCK = MODELS_REQUIRING_BITMAP_LOCK.contains(Build.MODEL) ? new ReentrantLock() : new NoLock();
        CIRCLE_CROP_BITMAP_PAINT = new Paint(7);
        CIRCLE_CROP_BITMAP_PAINT.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private TransformationUtils() {
    }

    private static void applyMatrix(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        BITMAP_DRAWABLE_LOCK.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, DEFAULT_PAINT);
            clear(canvas);
            BITMAP_DRAWABLE_LOCK.unlock();
        } catch (Throwable th) {
            BITMAP_DRAWABLE_LOCK.unlock();
            throw th;
        }
    }

    public static Bitmap centerCrop(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        float f;
        float f2;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f3 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            f2 = i2 / bitmap.getHeight();
            f = (i - (bitmap.getWidth() * f2)) * 0.5f;
        } else {
            f2 = i / bitmap.getWidth();
            f3 = (i2 - (bitmap.getHeight() * f2)) * 0.5f;
            f = 0.0f;
        }
        matrix.setScale(f2, f2);
        matrix.postTranslate((int) (f + 0.5f), (int) (f3 + 0.5f));
        Bitmap bitmap2 = bitmapPool.get(i, i2, getNonNullConfig(bitmap));
        setAlpha(bitmap, bitmap2);
        applyMatrix(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    public static Bitmap centerInside(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "requested target size too big for input, fit centering instead");
            }
            return fitCenter(bitmapPool, bitmap, i, i2);
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "requested target size larger or equal to input, returning input");
        }
        return bitmap;
    }

    public static Bitmap circleCrop(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        int min = Math.min(i, i2);
        float f = min;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float f3 = f / width;
        float height = bitmap.getHeight();
        float max = Math.max(f3, f / height);
        float f4 = width * max;
        float f5 = max * height;
        float f6 = (f - f4) / 2.0f;
        float f7 = (f - f5) / 2.0f;
        RectF rectF = new RectF(f6, f7, f4 + f6, f5 + f7);
        Bitmap alphaSafeBitmap = getAlphaSafeBitmap(bitmapPool, bitmap);
        Bitmap bitmap2 = bitmapPool.get(min, min, getAlphaSafeConfig(bitmap));
        bitmap2.setHasAlpha(true);
        BITMAP_DRAWABLE_LOCK.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawCircle(f2, f2, f2, CIRCLE_CROP_SHAPE_PAINT);
            canvas.drawBitmap(alphaSafeBitmap, (Rect) null, rectF, CIRCLE_CROP_BITMAP_PAINT);
            clear(canvas);
            BITMAP_DRAWABLE_LOCK.unlock();
            if (!alphaSafeBitmap.equals(bitmap)) {
                bitmapPool.put(alphaSafeBitmap);
            }
            return bitmap2;
        } catch (Throwable th) {
            BITMAP_DRAWABLE_LOCK.unlock();
            throw th;
        }
    }

    private static void clear(Canvas canvas) {
        canvas.setBitmap(null);
    }

    public static Bitmap fitCenter(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "requested target size matches input, returning input");
            }
            return bitmap;
        }
        float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int round = Math.round(bitmap.getWidth() * min);
        int round2 = Math.round(bitmap.getHeight() * min);
        if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "adjusted target size matches input, returning input");
            }
            return bitmap;
        }
        Bitmap bitmap2 = bitmapPool.get((int) (bitmap.getWidth() * min), (int) (bitmap.getHeight() * min), getNonNullConfig(bitmap));
        setAlpha(bitmap, bitmap2);
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "request: " + i + "x" + i2);
            Log.v(TAG, "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
            Log.v(TAG, "toReuse: " + bitmap2.getWidth() + "x" + bitmap2.getHeight());
            StringBuilder sb = new StringBuilder();
            sb.append("minPct:   ");
            sb.append(min);
            Log.v(TAG, sb.toString());
        }
        Matrix matrix = new Matrix();
        matrix.setScale(min, min);
        applyMatrix(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    private static Bitmap getAlphaSafeBitmap(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap) {
        Bitmap.Config alphaSafeConfig = getAlphaSafeConfig(bitmap);
        if (alphaSafeConfig.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap bitmap2 = bitmapPool.get(bitmap.getWidth(), bitmap.getHeight(), alphaSafeConfig);
        new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return bitmap2;
    }

    @NonNull
    private static Bitmap.Config getAlphaSafeConfig(@NonNull Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    public static Lock getBitmapDrawableLock() {
        return BITMAP_DRAWABLE_LOCK;
    }

    public static int getExifOrientationDegrees(int i) {
        int i2;
        switch (i) {
            case 3:
            case 4:
                i2 = 180;
                break;
            case 5:
            case 6:
                i2 = 90;
                break;
            case 7:
            case 8:
                i2 = 270;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    @NonNull
    private static Bitmap.Config getNonNullConfig(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    static void initializeMatrixForRotation(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                return;
            case 3:
                matrix.setRotate(180.0f);
                return;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 6:
                matrix.setRotate(90.0f);
                return;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                return;
            case 8:
                matrix.setRotate(-90.0f);
                return;
            default:
                return;
        }
    }

    public static boolean isExifOrientationRequired(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static Bitmap rotateImage(@NonNull Bitmap bitmap, int i) {
        Bitmap bitmap2 = bitmap;
        if (i != 0) {
            try {
                Matrix matrix = new Matrix();
                matrix.setRotate(i);
                bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            } catch (Exception e) {
                bitmap2 = bitmap;
                if (Log.isLoggable(TAG, 6)) {
                    Log.e(TAG, "Exception when trying to orient image", e);
                    bitmap2 = bitmap;
                }
            }
        }
        return bitmap2;
    }

    public static Bitmap rotateImageExif(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i) {
        if (!isExifOrientationRequired(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        initializeMatrixForRotation(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap bitmap2 = bitmapPool.get(Math.round(rectF.width()), Math.round(rectF.height()), getNonNullConfig(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        applyMatrix(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    public static Bitmap roundedCorners(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i) {
        Preconditions.checkArgument(i > 0, "roundingRadius must be greater than 0.");
        Bitmap.Config alphaSafeConfig = getAlphaSafeConfig(bitmap);
        Bitmap alphaSafeBitmap = getAlphaSafeBitmap(bitmapPool, bitmap);
        Bitmap bitmap2 = bitmapPool.get(alphaSafeBitmap.getWidth(), alphaSafeBitmap.getHeight(), alphaSafeConfig);
        bitmap2.setHasAlpha(true);
        BitmapShader bitmapShader = new BitmapShader(alphaSafeBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap2.getWidth(), bitmap2.getHeight());
        BITMAP_DRAWABLE_LOCK.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f = i;
            canvas.drawRoundRect(rectF, f, f, paint);
            clear(canvas);
            BITMAP_DRAWABLE_LOCK.unlock();
            if (!alphaSafeBitmap.equals(bitmap)) {
                bitmapPool.put(alphaSafeBitmap);
            }
            return bitmap2;
        } catch (Throwable th) {
            BITMAP_DRAWABLE_LOCK.unlock();
            throw th;
        }
    }

    @Deprecated
    public static Bitmap roundedCorners(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2, int i3) {
        return roundedCorners(bitmapPool, bitmap, i3);
    }

    public static void setAlpha(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }
}
