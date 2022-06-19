package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.ShimmerLoadingView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.voip.C4781R;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p619d.p654s.C11791g;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0005J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0016\u001a\u00020\u00032\b\b\u0001\u0010\u0014\u001a\u00020\u00072\b\b\u0001\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u000bJ\u000f\u0010\u0017\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u0017\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001e\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001f\u0010\u001cJ\u0017\u0010 \u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b \u0010\u001cJ\u0019\u0010\"\u001a\u00020\u00032\b\b\u0001\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010#J\u0019\u0010$\u001a\u00020\u00032\b\b\u0001\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010#J\u0019\u0010%\u001a\u00020\u00032\b\b\u0001\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010#J\u0017\u0010&\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b&\u0010#J\u0019\u0010'\u001a\u00020\u00032\b\b\u0001\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b'\u0010#J\u0019\u0010(\u001a\u00020\u00032\b\b\u0001\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010#J\u000f\u0010)\u001a\u00020\u0019H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0003H\u0016¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010,\u001a\u00020\u0003H\u0016¢\u0006\u0004\b,\u0010\u0005R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\"\u00108\u001a\u0002018��@��X\u0081.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u001d\u0010A\u001a\u00020<8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@¨\u0006B"}, d2 = {"Le/a/d/c/a/p/a/w;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/d/c/a/p/a/p;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarConfig", "setAvatarConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", AnalyticsConstants.NAME, "setName", "(Ljava/lang/String;)V", "statusRes", "colorRes", "l", "s1", "A", "", "visible", C22021b.f61237c, "(Z)V", "c0", "o", "x0", "i", "size", "setViewSize", "(I)V", "setAvatarSize", "setMuteSize", "setInviteSenderSize", "setNameSize", "setLoaderNameWidth", "h", "()Z", "B", "a", "Le/a/d/s/g;", "w", "Le/a/d/s/g;", "binding", "Le/a/d/c/a/p/a/o;", "v", "Le/a/d/c/a/p/a/o;", "getPresenter$voip_release", "()Le/a/d/c/a/p/a/o;", "setPresenter$voip_release", "(Le/a/d/c/a/p/a/o;)V", "presenter", "x", "I", "viewSize", "Le/a/b0/a/b/a;", "y", "Ls1/g;", "getAvatarXPresenter", "()Le/a/b0/a/b/a;", "avatarXPresenter", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.c.a.p.a.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/w.class */
public final class C11245w extends AbstractC11200b implements AbstractC11231p {
    @Inject

    /* renamed from: v */
    public AbstractC11230o f33176v;

    /* renamed from: w */
    public final C11791g f33177w;

    /* renamed from: x */
    public int f33178x;

    /* renamed from: y */
    public final g f33179y;

    /* renamed from: e.a.d.c.a.p.a.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/w$a.class */
    public static final class View$OnClickListenerC11246a implements View.OnClickListener {
        public View$OnClickListenerC11246a(boolean z) {
            C11245w.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC12020a abstractC12020a = ((C11243u) C11245w.this.getPresenter$voip_release()).f33167e;
            if (abstractC12020a == null || ((AbstractC12022c) abstractC12020a.getState().getValue()).m25331a(AbstractC12022c.C12033c.f35254b)) {
                return;
            }
            abstractC12020a.mo23699g();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C11245w(android.content.Context r19, android.util.AttributeSet r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11245w.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    private final C8243a getAvatarXPresenter() {
        return (C8243a) this.f33179y.getValue();
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: A */
    public void mo24981A() {
        View view = this.f33177w.f34657m;
        l.d(view, "binding.statusOverlay");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: B */
    public void mo24980B() {
        C11791g c11791g = this.f33177w;
        ShimmerLoadingView shimmerLoadingView = c11791g.f34653i;
        if (shimmerLoadingView.getVisibility() == 0) {
            shimmerLoadingView.m35704f1();
            shimmerLoadingView.m35703g1();
        }
        ShimmerLoadingView shimmerLoadingView2 = c11791g.f34654j;
        if (shimmerLoadingView2.getVisibility() == 0) {
            shimmerLoadingView2.m35704f1();
            shimmerLoadingView2.m35703g1();
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: a */
    public void mo24979a() {
        requestLayout();
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: b */
    public void mo24978b(boolean z) {
        AppCompatImageView appCompatImageView = this.f33177w.f34650f;
        l.d(appCompatImageView, "binding.imageMute");
        C19286f.m13683U(appCompatImageView, z);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: c0 */
    public void mo24977c0(boolean z) {
        AppCompatImageView appCompatImageView = this.f33177w.f34649e;
        l.d(appCompatImageView, "binding.imageInviteSender");
        C19286f.m13683U(appCompatImageView, z);
    }

    public final AbstractC11230o getPresenter$voip_release() {
        AbstractC11230o abstractC11230o = this.f33176v;
        if (abstractC11230o != null) {
            return abstractC11230o;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: h */
    public boolean mo24976h() {
        Group group = this.f33177w.f34656l;
        l.d(group, "binding.loadingGroup");
        return group.getVisibility() == 0;
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: i */
    public void mo24975i(boolean z) {
        Group group = this.f33177w.f34656l;
        l.d(group, "binding.loadingGroup");
        C19286f.m13683U(group, z);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: l */
    public void mo24974l(int i, int i2) {
        C11791g c11791g = this.f33177w;
        AppCompatImageView appCompatImageView = c11791g.f34652h;
        l.d(appCompatImageView, "imageStatusIcon");
        Context context = getContext();
        Object obj = C26467a.f74235a;
        appCompatImageView.setImageTintList(ColorStateList.valueOf(C26467a.C26471d.m1787a(context, i2)));
        TextView textView = c11791g.f34659o;
        textView.setTextColor(C26467a.C26471d.m1787a(textView.getContext(), i2));
        textView.setText(i);
        Group group = c11791g.f34648d;
        l.d(group, "callStatusGroup");
        C19286f.m13684T(group);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: o */
    public void mo24973o(boolean z) {
        C11791g c11791g = this.f33177w;
        AppCompatImageView appCompatImageView = c11791g.f34651g;
        l.d(appCompatImageView, "imageStatusCancel");
        C19286f.m13683U(appCompatImageView, z);
        if (z) {
            View view = c11791g.f34647c;
            view.setOnClickListener(new View$OnClickListenerC11246a(z));
            view.setBackgroundResource(C4781R.C4782drawable.background_voip_contact_tile_call_status_ripple);
            return;
        }
        View view2 = c11791g.f34647c;
        view2.setOnClickListener(null);
        view2.setBackgroundResource(C4781R.C4782drawable.background_voip_contact_tile_call_status);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            AbstractC11230o abstractC11230o = this.f33176v;
            if (abstractC11230o != null) {
                ((C11243u) abstractC11230o).mo9029Y0(this);
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (!isInEditMode()) {
            AbstractC11230o abstractC11230o = this.f33176v;
            if (abstractC11230o != null) {
                ((AbstractC20574a) abstractC11230o).mo9806c();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f33178x;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getPaddingRight() + getPaddingLeft() + i3, 1073741824);
        int i4 = this.f33178x;
        super.onMeasure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + i4, 1073741824));
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: s1 */
    public void mo24972s1() {
        Group group = this.f33177w.f34648d;
        l.d(group, "binding.callStatusGroup");
        C19286f.m13689O(group);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setAvatarConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatarConfig");
        C8243a.m28739ok(getAvatarXPresenter(), avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setAvatarSize(int i) {
        AvatarXView avatarXView = this.f33177w.f34646b;
        l.d(avatarXView, "binding.avatar");
        ViewGroup.LayoutParams layoutParams = avatarXView.getLayoutParams();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        layoutParams.height = dimensionPixelSize;
        layoutParams.width = dimensionPixelSize;
        avatarXView.setLayoutParams(layoutParams);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setInviteSenderSize(int i) {
        AppCompatImageView appCompatImageView = this.f33177w.f34649e;
        l.d(appCompatImageView, "binding.imageInviteSender");
        ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        layoutParams.height = dimensionPixelSize;
        layoutParams.width = dimensionPixelSize;
        appCompatImageView.setLayoutParams(layoutParams);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setLoaderNameWidth(int i) {
        ShimmerLoadingView shimmerLoadingView = this.f33177w.f34654j;
        l.d(shimmerLoadingView, "binding.loaderName");
        ViewGroup.LayoutParams layoutParams = shimmerLoadingView.getLayoutParams();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        layoutParams.width = context.getResources().getDimensionPixelSize(i);
        shimmerLoadingView.setLayoutParams(layoutParams);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setMuteSize(int i) {
        AppCompatImageView appCompatImageView = this.f33177w.f34650f;
        l.d(appCompatImageView, "binding.imageMute");
        ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        layoutParams.height = dimensionPixelSize;
        layoutParams.width = dimensionPixelSize;
        appCompatImageView.setLayoutParams(layoutParams);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        TextView textView = this.f33177w.f34658n;
        textView.setText(str);
        textView.setSelected(true);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setNameSize(int i) {
        TextView textView = this.f33177w.f34658n;
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        textView.setTextSize(0, context.getResources().getDimension(i));
    }

    public final void setPresenter$voip_release(AbstractC11230o abstractC11230o) {
        l.e(abstractC11230o, "<set-?>");
        this.f33176v = abstractC11230o;
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    public void setViewSize(int i) {
        this.f33178x = getResources().getDimensionPixelSize(i);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11231p
    /* renamed from: x0 */
    public void mo24971x0(boolean z) {
        if (z) {
            setBackgroundResource(C4781R.C4782drawable.background_voip_contact_tile);
        } else {
            setBackground(null);
        }
    }
}
