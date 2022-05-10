package com.netqin.p525cm.antiharass.p527ui.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.main.p529ui.NqApplication;
import com.netqin.p525cm.permission.CBPermissionsHelper;
import com.netqin.p525cm.utils.NQSPFManager;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
/* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity.class */
public class BlockRuleActivity extends BaseActivity {

    /* renamed from: A */
    public ImageView f35413A;

    /* renamed from: B */
    public ImageView f35414B;

    /* renamed from: C */
    public ImageView f35415C;

    /* renamed from: D */
    public ImageView f35416D;

    /* renamed from: E */
    public TextView f35417E;

    /* renamed from: F */
    public TextView f35418F;

    /* renamed from: G */
    public TextView f35419G;

    /* renamed from: H */
    public C6851j<NQSPFManager.EnumAntiHarass> f35420H;

    /* renamed from: I */
    public int f35421I;

    /* renamed from: J */
    public int f35422J;

    /* renamed from: K */
    public C6727b f35423K;

    /* renamed from: L */
    public LinearLayout f35424L;

    /* renamed from: N */
    public BaseActivity f35426N;

    /* renamed from: O */
    public AlertDialog f35427O;

    /* renamed from: P */
    public DialogC6776a f35428P;

    /* renamed from: Q */
    public C9091i f35429Q;

    /* renamed from: t */
    public LinearLayout f35432t;

    /* renamed from: u */
    public LinearLayout f35433u;

    /* renamed from: v */
    public LinearLayout f35434v;

    /* renamed from: w */
    public RelativeLayout f35435w;

    /* renamed from: x */
    public RelativeLayout f35436x;

    /* renamed from: y */
    public RelativeLayout f35437y;

    /* renamed from: z */
    public RelativeLayout f35438z;

    /* renamed from: M */
    public boolean f35425M = false;

    /* renamed from: R */
    public boolean f35430R = false;

    /* renamed from: S */
    public boolean f35431S = false;

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$a.class */
    public class DialogInterface$OnClickListenerC9083a implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9083a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            BlockRuleActivity.this.m3469t();
            BlockRuleActivity.this.m3471r();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$b.class */
    public class DialogInterface$OnClickListenerC9084b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9084b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            BlockRuleActivity.this.m3471r();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$c.class */
    public class View$OnClickListenerC9085c implements View.OnClickListener {
        public View$OnClickListenerC9085c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlockRuleActivity.this.f35420H.m19568b((C6851j) NQSPFManager.EnumAntiHarass.antiharass_block_model, 3);
            BlockRuleActivity.this.f35419G.setText(BlockRuleActivity.this.getString(2131558472));
            BlockRuleActivity.this.f35428P.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$d.class */
    public class View$OnClickListenerC9086d implements View.OnClickListener {
        public View$OnClickListenerC9086d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlockRuleActivity.this.m3483c(111);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$e.class */
    public class View$OnClickListenerC9087e implements View.OnClickListener {
        public View$OnClickListenerC9087e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlockRuleActivity.this.m3483c(112);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$f.class */
    public class View$OnClickListenerC9088f implements View.OnClickListener {
        public View$OnClickListenerC9088f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BlockRuleActivity.this.m3483c(113);
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$g */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$g.class */
    public class DialogInterface$OnClickListenerC9089g implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC9089g() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$h */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$h.class */
    public class C9090h implements AbstractC10031l<Integer, C9946p> {

        /* renamed from: a */
        public final /* synthetic */ int f35446a;

        public C9090h(int i) {
            this.f35446a = i;
        }

