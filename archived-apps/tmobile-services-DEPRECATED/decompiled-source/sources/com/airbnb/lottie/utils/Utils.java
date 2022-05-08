package com.airbnb.lottie.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Build;
import android.provider.Settings;
import androidx.annotation.Nullable;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/utils/Utils.class */
public final class Utils {

    /* renamed from: a */
    private static final ThreadLocal<PathMeasure> f6400a = new ThreadLocal<PathMeasure>() { // from class: com.airbnb.lottie.utils.Utils.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    };

    /* renamed from: b */
    private static final ThreadLocal<Path> f6401b = new ThreadLocal<Path>() { // from class: com.airbnb.lottie.utils.Utils.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Path initialValue() {
            return new Path();
        }
    };

    /* renamed from: c */
    private static final ThreadLocal<Path> f6402c = new ThreadLocal<Path>() { // from class: com.airbnb.lottie.utils.Utils.3
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Path initialValue() {
            return new Path();
        }
    };

    /* renamed from: d */
    private static final ThreadLocal<float[]> f6403d = new ThreadLocal<float[]>() { // from class: com.airbnb.lottie.utils.Utils.4
        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public float[] initialValue() {
            return new float[4];
        }
    };

    /* renamed from: e */
    private static final float f6404e = (float) (Math.sqrt(2.0d) / 2.0d);

    /* renamed from: f */
    private static float f6405f = -1.0f;

    private Utils() {
    }

    /* renamed from: a */
    public static void m15697a(Path path, float f, float f2, float f3) {
        C0611L.m16372a("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = f6400a.get();
        Path path2 = f6401b.get();
        Path path3 = f6402c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f == 1.0f && f2 == 0.0f) {
            C0611L.m16371b("applyTrimPathIfNeeded");
        } else if (length < 1.0f || Math.abs((f2 - f) - 1.0f) < 0.01d) {
            C0611L.m16371b("applyTrimPathIfNeeded");
        } else {
            float f4 = f * length;
            float f5 = f2 * length;
            float min = Math.min(f4, f5);
            float max = Math.max(f4, f5);
            float f6 = f3 * length;
            float f7 = min + f6;
            float f8 = max + f6;
            float f9 = f7;
            float f10 = f8;
            if (f7 >= length) {
                f9 = f7;
                f10 = f8;
                if (f8 >= length) {
                    f9 = MiscUtils.m15704g(f7, length);
                    f10 = MiscUtils.m15704g(f8, length);
                }
            }
            float f11 = f9;
            if (f9 < 0.0f) {
                f11 = MiscUtils.m15704g(f9, length);
            }
            float f12 = f10;
            if (f10 < 0.0f) {
                f12 = MiscUtils.m15704g(f10, length);
            }
            int i = (f11 > f12 ? 1 : (f11 == f12 ? 0 : -1));
            if (i == 0) {
                path.reset();
                C0611L.m16371b("applyTrimPathIfNeeded");
                return;
            }
            float f13 = f11;
            if (i >= 0) {
                f13 = f11 - length;
            }
            path2.reset();
            pathMeasure.getSegment(f13, f12, path2, true);
            if (f12 > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, f12 % length, path3, true);
                path2.addPath(path3);
            } else if (f13 < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(f13 + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            C0611L.m16371b("applyTrimPathIfNeeded");
        }
    }

    /* renamed from: b */
    public static void m15696b(Path path, @Nullable TrimPathContent trimPathContent) {
        if (trimPathContent != null && !trimPathContent.m16162j()) {
            m15697a(path, ((FloatKeyframeAnimation) trimPathContent.m16164h()).m16143o() / 100.0f, ((FloatKeyframeAnimation) trimPathContent.m16166e()).m16143o() / 100.0f, ((FloatKeyframeAnimation) trimPathContent.m16165g()).m16143o() / 360.0f);
        }
    }

    /* renamed from: c */
    public static void m15695c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: d */
    public static Path m15694d(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f = pointF.x;
            float f2 = pointF3.x;
            float f3 = pointF.y;
            float f4 = pointF3.y;
            float f5 = pointF2.x;
            float f6 = pointF4.x;
            float f7 = pointF2.y;
            path.cubicTo(f2 + f, f3 + f4, f5 + f6, f7 + pointF4.y, f5, f7);
        }
        return path;
    }

    /* renamed from: e */
    public static float m15693e() {
        if (f6405f == -1.0f) {
            f6405f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f6405f;
    }

    /* renamed from: f */
    public static float m15692f(Context context) {
        return Build.VERSION.SDK_INT >= 17 ? Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f) : Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    /* renamed from: g */
    public static float m15691g(Matrix matrix) {
        float[] fArr = f6403d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f = f6404e;
        fArr[2] = f;
        fArr[3] = f;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    /* renamed from: h */
    public static boolean m15690h(Matrix matrix) {
        float[] fArr = f6403d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    /* renamed from: i */
    public static int m15689i(float f, float f2, float f3, float f4) {
        int i = f != 0.0f ? (int) (527 * f) : 17;
        int i2 = i;
        if (f2 != 0.0f) {
            i2 = (int) (i * 31 * f2);
        }
        int i3 = i2;
        if (f3 != 0.0f) {
            i3 = (int) (i2 * 31 * f3);
        }
        int i4 = i3;
        if (f4 != 0.0f) {
            i4 = (int) (i3 * 31 * f4);
        }
        return i4;
    }

    /* renamed from: j */
    public static boolean m15688j(int i, int i2, int i3, int i4, int i5, int i6) {
        boolean z = false;
        if (i < i4) {
            return false;
        }
        if (i > i4) {
            return true;
        }
        if (i2 < i5) {
            return false;
        }
        if (i2 > i5) {
            return true;
        }
        if (i3 >= i6) {
            z = true;
        }
        return z;
    }

    /* renamed from: k */
    public static boolean m15687k(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    /* renamed from: l */
    public static Bitmap m15686l(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    /* renamed from: m */
    public static void m15685m(Canvas canvas, RectF rectF, Paint paint) {
        m15684n(canvas, rectF, paint, 31);
    }

    /* renamed from: n */
    public static void m15684n(Canvas canvas, RectF rectF, Paint paint, int i) {
        C0611L.m16372a("Utils#saveLayer");
        if (Build.VERSION.SDK_INT < 23) {
            canvas.saveLayer(rectF, paint, i);
        } else {
            canvas.saveLayer(rectF, paint);
        }
        C0611L.m16371b("Utils#saveLayer");
    }
}
