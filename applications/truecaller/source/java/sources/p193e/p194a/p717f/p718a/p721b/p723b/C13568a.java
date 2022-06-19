package p193e.p194a.p717f.p718a.p721b.p723b;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.dialpad_view.Dialpad;
import com.truecaller.dialpad_view.DialpadKeyActionState;
import com.truecaller.incallui.C4013R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1158q3.AbstractC19614e;
import p193e.p194a.p1158q3.C19612c;
import p193e.p194a.p717f.p732x.C13747f;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\b\b*\u0001-\b\u0007\u0018�� 22\u00020\u00012\u00020\u0002:\u00013B\u0007¢\u0006\u0004\b1\u0010\u001dJ'\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001f\u0010\u001dR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\"\u0010'\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00064"}, d2 = {"Le/a/f/a/b/b/a;", "Landroidx/fragment/app/Fragment;", "Le/a/f/a/b/b/d;", "", "transit", "", "enter", "nextAnim", "Landroid/view/animation/Animation;", "onCreateAnimation", "(IZI)Landroid/view/animation/Animation;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "input", "o9", "(Ljava/lang/String;)V", "wt", "()V", "iw", "onDestroyView", "Le/a/f/x/f;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/f/x/f;", "binding", "", "presenter", "Ljava/lang/Object;", "RA", "()Ljava/lang/Object;", "setPresenter", "(Ljava/lang/Object;)V", "e/a/f/a/b/b/a$d", "g", "Le/a/f/a/b/b/a$d;", "dialpadListner", "<init>", "i", AbstractC2405c.f7629a, "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.b.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/b/a.class */
public final class C13568a extends AbstractC13573b implements AbstractC13575d {

    /* renamed from: h */
    public static final /* synthetic */ l[] f39330h = {C22128a.m8621g0(C13568a.class, "binding", "getBinding()Lcom/truecaller/incallui/databinding/FragmentKeypadBinding;", 0)};

    /* renamed from: i */
    public static final C13571c f39331i = new C13571c(null);
    @Inject

    /* renamed from: f */
    public C13576e f39333f;

    /* renamed from: e */
    public final ViewBindingProperty f39332e = new C19350a(new C13570b());

    /* renamed from: g */
    public final C13572d f39334g = new C13572d();

    /* renamed from: e.a.f.a.b.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/f/a/b/b/a$a.class */
    public static final class View$OnClickListenerC13569a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f39335a;

        /* renamed from: b */
        public final /* synthetic */ Object f39336b;