        /* renamed from: a */
        public C9946p invoke(Integer num) {
            switch (this.f35446a) {
                case 111:
                    if (num.intValue() != 0) {
                        return null;
                    }
                    BlockRuleActivity.this.m3474o();
                    return null;
                case 112:
                    if (num.intValue() != 0) {
                        return null;
                    }
                    BlockRuleActivity.this.m3473p();
                    return null;
                case 113:
                    if (num.intValue() != 0) {
                        return null;
                    }
                    BlockRuleActivity.this.m3472q();
                    return null;
                default:
                    return null;
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$i */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$i.class */
    public class C9091i extends BroadcastReceiver {
        public C9091i() {
        }

        public /* synthetic */ C9091i(BlockRuleActivity blockRuleActivity, DialogInterface$OnClickListenerC9083a aVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.netqin.antiharass.refresh".equals(intent.getAction()) || "com.netqin.antiharass.insert".equals(intent.getAction()) || "com.netqin.antiharass.delete".equals(intent.getAction())) {
                BlockRuleActivity.this.f35430R = true;
                BlockRuleActivity.this.m3465x();
                C6850i.m19579a(null, "mIsNeedRefreshData:" + BlockRuleActivity.this.f35430R);
            }
            if ("com.netqin.antiharass.refresh_view".equals(intent.getAction()) && !BlockRuleActivity.this.f35431S) {
                BlockRuleActivity.this.m3465x();
            }
        }
    }

    /* renamed from: com.netqin.cm.antiharass.ui.activity.BlockRuleActivity$j */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/activity/BlockRuleActivity$j.class */
    public class View$OnClickListenerC9092j implements View.OnClickListener {
        public View$OnClickListenerC9092j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case 2131230822:
                    BlockRuleActivity.this.getParent().startActivityForResult(new Intent(BlockRuleActivity.this.f35626r, BlackListActivity.class), 1609);
                    return;
                case 2131230823:
                default:
                    return;
                case 2131230824:
                    if (Build.VERSION.SDK_INT < 23) {
                        BlockRuleActivity.this.m3467v();
                        return;
                    } else if (!Settings.System.canWrite(NqApplication.m3303b())) {
                        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
                        intent.setData(Uri.parse("package:" + BlockRuleActivity.this.getPackageName()));
                        intent.addFlags(268435456);
                        BlockRuleActivity.this.startActivity(intent);
                        return;
                    } else {
                        BlockRuleActivity.this.m3467v();
                        return;
                    }
                case 2131230825:
                    BlockRuleActivity.this.startActivity(new Intent(BlockRuleActivity.this.f35626r, WhiteListActivity.class));
                    return;
            }
        }
    }

    /* renamed from: A */
    public void m3489A() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, 3);
        builder.setCancelable(false);
        builder.setTitle(2131558485);
        builder.setMessage(2131558487);
        builder.setPositiveButton(2131558486, new DialogInterface$OnClickListenerC9083a());
        builder.setNegativeButton(2131558490, new DialogInterface$OnClickListenerC9084b());
        AlertDialog create = builder.create();
        this.f35427O = create;
        create.show();
    }

    /* renamed from: B */
    public final void m3488B() {
        unregisterReceiver(this.f35429Q);
    }

    /* renamed from: a */
    public void m3485a(BaseActivity baseActivity) {
        this.f35426N = baseActivity;
    }

    /* renamed from: c */
    public void m3483c(int i) {
        if (CBPermissionsHelper.m3287b() || !CBPermissionsHelper.m3283e()) {
            CBPermissionsHelper.m3286b(this.f35426N, new C9090h(i));
        } else if (!this.f35425M) {
            this.f35425M = true;
            m3481d(i);
        }
    }

    /* renamed from: d */
    public void m3481d(int i) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addFlags(1082458112);
        intent.setData(Uri.parse("package:" + getPackageName()));
        getParent().startActivityForResult(intent, i);
        overridePendingTransition(0, 0);
    }

    /* renamed from: n */
    public final boolean m3475n() {
        if (Build.VERSION.SDK_INT < 23 || !m3466w() || ((PowerManager) getSystemService("power")).isIgnoringBatteryOptimizations(getPackageName())) {
            return false;
        }
        m3489A();
        return true;
    }

