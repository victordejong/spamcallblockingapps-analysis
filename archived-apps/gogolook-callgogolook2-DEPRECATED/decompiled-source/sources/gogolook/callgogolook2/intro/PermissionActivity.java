package gogolook.callgogolook2.intro;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.role.RoleManagerCompat;
import androidx.core.view.ViewCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.WebActivity;
import gogolook.callgogolook2.app.MDialogActivity;
import gogolook.callgogolook2.intro.PermissionActivity;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.util.List;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p582w0.p590x4.C14302t;
import p459j.p460a.p582w0.p594z4.C14356f;
import p459j.p460a.p596x.C14374h;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p604y0.p611f.C14592c;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14684g;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15122p;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity.class */
public class PermissionActivity extends Activity {

    /* renamed from: a */
    public List<C13878a3.C13883e> f10833a;

    /* renamed from: b */
    public int f10834b;

    /* renamed from: f */
    public int f10838f;

    /* renamed from: g */
    public int f10839g;

    /* renamed from: h */
    public int f10840h;

    /* renamed from: i */
    public int f10841i;

    /* renamed from: j */
    public int f10842j;

    /* renamed from: k */
    public int f10843k;

    /* renamed from: l */
    public int f10844l;

    /* renamed from: m */
    public int f10845m;
    @BindView(R$id.b_agree_policy)
    public TextView mBAgreePolicy;
    @BindView(R$id.cl_gp_policy)
    public ConstraintLayout mClGpPolicy;
    @BindView(R$id.cv_button_and_description)
    public CardView mCvButtonAndDescription;
    @BindView(R$id.iv_call_log)
    public ImageView mIvCallLog;
    @BindView(R$id.iv_click_icon)
    public ImageView mIvClickIcon;
    @BindView(R$id.iv_contact)
    public ImageView mIvContact;
    @BindView(R$id.iv_location)
    public ImageView mIvLocation;
    @BindView(R$id.iv_phone)
    public ImageView mIvPhone;
    @BindView(R$id.iv_sms)
    public ImageView mIvSms;
    @BindView(R$id.ll_call_log)
    public LinearLayout mLlCallLog;
    @BindView(R$id.ll_confirm)
    public LinearLayout mLlConfirm;
    @BindView(R$id.ll_permission_hint)
    public LinearLayout mLlHint;
    @BindView(R$id.ll_more)
    public LinearLayout mLlMore;
    @BindView(R$id.ll_other_entrance)
    public LinearLayout mLlOtherEntrance;
    @BindView(R$id.ll_permission)
    public LinearLayout mLlPermission;
    @BindView(R$id.sv_gp_policy_content)
    public ScrollView mSvGpContent;
    @BindView(R$id.tv_call_log)
    public TextView mTvCallLog;
    @BindView(R$id.tv_confirm_btn)
    public TextView mTvConfirmBtn;
    @BindView(R$id.tv_confirm_desc)
    public TextView mTvConfirmDesc;
    @BindView(R$id.tv_contact)
    public TextView mTvContact;
    @BindView(R$id.tv_permission_desc)
    public TextView mTvDesc;
    @BindView(R$id.tv_gp_content_1)
    public TextView mTvGpContent1;
    @BindView(R$id.tv_gp_content_2)
    public TextView mTvGpContent2;
    @BindView(R$id.tv_gp_content_3)
    public TextView mTvGpContent3;
    @BindView(R$id.tv_gp_title_1)
    public TextView mTvGpTitle1;
    @BindView(R$id.tv_gp_title_2)
    public TextView mTvGpTitle2;
    @BindView(R$id.tv_gp_title_3)
    public TextView mTvGpTitle3;
    @BindView(R$id.tv_location)
    public TextView mTvLocation;
    @BindView(R$id.tv_other_entrance)
    public TextView mTvOtherEntrance;
    @BindView(R$id.tv_phone)
    public TextView mTvPhone;
    @BindView(R$id.tv_description)
    public TextView mTvPolicyDescription;
    @BindView(R$id.tv_sms)
    public TextView mTvSms;
    @BindView(R$id.tv_title)
    public TextView mTvTitle;

