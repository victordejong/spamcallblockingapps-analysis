package p193e.p194a.p437c.p438a.p521s.p522g;

import android.animation.Animator;
import android.view.ViewAnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.g;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\r\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u0004\u0018\u00018��¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\bR\u0018\u0010\u0003\u001a\u0004\u0018\u00018��8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R%\u0010\u0019\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\r\u0010\u0018R%\u0010\u001b\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0017\u001a\u0004\b\u001a\u0010\u0018RH\u0010$\u001a(\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0��\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001cj\n\u0012\u0004\u0012\u00028��\u0018\u0001`\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Le/a/c/a/s/g/f;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Landroid/widget/FrameLayout;", "metadata", "Ls1/s;", "setMetadata", "(Ljava/lang/Object;)V", "e", "()V", "", "text", "setTitle", "(Ljava/lang/String;)V", "getTitle", "()Ljava/lang/String;", "getMetadata", "()Ljava/lang/Object;", "d", C22021b.f61237c, "Ljava/lang/Object;", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", AbstractC2405c.f7629a, "Ls1/g;", "()Landroid/widget/TextView;", "title", "getSelectedTitle", "selectedTitle", "Lkotlin/Function2;", "Lcom/truecaller/insights/ui/widget/chip/onTagSelected;", "a", "Ls1/z/b/p;", "getOnTagSelected", "()Ls1/z/b/p;", "setOnTagSelected", "(Ls1/z/b/p;)V", "onTagSelected", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.s.g.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/g/f.class */
public final class C9607f<T> extends FrameLayout {

    /* renamed from: a */
    public p<? super T, ? super C9607f<T>, s> f29033a;

    /* renamed from: b */
    public T f29034b;

    /* renamed from: c */
    public final g f29035c;

    /* renamed from: d */
    public final g f29036d;

    /* renamed from: e.a.c.a.s.g.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/s/g/f$a.class */
    public static final class C9608a implements Animator.AnimatorListener {
        public C9608a() {
            C9607f.this = r4;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            l.e(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.e(animator, "animator");
            TextView selectedTitle = C9607f.this.getSelectedTitle();
            l.d(selectedTitle, "selectedTitle");
            selectedTitle.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            l.e(animator, "animator");
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            l.e(animator, "animator");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C9607f(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.insights.p168ui.C4078R.C4080id.title
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f29035c = r1
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.insights.p168ui.C4078R.C4080id.selectedTitle
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f29036d = r1
            r0 = r6
            android.view.ContextThemeWrapper r0 = p193e.p194a.p437c.p578p.C10480a.m26090B0(r0)
            int r1 = com.truecaller.insights.p168ui.C4078R.layout.layout_tcx_tag_chip
            r2 = r5
            android.view.View r0 = android.widget.FrameLayout.inflate(r0, r1, r2)
            r0 = r5
            r1 = 1
            r0.setClickable(r1)
            r0 = r5
            r1 = 1
            r0.setFocusable(r1)
            r0 = r5
            e.a.c.a.s.g.d r1 = new e.a.c.a.s.g.d
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            r0.setOnClickListener(r1)
            r0 = r5
            e.a.c.a.s.g.e r1 = new e.a.c.a.s.g.e
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            r0.addOnLayoutChangeListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p521s.p522g.C9607f.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: c */
    public static final void m27396c(C9607f c9607f) {
        TextView selectedTitle = c9607f.getSelectedTitle();
        l.d(selectedTitle, "selectedTitle");
        if (selectedTitle.getVisibility() == 0) {
            return;
        }
        TextView selectedTitle2 = c9607f.getSelectedTitle();
        l.d(selectedTitle2, "selectedTitle");
        int width = selectedTitle2.getWidth();
        TextView selectedTitle3 = c9607f.getSelectedTitle();
        l.d(selectedTitle3, "selectedTitle");
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(c9607f.getSelectedTitle(), 0, 0, 0.0f, (float) Math.hypot(width, selectedTitle3.getHeight()));
        TextView selectedTitle4 = c9607f.getSelectedTitle();
        l.d(selectedTitle4, "selectedTitle");
        selectedTitle4.setVisibility(0);
        createCircularReveal.start();
    }

    public final TextView getSelectedTitle() {
        return (TextView) this.f29036d.getValue();
    }

    public final TextView getTitle() {
        return (TextView) this.f29035c.getValue();
    }

    /* renamed from: d */
    public final void m27395d() {
        TextView selectedTitle = getSelectedTitle();
        l.d(selectedTitle, "selectedTitle");
        if (selectedTitle.getVisibility() == 4) {
            return;
        }
        TextView selectedTitle2 = getSelectedTitle();
        l.d(selectedTitle2, "selectedTitle");
        int width = selectedTitle2.getWidth();
        TextView selectedTitle3 = getSelectedTitle();
        l.d(selectedTitle3, "selectedTitle");
        int height = selectedTitle3.getHeight();
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(getSelectedTitle(), width, height, (float) Math.hypot(width, height), 0.0f);
        l.d(createCircularReveal, "anim");
        createCircularReveal.addListener(new C9608a());
        createCircularReveal.start();
    }

    /* renamed from: e */
    public final void m27394e() {
        m27395d();
        TextView title = getTitle();
        l.d(title, "title");
        title.setSelected(false);
    }

    public final T getMetadata() {
        return this.f29034b;
    }

    public final p<T, C9607f<T>, s> getOnTagSelected() {
        return (p<? super T, ? super C9607f<T>, s>) this.f29033a;
    }

    /* renamed from: getTitle */
    public final String m48393getTitle() {
        TextView title = getTitle();
        l.d(title, "title");
        return title.getText().toString();
    }

    public final void setMetadata(T t) {
        this.f29034b = t;
    }

    public final void setOnTagSelected(p<? super T, ? super C9607f<T>, s> pVar) {
        this.f29033a = pVar;
    }

    public final void setTitle(String str) {
        l.e(str, "text");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
        TextView selectedTitle = getSelectedTitle();
        l.d(selectedTitle, "selectedTitle");
        selectedTitle.setText(str);
    }
}