    /* renamed from: o */
    public void m3474o() {
        this.f35420H.m19568b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 0);
        this.f35419G.setText(getString(2131558453));
        DialogC6776a aVar = this.f35428P;
        if (aVar != null) {
            aVar.dismiss();
            m3475n();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i != 1609) {
            switch (i) {
                case 111:
                    this.f35425M = false;
                    m3474o();
                    return;
                case 112:
                    this.f35425M = false;
                    m3473p();
                    return;
                case 113:
                    this.f35425M = false;
                    m3472q();
                    return;
                default:
                    return;
            }
        } else {
            m3475n();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Activity parent = getParent();
        if (parent != null) {
            parent.onBackPressed();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        C6850i.m19579a("BlockRuleActivity", "BlockRuleActivity onCreate");
        super.onCreate(bundle);
        setContentView(2131427382);
        this.f35423K = C6727b.m19968a(this.f35626r);
        this.f35420H = NQSPFManager.m3184a(this.f35626r).f35744c;
        m3463z();
        m3464y();
        m3475n();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3488B();
        C6850i.m19579a("BlockRuleActivity", "BlockRuleActivity onDestroy");
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.f35431S = true;
        super.onPause();
        C6850i.m19579a("BlockRuleActivity", "BlockRuleActivity onPause");
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        C6850i.m19579a("BlockRuleActivity", "BlockRuleActivity onResume");
        this.f35431S = false;
        super.onResume();
        m3468u();
        m3465x();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        C6850i.m19579a("BlockRuleActivity", "BlockRuleActivity onStart");
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        C6850i.m19579a("BlockRuleActivity", "BlockRuleActivity onStop");
        super.onStop();
    }

    /* renamed from: p */
    public void m3473p() {
        this.f35420H.m19568b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 1);
        this.f35419G.setText(getString(2131558441));
        DialogC6776a aVar = this.f35428P;
        if (aVar != null) {
            aVar.dismiss();
            m3475n();
        }
    }

