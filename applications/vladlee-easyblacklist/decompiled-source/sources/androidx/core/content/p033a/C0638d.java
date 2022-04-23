package androidx.core.content.p033a;

import android.graphics.Shader;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.content.a.d */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/d.class */
public final class C0638d {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.content.a.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/a/d$a.class */
    public static final class C0639a {

        /* renamed from: a */
        final int[] f2902a;

        /* renamed from: b */
        final float[] f2903b;

        C0639a(int i, int i2) {
            this.f2902a = new int[]{i, i2};
            this.f2903b = new float[]{0.0f, 1.0f};
        }

        C0639a(int i, int i2, int i3) {
            this.f2902a = new int[]{i, i2, i3};
            this.f2903b = new float[]{0.0f, 0.5f, 1.0f};
        }

        C0639a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f2902a = new int[size];
            this.f2903b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f2902a[i] = list.get(i).intValue();
                this.f2903b[i] = list2.get(i).floatValue();
            }
        }
    }

    /* renamed from: a */
    private static Shader.TileMode m8651a(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Type inference failed for: r0v10, types: [float, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v11, types: [int, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v13, types: [boolean, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v14, types: [int, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v15, types: [int, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v16, types: [int, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v17, types: [int, float, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v5, types: [float, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v6, types: [float, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v7, types: [float, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v8, types: [float, android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r0v9, types: [float, android.content.res.TypedArray] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Shader m8650a(android.content.res.Resources r10, org.xmlpull.v1.XmlPullParser r11, android.util.AttributeSet r12, android.content.res.Resources.Theme r13) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p033a.C0638d.m8650a(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.graphics.Shader");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ec, code lost:
        if (r0.size() <= 0) goto L_0x00fb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00fa, code lost:
        return new androidx.core.content.p033a.C0638d.C0639a(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00fb, code lost:
        return null;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.p033a.C0638d.C0639a m8649b(android.content.res.Resources r5, org.xmlpull.v1.XmlPullParser r6, android.util.AttributeSet r7, android.content.res.Resources.Theme r8) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p033a.C0638d.m8649b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):androidx.core.content.a.d$a");
    }
}