    /* renamed from: n */
    public int f10846n;

    /* renamed from: o */
    public int f10847o;

    /* renamed from: c */
    public int f10835c = -2;

    /* renamed from: d */
    public EnumC4513h f10836d = null;

    /* renamed from: e */
    public boolean f10837e = false;

    /* renamed from: p */
    public DialogC14618f f10848p = null;

    /* renamed from: q */
    public int f10849q = 0;

    /* renamed from: r */
    public View.OnClickListener f10850r = new View$OnClickListenerC4505a();

    /* renamed from: s */
    public View.OnClickListener f10851s = new View$OnClickListenerC4506b();

    /* renamed from: t */
    public View.OnClickListener f10852t = new View$OnClickListenerC4507c();

    /* renamed from: u */
    public View.OnClickListener f10853u = new View$OnClickListenerC4508d();

    /* renamed from: v */
    public View.OnClickListener f10854v = new View$OnClickListenerC4510e();

    /* renamed from: w */
    public final AbstractC15122p<String, String, C14989s> f10855w = new AbstractC15122p() { // from class: j.a.x.e
        @Override // p626l.p641z.p642c.AbstractC15122p
        public final Object invoke(Object obj, Object obj2) {
            return PermissionActivity.this.m28071a((String) obj, (String) obj2);
        }
    };

    /* renamed from: x */
    public CharSequence f10856x = "";

    /* renamed from: y */
    public String f10857y = "";

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$a.class */
    public class View$OnClickListenerC4505a implements View.OnClickListener {
        public View$OnClickListenerC4505a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14302t.m1648a(4, 5);
            C13878a3.m3238a(PermissionActivity.this, RoleManagerCompat.ROLE_DIALER, 3);
            PermissionActivity.this.f10837e = true;
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$b.class */
    public class View$OnClickListenerC4506b implements View.OnClickListener {
        public View$OnClickListenerC4506b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14302t.m1648a(6, 5);
            C13878a3.m3238a(PermissionActivity.this, RoleManagerCompat.ROLE_CALL_SCREENING, 4);
            PermissionActivity.this.f10837e = true;
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$c.class */
    public class View$OnClickListenerC4507c implements View.OnClickListener {
        public View$OnClickListenerC4507c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C13878a3.m3256F()) {
                C14302t.m1648a(6, 4);
            } else if (C13878a3.m3255G()) {
                C14302t.m1648a(4, 4);
            } else if (PermissionActivity.this.f10833a != null && PermissionActivity.this.f10834b < PermissionActivity.this.f10833a.size()) {
                C14302t.m1648a(C14302t.m1647a(((C13878a3.C13883e) PermissionActivity.this.f10833a.get(PermissionActivity.this.f10834b)).f31181a), 4);
            }
            PermissionActivity.this.m28078a(0);
            PermissionActivity.this.m28062f();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$d.class */
    public class View$OnClickListenerC4508d implements View.OnClickListener {

        /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$d$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$d$a.class */
        public class RunnableC4509a implements Runnable {
            public RunnableC4509a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent(MyApplication.m29013o(), MDialogActivity.class);
                intent.putExtra("message", PermissionActivity.this.getString(R$string.permission_setting_guide));
                intent.putExtra("negative", PermissionActivity.this.getString(R$string.permission_setting_guide_action));
                intent.setFlags(1350598656);
                C14300r.m1653a("MDialogActivity", intent);
                PermissionActivity.this.startActivity(intent);
            }
        }

