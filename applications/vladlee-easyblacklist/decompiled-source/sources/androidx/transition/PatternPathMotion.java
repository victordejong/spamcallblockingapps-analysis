package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import androidx.core.content.p033a.C0645i;
import androidx.core.graphics.C0753b;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/PatternPathMotion.class */
public class PatternPathMotion extends PathMotion {

    /* renamed from: a */
    private Path f5100a;

    /* renamed from: b */
    private final Path f5101b;

    /* renamed from: c */
    private final Matrix f5102c;

    public PatternPathMotion() {
        this.f5101b = new Path();
        this.f5102c = new Matrix();
        this.f5101b.lineTo(1.0f, 0.0f);
        this.f5100a = this.f5101b;
    }

    public PatternPathMotion(Context context, AttributeSet attributeSet) {
        this.f5101b = new Path();
        this.f5102c = new Matrix();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5225k);
        try {
            String c = C0645i.m8622c(obtainStyledAttributes, (XmlPullParser) attributeSet, "patternPathData", 0);
            if (c != null) {
                Path a = C0753b.m8280a(c);
                PathMeasure pathMeasure = new PathMeasure(a, false);
                float length = pathMeasure.getLength();
                float[] fArr = new float[2];
                pathMeasure.getPosTan(length, fArr, null);
                float f = fArr[0];
                float f2 = fArr[1];
                pathMeasure.getPosTan(0.0f, fArr, null);
                float f3 = fArr[0];
                float f4 = fArr[1];
                if (f3 == f && f4 == f2) {
                    throw new IllegalArgumentException("pattern must not end at the starting point");
                }
                this.f5102c.setTranslate(-f3, -f4);
                float f5 = f - f3;
                float f6 = f2 - f4;
                float a2 = 1.0f / m6618a(f5, f6);
                this.f5102c.postScale(a2, a2);
                this.f5102c.postRotate((float) Math.toDegrees(-Math.atan2(f6, f5)));
                a.transform(this.f5102c, this.f5101b);
                this.f5100a = a;
                return;
            }
            throw new RuntimeException("pathData must be supplied for patternPathMotion");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    private static float m6618a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    @Override // androidx.transition.PathMotion
    /* renamed from: a */
    public final Path mo6541a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        float a = m6618a(f5, f6);
        double atan2 = Math.atan2(f6, f5);
        this.f5102c.setScale(a, a);
        this.f5102c.postRotate((float) Math.toDegrees(atan2));
        this.f5102c.postTranslate(f, f2);
        Path path = new Path();
        this.f5101b.transform(this.f5102c, path);
        return path;
    }
}
