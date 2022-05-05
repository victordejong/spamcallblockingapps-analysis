package androidx.p046f.p047a.p048a;

import android.animation.Animator;
import android.animation.AnimatorSet;
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
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.core.content.p033a.C0645i;
import androidx.core.graphics.C0753b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.f.a.a.f */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a/f.class */
public final class C0845f {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.f.a.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/f/a/a/f$a.class */
    public static final class C0846a implements TypeEvaluator<C0753b.C0755b[]> {

        /* renamed from: a */
        private C0753b.C0755b[] f3456a;

        C0846a() {
        }

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ C0753b.C0755b[] evaluate(float f, C0753b.C0755b[] bVarArr, C0753b.C0755b[] bVarArr2) {
            C0753b.C0755b[] bVarArr3 = bVarArr;
            C0753b.C0755b[] bVarArr4 = bVarArr2;
            if (C0753b.m8275a(bVarArr3, bVarArr4)) {
                if (!C0753b.m8275a(this.f3456a, bVarArr3)) {
                    this.f3456a = C0753b.m8276a(bVarArr3);
                }
                for (int i = 0; i < bVarArr3.length; i++) {
                    this.f3456a[i].m8270a(bVarArr3[i], bVarArr4[i], f);
                }
                return this.f3456a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* renamed from: a */
    public static Animator m7940a(Context context, Resources resources, Resources.Theme theme, int i) {
        XmlResourceParser xmlResourceParser = null;
        XmlResourceParser xmlResourceParser2 = null;
        XmlResourceParser xmlResourceParser3 = null;
        try {
            try {
                XmlResourceParser animation = resources.getAnimation(i);
                xmlResourceParser3 = animation;
                xmlResourceParser = animation;
                xmlResourceParser2 = animation;
                Animator a = m7936a(context, resources, theme, animation, Xml.asAttributeSet(animation), null, 0, 1.0f);
                if (animation != null) {
                    animation.close();
                }
                return a;
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder("Can't load animation resource ID #0x");
                sb.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                StringBuilder sb2 = new StringBuilder("Can't load animation resource ID #0x");
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

    /* renamed from: a */
    private static Animator m7936a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet, AnimatorSet animatorSet, int i, float f) {
        int i2;
        Animator animator;
        int depth = xmlPullParser.getDepth();
        ValueAnimator valueAnimator = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            i2 = 0;
            boolean z = false;
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    String name = xmlPullParser.getName();
                    if (name.equals("objectAnimator")) {
                        animator = m7939a(context, resources, theme, attributeSet, f, xmlPullParser);
                    } else if (name.equals("animator")) {
                        animator = m7938a(context, resources, theme, attributeSet, null, f, xmlPullParser);
                    } else if (name.equals("set")) {
                        animator = new AnimatorSet();
                        TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3438h);
                        m7936a(context, resources, theme, xmlPullParser, attributeSet, (AnimatorSet) animator, C0645i.m8628a(a, xmlPullParser, "ordering", 0, 0), f);
                        a.recycle();
                    } else if (name.equals("propertyValuesHolder")) {
                        PropertyValuesHolder[] a2 = m7937a(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser));
                        if (a2 != null && (valueAnimator instanceof ValueAnimator)) {
                            valueAnimator.setValues(a2);
                        }
                        z = true;
                        animator = valueAnimator;
                    } else {
                        throw new RuntimeException("Unknown animator name: " + xmlPullParser.getName());
                    }
                    valueAnimator = animator;
                    if (animatorSet != null) {
                        valueAnimator = animator;
                        if (!z) {
                            ArrayList arrayList2 = arrayList;
                            if (arrayList == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(animator);
                            valueAnimator = animator;
                            arrayList = arrayList2;
                        }
                    }
                }
            }
        }
        if (!(animatorSet == null || arrayList == null)) {
            Animator[] animatorArr = new Animator[arrayList.size()];
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                animatorArr[i2] = (Animator) it.next();
                i2++;
            }
            if (i == 0) {
                animatorSet.playTogether(animatorArr);
            } else {
                animatorSet.playSequentially(animatorArr);
            }
        }
        return valueAnimator;
    }