        public View$OnClickListenerC4508d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PermissionActivity permissionActivity = PermissionActivity.this;
            permissionActivity.startActivity(C13878a3.m3235a(permissionActivity.getPackageName()));
            PermissionActivity.this.f10837e = true;
            new Handler().postDelayed(new RunnableC4509a(), 1000L);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$e.class */
    public class View$OnClickListenerC4510e implements View.OnClickListener {
        public View$OnClickListenerC4510e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C13963d3.m2959l();
            PermissionActivity.this.m28062f();
            C14374h.f32191b.m1467a(0);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$f.class */
    public class RunnableC4511f implements Runnable {
        public RunnableC4511f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PermissionActivity.this.m28062f();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$g.class */
    public class View$OnClickListenerC4512g implements View.OnClickListener {
        public View$OnClickListenerC4512g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PermissionActivity.this.f10848p == null) {
                View inflate = PermissionActivity.this.getLayoutInflater().inflate(R$layout.permission_detail, (ViewGroup) null);
                ((ImageView) inflate.findViewById(R$id.iv_sms)).setImageResource(PermissionActivity.this.f10838f);
                ((TextView) inflate.findViewById(R$id.tv_sms)).setText(PermissionActivity.this.f10839g == 0 ? R$string.permission_intro_sms_title : PermissionActivity.this.f10839g);
                ((ImageView) inflate.findViewById(R$id.iv_phone)).setImageResource(PermissionActivity.this.f10840h);
                ((TextView) inflate.findViewById(R$id.tv_phone)).setText(PermissionActivity.this.f10841i == 0 ? R$string.permission_intro_phone_title : PermissionActivity.this.f10841i);
                ((ImageView) inflate.findViewById(R$id.iv_contact)).setImageResource(PermissionActivity.this.f10842j);
                ((TextView) inflate.findViewById(R$id.tv_contact)).setText(PermissionActivity.this.f10843k == 0 ? R$string.permission_intro_contact_title : PermissionActivity.this.f10843k);
                inflate.findViewById(R$id.rl_call_log).setVisibility(C14017g4.m2800x() ? 0 : 8);
                ((ImageView) inflate.findViewById(R$id.iv_call_log)).setImageResource(PermissionActivity.this.f10846n);
                ((TextView) inflate.findViewById(R$id.tv_call_log)).setText(PermissionActivity.this.f10847o == 0 ? R$string.permission_intro_call_log_title : PermissionActivity.this.f10847o);
                ((ImageView) inflate.findViewById(R$id.iv_location)).setImageResource(PermissionActivity.this.f10844l);
                ((TextView) inflate.findViewById(R$id.tv_location)).setText(PermissionActivity.this.f10845m == 0 ? R$string.permission_intro_location_title : PermissionActivity.this.f10845m);
                PermissionActivity permissionActivity = PermissionActivity.this;
                permissionActivity.f10848p = new DialogC14618f(permissionActivity);
                PermissionActivity.this.f10848p.m993d(R$string.permission_setting_guide_action);
                PermissionActivity.this.f10848p.m1005a(inflate);
            }
            PermissionActivity.this.f10848p.show();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.PermissionActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity$h.class */
    public enum EnumC4513h {
        PRIVACY_CONSENT,
        DEFAULT_CALLER_ID,
        DEFAULT_PHONE,
        PERMISSIONS
    }

    /* renamed from: a */
    public static Intent m28077a(Context context) {
        return new Intent(context, PermissionActivity.class);
    }

    /* renamed from: a */
    public /* synthetic */ C14989s m28071a(String str, String str2) {
        C14191v.m2259a(this, WebActivity.m28889a(this, true, str, null, str2, 1));
        C14374h.f32191b.m1467a(1);
        return null;
    }

    /* renamed from: a */
    public final void m28079a() {
        if (!C13915b3.m3062a("HasShownMainIntroTutorial", false)) {
            Intent a = CallerIdIntroActivity.m28089a(this);
            a.setFlags(32768);
            startActivity(a);
        }
        finish();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x012e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m28078a(int r5) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.intro.PermissionActivity.m28078a(int):void");
    }

    /* renamed from: a */
    public final void m28076a(TextView textView, String str) {
        C14684g.m867a(textView, str, this.f10855w);
    }

