package androidx.p046f.p047a.p048a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.content.p033a.C0645i;
import androidx.core.graphics.C0753b;
import com.google.android.gms.gass.AdShield2Logger;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.f.a.a.h  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a/h.class */
public final class animationInterpolatorC0848h implements Interpolator {

    /* renamed from: a */
    private float[] f3458a;

    /* renamed from: b */
    private float[] f3459b;

    public animationInterpolatorC0848h(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private animationInterpolatorC0848h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        Path path;
        TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3442l);
        if (C0645i.m8626a(xmlPullParser, "pathData")) {
            String c = C0645i.m8622c(a, xmlPullParser, "pathData", 4);
            Path a2 = C0753b.m8280a(c);
            if (a2 != null) {
                m7931a(a2);
            } else {
                throw new InflateException("The path is null, which is created from ".concat(String.valueOf(c)));
            }
        } else if (!C0645i.m8626a(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        } else if (C0645i.m8626a(xmlPullParser, "controlY1")) {
            float a3 = C0645i.m8629a(a, xmlPullParser, "controlX1", 0, 0.0f);
            float a4 = C0645i.m8629a(a, xmlPullParser, "controlY1", 1, 0.0f);
            boolean a5 = C0645i.m8626a(xmlPullParser, "controlX2");
            if (a5 == C0645i.m8626a(xmlPullParser, "controlY2")) {
                if (!a5) {
                    path = new Path();
                    path.moveTo(0.0f, 0.0f);
                    path.quadTo(a3, a4, 1.0f, 1.0f);
                } else {
                    float a6 = C0645i.m8629a(a, xmlPullParser, "controlX2", 2, 0.0f);
                    float a7 = C0645i.m8629a(a, xmlPullParser, "controlY2", 3, 0.0f);
                    path = new Path();
                    path.moveTo(0.0f, 0.0f);
                    path.cubicTo(a3, a4, a6, a7, 1.0f, 1.0f);
                }
                m7931a(path);
            } else {
                throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
        } else {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        a.recycle();
    }

    /* renamed from: a */
    private void m7931a(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int min = Math.min((int) AdShield2Logger.EVENTID_LATENCY_INIT_VM, ((int) (length / 0.002f)) + 1);
        if (min > 0) {
            this.f3458a = new float[min];
            this.f3459b = new float[min];
            float[] fArr = new float[2];
            for (int i2 = 0; i2 < min; i2++) {
                pathMeasure.getPosTan((i2 * length) / (min - 1), fArr, null);
                this.f3458a[i2] = fArr[0];
                this.f3459b[i2] = fArr[1];
            }
            if (Math.abs(this.f3458a[0]) <= 1.0E-5d && Math.abs(this.f3459b[0]) <= 1.0E-5d) {
                int i3 = min - 1;
                if (Math.abs(this.f3458a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f3459b[i3] - 1.0f) <= 1.0E-5d) {
                    float f = 0.0f;
                    int i4 = 0;
                    while (i < min) {
                        float[] fArr2 = this.f3458a;
                        float f2 = fArr2[i4];
                        if (f2 >= f) {
                            fArr2[i] = f2;
                            i++;
                            f = f2;
                            i4++;
                        } else {
                            throw new IllegalArgumentException("The Path cannot loop back on itself, x :".concat(String.valueOf(f2)));
                        }
                    }
                    if (pathMeasure.nextContour()) {
                        throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                    }
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("The Path must start at (0,0) and end at (1,1) start: ");
            sb.append(this.f3458a[0]);
            sb.append(",");
            sb.append(this.f3459b[0]);
            sb.append(" end:");
            int i5 = min - 1;
            sb.append(this.f3458a[i5]);
            sb.append(",");
            sb.append(this.f3459b[i5]);
            throw new IllegalArgumentException(sb.toString());
        }
        throw new IllegalArgumentException("The Path has a invalid length ".concat(String.valueOf(length)));
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.f3458a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f3458a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f3458a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == 0.0f) {
            return this.f3459b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f3459b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }
}
