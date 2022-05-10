package com.netqin.p525cm.setting;

import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.main.p529ui.NqApplication;
import com.netqin.p525cm.permission.CBPermissionsHelper;
import com.netqin.p525cm.permission.overlay.OverlayPermissionHintActivity;
import com.netqin.p525cm.utils.NQSPFManager;
import p012b.p042i.p044i.C0869a;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6851j;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
/* renamed from: com.netqin.cm.setting.SettingActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity.class */
public class SettingActivity extends BaseActivity {

    /* renamed from: A */
    public ImageView f35690A;

    /* renamed from: B */
    public TextView f35691B;

    /* renamed from: C */
    public C6851j<NQSPFManager.EnumAntiHarass> f35692C;

    /* renamed from: D */
    public boolean f35693D = false;

    /* renamed from: E */
    public boolean f35694E = false;

    /* renamed from: F */
    public TextView f35695F;

    /* renamed from: G */
    public TextView f35696G;

    /* renamed from: H */
    public View$OnClickListenerC9181i f35697H;

    /* renamed from: I */
    public DialogC6776a f35698I;

    /* renamed from: t */
    public LinearLayout f35699t;

    /* renamed from: u */
    public LinearLayout f35700u;

    /* renamed from: v */
    public LinearLayout f35701v;

    /* renamed from: w */
    public TextView f35702w;

    /* renamed from: x */
    public RelativeLayout f35703x;

    /* renamed from: y */
    public RelativeLayout f35704y;

    /* renamed from: z */
    public ImageView f35705z;

    /* renamed from: com.netqin.cm.setting.SettingActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$a.class */
    public class View$OnClickListenerC9173a implements View.OnClickListener {
        public View$OnClickListenerC9173a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$b.class */
    public class View$OnClickListenerC9174b implements View.OnClickListener {
        public View$OnClickListenerC9174b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean booleanValue = ((Boolean) SettingActivity.this.f35695F.getTag()).booleanValue();
            if (!booleanValue) {
                SettingActivity.this.m3220c(113);
                return;
            }
            SettingActivity.this.f35692C.m19566b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call, (Boolean) false);
            SettingActivity.m3222b(SettingActivity.this.f35695F, !booleanValue);
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$c.class */
    public class View$OnClickListenerC9175c implements View.OnClickListener {
        public View$OnClickListenerC9175c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean booleanValue = ((Boolean) SettingActivity.this.f35696G.getTag()).booleanValue();
            if (!booleanValue) {
                SettingActivity.this.m3220c(112);
                return;
            }
            SettingActivity.this.f35692C.m19566b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call_notification, (Boolean) false);
            SettingActivity.m3222b(SettingActivity.this.f35696G, !booleanValue);
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$d.class */
    public class DialogInterface$OnClickListenerC9176d implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9176d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$e.class */
    public class View$OnClickListenerC9177e implements View.OnClickListener {
        public View$OnClickListenerC9177e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingActivity.this.f35692C.m19568b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 5);
            SettingActivity.this.f35691B.setText(SettingActivity.this.getString(2131558665));
            SettingActivity.this.f35698I.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$f.class */
    public class View$OnClickListenerC9178f implements View.OnClickListener {
        public View$OnClickListenerC9178f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (Build.VERSION.SDK_INT < 24) {
                SettingActivity.this.f35692C.m19568b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 7);
                SettingActivity.this.f35691B.setText(SettingActivity.this.getString(2131558680));
                SettingActivity.this.f35698I.dismiss();
            } else if (SettingActivity.this.m3211p()) {
                SettingActivity.this.f35692C.m19568b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 7);
                SettingActivity.this.f35691B.setText(SettingActivity.this.getString(2131558680));
                SettingActivity.this.f35698I.dismiss();
            } else {
                SettingActivity.this.m3210q();
            }
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$g.class */
    public class View$OnClickListenerC9179g implements View.OnClickListener {
        public View$OnClickListenerC9179g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingActivity.this.f35698I.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$h.class */
    public class C9180h implements AbstractC10031l<Integer, C9946p> {

        /* renamed from: a */
        public final /* synthetic */ int f35713a;

        public C9180h(int i) {
            this.f35713a = i;
        }

