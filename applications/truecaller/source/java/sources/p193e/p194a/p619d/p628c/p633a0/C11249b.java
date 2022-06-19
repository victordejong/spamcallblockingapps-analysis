package p193e.p194a.p619d.p628c.p633a0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageButton;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import androidx.fragment.app.Fragment;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.ArrowImageViewAnimation;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.p192ui.VoipActivity;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p654s.C11787c;
import p193e.p194a.p851h5.AbstractC14965w;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.u.i;
import s1.w.f;
import s1.z.c.m;
import s1.z.c.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bK\u0010\u001eJ+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u000e\u0010\u0014\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u000f\u0010 \u001a\u00020\rH\u0016¢\u0006\u0004\b \u0010\u001eJ\u000f\u0010!\u001a\u00020\rH\u0016¢\u0006\u0004\b!\u0010\u001eJ\u001f\u0010$\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0010H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\rH\u0016¢\u0006\u0004\b&\u0010\u001eJ\u000f\u0010'\u001a\u00020\rH\u0016¢\u0006\u0004\b'\u0010\u001eJ\u000f\u0010(\u001a\u00020\rH\u0016¢\u0006\u0004\b(\u0010\u001eJ\u0017\u0010*\u001a\u00020\r2\u0006\u0010)\u001a\u00020\u0013H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\rH\u0016¢\u0006\u0004\b,\u0010\u001eR\"\u00104\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010<\u001a\u0002058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001d\u0010B\u001a\u00020=8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010I¨\u0006L"}, d2 = {"Le/a/d/c/a0/b;", "Le/a/d/c/c;", "Le/a/d/c/a0/h;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "", "Z2", "()Z", "n2", "y1", "()V", "I0", "m0", "U4", "iconRes", "colorRes", "W9", "(II)V", "L", "xg", "S", "url", "Av", "(Ljava/lang/String;)V", "onDestroyView", "Le/a/d/c/a0/g;", "e", "Le/a/d/c/a0/g;", "RA", "()Le/a/d/c/a0/g;", "setPresenter", "(Le/a/d/c/a0/g;)V", "presenter", "Le/a/h5/w;", "f", "Le/a/h5/w;", "getTcPermissionsUtil", "()Le/a/h5/w;", "setTcPermissionsUtil", "(Le/a/h5/w;)V", "tcPermissionsUtil", "Le/a/d/s/c;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/d/s/c;", "binding", "Le/a/p5/a0;", "g", "Le/a/p5/a0;", "getPermissionUtil", "()Le/a/p5/a0;", "setPermissionUtil", "(Le/a/p5/a0;)V", "permissionUtil", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.c.a0.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/b.class */
public final class C11249b extends AbstractC11248a implements AbstractC11258h {

    /* renamed from: i */
    public static final /* synthetic */ l[] f33185i = {C22128a.m8621g0(C11249b.class, "binding", "getBinding()Lcom/truecaller/voip/databinding/FragmentGroupVoipIncomingBinding;", 0)};
    @Inject

    /* renamed from: e */
    public AbstractC11257g f33186e;
    @Inject

    /* renamed from: f */
    public AbstractC14965w f33187f;
    @Inject

    /* renamed from: g */
    public AbstractC19219a0 f33188g;

    /* renamed from: h */
    public final ViewBindingProperty f33189h = new C19350a(new C11250a());

    /* renamed from: e.a.d.c.a0.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/b$a.class */
    public static final class C11250a extends m implements s1.z.b.l<C11249b, C11787c> {
        public C11250a() {
            super(1);
        }

        /* renamed from: d */
        public Object m24965d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4781R.C4783id.button_accept_call;
            FloatingActionButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                i = C4781R.C4783id.button_message;
                ImageButton imageButton = (ImageButton) requireView.findViewById(i);
                if (imageButton != null) {
                    i = C4781R.C4783id.button_reject_call;
                    FloatingActionButton findViewById2 = requireView.findViewById(i);
                    if (findViewById2 != null) {
                        MotionLayout motionLayout = requireView;
                        i = C4781R.C4783id.view_answer_arrows;
                        ArrowImageViewAnimation arrowImageViewAnimation = (ArrowImageViewAnimation) requireView.findViewById(i);
                        if (arrowImageViewAnimation != null) {
                            return new C11787c(motionLayout, findViewById, imageButton, findViewById2, motionLayout, arrowImageViewAnimation);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.d.c.a0.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/b$b.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC11251b implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f33190a;

        /* renamed from: b */
        public final /* synthetic */ C11787c f33191b;

        /* renamed from: c */
        public final /* synthetic */ C11249b f33192c;

        /* renamed from: d */
        public final /* synthetic */ View f33193d;

        public ViewTreeObserver$OnGlobalLayoutListenerC11251b(View view, C11787c c11787c, C11249b c11249b, View view2, Bundle bundle) {
            this.f33190a = view;
            this.f33191b = c11787c;
            this.f33192c = c11249b;
            this.f33193d = view2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f33190a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            FloatingActionButton floatingActionButton = this.f33191b.f34634c;
            s1.z.c.l.d(floatingActionButton, "buttonRejectCall");
            int left = floatingActionButton.getLeft();
            FloatingActionButton floatingActionButton2 = this.f33191b.f34634c;
            s1.z.c.l.d(floatingActionButton2, "buttonRejectCall");
            int right = (floatingActionButton2.getRight() + left) / 2;
            ImageButton imageButton = this.f33191b.f34633b;
            s1.z.c.l.d(imageButton, "buttonMessage");
            int left2 = imageButton.getLeft();
            ImageButton imageButton2 = this.f33191b.f34633b;
            s1.z.c.l.d(imageButton2, "buttonMessage");
            int right2 = (imageButton2.getRight() + left2) / 2;
            VoipActivity activity = this.f33192c.getActivity();
            n3.r.a.l lVar = activity;
            if (!(activity instanceof VoipActivity)) {
                lVar = null;
            }
            VoipActivity voipActivity = lVar;
            if (voipActivity != null) {
                voipActivity.m34294ra(right, right2, false);
            }
        }
    }

    /* renamed from: e.a.d.c.a0.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/b$c.class */
    public static final class DialogInterface$OnClickListenerC11252c implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f33195b;

        public DialogInterface$OnClickListenerC11252c(List list) {
            C11249b.this = r4;
            this.f33195b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC11257g m24966RA = C11249b.this.m24966RA();
            int intValue = ((Number) this.f33195b.get(i)).intValue();
            C11259i c11259i = (C11259i) m24966RA;
            Objects.requireNonNull(c11259i);
            d.w2(c11259i, (f) null, (j0) null, new C11264k(c11259i, intValue, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: Av */
    public void mo24964Av(String str) {
        s1.z.c.l.e(str, "url");
        ComponentCallbacks2C22222c.m8445f(m24967QA().f34633b).mo8407r(str).m8427O(m24967QA().f34633b);
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: I0 */
    public void mo24963I0() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            AbstractC19219a0 abstractC19219a0 = this.f33188g;
            if (abstractC19219a0 != null) {
                C19291g.m13498x1(context, abstractC19219a0);
            } else {
                s1.z.c.l.l("permissionUtil");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: L */
    public void mo24962L() {
        C11787c m24967QA = m24967QA();
        MotionLayout motionLayout = m24967QA.f34635d;
        motionLayout.f1(1.0f);
        motionLayout.setTransitionListener((MotionLayout$h) null);
        MotionLayout motionLayout2 = m24967QA.f34635d;
        s1.z.c.l.d(motionLayout2, "motionLayout");
        motionLayout2.setProgress(0.0f);
        motionLayout.q1(C4781R.C4783id.incoming_call_accepted_start_set, C4781R.C4783id.incoming_call_accepted_end_set);
        motionLayout.f1(1.0f);
    }

    /* renamed from: QA */
    public final C11787c m24967QA() {
        return (C11787c) this.f33189h.m34468b(this, f33185i[0]);
    }

    /* renamed from: RA */
    public final AbstractC11257g m24966RA() {
        AbstractC11257g abstractC11257g = this.f33186e;
        if (abstractC11257g != null) {
            return abstractC11257g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: S */
    public void mo24961S() {
        new AlertDialog.Builder(getActivity()).setItems(C4781R.array.voip_button_message_options, new DialogInterface$OnClickListenerC11252c(i.T(new Integer[]{Integer.valueOf(C4781R.string.voip_reject_message_first_option), Integer.valueOf(C4781R.string.voip_reject_message_second_option), Integer.valueOf(C4781R.string.voip_reject_message_third_option), Integer.valueOf(C4781R.string.voip_reject_message_custom_option)}))).show();
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: U4 */
    public void mo24960U4() {
        m24967QA().f34635d.f1(0.0f);
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: W9 */
    public void mo24959W9(int i, int i2) {
        C11787c m24967QA = m24967QA();
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            FloatingActionButton floatingActionButton = m24967QA.f34632a;
            Object obj = C26467a.f74235a;
            ColorStateList valueOf = ColorStateList.valueOf(C26467a.C26471d.m1787a(activity, i2));
            AtomicInteger atomicInteger = C26614s.f74505a;
            floatingActionButton.setBackgroundTintList(valueOf);
            m24967QA.f34632a.setImageResource(i);
        }
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: Z2 */
    public boolean mo24958Z2() {
        AbstractC14965w abstractC14965w = this.f33187f;
        if (abstractC14965w != null) {
            return abstractC14965w.mo19351f();
        }
        s1.z.c.l.l("tcPermissionsUtil");
        throw null;
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: m0 */
    public void mo24957m0() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Intent data = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", context.getPackageName(), null));
            s1.z.c.l.d(data, "Intent(Settings.ACTION_A…ntext.packageName, null))");
            startActivity(data);
        }
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: n2 */
    public boolean mo24956n2() {
        String str;
        AbstractC14965w abstractC14965w = this.f33187f;
        if (abstractC14965w == null) {
            s1.z.c.l.l("tcPermissionsUtil");
            throw null;
        }
        String[] mo19349h = abstractC14965w.mo19349h();
        int length = mo19349h.length;
        boolean z = false;
        int i = 0;
        while (true) {
            str = null;
            if (i >= length) {
                break;
            }
            str = mo19349h[i];
            if (shouldShowRequestPermissionRationale(str)) {
                break;
            }
            i++;
        }
        if (str != null) {
            z = true;
        }
        return z;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.fragment_group_voip_incoming, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…coming, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC11257g abstractC11257g = this.f33186e;
        if (abstractC11257g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC11257g).mo9806c();
        C11249b.super.onDestroyView();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC11258h abstractC11258h;
        AbstractC11258h abstractC11258h2;
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        if (i != 1000) {
            return;
        }
        AbstractC11257g abstractC11257g = this.f33186e;
        if (abstractC11257g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC14965w abstractC14965w = this.f33187f;
        if (abstractC14965w == null) {
            s1.z.c.l.l("tcPermissionsUtil");
            throw null;
        }
        boolean mo19351f = abstractC14965w.mo19351f();
        C11259i c11259i = (C11259i) abstractC11257g;
        if (mo19351f) {
            c11259i.m24953Ij();
            return;
        }
        AbstractC11258h abstractC11258h3 = (AbstractC11258h) c11259i.f57683a;
        if (abstractC11258h3 != null) {
            abstractC11258h3.mo24963I0();
            abstractC11258h3.mo24960U4();
        }
        if (!c11259i.f33205d || (abstractC11258h = (AbstractC11258h) c11259i.f57683a) == null || abstractC11258h.mo24956n2() || (abstractC11258h2 = (AbstractC11258h) c11259i.f57683a) == null) {
            return;
        }
        abstractC11258h2.mo24957m0();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C11787c m24967QA = m24967QA();
        C11249b.super.onViewCreated(view, bundle);
        AbstractC11257g abstractC11257g = this.f33186e;
        if (abstractC11257g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C11259i) abstractC11257g).mo9029Y0(this);
        C11787c m24967QA2 = m24967QA();
        MotionLayout motionLayout = m24967QA2.f34635d;
        s1.z.c.l.d(motionLayout, "motionLayout");
        motionLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC11255e(motionLayout, m24967QA2, this));
        C11787c m24967QA3 = m24967QA();
        m24967QA3.f34634c.setOnClickListener(new m1(0, this));
        m24967QA3.f34633b.setOnClickListener(new m1(1, this));
        C11787c m24967QA4 = m24967QA();
        y yVar = new y();
        yVar.a = false;
        m24967QA4.f34635d.setOnTouchListener(new View$OnTouchListenerC11253c(m24967QA4, yVar, this));
        m24967QA4.f34635d.setTransitionListener(new C11254d(m24967QA4, yVar, this));
        MotionLayout motionLayout2 = m24967QA.f34635d;
        s1.z.c.l.d(motionLayout2, "motionLayout");
        motionLayout2.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC11251b(motionLayout2, m24967QA, this, view, bundle));
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: xg */
    public void mo24955xg() {
        MotionLayout motionLayout = m24967QA().f34635d;
        motionLayout.q1(C4781R.C4783id.incoming_call_ended_start_set, C4781R.C4783id.incoming_call_ended_end_set);
        motionLayout.f1(1.0f);
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.AbstractC11258h
    /* renamed from: y1 */
    public void mo24954y1() {
        AbstractC14965w abstractC14965w = this.f33187f;
        if (abstractC14965w != null) {
            requestPermissions(abstractC14965w.mo19349h(), 1000);
        } else {
            s1.z.c.l.l("tcPermissionsUtil");
            throw null;
        }
    }
}