    /* renamed from: b */
    public final void m28070b() {
        PackageManager packageManager = getPackageManager();
        try {
            PermissionGroupInfo permissionGroupInfo = packageManager.getPermissionGroupInfo(C13878a3.f31160a, 0);
            this.f10838f = permissionGroupInfo.icon;
            this.f10839g = permissionGroupInfo.labelRes;
        } catch (PackageManager.NameNotFoundException e) {
            this.f10838f = 0;
        }
        int i = this.f10838f;
        if (i != 0) {
            this.mIvSms.setImageResource(i);
        } else {
            this.mIvSms.setVisibility(8);
        }
        TextView textView = this.mTvSms;
        int i2 = this.f10839g;
        int i3 = i2;
        if (i2 == 0) {
            i3 = R$string.permission_disabled_sms;
        }
        textView.setText(i3);
        try {
            PermissionGroupInfo permissionGroupInfo2 = packageManager.getPermissionGroupInfo(C13878a3.f31161b, 0);
            this.f10840h = permissionGroupInfo2.icon;
            this.f10841i = permissionGroupInfo2.labelRes;
        } catch (PackageManager.NameNotFoundException e2) {
            this.f10840h = 0;
        }
        int i4 = this.f10840h;
        if (i4 != 0) {
            this.mIvPhone.setImageResource(i4);
        } else {
            this.mIvPhone.setVisibility(8);
        }
        TextView textView2 = this.mTvPhone;
        int i5 = this.f10841i;
        int i6 = i5;
        if (i5 == 0) {
            i6 = R$string.permission_disabled_phone;
        }
        textView2.setText(i6);
        try {
            PermissionGroupInfo permissionGroupInfo3 = packageManager.getPermissionGroupInfo(C13878a3.f31162c, 0);
            this.f10842j = permissionGroupInfo3.icon;
            this.f10843k = permissionGroupInfo3.labelRes;
        } catch (PackageManager.NameNotFoundException e3) {
            this.f10842j = 0;
        }
        int i7 = this.f10842j;
        if (i7 != 0) {
            this.mIvContact.setImageResource(i7);
        } else {
            this.mIvContact.setVisibility(8);
        }
        TextView textView3 = this.mTvContact;
        int i8 = this.f10843k;
        int i9 = i8;
        if (i8 == 0) {
            i9 = R$string.permission_disabled_contact;
        }
        textView3.setText(i9);
        try {
            PermissionGroupInfo permissionGroupInfo4 = packageManager.getPermissionGroupInfo(C13878a3.f31163d, 0);
            this.f10844l = permissionGroupInfo4.icon;
            this.f10845m = permissionGroupInfo4.labelRes;
        } catch (PackageManager.NameNotFoundException e4) {
            this.f10844l = 0;
        }
        int i10 = this.f10844l;
        if (i10 != 0) {
            this.mIvLocation.setImageResource(i10);
        } else {
            this.mIvLocation.setVisibility(8);
        }
        TextView textView4 = this.mTvLocation;
        int i11 = this.f10845m;
        int i12 = i11;
        if (i11 == 0) {
            i12 = R$string.permission_disabled_location;
        }
        textView4.setText(i12);
        this.mLlCallLog.setVisibility(C14017g4.m2800x() ? 0 : 8);
        if (C14017g4.m2800x()) {
            try {
                PermissionGroupInfo permissionGroupInfo5 = packageManager.getPermissionGroupInfo(C13878a3.f31164e, 0);
                this.f10846n = permissionGroupInfo5.icon;
                this.f10847o = permissionGroupInfo5.labelRes;
            } catch (PackageManager.NameNotFoundException e5) {
                this.f10846n = 0;
            }
            int i13 = this.f10846n;
            if (i13 != 0) {
                this.mIvCallLog.setImageResource(i13);
            } else {
                this.mIvCallLog.setVisibility(8);
            }
            TextView textView5 = this.mTvCallLog;
            int i14 = this.f10847o;
            int i15 = i14;
            if (i14 == 0) {
                i15 = R$string.permission_disabled_call_log;
            }
            textView5.setText(i15);
        }
        this.mLlMore.setOnClickListener(new View$OnClickListenerC4512g());
    }

    /* renamed from: c */
    public /* synthetic */ C14989s m28068c() {
        this.mBAgreePolicy.setEnabled(true);
        return null;
    }

