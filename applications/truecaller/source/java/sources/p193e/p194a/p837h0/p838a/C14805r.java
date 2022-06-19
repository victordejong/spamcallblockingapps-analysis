package p193e.p194a.p837h0.p838a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.AdSize;
import com.truecaller.C2752R;
import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.ads.p134ui.AdsSwitchView;
import com.truecaller.filters.blockedevents.BlockDialogActivity;
import com.truecaller.filters.blockedevents.BlockedEventsActivity;
import com.truecaller.filters.blockedlist.BlockedListActivity;
import com.truecaller.p183ui.NotificationAccessActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.components.ComboBase;
import com.truecaller.permission.RequiredPermissionsActivity;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.util.NotificationAccessSource;
import com.truecaller.settings.CallingSettings;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.g;
import n3.r.a.l;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1834m0.AbstractC26857y;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21878a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p373a.AbstractC8318l;
import p193e.p194a.p372b0.p373a.C8321n;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.AbstractC13289n1;
import p193e.p194a.p682e.p699c2.C13197i0;
import p193e.p194a.p837h0.AbstractC14832g;
import p193e.p194a.p837h0.AbstractC14834i;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.C14845p;
import p193e.p194a.p837h0.p846y.C14891f;
import p193e.p194a.p851h5.AbstractC14946m;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15167c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.k;
/* renamed from: e.a.h0.a.r */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/r.class */
public class C14805r extends AbstractC14832g implements AbstractC14810u, C14891f.AbstractC14893b, AbstractC8318l, AbstractC13289n1 {

    /* renamed from: t */
    public static final /* synthetic */ int f42330t = 0;
    @Inject

    /* renamed from: b */
    public AbstractC14806s f42331b;
    @Inject

    /* renamed from: c */
    public AbstractC16613a2 f42332c;

    /* renamed from: d */
    public int f42333d;

    /* renamed from: e */
    public AdsSwitchView f42334e;

    /* renamed from: f */
    public ImageView f42335f;

    /* renamed from: g */
    public TextView f42336g;

    /* renamed from: h */
    public TextView f42337h;

    /* renamed from: i */
    public ComboBase f42338i;

    /* renamed from: j */
    public View f42339j;

    /* renamed from: k */
    public C14826z f42340k;

    /* renamed from: l */
    public RecyclerView f42341l;

    /* renamed from: m */
    public C14826z f42342m;

    /* renamed from: n */
    public View f42343n;

    /* renamed from: o */
    public RecyclerView f42344o;

    /* renamed from: p */
    public View f42345p;

    /* renamed from: q */
    public C14826z f42346q;

    /* renamed from: r */
    public View f42347r;

