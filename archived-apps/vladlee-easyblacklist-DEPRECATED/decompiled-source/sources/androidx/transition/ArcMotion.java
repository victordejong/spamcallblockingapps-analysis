package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ArcMotion.class */
public class ArcMotion extends PathMotion {

    /* renamed from: a */
    private static final float f5043a = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: b */
    private float f5044b;

    /* renamed from: c */
    private float f5045c;

    /* renamed from: d */
    private float f5046d;

    /* renamed from: e */
    private float f5047e;

    /* renamed from: f */
    private float f5048f;

    /* renamed from: g */
    private float f5049g;

    public ArcMotion() {
        this.f5044b = 0.0f;
        this.f5045c = 0.0f;
        this.f5046d = 70.0f;
        this.f5047e = 0.0f;
        this.f5048f = 0.0f;
        this.f5049g = f5043a;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5044b = 0.0f;
        this.f5045c = 0.0f;
        this.f5046d = 70.0f;
        this.f5047e = 0.0f;
        this.f5048f = 0.0f;
        this.f5049g = f5043a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5224j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        float a = C0645i.m8629a(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f);
        this.f5045c = a;
        this.f5048f = m6642a(a);
        float a2 = C0645i.m8629a(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f);
        this.f5044b = a2;
        this.f5047e = m6642a(a2);
        float a3 = C0645i.m8629a(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f);
        this.f5046d = a3;
        this.f5049g = m6642a(a3);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static float m6642a(float f) {
        if (f >= 0.0f && f <= 90.0f) {
            return (float) Math.tan(Math.toRadians(f / 2.0f));
        }
        throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public final Path mo6541a(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        Path path = new Path();
        path.moveTo(f, f2);
        float f8 = f3 - f;
        float f9 = f4 - f2;
        float f10 = (f8 * f8) + (f9 * f9);
        float f11 = (f + f3) / 2.0f;
        float f12 = (f2 + f4) / 2.0f;
        float f13 = 0.25f * f10;
        boolean z = f2 > f4;
        if (Math.abs(f8) < Math.abs(f9)) {
            float abs = Math.abs(f10 / (f9 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f5 = f3;
            } else {
                f6 = abs + f2;
                f5 = f;
            }
            f7 = this.f5048f;
        } else {
            float f14 = f10 / (f8 * 2.0f);
            if (z) {
                f6 = f2;
                f5 = f14 + f;
            } else {
                f5 = f3 - f14;
                f6 = f4;
            }
            f7 = this.f5047e;
        }
        float f15 = f13 * f7 * f7;
        float f16 = f11 - f5;
        float f17 = f12 - f6;
        float f18 = (f16 * f16) + (f17 * f17);
        float f19 = this.f5049g;
        float f20 = f19 * f13 * f19;
        if (f18 >= f15) {
            f15 = f18 > f20 ? f20 : 0.0f;
        }
        float f21 = f5;
        float f22 = f6;
        if (f15 != 0.0f) {
            float sqrt = (float) Math.sqrt(f15 / f18);
            f21 = ((f5 - f11) * sqrt) + f11;
            f22 = f12 + (sqrt * (f6 - f12));
        }
        path.cubicTo((f + f21) / 2.0f, (f2 + f22) / 2.0f, (f21 + f3) / 2.0f, (f22 + f4) / 2.0f, f3, f4);
        return path;
    }
}