    /* renamed from: d */
    public final void m28066d() {
        m28078a(0);
        this.mTvDesc.setText(R$string.permission_guide_read_default_caller_id_app);
        if (!CallUtils.m26594a(this, 4)) {
            C13978e.f31386a.m9459a("onboarding_default_caller_id_checked", (String) true);
            m28062f();
            return;
        }
        C14302t.m1648a(6, 0);
        this.f10856x = getString(R$string.permission_deny_default_caller_id_app_description);
        this.f10857y = getString(R$string.permission_deny_default_phone_app_back_action);
    }

    /* renamed from: e */
    public final void m28064e() {
        m28078a(0);
        this.mTvDesc.setText(CallUtils.m26565b() ? R$string.permission_guide_read_default_phone_app_v2 : R$string.permission_guide_read_default_phone_app);
        if (!CallUtils.m26561b(this, 3)) {
            C13915b3.m3055b("onboarding_default_phone_checked", true);
            m28062f();
            return;
        }
        C14302t.m1648a(4, 0);
        this.f10856x = getString(CallUtils.m26565b() ? R$string.permission_deny_default_phone_app_description_v2 : R$string.permission_deny_default_phone_app_description);
        this.f10857y = getString(R$string.permission_deny_default_phone_app_back_action);
    }

    /* renamed from: f */
    public final void m28062f() {
        if (C13963d3.m2961j()) {
            this.f10836d = EnumC4513h.PRIVACY_CONSENT;
            m28060g();
        } else if (C13878a3.m3256F()) {
            this.f10836d = EnumC4513h.DEFAULT_CALLER_ID;
            m28066d();
        } else if (C13878a3.m3255G()) {
            this.f10836d = EnumC4513h.DEFAULT_PHONE;
            m28064e();
        } else {
            List<C13878a3.C13883e> list = this.f10833a;
            if (list != null && this.f10834b < list.size()) {
                this.f10836d = EnumC4513h.PERMISSIONS;
                m28078a(0);
                C13878a3.C13883e eVar = this.f10833a.get(this.f10834b);
                String b = C13878a3.m3226b(eVar.f31181a);
                if (!TextUtils.isEmpty(b)) {
                    this.mTvDesc.setText(b);
                }
                ActivityCompat.requestPermissions(this, eVar.f31182b, 1);
                C14302t.m1648a(C14302t.m1647a(eVar.f31181a), 0);
                this.f10856x = C13878a3.m3221c(eVar.f31181a);
                this.f10857y = getString(R$string.permission_deny_back_action);
            } else if (C13878a3.m3258D()) {
                m28078a(0);
                this.mTvDesc.setText(R$string.permission_guide_read_batteryusage);
                C13915b3.m3055b("battery_optimization_checked", true);
                C13878a3.m3242a((Context) this, 2);
                C14289m.m1912a(0, 0, 0, C14217x3.m2123m(this) ? 1 : 0, 0);
                this.f10856x = "";
                this.f10857y = "";
            } else {
                if (!C13878a3.m3257E()) {
                    C14356f.m1485a(1);
                    C12378a.m6257g();
                    C14376j.m1458a(RegistrationActivity.EnumC4523g.INTRO);
                    C14376j.m1451b(C14217x3.m2107z());
                    C14376j.m1452b(this, true, false);
                }
                finish();
            }
        }
    }