        public View$OnClickListenerC13569a(int i, Object obj) {
            this.f39335a = i;
            this.f39336b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f39335a;
            if (i == 0) {
                C13576e m21618RA = ((C13568a) this.f39336b).m21618RA();
                AbstractC13575d abstractC13575d = (AbstractC13575d) m21618RA.f57683a;
                if (abstractC13575d != null) {
                    abstractC13575d.mo21611wt();
                }
                m21618RA.f39342b.mo21073H1();
            } else if (i == 1) {
                C13576e m21618RA2 = ((C13568a) this.f39336b).m21618RA();
                m21618RA2.f39342b.mo21062p0();
                AbstractC13575d abstractC13575d2 = (AbstractC13575d) m21618RA2.f57683a;
                if (abstractC13575d2 == null) {
                    return;
                }
                abstractC13575d2.mo21613iw();
            } else if (i != 2) {
                throw null;
            } else {
                C13576e m21618RA3 = ((C13568a) this.f39336b).m21618RA();
                m21618RA3.f39342b.mo21062p0();
                AbstractC13575d abstractC13575d3 = (AbstractC13575d) m21618RA3.f57683a;
                if (abstractC13575d3 == null) {
                    return;
                }
                abstractC13575d3.mo21613iw();
            }
        }
    }

    /* renamed from: e.a.f.a.b.b.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/b/a$b.class */
    public static final class C13570b extends m implements s1.z.b.l<C13568a, C13747f> {
        public C13570b() {
            super(1);
        }

        /* renamed from: d */
        public Object m21617d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4013R.C4015id.button_close;
            ImageButton imageButton = (ImageButton) requireView.findViewById(i);
            if (imageButton != null) {
                i = C4013R.C4015id.button_delete;
                ImageButton imageButton2 = (ImageButton) requireView.findViewById(i);
                if (imageButton2 != null) {
                    i = C4013R.C4015id.dialpad;
                    Dialpad dialpad = (Dialpad) requireView.findViewById(i);
                    if (dialpad != null) {
                        i = C4013R.C4015id.frame_layout;
                        FrameLayout frameLayout = (FrameLayout) requireView.findViewById(i);
                        if (frameLayout != null) {
                            i = C4013R.C4015id.keypad;
                            ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                            if (constraintLayout != null) {
                                i = C4013R.C4015id.text_keypad_input;
                                EditText editText = (EditText) requireView.findViewById(i);
                                if (editText != null) {
                                    i = C4013R.C4015id.view_outside_area;
                                    FrameLayout frameLayout2 = (FrameLayout) requireView.findViewById(i);
                                    if (frameLayout2 != null) {
                                        return new C13747f((ConstraintLayout) requireView, imageButton, imageButton2, dialpad, frameLayout, constraintLayout, editText, frameLayout2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.f.a.b.b.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/b/a$c.class */
    public static final class C13571c {
        public C13571c(f fVar) {
        }
    }

    /* renamed from: e.a.f.a.b.b.a$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/b/a$d.class */
    public static final class C13572d implements AbstractC19614e {
        public C13572d() {
            C13568a.this = r4;
        }

        @Override // p193e.p194a.p1158q3.AbstractC19614e
        /* renamed from: U4 */
        public void mo13098U4(char c, DialpadKeyActionState dialpadKeyActionState) {
            s1.z.c.l.e(dialpadKeyActionState, "dialpadKeyState");
            if (dialpadKeyActionState == DialpadKeyActionState.UP) {
                C13576e m21618RA = C13568a.this.m21618RA();
                AbstractC13575d abstractC13575d = (AbstractC13575d) m21618RA.f57683a;
                if (abstractC13575d != null) {
                    abstractC13575d.mo21612o9(String.valueOf(c));
                }
                m21618RA.f39342b.mo21060t1(c);
            }
        }
    }

    /* renamed from: QA */
    public final C13747f m21619QA() {
        return (C13747f) this.f39332e.m34468b(this, f39330h[0]);
    }

    /* renamed from: RA */
    public final C13576e m21618RA() {
        C13576e c13576e = this.f39333f;
        if (c13576e != null) {
            return c13576e;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p723b.AbstractC13575d
    /* renamed from: iw */
    public void mo21613iw() {
        FragmentManager supportFragmentManager;
        n3.r.a.l activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        s1.z.c.l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
        if (supportFragmentManager.m42940M() == 0) {
            return;
        }
        supportFragmentManager.m42951B(new FragmentManager.C0177n("KEYPAD_FRAGMENT_TAG", -1, 1), false);
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p723b.AbstractC13575d
    /* renamed from: o9 */
    public void mo21612o9(String str) {
        s1.z.c.l.e(str, "input");
        m21619QA().f39867e.append(str);
    }

    public Animation onCreateAnimation(int i, boolean z, int i2) {
        Animation animation;
        if (z) {
            animation = AnimationUtils.loadAnimation(getActivity(), C4013R.anim.fast_slide_in_up);
            s1.z.c.l.d(animation, "AnimationUtils.loadAnima… R.anim.fast_slide_in_up)");
        } else {
            animation = AnimationUtils.loadAnimation(getActivity(), C4013R.anim.fast_slide_out_down);
            s1.z.c.l.d(animation, "AnimationUtils.loadAnima…anim.fast_slide_out_down)");
        }
        return animation;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4013R.layout.fragment_keypad, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…keypad, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C13576e c13576e = this.f39333f;
        if (c13576e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c13576e.f57683a = null;
        C13568a.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C13568a.super.onViewCreated(view, bundle);
        C13576e c13576e = this.f39333f;
        if (c13576e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c13576e.mo9029Y0(this);
        C13747f m21619QA = m21619QA();
        m21619QA.f39865c.setDialpadListener(this.f39334g);
        Dialpad dialpad = m21619QA.f39865c;
        int i = C4013R.color.incallui_white_text_color;
        int i2 = C4013R.color.incallui_secondary_text_color;
        int childCount = dialpad.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = dialpad.getChildAt(i3);
            Objects.requireNonNull(childAt, "null cannot be cast to non-null type com.truecaller.dialpad_view.DialpadKey");
            C19612c c19612c = (C19612c) childAt;
            Paint paint = c19612c.f54505a;
            Context context = c19612c.getContext();
            Object obj = C26467a.f74235a;
            paint.setColor(C26467a.C26471d.m1787a(context, i));
            c19612c.f54506b.setColor(C26467a.C26471d.m1787a(c19612c.getContext(), i2));
            Drawable drawable = c19612c.f54515k;
            if (drawable != null) {
                drawable.setTint(C26467a.C26471d.m1787a(c19612c.getContext(), i));
            }
            c19612c.invalidate();
        }
        m21619QA.f39864b.setOnClickListener(new View$OnClickListenerC13569a(0, this));
        m21619QA.f39863a.setOnClickListener(new View$OnClickListenerC13569a(1, this));
        m21619QA.f39868f.setOnClickListener(new View$OnClickListenerC13569a(2, this));
    }

    @Override // p193e.p194a.p717f.p718a.p721b.p723b.AbstractC13575d
    /* renamed from: wt */
    public void mo21611wt() {
        EditText editText = m21619QA().f39867e;
        s1.z.c.l.d(editText, "binding.textKeypadInput");
        int length = editText.getText().length();
        if (length > 0) {
            EditText editText2 = m21619QA().f39867e;
            s1.z.c.l.d(editText2, "binding.textKeypadInput");
            editText2.getText().delete(length - 1, length);
        }
    }
}