        /* renamed from: a */
        public C9946p invoke(Integer num) {
            int i = this.f35713a;
            if (i != 112) {
                if (i != 113 || num.intValue() != 0) {
                    return null;
                }
                SettingActivity.this.f35692C.m19566b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call, (Boolean) true);
                SettingActivity.m3222b(SettingActivity.this.f35695F, true);
                return null;
            } else if (num.intValue() != 0) {
                return null;
            } else {
                SettingActivity.this.f35692C.m19566b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call_notification, (Boolean) true);
                SettingActivity.m3222b(SettingActivity.this.f35696G, true);
                return null;
            }
        }
    }

    /* renamed from: com.netqin.cm.setting.SettingActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/SettingActivity$i.class */
    public class View$OnClickListenerC9181i implements View.OnClickListener {
        public View$OnClickListenerC9181i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131230823) {
                SettingActivity.this.m3212o();
            } else if (id == 2131231162) {
                SettingActivity.this.m3213n();
            } else if (id == 2131231164) {
                C6843d.m19600a(SettingActivity.this.f35626r, SettingActivity.this.f35626r.getApplicationContext().getPackageName(), "https://play.google.com/store/apps/details?id=com.netqin.mm&referrer=utm_source%3DCB%26utm_medium%3DSelf", "&referrer=utm_source%3DCB%26utm_medium%3DSelf");
            }
        }
    }

    /* renamed from: a */
    public static void m3225a(TextView textView, int i, int i2) {
        if (i2 == 0) {
            textView.setText(i);
            return;
        }
        int a = C0869a.m35693a(textView.getContext(), 2131034243);
        Resources resources = textView.getResources();
        String string = resources.getString(i);
        String string2 = resources.getString(i2);
        StringBuilder sb = new StringBuilder(string);
        sb.append("\n");
        sb.append(string2);
        SpannableString spannableString = new SpannableString(sb);
        spannableString.setSpan(new ForegroundColorSpan(a), string.length(), sb.length(), 17);
        spannableString.setSpan(new RelativeSizeSpan(0.75f), string.length(), sb.length(), 17);
        textView.setText(spannableString);
    }

    /* renamed from: b */
    public static void m3222b(TextView textView, boolean z) {
        Drawable c = C0869a.m35684c(textView.getContext(), z ? 2131165533 : 2131165532);
        textView.setTag(Boolean.valueOf(z));
        textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, c, (Drawable) null);
    }

    /* renamed from: c */
    public void m3220c(int i) {
        if (CBPermissionsHelper.m3287b() || !CBPermissionsHelper.m3283e()) {
            CBPermissionsHelper.m3286b(this, new C9180h(i));
        } else if (!this.f35693D) {
            this.f35693D = true;
            m3216e(i);
        }
    }

    /* renamed from: d */
    public final void m3218d(int i) {
        ((TextView) findViewById(2131230784)).setText(i);
    }

    /* renamed from: e */
    public void m3216e(int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addFlags(1082458112);
        intent.setData(Uri.parse("package:" + getPackageName()));
        startActivityForResult(intent, i);
        overridePendingTransition(0, 0);
    }

    /* renamed from: n */
    public final void m3213n() {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19831b(2131558678);
        View inflate = LayoutInflater.from(this).inflate(2131427356, (ViewGroup) null);
        ((TextView) inflate.findViewById(2131230726)).setText(getString(2131558611, new Object[]{C6843d.m19595b(this.f35626r), "177"}));
        aVar.m19835a(inflate);
        aVar.m19836a(2131558513, new DialogInterface$OnClickListenerC9176d());
        aVar.m19838a().show();
    }

    /* renamed from: o */
    public final void m3212o() {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this);
        aVar.m19829b(getString(2131558470));
        View inflate = LayoutInflater.from(this).inflate(2131427461, (ViewGroup) null);
        this.f35702w = (TextView) inflate.findViewById(2131231129);
        this.f35703x = (RelativeLayout) inflate.findViewById(2131230922);
        this.f35704y = (RelativeLayout) inflate.findViewById(2131231174);
        this.f35705z = (ImageView) inflate.findViewById(2131231128);
        this.f35690A = (ImageView) inflate.findViewById(2131231173);
        int a = this.f35692C.m19573a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 5);
        if (a == 5) {
            this.f35705z.setBackgroundResource(2131165476);
        } else if (a == 7) {
            this.f35690A.setBackgroundResource(2131165476);
        }
        aVar.m19835a(inflate);
        this.f35698I = aVar.m19838a();
        this.f35703x.setOnClickListener(new View$OnClickListenerC9177e());
        this.f35704y.setOnClickListener(new View$OnClickListenerC9178f());
        this.f35702w.setOnClickListener(new View$OnClickListenerC9179g());
        this.f35698I.show();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 112) {
            this.f35693D = false;
            if (CBPermissionsHelper.m3287b()) {
                this.f35692C.m19566b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call_notification, (Boolean) true);
                m3222b(this.f35696G, true);
                return;
            }
            m3222b(this.f35696G, false);
        } else if (i == 113) {
            this.f35693D = false;
            if (CBPermissionsHelper.m3287b()) {
                this.f35692C.m19566b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call, (Boolean) true);
                m3222b(this.f35695F, true);
                return;
            }
            m3222b(this.f35695F, false);
        } else if (i == 120) {
            this.f35694E = false;
            if (m3211p()) {
                this.f35705z.setBackgroundResource(2131165477);
                this.f35690A.setBackgroundResource(2131165476);
                this.f35692C.m19568b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 7);
                this.f35691B.setText(getString(2131558680));
                return;
            }
            this.f35705z.setBackgroundResource(2131165476);
            this.f35690A.setBackgroundResource(2131165477);
            this.f35692C.m19568b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 5);
            this.f35691B.setText(getString(2131558665));
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427460);
        this.f35692C = NQSPFManager.m3184a(this.f35626r).f35744c;
        m3205v();
        m3218d(2131558515);
        m3209r();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f35692C.m19573a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_reject_way, 5) == 5) {
            this.f35691B.setText(getString(2131558665));
        } else {
            this.f35691B.setText(getString(2131558680));
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* renamed from: p */
    public boolean m3211p() {
        return ((NotificationManager) NqApplication.m3303b().getSystemService("notification")).isNotificationPolicyAccessGranted();
    }

    /* renamed from: q */
    public void m3210q() {
        if (!m3211p() && !this.f35694E) {
            this.f35694E = true;
            startActivityForResult(new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"), 120);
            startActivity(new Intent(this, OverlayPermissionHintActivity.class));
        }
    }

    /* renamed from: r */
    public final void m3209r() {
        ((FrameLayout) findViewById(2131231075)).setOnClickListener(new View$OnClickListenerC9173a());
    }

    /* renamed from: s */
    public final void m3208s() {
        TextView textView = (TextView) findViewById(2131230846);
        this.f35695F = textView;
        m3225a(textView, 2131558484, 0);
        m3222b(this.f35695F, this.f35692C.m19571a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call, (Boolean) true).booleanValue());
        this.f35695F.setOnClickListener(new View$OnClickListenerC9174b());
    }

    /* renamed from: t */
    public final void m3207t() {
        m3222b((TextView) findViewById(2131230971), true);
    }

    /* renamed from: u */
    public final void m3206u() {
        TextView textView = (TextView) findViewById(2131231082);
        this.f35696G = textView;
        m3225a(textView, 2131558483, 0);
        m3222b(this.f35696G, this.f35692C.m19571a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_prank_call_notification, (Boolean) true).booleanValue());
        this.f35696G.setOnClickListener(new View$OnClickListenerC9175c());
    }

    /* renamed from: v */
    public final void m3205v() {
        this.f35697H = new View$OnClickListenerC9181i();
        this.f35699t = (LinearLayout) findViewById(2131230823);
        this.f35700u = (LinearLayout) findViewById(2131231164);
        this.f35701v = (LinearLayout) findViewById(2131231162);
        this.f35691B = (TextView) findViewById(2131231007);
        this.f35690A = (ImageView) findViewById(2131231173);
        this.f35699t.setOnClickListener(this.f35697H);
        this.f35700u.setOnClickListener(this.f35697H);
        this.f35701v.setOnClickListener(this.f35697H);
        m3208s();
        m3206u();
        m3207t();
    }
}