    /* renamed from: g */
    public final void m28060g() {
        m28078a(-1);
        this.mTvGpTitle1.setText(C13963d3.m2976a((int) R$string.onboarding_agree_permission_title1, new Object[0]));
        m28076a(this.mTvGpContent1, C13963d3.m2976a((int) R$string.onboarding_agree_permission_review_tos_pp_v2, C13963d3.m2963h(), C13963d3.m2964g()));
        this.mTvGpTitle2.setText(C13963d3.m2976a((int) R$string.onboarding_agree_permission_title2_v2, new Object[0]));
        this.mTvGpContent2.setText(C13963d3.m2976a((int) R$string.onboarding_agree_permission_data_access_v2, new Object[0]));
        this.mTvGpTitle3.setText(C13963d3.m2976a((int) R$string.onboarding_agree_permission_title3_v2, new Object[0]));
        m28076a(this.mTvGpContent3, C13963d3.m2976a((int) R$string.onboarding_agree_permission_data_purpose_v2, C13963d3.m2964g()));
        m28076a(this.mTvPolicyDescription, C13963d3.m2976a((int) R$string.onboarding_agree_permission_agree_tos_pp_v2, C13963d3.m2963h(), C13963d3.m2964g()));
        ViewCompat.setElevation(this.mCvButtonAndDescription, getResources().getDimension(R$dimen.gp_policy_card_view_elevation));
        this.mBAgreePolicy.setText(C13963d3.m2976a((int) R$string.onboarding_agree_permission_agree_continue, new Object[0]));
        this.mBAgreePolicy.setOnClickListener(this.f10854v);
        this.mBAgreePolicy.setEnabled(false);
        C14592c.m1050a(this.mSvGpContent, new AbstractC15107a() { // from class: j.a.x.d
            @Override // p626l.p641z.p642c.AbstractC15107a
            public final Object invoke() {
                return PermissionActivity.this.m28068c();
            }
        });
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (this.f10836d != null) {
            int i3 = 2;
            if (i == 2) {
                m28062f();
            } else if (i == 3) {
                boolean h = CallUtils.m26536h();
                if (h) {
                    C13915b3.m3055b("onboarding_default_phone_checked", true);
                    this.f10833a = C13878a3.m3216e();
                    m28062f();
                } else {
                    m28078a(1);
                }
                if (h) {
                    i3 = 1;
                }
                C14302t.m1648a(4, i3);
            } else if (i == 4) {
                boolean p = CallUtils.m26528p();
                if (p) {
                    C13978e.f31386a.m9459a("onboarding_default_caller_id_checked", (String) true);
                    m28062f();
                } else {
                    m28078a(1);
                }
                if (p) {
                    i3 = 1;
                }
                C14302t.m1648a(6, i3);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m28079a();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_permission);
        ButterKnife.bind(this);
        this.f10833a = C13878a3.m3216e();
        this.f10834b = 0;
        m28070b();
        new Handler().postDelayed(new RunnableC4511f(), 300L);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("onRequestPermissionsResult, requestCode=");
        sb.append(i);
        sb.append(", permissions=");
        Object obj = "(empty)";
        sb.append(strArr.length == 0 ? "(empty)" : strArr[0]);
        sb.append(", grantResults=");
        if (iArr.length != 0) {
            obj = Integer.valueOf(iArr[0]);
        }
        sb.append(obj);
        sb.append(", currentIndex=");
        sb.append(this.f10834b);
        C14080m2.m2616a(sb.toString());
        int i2 = 1;
        if (i != 1) {
            return;
        }
        if (strArr.length == 0) {
            m28079a();
            return;
        }
        String str = strArr[0];
        if (iArr[0] == 0) {
            this.f10834b++;
            m28062f();
        } else if (ActivityCompat.shouldShowRequestPermissionRationale(this, str)) {
            m28078a(1);
            i2 = 2;
        } else {
            i2 = 3;
            m28078a(2);
        }
        List<C13878a3.C13883e> list = this.f10833a;
        if (list != null && this.f10834b < list.size()) {
            C14302t.m1648a(C14302t.m1647a(this.f10833a.get(this.f10834b).f31181a), i2);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f10837e) {
            this.f10837e = false;
            this.f10834b = 0;
            if ((this.f10836d == EnumC4513h.DEFAULT_CALLER_ID && !C13878a3.m3256F()) || ((this.f10836d == EnumC4513h.DEFAULT_PHONE && !C13878a3.m3255G()) || this.f10836d == EnumC4513h.PERMISSIONS)) {
                m28062f();
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        C14123p4.m2429b(getWindow(), ContextCompat.getColor(this, 2131100101));
        C14374h.f32191b.m1466b(1);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        C14374h.f32191b.m1468a();
    }
}
