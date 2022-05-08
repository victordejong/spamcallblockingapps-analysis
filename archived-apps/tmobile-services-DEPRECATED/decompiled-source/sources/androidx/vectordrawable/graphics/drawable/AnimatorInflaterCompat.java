package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.AnimatorRes;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat.class */
public class AnimatorInflaterCompat {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator.class */
    public static class PathDataEvaluator implements TypeEvaluator<PathParser.PathDataNode[]> {

        /* renamed from: a */
        private PathParser.PathDataNode[] f5364a;

        PathDataEvaluator() {
        }

        /* renamed from: a */
        public PathParser.PathDataNode[] evaluate(float f, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            if (PathParser.m19579b(pathDataNodeArr, pathDataNodeArr2)) {
                if (!PathParser.m19579b(this.f5364a, pathDataNodeArr)) {
                    this.f5364a = PathParser.m19575f(pathDataNodeArr);
                }
                for (int i = 0; i < pathDataNodeArr.length; i++) {
                    this.f5364a[i].m19567d(pathDataNodeArr[i], pathDataNodeArr2[i], f);
                }
                return this.f5364a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    private AnimatorInflaterCompat() {
    }

    /* renamed from: a */
    private static Animator m16643a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) throws XmlPullParserException, IOException {
        return m16642b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x014c, code lost:
        if (r17 == null) goto L_0x0197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0151, code lost:
        if (r22 == null) goto L_0x0197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0154, code lost:
        r0 = new android.animation.Animator[r22.size()];
        r0 = r22.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x016d, code lost:
        if (r0.hasNext() == false) goto L_0x0183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0170, code lost:
        r0[r25] = (android.animation.Animator) r0.next();
        r25 = r25 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0185, code lost:
        if (r18 != 0) goto L_0x0191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0188, code lost:
        r17.playTogether(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0191, code lost:
        r17.playSequentially(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0199, code lost:
        return r21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.Animator m16642b(android.content.Context r12, android.content.res.Resources r13, android.content.res.Resources.Theme r14, org.xmlpull.v1.XmlPullParser r15, android.util.AttributeSet r16, android.animation.AnimatorSet r17, int r18, float r19) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.m16642b(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    /* renamed from: c */
    private static Keyframe m16641c(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: d */
    private static void m16640d(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L_0x00ba;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.PropertyValuesHolder m16639e(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.m16639e(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
        if (m16636h(r7) != false) goto L_0x0067;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m16638f(android.content.res.TypedArray r3, int r4, int r5) {
        /*
            r0 = r3
            r1 = r4
            android.util.TypedValue r0 = r0.peekValue(r1)
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0015
            r0 = 1
            r4 = r0
            goto L_0x0017
        L_0x0015:
            r0 = 0
            r4 = r0
        L_0x0017:
            r0 = r4
            if (r0 == 0) goto L_0x0024
            r0 = r6
            int r0 = r0.type
            r9 = r0
            goto L_0x0027
        L_0x0024:
            r0 = 0
            r9 = r0
        L_0x0027:
            r0 = r3
            r1 = r5
            android.util.TypedValue r0 = r0.peekValue(r1)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0037
            r0 = r7
            r5 = r0
            goto L_0x0039
        L_0x0037:
            r0 = 0
            r5 = r0
        L_0x0039:
            r0 = r5
            if (r0 == 0) goto L_0x0046
            r0 = r3
            int r0 = r0.type
            r7 = r0
            goto L_0x0049
        L_0x0046:
            r0 = 0
            r7 = r0
        L_0x0049:
            r0 = r4
            if (r0 == 0) goto L_0x0055
            r0 = r9
            boolean r0 = m16636h(r0)
            if (r0 != 0) goto L_0x0067
        L_0x0055:
            r0 = r8
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0069
            r0 = r8
            r4 = r0
            r0 = r7
            boolean r0 = m16636h(r0)
            if (r0 == 0) goto L_0x0069
        L_0x0067:
            r0 = 3
            r4 = r0
        L_0x0069:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.m16638f(android.content.res.TypedArray, int, int):int");
    }

    /* renamed from: g */
    private static int m16637g(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5347j);
        TypedValue l = TypedArrayUtils.m19591l(k, xmlPullParser, FirebaseAnalytics.Param.VALUE, 0);
        int i = 0;
        if (l != null) {
            i = 0;
            if (m16636h(l.type)) {
                i = 3;
            }
        }
        k.recycle();
        return i;
    }

    /* renamed from: h */
    private static boolean m16636h(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: i */
    public static Animator m16635i(Context context, @AnimatorRes int i) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : m16634j(context, context.getResources(), context.getTheme(), i);
    }

    /* renamed from: j */
    public static Animator m16634j(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i) throws Resources.NotFoundException {
        return m16633k(context, resources, theme, i, 1.0f);
    }

    /* renamed from: k */
    public static Animator m16633k(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i, float f) throws Resources.NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator a = m16643a(context, resources, theme, animation, f);
                if (animation != null) {
                    animation.close();
                }
                return a;
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't load animation resource ID #0x");
                sb.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Can't load animation resource ID #0x");
                sb2.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(sb2.toString());
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (xmlResourceParser3 != null) {
                xmlResourceParser3.close();
            }
            throw th;
        }
    }

    /* renamed from: l */
    private static ValueAnimator m16632l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5344g);
        TypedArray k2 = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5348k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        m16627q(valueAnimator2, k, k2, f, xmlPullParser);
        int h = TypedArrayUtils.m19595h(k, xmlPullParser, "interpolator", 0, 0);
        if (h > 0) {
            valueAnimator2.setInterpolator(AnimationUtilsCompat.m16644b(context, h));
        }
        k.recycle();
        if (k2 != null) {
            k2.recycle();
        }
        return valueAnimator2;
    }

    /* renamed from: m */
    private static Keyframe m16631m(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5347j);
        float f = TypedArrayUtils.m19597f(k, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue l = TypedArrayUtils.m19591l(k, xmlPullParser, FirebaseAnalytics.Param.VALUE, 0);
        boolean z = l != null;
        int i2 = i;
        if (i == 4) {
            i2 = (!z || !m16636h(l.type)) ? 0 : 3;
        }
        Keyframe ofInt = z ? i2 != 0 ? (i2 == 1 || i2 == 3) ? Keyframe.ofInt(f, TypedArrayUtils.m19596g(k, xmlPullParser, FirebaseAnalytics.Param.VALUE, 0, 0)) : null : Keyframe.ofFloat(f, TypedArrayUtils.m19597f(k, xmlPullParser, FirebaseAnalytics.Param.VALUE, 0, 0.0f)) : i2 == 0 ? Keyframe.ofFloat(f) : Keyframe.ofInt(f);
        int h = TypedArrayUtils.m19595h(k, xmlPullParser, "interpolator", 1, 0);
        if (h > 0) {
            ofInt.setInterpolator(AnimationUtilsCompat.m16644b(context, h));
        }
        k.recycle();
        return ofInt;
    }

    /* renamed from: n */
    private static ObjectAnimator m16630n(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m16632l(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* renamed from: o */
    private static PropertyValuesHolder m16629o(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
        ArrayList arrayList = null;
        int i2 = i;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            } else if (xmlPullParser.getName().equals("keyframe")) {
                int i3 = i2;
                if (i2 == 4) {
                    i3 = m16637g(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe m = m16631m(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i3, xmlPullParser);
                arrayList = arrayList;
                if (m != null) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(m);
                }
                xmlPullParser.next();
                i2 = i3;
            }
        }
        PropertyValuesHolder propertyValuesHolder = null;
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolder = null;
            if (size > 0) {
                Keyframe keyframe = (Keyframe) arrayList.get(0);
                Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
                float fraction = keyframe2.getFraction();
                int i4 = size;
                if (fraction < 1.0f) {
                    if (fraction < 0.0f) {
                        keyframe2.setFraction(1.0f);
                        i4 = size;
                    } else {
                        arrayList.add(arrayList.size(), m16641c(keyframe2, 1.0f));
                        i4 = size + 1;
                    }
                }
                float fraction2 = keyframe.getFraction();
                int i5 = i4;
                if (fraction2 != 0.0f) {
                    if (fraction2 < 0.0f) {
                        keyframe.setFraction(0.0f);
                        i5 = i4;
                    } else {
                        arrayList.add(0, m16641c(keyframe, 0.0f));
                        i5 = i4 + 1;
                    }
                }
                Keyframe[] keyframeArr = new Keyframe[i5];
                arrayList.toArray(keyframeArr);
                for (int i6 = 0; i6 < i5; i6++) {
                    Keyframe keyframe3 = keyframeArr[i6];
                    if (keyframe3.getFraction() < 0.0f) {
                        if (i6 == 0) {
                            keyframe3.setFraction(0.0f);
                        } else {
                            int i7 = i5 - 1;
                            if (i6 == i7) {
                                keyframe3.setFraction(1.0f);
                            } else {
                                int i8 = i6;
                                for (int i9 = i6 + 1; i9 < i7 && keyframeArr[i9].getFraction() < 0.0f; i9++) {
                                    i8 = i9;
                                }
                                m16640d(keyframeArr, keyframeArr[i8 + 1].getFraction() - keyframeArr[i6 - 1].getFraction(), i6, i8);
                            }
                        }
                    }
                }
                PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
                propertyValuesHolder = ofKeyframe;
                if (i2 == 3) {
                    ofKeyframe.setEvaluator(ArgbEvaluator.m16623a());
                    propertyValuesHolder = ofKeyframe;
                }
            }
        }
        return propertyValuesHolder;
    }

    /* renamed from: p */
    private static PropertyValuesHolder[] m16628p(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            i = 0;
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray k = TypedArrayUtils.m19592k(resources, theme, attributeSet, AndroidResources.f5346i);
                    String i2 = TypedArrayUtils.m19594i(k, xmlPullParser, "propertyName", 3);
                    int g = TypedArrayUtils.m19596g(k, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder o = m16629o(context, resources, theme, xmlPullParser, i2, g);
                    PropertyValuesHolder propertyValuesHolder = o;
                    if (o == null) {
                        propertyValuesHolder = m16639e(k, g, 0, 1, i2);
                    }
                    arrayList = arrayList;
                    if (propertyValuesHolder != null) {
                        arrayList = arrayList;
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(propertyValuesHolder);
                    }
                    k.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[size];
            while (true) {
                propertyValuesHolderArr = propertyValuesHolderArr2;
                if (i >= size) {
                    break;
                }
                propertyValuesHolderArr2[i] = (PropertyValuesHolder) arrayList.get(i);
                i++;
            }
        }
        return propertyValuesHolderArr;
    }

    /* renamed from: q */
    private static void m16627q(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long g = TypedArrayUtils.m19596g(typedArray, xmlPullParser, "duration", 1, 300);
        long g2 = TypedArrayUtils.m19596g(typedArray, xmlPullParser, "startOffset", 2, 0);
        int g3 = TypedArrayUtils.m19596g(typedArray, xmlPullParser, "valueType", 7, 4);
        int i = g3;
        if (TypedArrayUtils.m19593j(xmlPullParser, "valueFrom")) {
            i = g3;
            if (TypedArrayUtils.m19593j(xmlPullParser, "valueTo")) {
                int i2 = g3;
                if (g3 == 4) {
                    i2 = m16638f(typedArray, 5, 6);
                }
                PropertyValuesHolder e = m16639e(typedArray, i2, 5, 6, "");
                i = i2;
                if (e != null) {
                    valueAnimator.setValues(e);
                    i = i2;
                }
            }
        }
        valueAnimator.setDuration(g);
        valueAnimator.setStartDelay(g2);
        valueAnimator.setRepeatCount(TypedArrayUtils.m19596g(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.m19596g(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            m16626r(valueAnimator, typedArray2, i, f, xmlPullParser);
        }
    }

    /* renamed from: r */
    private static void m16626r(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String i2 = TypedArrayUtils.m19594i(typedArray, xmlPullParser, "pathData", 1);
        if (i2 != null) {
            String i3 = TypedArrayUtils.m19594i(typedArray, xmlPullParser, "propertyXName", 2);
            String i4 = TypedArrayUtils.m19594i(typedArray, xmlPullParser, "propertyYName", 3);
            if (i != 2) {
            }
            if (i3 == null && i4 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            m16625s(PathParser.m19576e(i2), objectAnimator, f * 0.5f, i3, i4);
            return;
        }
        objectAnimator.setPropertyName(TypedArrayUtils.m19594i(typedArray, xmlPullParser, "propertyName", 0));
    }

    /* renamed from: s */
    private static void m16625s(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PropertyValuesHolder propertyValuesHolder;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f2 = 0.0f;
        arrayList.add(Float.valueOf(0.0f));
        float f3 = 0.0f;
        do {
            length = f3 + pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
            f3 = length;
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f4 = length / (min - 1);
        int i = 0;
        int i2 = 0;
        while (true) {
            propertyValuesHolder = null;
            if (i >= min) {
                break;
            }
            pathMeasure2.getPosTan(f2 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i] = fArr3[0];
            fArr2[i] = fArr3[1];
            f2 += f4;
            int i3 = i2 + 1;
            i2 = i2;
            if (i3 < arrayList.size()) {
                i2 = i2;
                if (f2 > ((Float) arrayList.get(i3)).floatValue()) {
                    pathMeasure2.nextContour();
                    i2 = i3;
                }
            }
            i++;
        }
        PropertyValuesHolder ofFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        if (str2 != null) {
            propertyValuesHolder = PropertyValuesHolder.ofFloat(str2, fArr2);
        }
        if (ofFloat == null) {
            objectAnimator.setValues(propertyValuesHolder);
        } else if (propertyValuesHolder == null) {
            objectAnimator.setValues(ofFloat);
        } else {
            objectAnimator.setValues(ofFloat, propertyValuesHolder);
        }
    }
}