    /* renamed from: q */
    public void m3472q() {
        this.f35420H.m19568b((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 2);
        this.f35419G.setText(getString(2131558442));
        DialogC6776a aVar = this.f35428P;
        if (aVar != null) {
            aVar.dismiss();
            m3475n();
        }
    }

    /* renamed from: r */
    public final void m3471r() {
        AlertDialog alertDialog = this.f35427O;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: s */
    public LinearLayout m3470s() {
        return this.f35424L;
    }

    /* renamed from: t */
    public void m3469t() {
        Intent intent = new Intent("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
        intent.setData(Uri.parse("package:" + getPackageName()));
        if (intent.resolveActivity(getPackageManager()) != null) {
            startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.POWER_USAGE_SUMMARY");
        intent2.setData(Uri.parse("package:" + getPackageName()));
        if (intent2.resolveActivity(getPackageManager()) != null) {
            startActivity(intent2);
        } else {
            startActivity(new Intent("android.settings.SETTINGS"));
        }
    }

    /* renamed from: u */
    public final void m3468u() {
        int a = this.f35420H.m19573a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 0);
        if (a == 3) {
            this.f35419G.setText(getString(2131558472));
        }
        if (a == 0) {
            this.f35419G.setText(getString(2131558453));
        }
        if (a == 1) {
            this.f35419G.setText(getString(2131558441));
        }
        if (a == 2) {
            this.f35419G.setText(getString(2131558442));
        }
    }

    /* renamed from: v */
    public final void m3467v() {
        DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(this.f35625q);
        aVar.m19829b(getString(2131558454));
        View inflate = LayoutInflater.from(this.f35625q).inflate(2131427381, (ViewGroup) null);
        this.f35435w = (RelativeLayout) inflate.findViewById(2131230893);
        this.f35436x = (RelativeLayout) inflate.findViewById(2131230843);
        this.f35437y = (RelativeLayout) inflate.findViewById(2131230728);
        this.f35438z = (RelativeLayout) inflate.findViewById(2131231273);
        this.f35413A = (ImageView) inflate.findViewById(2131230891);
        this.f35414B = (ImageView) inflate.findViewById(2131230842);
        this.f35415C = (ImageView) inflate.findViewById(2131230727);
        this.f35416D = (ImageView) inflate.findViewById(2131231272);
        int a = this.f35420H.m19573a((C6851j<NQSPFManager.EnumAntiHarass>) NQSPFManager.EnumAntiHarass.antiharass_block_model, 0);
        if (a == 0) {
            this.f35414B.setBackgroundResource(2131165476);
        } else if (a == 1) {
            this.f35415C.setBackgroundResource(2131165476);
        } else if (a == 2) {
            this.f35416D.setBackgroundResource(2131165476);
        } else if (a == 3) {
            this.f35413A.setBackgroundResource(2131165476);
        }
        this.f35435w.setOnClickListener(new View$OnClickListenerC9085c());
        this.f35436x.setOnClickListener(new View$OnClickListenerC9086d());
        this.f35437y.setOnClickListener(new View$OnClickListenerC9087e());
        this.f35438z.setOnClickListener(new View$OnClickListenerC9088f());
        aVar.m19836a(2131558496, new DialogInterface$OnClickListenerC9089g());
        aVar.m19835a(inflate);
        DialogC6776a a2 = aVar.m19838a();
        this.f35428P = a2;
        a2.show();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004f, code lost:
        if (r4.f35423K.m19958b(1) != 0) goto L_0x0042;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3466w() {
        /*
            r4 = this;
            r0 = r4
            android.content.Context r0 = r0.f35626r
            com.netqin.cm.utils.NQSPFManager r0 = com.netqin.p525cm.utils.NQSPFManager.m3184a(r0)
            c.l.a.n.j<com.netqin.cm.utils.NQSPFManager$EnumAntiHarass> r0 = r0.f35744c
            r5 = r0
            com.netqin.cm.utils.NQSPFManager$EnumAntiHarass r0 = com.netqin.p525cm.utils.NQSPFManager.EnumAntiHarass.antiharass_block_model
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r5
            r1 = r6
            r2 = 0
            int r0 = r0.m19573a(r1, r2)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0047
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L_0x0039
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L_0x002d
            goto L_0x0055
        L_0x002d:
            java.lang.String r0 = "BlockRuleActivity"
            java.lang.String r1 = "拦截模式为：：：接收白名单和通讯录"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
            goto L_0x0042
        L_0x0039:
            java.lang.String r0 = "BlockRuleActivity"
            java.lang.String r1 = "拦截模式为：：：只接受白名单"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
        L_0x0042:
            r0 = 1
            r7 = r0
            goto L_0x0055
        L_0x0047:
            r0 = r4
            c.l.a.b.c.b r0 = r0.f35423K
            r1 = 1
            int r0 = r0.m19958b(r1)
            if (r0 == 0) goto L_0x0055
            goto L_0x0042
        L_0x0055:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.netqin.p525cm.antiharass.p527ui.activity.BlockRuleActivity.m3466w():boolean");
    }

    /* renamed from: x */
    public void m3465x() {
        this.f35421I = this.f35423K.m19958b(1);
        this.f35422J = this.f35423K.m19958b(0);
        if (!this.f35431S) {
            this.f35417E.setText(getString(2131558471, new Object[]{Integer.valueOf(this.f35421I)}));
            this.f35418F.setText(getString(2131558473, new Object[]{Integer.valueOf(this.f35422J)}));
        }
    }

    /* renamed from: y */
    public final void m3464y() {
        this.f35429Q = new C9091i(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.netqin.antiharass.delete");
        intentFilter.addAction("com.netqin.antiharass.insert");
        intentFilter.addAction("com.netqin.antiharass.refresh");
        intentFilter.addAction("com.netqin.antiharass.refresh_view");
        registerReceiver(this.f35429Q, intentFilter);
    }

    /* renamed from: z */
    public final void m3463z() {
        this.f35432t = (LinearLayout) findViewById(2131230822);
        this.f35433u = (LinearLayout) findViewById(2131230825);
        this.f35434v = (LinearLayout) findViewById(2131230824);
        this.f35417E = (TextView) findViewById(2131230840);
        this.f35418F = (TextView) findViewById(2131231275);
        this.f35419G = (TextView) findViewById(2131231008);
        this.f35424L = (LinearLayout) findViewById(2131230792);
        this.f35432t.setOnClickListener(new View$OnClickListenerC9092j());
        this.f35433u.setOnClickListener(new View$OnClickListenerC9092j());
        this.f35434v.setOnClickListener(new View$OnClickListenerC9092j());
    }
}
