package androidx.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import androidx.core.content.p033a.C0645i;
import androidx.core.p037g.C0741t;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds.class */
public class ChangeBounds extends Transition {

    /* renamed from: a */
    private static final String[] f5050a = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: i */
    private static final Property<Drawable, PointF> f5051i = new C1216b(PointF.class, "boundsOrigin");

    /* renamed from: j */
    private static final Property<C1173a, PointF> f5052j = new C1252d(PointF.class, "topLeft");

    /* renamed from: k */
    private static final Property<C1173a, PointF> f5053k = new C1253e(PointF.class, "bottomRight");

    /* renamed from: l */
    private static final Property<View, PointF> f5054l = new C1254f(PointF.class, "bottomRight");

    /* renamed from: m */
    private static final Property<View, PointF> f5055m = new C1255g(PointF.class, "topLeft");

    /* renamed from: n */
    private static final Property<View, PointF> f5056n = new C1256h(PointF.class, "position");

    /* renamed from: r */
    private static C1202am f5057r = new C1202am();

    /* renamed from: o */
    private int[] f5058o;

    /* renamed from: p */
    private boolean f5059p;

    /* renamed from: q */
    private boolean f5060q;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.ChangeBounds$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$a.class */
    public static final class C1173a {

        /* renamed from: a */
        private int f5061a;

        /* renamed from: b */
        private int f5062b;

        /* renamed from: c */
        private int f5063c;

        /* renamed from: d */
        private int f5064d;

        /* renamed from: e */
        private View f5065e;

        /* renamed from: f */
        private int f5066f;

        /* renamed from: g */
        private int f5067g;

        C1173a(View view) {
            this.f5065e = view;
        }

        /* renamed from: a */
        private void m6639a() {
            C1239bs.m6521a(this.f5065e, this.f5061a, this.f5062b, this.f5063c, this.f5064d);
            this.f5066f = 0;
            this.f5067g = 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m6638a(PointF pointF) {
            this.f5061a = Math.round(pointF.x);
            this.f5062b = Math.round(pointF.y);
            this.f5066f++;
            if (this.f5066f == this.f5067g) {
                m6639a();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final void m6637b(PointF pointF) {
            this.f5063c = Math.round(pointF.x);
            this.f5064d = Math.round(pointF.y);
            this.f5067g++;
            if (this.f5066f == this.f5067g) {
                m6639a();
            }
        }
    }

    public ChangeBounds() {
        this.f5058o = new int[2];
        this.f5059p = false;
        this.f5060q = false;
    }

    public ChangeBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5058o = new int[2];
        this.f5059p = false;
        this.f5060q = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5218d);
        boolean a = C0645i.m8627a(obtainStyledAttributes, (XmlPullParser) ((XmlResourceParser) attributeSet), "resizeClip", 0, false);
        obtainStyledAttributes.recycle();
        this.f5059p = a;
    }

    /* renamed from: d */
    private void m6640d(C1224bf bfVar) {
        View view = bfVar.f5246b;
        if (C0741t.m8373B(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            bfVar.f5245a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            bfVar.f5245a.put("android:changeBounds:parent", bfVar.f5246b.getParent());
            if (this.f5060q) {
                bfVar.f5246b.getLocationInWindow(this.f5058o);
                bfVar.f5245a.put("android:changeBounds:windowX", Integer.valueOf(this.f5058o[0]));
                bfVar.f5245a.put("android:changeBounds:windowY", Integer.valueOf(this.f5058o[1]));
            }
            if (this.f5059p) {
                bfVar.f5245a.put("android:changeBounds:clip", C0741t.m8371D(view));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0148, code lost:
        if (r0 != r0) goto L_0x014b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0172, code lost:
        if (r0 != null) goto L_0x0175;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03d2 A[ORIG_RETURN, RETURN] */
    @Override // androidx.transition.Transition
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.Animator mo967a(android.view.ViewGroup r12, androidx.transition.C1224bf r13, androidx.transition.C1224bf r14) {
        /*
            Method dump skipped, instructions count: 1141
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.ChangeBounds.mo967a(android.view.ViewGroup, androidx.transition.bf, androidx.transition.bf):android.animation.Animator");
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        m6640d(bfVar);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo6569a() {
        return f5050a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        m6640d(bfVar);
    }
}
