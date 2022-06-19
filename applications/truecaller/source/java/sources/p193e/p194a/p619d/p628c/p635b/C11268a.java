package p193e.p194a.p619d.p628c.p635b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.CompoundButton;
import android.widget.ToggleButton;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.p192ui.VoipActivity;
import com.truecaller.voip.p192ui.incoming.audioroutepicker.AudioRouteViewItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.r.a.k;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11203e;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11206h;
import p193e.p194a.p619d.p628c.p633a0.p634l.AbstractC11265a;
import p193e.p194a.p619d.p628c.p633a0.p634l.C11267c;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p654s.C11788d;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import s1.a.l;
import s1.i;
import s1.s;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0001\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b?\u0010\u0012J+\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u001e\u0010\u0018J!\u0010!\u001a\u00020\u000e2\b\b\u0001\u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u0015H\u0016¢\u0006\u0004\b!\u0010\"J%\u0010&\u001a\u00020\u000e2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00190#2\u0006\u0010%\u001a\u00020\u0019H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u000eH\u0016¢\u0006\u0004\b(\u0010\u0012J\u000f\u0010)\u001a\u00020\u000eH\u0016¢\u0006\u0004\b)\u0010\u0012R\u001d\u0010/\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R(\u00104\u001a\u0014\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R(\u00106\u001a\u0014\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000e008\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00103R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=¨\u0006@"}, d2 = {"Le/a/d/c/b/a;", "Le/a/d/c/c;", "Le/a/d/c/b/h;", "Le/a/d/c/a0/l/a;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "Cq", "Pl", "", "enabled", "V", "(Z)V", "Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;", "item", "Er", "(Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V", "checked", "v3", "", RemoteMessageConst.Notification.ICON, "D1", "(IZ)V", "", "items", "selectedViewItem", "k3", "(Ljava/util/List;Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)V", "k2", "q", "Le/a/d/s/d;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/d/s/d;", "binding", "Lkotlin/Function2;", "Landroid/widget/CompoundButton;", "h", "Ls1/z/b/p;", "muteCheckedChangedListener", "g", "audioRouteCheckedChangedListener", "Le/a/d/c/b/g;", "e", "Le/a/d/c/b/g;", "RA", "()Le/a/d/c/b/g;", "setPresenter", "(Le/a/d/c/b/g;)V", "presenter", "<init>", "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d.c.b.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/a.class */
public final class C11268a extends AbstractC11272b implements AbstractC11278h, AbstractC11265a {

    /* renamed from: i */
    public static final /* synthetic */ l[] f33223i = {C22128a.m8621g0(C11268a.class, "binding", "getBinding()Lcom/truecaller/voip/databinding/FragmentGroupVoipOngoingBinding;", 0)};
    @Inject

    /* renamed from: e */
    public AbstractC11277g f33224e;

    /* renamed from: f */
    public final ViewBindingProperty f33225f = new C19350a(new C11270b());

    /* renamed from: g */
    public final p<CompoundButton, Boolean, s> f33226g = new C11269a(0, this);

    /* renamed from: h */
    public final p<CompoundButton, Boolean, s> f33227h = new C11269a(1, this);

    /* renamed from: e.a.d.c.b.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d/c/b/a$a.class */
    public static final class C11269a extends m implements p<CompoundButton, Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ int f33228b;

        /* renamed from: c */
        public final /* synthetic */ Object f33229c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11269a(int i, Object obj) {
            super(2);
            this.f33228b = i;
            this.f33229c = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v35, types: [java.lang.Object, com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Speaker] */
        /* JADX WARN: Type inference failed for: r0v74, types: [com.truecaller.voip.ui.incoming.audioroutepicker.AudioRouteViewItem$Bluetooth] */
        /* renamed from: k */
        public final Object m24935k(Object obj, Object obj2) {
            s sVar = s.a;
            int i = this.f33228b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                boolean booleanValue = ((Boolean) obj2).booleanValue();
                s1.z.c.l.e((CompoundButton) obj, "<anonymous parameter 0>");
                AbstractC11822b m24895Ij = ((C11292o) ((C11268a) this.f33229c).m24936RA()).m24895Ij();
                if (m24895Ij != null) {
                    m24895Ij.mo23920e(booleanValue);
                }
                return sVar;
            }
            boolean booleanValue2 = ((Boolean) obj2).booleanValue();
            s1.z.c.l.e((CompoundButton) obj, "<anonymous parameter 0>");
            C11292o c11292o = (C11292o) ((C11268a) this.f33229c).m24936RA();
            AbstractC11822b m24895Ij2 = c11292o.m24895Ij();
            if (m24895Ij2 != null) {
                C11519b c11519b = (C11519b) m24895Ij2.mo23966Y().getValue();
                if (c11519b.f33812b.isEmpty()) {
                    m24895Ij2.mo23855c(booleanValue2 ? AbstractC11514a.C11517c.f33809a : AbstractC11514a.C11516b.f33808a);
                } else {
                    String mo13768b = c11292o.f33268f.mo13768b(C4781R.string.voip_button_phone, new Object[0]);
                    s1.z.c.l.d(mo13768b, "resourceProvider.getStri…string.voip_button_phone)");
                    AudioRouteViewItem.Phone phone = new AudioRouteViewItem.Phone(mo13768b);
                    String mo13768b2 = c11292o.f33268f.mo13768b(C4781R.string.voip_button_speaker, new Object[0]);
                    s1.z.c.l.d(mo13768b2, "resourceProvider.getStri…ring.voip_button_speaker)");
                    ?? speaker = new AudioRouteViewItem.Speaker(mo13768b2);
                    List<C19263a> list = c11519b.f33812b;
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                    for (C19263a c19263a : list) {
                        arrayList.add(new AudioRouteViewItem.Bluetooth(c19263a.f53645a, c19263a.f53646b));
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(arrayList);
                    arrayList2.add(speaker);
                    arrayList2.add(phone);
                    AbstractC11514a abstractC11514a = c11519b.f33811a;
                    if (!(abstractC11514a instanceof AbstractC11514a.C11516b) && !(abstractC11514a instanceof AbstractC11514a.C11518d)) {
                        if (abstractC11514a instanceof AbstractC11514a.C11517c) {
                            phone = speaker;
                        } else if (!(abstractC11514a instanceof AbstractC11514a.C11515a)) {
                            throw new i();
                        } else {
                            C19263a c19263a2 = ((AbstractC11514a.C11515a) abstractC11514a).f33807a;
                            phone = new AudioRouteViewItem.Bluetooth(c19263a2.f53645a, c19263a2.f53646b);
                        }
                    }
                    AbstractC11278h abstractC11278h = (AbstractC11278h) c11292o.f57683a;
                    if (abstractC11278h != null) {
                        abstractC11278h.mo24925k3(arrayList2, phone);
                    }
                    AbstractC11278h abstractC11278h2 = (AbstractC11278h) c11292o.f57683a;
                    if (abstractC11278h2 != null) {
                        abstractC11278h2.mo24929D1(C19291g.m13613K1(c11519b.f33811a), true);
                    }
                }
            }
            return sVar;
        }
    }

    /* renamed from: e.a.d.c.b.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/a$b.class */
    public static final class C11270b extends m implements s1.z.b.l<C11268a, C11788d> {
        public C11270b() {
            super(1);
        }

        /* renamed from: d */
        public Object m24934d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            MotionLayout requireView = fragment.requireView();
            int i = C4781R.C4783id.button_end_call;
            FloatingActionButton findViewById = requireView.findViewById(i);
            if (findViewById != null) {
                MotionLayout motionLayout = requireView;
                i = C4781R.C4783id.toggle_audio_route;
                ToggleButton toggleButton = (ToggleButton) requireView.findViewById(i);
                if (toggleButton != null) {
                    i = C4781R.C4783id.toggle_mute;
                    ToggleButton toggleButton2 = (ToggleButton) requireView.findViewById(i);
                    if (toggleButton2 != null) {
                        return new C11788d(motionLayout, findViewById, motionLayout, toggleButton, toggleButton2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.d.c.b.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/a$c.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC11271c implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f33230a;

        /* renamed from: b */
        public final /* synthetic */ C11788d f33231b;

        /* renamed from: c */
        public final /* synthetic */ C11268a f33232c;

        /* renamed from: d */
        public final /* synthetic */ View f33233d;

        public ViewTreeObserver$OnGlobalLayoutListenerC11271c(View view, C11788d c11788d, C11268a c11268a, View view2, Bundle bundle) {
            this.f33230a = view;
            this.f33231b = c11788d;
            this.f33232c = c11268a;
            this.f33233d = view2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f33230a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ToggleButton toggleButton = this.f33231b.f34638c;
            s1.z.c.l.d(toggleButton, "toggleAudioRoute");
            int left = toggleButton.getLeft();
            ToggleButton toggleButton2 = this.f33231b.f34638c;
            s1.z.c.l.d(toggleButton2, "toggleAudioRoute");
            int right = (toggleButton2.getRight() + left) / 2;
            ToggleButton toggleButton3 = this.f33231b.f34639d;
            s1.z.c.l.d(toggleButton3, "toggleMute");
            int left2 = toggleButton3.getLeft();
            ToggleButton toggleButton4 = this.f33231b.f34639d;
            s1.z.c.l.d(toggleButton4, "toggleMute");
            int right2 = (toggleButton4.getRight() + left2) / 2;
            VoipActivity activity = this.f33232c.getActivity();
            n3.r.a.l lVar = activity;
            if (!(activity instanceof VoipActivity)) {
                lVar = null;
            }
            VoipActivity voipActivity = lVar;
            if (voipActivity != null) {
                voipActivity.m34294ra(right, right2, true);
                AbstractC11203e abstractC11203e = (AbstractC11203e) ((C11206h) voipActivity.m34296pa().f34619h.getPresenter$voip_release()).f57683a;
                if (abstractC11203e == null) {
                    return;
                }
                abstractC11203e.setModeIncoming(false);
            }
        }
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: Cq */
    public void mo24930Cq() {
        C11788d m24937QA = m24937QA();
        ToggleButton toggleButton = m24937QA.f34638c;
        s1.z.c.l.d(toggleButton, "toggleAudioRoute");
        toggleButton.setEnabled(false);
        ToggleButton toggleButton2 = m24937QA.f34639d;
        s1.z.c.l.d(toggleButton2, "toggleMute");
        toggleButton2.setEnabled(false);
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: D1 */
    public void mo24929D1(int i, boolean z) {
        ToggleButton toggleButton = m24937QA().f34638c;
        Context context = toggleButton.getContext();
        Object obj = C26467a.f74235a;
        toggleButton.setCompoundDrawablesWithIntrinsicBounds(C26467a.C26470c.m1789b(context, i), (Drawable) null, (Drawable) null, (Drawable) null);
        C11273c c11273c = this.f33226g;
        toggleButton.setOnCheckedChangeListener(null);
        toggleButton.setChecked(z);
        C11273c c11273c2 = c11273c;
        if (c11273c != null) {
            c11273c2 = new C11273c(c11273c);
        }
        toggleButton.setOnCheckedChangeListener(c11273c2);
    }

    @Override // p193e.p194a.p619d.p628c.p633a0.p634l.AbstractC11265a
    /* renamed from: Er */
    public void mo24938Er(AudioRouteViewItem audioRouteViewItem) {
        s1.z.c.l.e(audioRouteViewItem, "item");
        AbstractC11277g abstractC11277g = this.f33224e;
        if (abstractC11277g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C11292o c11292o = (C11292o) abstractC11277g;
        Objects.requireNonNull(c11292o);
        s1.z.c.l.e(audioRouteViewItem, "item");
        AbstractC11822b m24895Ij = c11292o.m24895Ij();
        if (m24895Ij != null) {
            m24895Ij.mo23855c(C19291g.m13619I1(audioRouteViewItem));
        }
        AbstractC11278h abstractC11278h = (AbstractC11278h) c11292o.f57683a;
        if (abstractC11278h == null) {
            return;
        }
        abstractC11278h.mo24926k2();
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: Pl */
    public void mo24928Pl() {
        FloatingActionButton floatingActionButton = m24937QA().f34636a;
        s1.z.c.l.d(floatingActionButton, "binding.buttonEndCall");
        floatingActionButton.setEnabled(false);
    }

    /* renamed from: QA */
    public final C11788d m24937QA() {
        return (C11788d) this.f33225f.m34468b(this, f33223i[0]);
    }

    /* renamed from: RA */
    public final AbstractC11277g m24936RA() {
        AbstractC11277g abstractC11277g = this.f33224e;
        if (abstractC11277g != null) {
            return abstractC11277g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: V */
    public void mo24927V(boolean z) {
        C11788d m24937QA = m24937QA();
        FloatingActionButton floatingActionButton = m24937QA.f34636a;
        s1.z.c.l.d(floatingActionButton, "buttonEndCall");
        floatingActionButton.setEnabled(z);
        ToggleButton toggleButton = m24937QA.f34639d;
        s1.z.c.l.d(toggleButton, "toggleMute");
        toggleButton.setEnabled(z);
        ToggleButton toggleButton2 = m24937QA.f34638c;
        s1.z.c.l.d(toggleButton2, "toggleAudioRoute");
        toggleButton2.setEnabled(z);
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: k2 */
    public void mo24926k2() {
        k m42942K = getChildFragmentManager().m42942K("AUDIO_PICKER_FRAGMENT_TAG");
        Fragment fragment = m42942K;
        if (!(m42942K instanceof k)) {
            fragment = null;
        }
        k kVar = fragment;
        if (kVar != null) {
            kVar.dismissAllowingStateLoss();
        }
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: k3 */
    public void mo24925k3(List<? extends AudioRouteViewItem> list, AudioRouteViewItem audioRouteViewItem) {
        s1.z.c.l.e(list, "items");
        s1.z.c.l.e(audioRouteViewItem, "selectedViewItem");
        s1.z.c.l.e(list, "items");
        s1.z.c.l.e(audioRouteViewItem, "selectedItem");
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("Items", new ArrayList<>(list));
        bundle.putParcelable("SelectedItem", audioRouteViewItem);
        C11267c c11267c = new C11267c();
        c11267c.setArguments(bundle);
        c11267c.show(getChildFragmentManager(), "AUDIO_PICKER_FRAGMENT_TAG");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C4781R.layout.fragment_group_voip_ongoing, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…ngoing, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        C11268a.super.onDestroyView();
        AbstractC11277g abstractC11277g = this.f33224e;
        if (abstractC11277g != null) {
            ((AbstractC20574a) abstractC11277g).mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C11788d m24937QA = m24937QA();
        C11268a.super.onViewCreated(view, bundle);
        AbstractC11277g abstractC11277g = this.f33224e;
        if (abstractC11277g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C11292o) abstractC11277g).mo9029Y0(this);
        C11788d m24937QA2 = m24937QA();
        m24937QA2.f34636a.setOnClickListener(new View$OnClickListenerC11275e(this));
        ToggleButton toggleButton = m24937QA2.f34638c;
        C11274d c11274d = this.f33226g;
        C11274d c11274d2 = c11274d;
        if (c11274d != null) {
            c11274d2 = new C11274d(c11274d);
        }
        toggleButton.setOnCheckedChangeListener(c11274d2);
        ToggleButton toggleButton2 = m24937QA2.f34639d;
        C11274d c11274d3 = this.f33227h;
        C11274d c11274d4 = c11274d3;
        if (c11274d3 != null) {
            c11274d4 = new C11274d(c11274d3);
        }
        toggleButton2.setOnCheckedChangeListener(c11274d4);
        MotionLayout motionLayout = m24937QA.f34637b;
        s1.z.c.l.d(motionLayout, "motionLayout");
        motionLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC11271c(motionLayout, m24937QA, this, view, bundle));
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: q */
    public void mo24924q() {
        MotionLayout motionLayout = m24937QA().f34637b;
        motionLayout.q1(C4781R.C4783id.outgoing_call_ended_start_set, C4781R.C4783id.outgoing_call_ended_end_set);
        motionLayout.f1(1.0f);
    }

    @Override // p193e.p194a.p619d.p628c.p635b.AbstractC11278h
    /* renamed from: v3 */
    public void mo24923v3(boolean z) {
        ToggleButton toggleButton = m24937QA().f34639d;
        s1.z.c.l.d(toggleButton, "binding.toggleMute");
        C11273c c11273c = this.f33227h;
        toggleButton.setOnCheckedChangeListener(null);
        toggleButton.setChecked(z);
        C11273c c11273c2 = c11273c;
        if (c11273c != null) {
            c11273c2 = new C11273c(c11273c);
        }
        toggleButton.setOnCheckedChangeListener(c11273c2);
    }
}
