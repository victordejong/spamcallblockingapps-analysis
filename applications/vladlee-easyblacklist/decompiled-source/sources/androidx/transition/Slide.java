package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.core.content.p033a.C0645i;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Slide.class */
public class Slide extends Visibility {

    /* renamed from: a */
    private static final TimeInterpolator f5103a = new DecelerateInterpolator();

    /* renamed from: i */
    private static final TimeInterpolator f5104i = new AccelerateInterpolator();

    /* renamed from: l */
    private static final AbstractC1178a f5105l = new C1205ap();

    /* renamed from: m */
    private static final AbstractC1178a f5106m = new C1206aq();

    /* renamed from: n */
    private static final AbstractC1178a f5107n = new C1207ar();

    /* renamed from: o */
    private static final AbstractC1178a f5108o = new C1208as();

    /* renamed from: p */
    private static final AbstractC1178a f5109p = new C1209at();

    /* renamed from: q */
    private static final AbstractC1178a f5110q = new C1210au();

    /* renamed from: j */
    private AbstractC1178a f5111j = f5110q;

    /* renamed from: k */
    private int f5112k = 80;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Slide$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$a.class */
    public interface AbstractC1178a {
        /* renamed from: a */
        float mo6543a(ViewGroup viewGroup, View view);

        /* renamed from: b */
        float mo6542b(ViewGroup viewGroup, View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Slide$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$b.class */
    public static abstract class AbstractC1179b implements AbstractC1178a {
        private AbstractC1179b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ AbstractC1179b(byte b) {
            this();
        }

        @Override // androidx.transition.Slide.AbstractC1178a
        /* renamed from: b */
        public final float mo6542b(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.transition.Slide$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$c.class */
    public static abstract class AbstractC1180c implements AbstractC1178a {
        private AbstractC1180c() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ AbstractC1180c(byte b) {
            this();
        }

        @Override // androidx.transition.Slide.AbstractC1178a
        /* renamed from: a */
        public final float mo6543a(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    public Slide() {
        m6617b(80);
    }

    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1211av.f5222h);
        int a = C0645i.m8628a(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        m6617b(a);
    }

    /* renamed from: b */
    private void m6617b(int i) {
        AbstractC1178a aVar;
        if (i == 3) {
            aVar = f5105l;
        } else if (i == 5) {
            aVar = f5108o;
        } else if (i == 48) {
            aVar = f5107n;
        } else if (i == 80) {
            aVar = f5110q;
        } else if (i == 8388611) {
            aVar = f5106m;
        } else if (i == 8388613) {
            aVar = f5109p;
        } else {
            throw new IllegalArgumentException("Invalid slide direction");
        }
        this.f5111j = aVar;
        this.f5112k = i;
        C1204ao aoVar = new C1204ao();
        aoVar.m6544a(i);
        mo6584a(aoVar);
    }

    /* renamed from: d */
    private static void m6616d(C1224bf bfVar) {
        int[] iArr = new int[2];
        bfVar.f5246b.getLocationOnScreen(iArr);
        bfVar.f5245a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo6567a(ViewGroup viewGroup, View view, C1224bf bfVar) {
        if (bfVar == null) {
            return null;
        }
        int[] iArr = (int[]) bfVar.f5245a.get("android:slide:screenPosition");
        return C1226bh.m6535a(view, bfVar, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f5111j.mo6543a(viewGroup, view), this.f5111j.mo6542b(viewGroup, view), f5104i);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo6566a(ViewGroup viewGroup, View view, C1224bf bfVar, C1224bf bfVar2) {
        if (bfVar2 == null) {
            return null;
        }
        int[] iArr = (int[]) bfVar2.f5245a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return C1226bh.m6535a(view, bfVar2, iArr[0], iArr[1], this.f5111j.mo6543a(viewGroup, view), this.f5111j.mo6542b(viewGroup, view), translationX, translationY, f5103a);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        super.mo966a(bfVar);
        m6616d(bfVar);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        super.mo965b(bfVar);
        m6616d(bfVar);
    }
}