    /* renamed from: a */
    private static Keyframe m7942a(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    /* renamed from: a */
    private static ObjectAnimator m7939a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        m7938a(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b7, code lost:
        if (r0 != null) goto L_0x00ba;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.PropertyValuesHolder m7935a(android.content.res.TypedArray r7, int r8, int r9, int r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p046f.p047a.p048a.C0845f.m7935a(android.content.res.TypedArray, int, int, int, java.lang.String):android.animation.PropertyValuesHolder");
    }

    /* renamed from: a */
    private static ValueAnimator m7938a(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) {
        TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3437g);
        TypedArray a2 = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3441k);
        ValueAnimator valueAnimator2 = valueAnimator;
        if (valueAnimator == null) {
            valueAnimator2 = new ValueAnimator();
        }
        m7941a(valueAnimator2, a, a2, f, xmlPullParser);
        int b = C0645i.m8624b(a, xmlPullParser, "interpolator", 0);
        if (b > 0) {
            valueAnimator2.setInterpolator(C0844e.m7944a(context, b));
        }
        a.recycle();
        if (a2 != null) {
            a2.recycle();
        }
        return valueAnimator2;
    }

    /* renamed from: a */
    private static void m7941a(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long a = C0645i.m8628a(typedArray, xmlPullParser, "duration", 1, 300);
        long a2 = C0645i.m8628a(typedArray, xmlPullParser, "startOffset", 2, 0);
        int a3 = C0645i.m8628a(typedArray, xmlPullParser, "valueType", 7, 4);
        if (C0645i.m8626a(xmlPullParser, "valueFrom") && C0645i.m8626a(xmlPullParser, "valueTo")) {
            int i = a3;
            if (a3 == 4) {
                TypedValue peekValue = typedArray.peekValue(5);
                boolean z = peekValue != null;
                int i2 = z ? peekValue.type : 0;
                TypedValue peekValue2 = typedArray.peekValue(6);
                boolean z2 = peekValue2 != null;
                i = ((!z || !m7943a(i2)) && (!z2 || !m7943a(z2 ? peekValue2.type : 0))) ? 0 : 3;
            }
            PropertyValuesHolder a4 = m7935a(typedArray, i, 5, 6, "");
            if (a4 != null) {
                valueAnimator.setValues(a4);
            }
        }
        valueAnimator.setDuration(a);
        valueAnimator.setStartDelay(a2);
        valueAnimator.setRepeatCount(C0645i.m8628a(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(C0645i.m8628a(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
            String c = C0645i.m8622c(typedArray2, xmlPullParser, "pathData", 1);
            if (c != null) {
                String c2 = C0645i.m8622c(typedArray2, xmlPullParser, "propertyXName", 2);
                String c3 = C0645i.m8622c(typedArray2, xmlPullParser, "propertyYName", 3);
                if (c2 == null && c3 == null) {
                    throw new InflateException(typedArray2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                m7934a(C0753b.m8280a(c), objectAnimator, 0.5f * f, c2, c3);
                return;
            }
            objectAnimator.setPropertyName(C0645i.m8622c(typedArray2, xmlPullParser, "propertyName", 0));
        }
    }

    /* renamed from: a */
    private static void m7934a(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        float length;
        PropertyValuesHolder propertyValuesHolder;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
        float f2 = 0.0f;
        do {
            length = f2 + pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
            f2 = length;
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f3 = length / (min - 1);
        int i = 0;
        float f4 = 0.0f;
        int i2 = 0;
        while (true) {
            propertyValuesHolder = null;
            if (i2 >= min) {
                break;
            }
            pathMeasure2.getPosTan(f4 - ((Float) arrayList.get(i)).floatValue(), fArr3, null);
            fArr[i2] = fArr3[0];
            fArr2[i2] = fArr3[1];
            f4 += f3;
            int i3 = i + 1;
            i = i;
            if (i3 < arrayList.size()) {
                i = i;
                if (f4 > ((Float) arrayList.get(i3)).floatValue()) {
                    pathMeasure2.nextContour();
                    i = i3;
                }
            }
            i2++;
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

    /* renamed from: a */
    private static void m7933a(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    /* renamed from: a */
    private static boolean m7943a(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: a */
    private static PropertyValuesHolder[] m7937a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        PropertyValuesHolder[] propertyValuesHolderArr;
        PropertyValuesHolder propertyValuesHolder;
        int size;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                arrayList = arrayList;
            } else if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                TypedArray a = C0645i.m8636a(resources, theme, attributeSet, C0838a.f3439i);
                String c = C0645i.m8622c(a, xmlPullParser, "propertyName", 3);
                int a2 = C0645i.m8628a(a, xmlPullParser, "valueType", 2, 4);
                int i = a2;
                ArrayList arrayList2 = null;
                while (true) {
                    int next = xmlPullParser.next();
                    if (next == 3 || next == 1) {
                        break;
                    } else if (xmlPullParser.getName().equals("keyframe")) {
                        i = i;
                        if (i == 4) {
                            TypedArray a3 = C0645i.m8636a(resources, theme, Xml.asAttributeSet(xmlPullParser), C0838a.f3440j);
                            TypedValue a4 = C0645i.m8631a(a3, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            i = (!(a4 != null) || !m7943a(a4.type)) ? 0 : 3;
                            a3.recycle();
                        }
                        TypedArray a5 = C0645i.m8636a(resources, theme, Xml.asAttributeSet(xmlPullParser), C0838a.f3440j);
                        float a6 = C0645i.m8629a(a5, xmlPullParser, "fraction", 3, -1.0f);
                        TypedValue a7 = C0645i.m8631a(a5, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE);
                        boolean z = a7 != null;
                        int i2 = i == 4 ? (!z || !m7943a(a7.type)) ? 0 : 3 : i;
                        Keyframe ofInt = z ? i2 != 0 ? (i2 == 1 || i2 == 3) ? Keyframe.ofInt(a6, C0645i.m8628a(a5, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0, 0)) : null : Keyframe.ofFloat(a6, C0645i.m8629a(a5, xmlPullParser, AppMeasurementSdk.ConditionalUserProperty.VALUE, 0, 0.0f)) : i2 == 0 ? Keyframe.ofFloat(a6) : Keyframe.ofInt(a6);
                        int b = C0645i.m8624b(a5, xmlPullParser, "interpolator", 1);
                        if (b > 0) {
                            ofInt.setInterpolator(C0844e.m7944a(context, b));
                        }
                        a5.recycle();
                        arrayList2 = arrayList2;
                        if (ofInt != null) {
                            arrayList2 = arrayList2;
                            if (arrayList2 == null) {
                                arrayList2 = new ArrayList();
                            }
                            arrayList2.add(ofInt);
                        }
                        xmlPullParser.next();
                    } else {
                        i = i;
                    }
                }
                if (arrayList2 == null || (size = arrayList2.size()) <= 0) {
                    propertyValuesHolder = null;
                } else {
                    Keyframe keyframe = (Keyframe) arrayList2.get(0);
                    Keyframe keyframe2 = (Keyframe) arrayList2.get(size - 1);
                    float fraction = keyframe2.getFraction();
                    int i3 = size;
                    if (fraction < 1.0f) {
                        if (fraction < 0.0f) {
                            keyframe2.setFraction(1.0f);
                            i3 = size;
                        } else {
                            arrayList2.add(arrayList2.size(), m7942a(keyframe2, 1.0f));
                            i3 = size + 1;
                        }
                    }
                    float fraction2 = keyframe.getFraction();
                    int i4 = i3;
                    if (fraction2 != 0.0f) {
                        if (fraction2 < 0.0f) {
                            keyframe.setFraction(0.0f);
                            i4 = i3;
                        } else {
                            arrayList2.add(0, m7942a(keyframe, 0.0f));
                            i4 = i3 + 1;
                        }
                    }
                    Keyframe[] keyframeArr = new Keyframe[i4];
                    arrayList2.toArray(keyframeArr);
                    for (int i5 = 0; i5 < i4; i5++) {
                        Keyframe keyframe3 = keyframeArr[i5];
                        if (keyframe3.getFraction() < 0.0f) {
                            if (i5 == 0) {
                                keyframe3.setFraction(0.0f);
                            } else {
                                int i6 = i4 - 1;
                                if (i5 == i6) {
                                    keyframe3.setFraction(1.0f);
                                } else {
                                    int i7 = i5;
                                    for (int i8 = i5 + 1; i8 < i6 && keyframeArr[i8].getFraction() < 0.0f; i8++) {
                                        i7 = i8;
                                    }
                                    m7933a(keyframeArr, keyframeArr[i7 + 1].getFraction() - keyframeArr[i5 - 1].getFraction(), i5, i7);
                                }
                            }
                        }
                    }
                    PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(c, keyframeArr);
                    propertyValuesHolder = ofKeyframe;
                    if (i == 3) {
                        ofKeyframe.setEvaluator(C0847g.m7932a());
                        propertyValuesHolder = ofKeyframe;
                    }
                }
                PropertyValuesHolder propertyValuesHolder2 = propertyValuesHolder;
                if (propertyValuesHolder == null) {
                    propertyValuesHolder2 = m7935a(a, a2, 0, 1, c);
                }
                arrayList = arrayList;
                if (propertyValuesHolder2 != null) {
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(propertyValuesHolder2);
                }
                a.recycle();
            } else {
                arrayList = arrayList;
            }
            xmlPullParser.next();
        }
        if (arrayList != null) {
            int size2 = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size2];
            for (int i9 = 0; i9 < size2; i9++) {
                propertyValuesHolderArr[i9] = (PropertyValuesHolder) arrayList.get(i9);
            }
        } else {
            propertyValuesHolderArr = null;
        }
        return propertyValuesHolderArr;
    }
}