    /* renamed from: s */
    public RecyclerView f42348s;

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Ca */
    public void mo19634Ca(boolean z) {
        this.f42339j.setVisibility(z ? 0 : 8);
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: Cc */
    public void mo10112Cc(Intent intent) {
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Dq */
    public void mo19633Dq(boolean z) {
        this.f42336g.setVisibility(z ? 0 : 8);
        TextView textView = this.f42337h;
        int i = 0;
        if (z) {
            i = 8;
        }
        textView.setVisibility(i);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Ee */
    public void mo19632Ee(List<C14823w> list, List<C14823w> list2, List<C14823w> list3) {
        this.f42340k.m19614g(list);
        this.f42342m.m19614g(list2);
        this.f42346q.m19614g(list3);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Ei */
    public void mo19631Ei() {
        startActivity(new Intent(getContext(), BlockedListActivity.class));
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Gc */
    public void mo19630Gc() {
        RequiredPermissionsActivity.m34830qa(requireContext());
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Ki */
    public void mo19629Ki(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("forceUpdate", z);
        C14891f c14891f = new C14891f();
        c14891f.setArguments(bundle);
        c14891f.f42582n = this;
        c14891f.show(requireFragmentManager(), (String) null);
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8322o
    /* renamed from: LA */
    public C8321n mo10111LA() {
        return null;
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: R3 */
    public void mo19628R3(AbstractC15183d abstractC15183d) {
        this.f42334e.m35948d(abstractC15183d, AdLayoutTypeX.SMALL);
        this.f42334e.setVisibility(0);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Rl */
    public void mo19627Rl(boolean z) {
        this.f42335f.setImageResource(C19291g.m13559d0(C17422k.m16113E(requireContext(), true), z ? 2130970274 : 2130970172));
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: Vl */
    public void mo19626Vl(boolean z) {
        C19045j0.m14194v(this.f42345p, z, true);
    }

    @Override // p193e.p194a.p372b0.p373a.AbstractC8318l
    /* renamed from: Wy */
    public int mo10109Wy() {
        return 0;
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: bx */
    public void mo10106bx(boolean z) {
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    public void finish() {
        l activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.finish();
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: j */
    public void mo10102j() {
        this.f42331b.mo19637j();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: j5 */
    public void mo19625j5(Integer num, String str) {
        s1.z.c.l.e(str, "phoneNumber");
        View$OnClickListenerC14802o view$OnClickListenerC14802o = new View$OnClickListenerC14802o();
        Bundle bundle = new Bundle();
        if (num != null) {
            bundle.putSerializable("matching_digits", Integer.valueOf(num.intValue()));
        }
        bundle.putSerializable("phone_number", str);
        view$OnClickListenerC14802o.setArguments(bundle);
        view$OnClickListenerC14802o.show(requireFragmentManager(), (String) null);
    }

    @Override // p193e.p194a.p837h0.AbstractC14834i
    /* renamed from: kz */
    public void mo19609kz() {
        BlockDialogActivity.m35428pa(requireContext(), BlockDialogActivity.DialogType.ADVANCED);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: lb */
    public void mo19624lb() {
        l activity = getActivity();
        if (activity == null) {
            return;
        }
        g$a g_a = new g$a(activity);
        g_a.m3656m(C2752R.string.BlockFragmentNotificationsDialogTitle);
        g_a.m3664e(C2752R.string.BlockFragmentNotificationsDialogDetailsCalls);
        g_a.m3662g(2131887867, null);
        g_a.m3660i(C2752R.string.BlockFragmentNotificationsDialogOffButton, new DialogInterface.OnClickListener() { // from class: e.a.h0.a.l
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C14805r.this.f42331b.mo19643Uj();
            }
        });
        g_a.f70854a.f163m = false;
        g_a.m3652q();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: m */
    public void mo19623m(String str) {
        l activity = getActivity();
        if (activity == null) {
            return;
        }
        Toast.makeText((Context) activity, (CharSequence) str, 0).show();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: mA */
    public void mo19622mA() {
        l activity = getActivity();
        if (activity == null) {
            return;
        }
        g$a g_a = new g$a(activity);
        g_a.m3656m(2131887189);
        g_a.m3664e(C2752R.string.PermissionDialog_ringSilent);
        g_a.m3662g(2131887173, null);
        g_a.m3660i(2131887190, new DialogInterface.OnClickListener() { // from class: e.a.h0.a.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C14805r c14805r = C14805r.this;
                l activity2 = c14805r.getActivity();
                if (activity2 == null) {
                    return;
                }
                activity2.startActivity(NotificationAccessActivity.m34593sa(activity2, NotificationAccessSource.BLOCK_CALL_RING_SILENT, C2752R.string.toast_allow_notification_access_ring_silent, activity2 instanceof TruecallerInit ? TruecallerInit.m34553xa(activity2, "blocking", "blockView") : BlockedEventsActivity.m35427qa(activity2, c14805r.f42333d)));
            }
        });
        g_a.m3652q();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: o4 */
    public void mo19621o4() {
        g$a g_a = new g$a(C17422k.m16113E(requireContext(), true), 2131952153);
        g_a.m3654o(C2752R.layout.dialog_neighbour_spoofing_details);
        final g m3652q = g_a.m3652q();
        m3652q.findViewById(2131362425).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g gVar = m3652q;
                int i = C14805r.f42330t;
                gVar.dismiss();
            }
        });
    }

    public void onCreate(Bundle bundle) {
        C15222s c15222s;
        Intent intent;
        C14805r.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) requireContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC14840m mo11655T = mo10154s.mo11655T();
        Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
        CallingSettings mo12414d6 = mo10154s.mo12414d6();
        Objects.requireNonNull(mo12414d6, "Cannot return null from a non-@Nullable component method");
        AbstractC6392i0 mo12565S = mo10154s.mo12565S();
        Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
        AbstractC14965w mo12182u6 = mo10154s.mo12182u6();
        Objects.requireNonNull(mo12182u6, "Cannot return null from a non-@Nullable component method");
        AbstractC19219a0 mo11647c = mo10154s.mo11647c();
        Objects.requireNonNull(mo11647c, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        AbstractC15163d mo12356h7 = mo10154s.mo12356h7();
        Objects.requireNonNull(mo12356h7, "Cannot return null from a non-@Nullable component method");
        AbstractC21878a mo12183u5 = mo10154s.mo12183u5();
        Objects.requireNonNull(mo12183u5, "Cannot return null from a non-@Nullable component method");
        AbstractC15167c mo12430c4 = mo10154s.mo12430c4();
        Objects.requireNonNull(mo12430c4, "Cannot return null from a non-@Nullable component method");
        C20592g mo11648b = mo10154s.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        if (mo12183u5.getBoolean("adsFeatureUnifiedAdsBlock")) {
            C15222s.C15223a m19043a = C15222s.m19043a(mo12430c4.m19081a("blockUnifiedAdUnitId"), null, "BLOCK", mo11648b);
            m19043a.f43331i = "blockView";
            m19043a.m19038e(AdSize.BANNER);
            m19043a.m19037f(CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
            c15222s = new C15222s(m19043a);
        } else {
            C15222s.C15223a m19043a2 = C15222s.m19043a(mo12430c4.m19081a("blockAdUnitId"), null, "BLOCK", mo11648b);
            m19043a2.f43331i = "blockView";
            m19043a2.m19037f(CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
            c15222s = new C15222s(m19043a2);
        }
        AbstractC19223c0 mo12349i = mo10154s.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        AbstractC17197v0 mo11643f = mo10154s.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        C20592g mo11648b2 = mo10154s.mo11648b();
        Objects.requireNonNull(mo11648b2, "Cannot return null from a non-@Nullable component method");
        AbstractC26857y mo11659D = mo10154s.mo11659D();
        Objects.requireNonNull(mo11659D, "Cannot return null from a non-@Nullable component method");
        C14845p mo12719G7 = mo10154s.mo12719G7();
        Objects.requireNonNull(mo12719G7, "Cannot return null from a non-@Nullable component method");
        AbstractC19230g mo12512W = mo10154s.mo12512W();
        Objects.requireNonNull(mo12512W, "Cannot return null from a non-@Nullable component method");
        AbstractC14946m mo12142x5 = mo10154s.mo12142x5();
        Objects.requireNonNull(mo12142x5, "Cannot return null from a non-@Nullable component method");
        this.f42331b = new C14807t(mo11655T, mo12414d6, mo12565S, mo12182u6, mo11647c, mo12776C4, mo12356h7, c15222s, mo12349i, mo11643f, mo11648b2, mo11659D, mo12719G7, mo12512W, mo12142x5);
        AbstractC16613a2 mo12777C3 = mo10154s.mo12777C3();
        Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
        this.f42332c = mo12777C3;
        Objects.requireNonNull(mo10154s.mo11648b(), "Cannot return null from a non-@Nullable component method");
        setHasOptionsMenu(true);
        l activity = getActivity();
        if (activity != null && (intent = activity.getIntent()) != null) {
            this.f42333d = intent.getIntExtra("TOOLBAR_TEXT", 0);
            intent.removeExtra("TOOLBAR_TEXT");
        }
        this.f42342m = new C14826z(this.f42331b);
        this.f42346q = new C14826z(this.f42331b);
        this.f42340k = new C14826z(this.f42331b);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_blocked_events_tcx, viewGroup, false);
    }

    public void onDestroy() {
        C14805r.super.onDestroy();
        this.f42331b.mo9806c();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            PV pv = this.f42331b.f57683a;
            if (pv == 0) {
                return true;
            }
            ((AbstractC14834i) pv).mo19610d0();
            return true;
        }
        return C14805r.super.onOptionsItemSelected(menuItem);
    }

    public void onResume() {
        C14805r.super.onResume();
        this.f42331b.onResume();
    }

    @Override // p193e.p194a.p837h0.AbstractC14832g
    public void onViewCreated(View view, Bundle bundle) {
        l activity;
        super.onViewCreated(view, bundle);
        this.f42334e = (AdsSwitchView) view.findViewById(2131362934);
        int i = C19045j0.f53198b;
        this.f42338i = (ComboBase) view.findViewById(C2752R.C2754id.blockMethod);
        this.f42339j = view.findViewById(C2752R.C2754id.callBlockingTroubleshooting);
        this.f42335f = (ImageView) view.findViewById(C2752R.C2754id.spam_protection_img);
        this.f42341l = (RecyclerView) view.findViewById(C2752R.C2754id.listBlockSettingsOptions);
        this.f42343n = view.findViewById(C2752R.C2754id.cardPremiumBlocking);
        this.f42344o = (RecyclerView) view.findViewById(C2752R.C2754id.listPremiumBlockingOptions);
        this.f42345p = view.findViewById(C2752R.C2754id.buttonUnlockPremium);
        this.f42347r = view.findViewById(C2752R.C2754id.cardOtherBlocking);
        this.f42348s = (RecyclerView) view.findViewById(C2752R.C2754id.listOtherBlockingOptions);
        this.f42336g = (TextView) view.findViewById(C2752R.C2754id.update_spam_protection);
        this.f42337h = (TextView) view.findViewById(C2752R.C2754id.auto_update_top_spammers_label);
        this.f42336g.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19644Tj();
            }
        });
        Drawable m28233g = C8605o.m28233g(requireContext(), C2752R.C2753drawable.ic_spammers_update, C19291g.m13612L(requireContext(), 2130970017));
        this.f42336g.setCompoundDrawablesWithIntrinsicBounds(m28233g, (Drawable) null, (Drawable) null, (Drawable) null);
        this.f42337h.setCompoundDrawablesWithIntrinsicBounds(m28233g, (Drawable) null, (Drawable) null, (Drawable) null);
        view.findViewById(C2752R.C2754id.blockNumber).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19652Lj();
            }
        });
        view.findViewById(C2752R.C2754id.blockName).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19654Jj();
            }
        });
        view.findViewById(C2752R.C2754id.blockCountryCode).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19656Hj();
            }
        });
        view.findViewById(C2752R.C2754id.blockNumberAdvanced).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19653Kj();
            }
        });
        view.findViewById(C2752R.C2754id.manageBlockList).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19648Pj();
            }
        });
        view.findViewById(C2752R.C2754id.callBlockingTroubleShootingButton).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19651Mj();
            }
        });
        if (getActivity() != null) {
            if (!(activity instanceof TruecallerInit)) {
                int i2 = this.f42333d;
                int i3 = i2;
                if (i2 == 0) {
                    i3 = 2131886202;
                }
                m19612OA(i3);
            } else {
                this.f42403a.setVisibility(8);
            }
        }
        Context context = getContext();
        if (context != null) {
            this.f42344o.setNestedScrollingEnabled(false);
            this.f42344o.setLayoutManager(new LinearLayoutManager(context, 1, false));
            this.f42344o.setAdapter(this.f42342m);
            this.f42348s.setNestedScrollingEnabled(false);
            this.f42348s.setLayoutManager(new LinearLayoutManager(context, 1, false));
            this.f42348s.setAdapter(this.f42346q);
            this.f42341l.setNestedScrollingEnabled(false);
            this.f42341l.setLayoutManager(new LinearLayoutManager(context, 1, false));
            this.f42341l.setAdapter(this.f42340k);
        }
        this.f42345p.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14805r.this.f42331b.mo19646Rj();
            }
        });
        this.f42331b.mo9029Y0(this);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: po */
    public void mo19620po(PremiumLaunchContext premiumLaunchContext) {
        this.f42332c.mo17168a(requireActivity(), premiumLaunchContext, "premiumAdvancedBlocking");
    }

    @Override // p193e.p194a.p837h0.AbstractC14834i
    /* renamed from: s6 */
    public void mo19608s6() {
        BlockDialogActivity.m35428pa(requireContext(), BlockDialogActivity.DialogType.NAME);
    }

    @Override // p193e.p194a.p837h0.AbstractC14834i
    /* renamed from: tj */
    public void mo19607tj() {
        BlockDialogActivity.m35428pa(requireContext(), BlockDialogActivity.DialogType.NUMBER);
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: ue */
    public void mo19619ue() {
        l activity = getActivity();
        if (activity == null) {
            return;
        }
        g$a g_a = new g$a(activity);
        g_a.m3656m(C2752R.string.BlockFragmentNotificationsDialogTitle);
        g_a.m3664e(C2752R.string.BlockFragmentNotificationsDialogDetailsMessages);
        g_a.m3662g(2131887867, null);
        g_a.m3660i(C2752R.string.BlockFragmentNotificationsDialogOffButton, new DialogInterface.OnClickListener() { // from class: e.a.h0.a.e
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                C14805r.this.f42331b.mo19642Vj();
            }
        });
        g_a.f70854a.f163m = false;
        g_a.m3652q();
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: xu */
    public void mo19618xu(List<k<Integer, Integer>> list, int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            k<Integer, Integer> kVar = list.get(i2);
            arrayList.add(new C13197i0(0, ((Integer) kVar.a).intValue(), (String) null, kVar.b));
        }
        this.f42338i.setListItemLayoutRes(C2752R.layout.item_block_method);
        this.f42338i.setData(arrayList);
        this.f42338i.setSelection((C13197i0) arrayList.get(i));
        this.f42338i.m34539a(new ComboBase.AbstractC4672a() { // from class: e.a.h0.a.m
            @Override // com.truecaller.p183ui.components.ComboBase.AbstractC4672a
            /* renamed from: a */
            public final void mo14306a(ComboBase comboBase) {
                C14805r.this.f42331b.mo19655Ij(((Integer) comboBase.getSelection().mo18607e()).intValue());
            }
        });
    }

    @Override // p193e.p194a.p682e.AbstractC13289n1
    /* renamed from: y0 */
    public void mo10101y0() {
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14810u
    /* renamed from: zh */
    public void mo19617zh(boolean z, boolean z2) {
        C19045j0.m14194v(this.f42343n, z, true);
        C19045j0.m14194v(this.f42347r, z2, true);
    }
}
