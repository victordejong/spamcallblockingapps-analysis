package p193e.p194a.p619d.p620a;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Spinner;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.voip.C4781R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p654s.C11794j;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import p193e.p194a.p619d.p661w.p662j.AbstractC12174m;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.s;
import s1.u.u;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018�� B2\u00020\u00012\u00020\u0002:\u0001CB\u0007¢\u0006\u0004\bA\u0010\u001bJ+\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\r\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J)\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR(\u0010$\u001a\u00020\u001c8��@��X\u0081.¢\u0006\u0018\n\u0004\b\u001d\u0010\u001e\u0012\u0004\b#\u0010\u001b\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010,\u001a\u00020%8��@��X\u0081.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001d\u00102\u001a\u00020-8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\"\u0010:\u001a\u0002038��@��X\u0081.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u001c8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010 ¨\u0006D"}, d2 = {"Le/a/d/a/b;", "Le/m/a/g/e/e;", "Lq3/a/i0;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "onDestroyView", "()V", "Ls1/w/f;", "e", "Ls1/w/f;", "getUiContext$voip_release", "()Ls1/w/f;", "setUiContext$voip_release", "(Ls1/w/f;)V", "getUiContext$voip_release$annotations", "uiContext", "Le/a/d/w/d;", "f", "Le/a/d/w/d;", "getInvitationManager$voip_release", "()Le/a/d/w/d;", "setInvitationManager$voip_release", "(Le/a/d/w/d;)V", "invitationManager", "Le/a/d/s/j;", "h", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/d/s/j;", "binding", "Le/a/d/c0/j1;", "g", "Le/a/d/c0/j1;", "getSupport$voip_release", "()Le/a/d/c0/j1;", "setSupport$voip_release", "(Le/a/d/c0/j1;)V", "support", "Lq3/a/y;", "i", "Lq3/a/y;", "job", "getCoroutineContext", "coroutineContext", "<init>", "k", AbstractC2405c.f7629a, "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/b.class */
public final class C10981b extends AbstractC11027m implements i0 {

    /* renamed from: j */
    public static final /* synthetic */ l[] f32525j = {C22128a.m8621g0(C10981b.class, "binding", "getBinding()Lcom/truecaller/voip/databinding/VoipDebugFragmentInvitationBinding;", 0)};

    /* renamed from: k */
    public static final C10984c f32526k = new C10984c(null);
    @Inject

    /* renamed from: e */
    public f f32527e;
    @Inject

    /* renamed from: f */
    public AbstractC12095d f32528f;
    @Inject

    /* renamed from: g */
    public AbstractC11421j1 f32529g;

    /* renamed from: h */
    public final ViewBindingProperty f32530h = new C19350a(new C10983b());

    /* renamed from: i */
    public final y f32531i = d.j((p1) null, 1, (Object) null);

    /* renamed from: e.a.d.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/d/a/b$a.class */
    public static final class View$OnClickListenerC10982a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f32532a;

        /* renamed from: b */
        public final /* synthetic */ Object f32533b;

        /* renamed from: c */
        public final /* synthetic */ Object f32534c;

        /* renamed from: d */
        public final /* synthetic */ Object f32535d;

        public View$OnClickListenerC10982a(int i, Object obj, Object obj2, Object obj3) {
            this.f32532a = i;
            this.f32533b = obj;
            this.f32534c = obj2;
            this.f32535d = obj3;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f32532a;
            if (i == 0) {
                n3.r.a.l activity = ((C10981b) this.f32533b).getActivity();
                if (activity == null) {
                    return;
                }
                activity.recreate();
            } else if (i != 1) {
                throw null;
            } else {
                Fragment fragment = (C10981b) this.f32533b;
                AbstractC11421j1 abstractC11421j1 = fragment.f32529g;
                if (abstractC11421j1 != null) {
                    abstractC11421j1.mo24112f(fragment, 123, u.a);
                } else {
                    s1.z.c.l.l("support");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.d.a.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/b$b.class */
    public static final class C10983b extends m implements s1.z.b.l<C10981b, C11794j> {
        public C10983b() {
            super(1);
        }

        /* renamed from: d */
        public Object m25440d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = C4781R.C4783id.button_add_peers;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4781R.C4783id.button_restart;
                Button button2 = (Button) requireView.findViewById(i);
                if (button2 != null) {
                    i = C4781R.C4783id.spinner_state;
                    Spinner spinner = (Spinner) requireView.findViewById(i);
                    if (spinner != null) {
                        return new C11794j(requireView, button, button2, spinner);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.d.a.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/b$c.class */
    public static final class C10984c {
        public C10984c(s1.z.c.f fVar) {
        }
    }

    @e(c = "com.truecaller.voip.debug.DebugInvitationFragment$onActivityResult$1", f = "DebugInvitationFragment.kt", l = {96}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/b$d.class */
    public static final class C10985d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f32536e;

        /* renamed from: f */
        public Object f32537f;

        /* renamed from: g */
        public int f32538g;

        /* renamed from: i */
        public final /* synthetic */ Intent f32540i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10985d(Intent intent, s1.w.d dVar) {
            super(2, dVar);
            C10981b.this = r5;
            this.f32540i = intent;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25439i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C10985d(this.f32540i, dVar);
        }

        /* renamed from: k */
        public final Object m25438k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C10985d(this.f32540i, dVar).m25437s(s.a);
        }

        /* renamed from: s */
        public final Object m25437s(Object obj) {
            Iterator it;
            C11033p c11033p;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f32538g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Intent intent = this.f32540i;
                if (intent != null) {
                    AbstractC11421j1 abstractC11421j1 = C10981b.this.f32529g;
                    if (abstractC11421j1 == null) {
                        s1.z.c.l.l("support");
                        throw null;
                    }
                    String[] stringArrayExtra = intent.getStringArrayExtra(abstractC11421j1.mo24128A());
                    if (stringArrayExtra != null) {
                        Set<String> m3887j3 = C25225a.m3887j3(stringArrayExtra);
                        AbstractC12095d abstractC12095d = C10981b.this.f32528f;
                        if (abstractC12095d == null) {
                            s1.z.c.l.l("invitationManager");
                            throw null;
                        }
                        Object value = abstractC12095d.getState().getValue();
                        Object obj2 = value;
                        if (!(value instanceof AbstractC12111g.C12112a)) {
                            obj2 = null;
                        }
                        AbstractC12111g.C12112a c12112a = (AbstractC12111g.C12112a) obj2;
                        AbstractC12174m abstractC12174m = c12112a != null ? c12112a.f35449a : null;
                        if (!(abstractC12174m instanceof C10975a0)) {
                            abstractC12174m = null;
                        }
                        C10975a0 c10975a0 = (C10975a0) abstractC12174m;
                        if (c10975a0 != null) {
                            c11033p = c10975a0.f32515f;
                            if (c11033p != null) {
                                ArrayList arrayList = new ArrayList(C25225a.m4004J(m3887j3, 10));
                                for (String str : m3887j3) {
                                    s1.z.c.l.d(str, "it");
                                    arrayList.add(new Integer(c11033p.m25382w(str)));
                                }
                                Set<Integer> d1 = s1.u.i.d1(arrayList);
                                c11033p.m25384u(d1);
                                it = d1.iterator();
                            }
                        }
                        return sVar;
                    }
                }
                return sVar;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                it = (Iterator) this.f32537f;
                C25225a.m3932a3(obj);
                c11033p = (C11033p) this.f32536e;
            }
            while (it.hasNext()) {
                int intValue = ((Number) it.next()).intValue();
                this.f32536e = c11033p;
                this.f32537f = it;
                this.f32538g = 1;
                if (c11033p.m25380y(intValue, this) == aVar) {
                    return aVar;
                }
            }
            C10981b.this.dismissAllowingStateLoss();
            return sVar;
        }
    }

    public f getCoroutineContext() {
        f fVar = this.f32527e;
        if (fVar != null) {
            return fVar.plus(this.f32531i);
        }
        s1.z.c.l.l("uiContext");
        throw null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C10981b.super.onActivityResult(i, i2, intent);
        if (i == 123) {
            d.w2(this, (f) null, (j0) null, new C10985d(intent, null), 3, (Object) null);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        e.m.a.g.e.d onCreateDialog = C10981b.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        e.m.a.g.e.d dVar = onCreateDialog;
        BottomSheetBehavior e = dVar.e();
        e.M(3);
        e.D = true;
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.voip_debug_fragment_invitation, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…tation, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        d.T(this.f32531i, (CancellationException) null, 1, (Object) null);
        C10981b.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C11794j c11794j = (C11794j) this.f32530h.m34468b(this, f32525j[0]);
        C10981b.super.onViewCreated(view, bundle);
        c11794j.f34679c.setOnClickListener(new View$OnClickListenerC10982a(0, this, view, bundle));
        c11794j.f34678b.setOnClickListener(new View$OnClickListenerC10982a(1, this, view, bundle));
        d.w2(this, (f) null, (j0) null, new C11012i(this, null), 3, (Object) null);
    }
}
