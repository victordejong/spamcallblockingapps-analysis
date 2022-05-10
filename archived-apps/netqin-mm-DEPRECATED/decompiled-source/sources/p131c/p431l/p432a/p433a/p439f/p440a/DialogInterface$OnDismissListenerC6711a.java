package p131c.p431l.p432a.p433a.p439f.p440a;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.library.p518ad.core.AdInfo;
import com.netqin.p525cm.antiharass.p527ui.activity.MainActivity;
import p131c.p390g.p391a.p392a.C6475a;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p478c.C6871a;
/* renamed from: c.l.a.a.f.a.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/a.class */
public class DialogInterface$OnDismissListenerC6711a extends C6475a.AbstractC6477b implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public MainActivity f20676a;

    /* renamed from: b */
    public AlertDialog f20677b;

    /* renamed from: c */
    public LinearLayout f20678c;

    /* renamed from: d */
    public AbstractC6515g f20679d = new C6712a();

    /* renamed from: c.l.a.a.f.a.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/a$a.class */
    public class C6712a extends AbstractC6515g {
        public C6712a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: a */
        public void mo3232a(AdInfo adInfo, int i) {
            String adSource = adInfo.getAdSource();
            if (((adSource.hashCode() == 2092 && adSource.equals("AM")) ? (char) 0 : (char) 65535) == 0) {
                C6871a.m19506a(null, "Admob Ad Clicks", "CB_ShufflePage_Interstitial_AM_Click", 0L, null);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
            DialogInterface$OnDismissListenerC6711a.this.f20677b.dismiss();
            DialogInterface$OnDismissListenerC6711a.this.f20676a.m3446H();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            String adSource = adInfo.getAdSource();
            if (((adSource.hashCode() == 2092 && adSource.equals("AM")) ? (char) 0 : (char) 65535) == 0) {
                C6871a.m19506a(null, "Admob Ad Impressions", "CB_ShufflePage_Interstitial_AM_Show", 0L, null);
            }
        }
    }

    /* renamed from: c.l.a.a.f.a.a$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/a$b.class */
    public class C6713b implements AbstractC6518i {
        public C6713b() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            DialogInterface$OnDismissListenerC6711a.this.f20677b.dismiss();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            DialogInterface$OnDismissListenerC6711a.this.f20677b.dismiss();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
        }
    }

    public DialogInterface$OnDismissListenerC6711a(MainActivity mainActivity) {
        this.f20676a = mainActivity;
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6477b
    /* renamed from: a */
    public void mo20011a() {
        super.mo20011a();
        AlertDialog alertDialog = this.f20677b;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }

    /* renamed from: a */
    public final void m20010a(Activity activity) {
        AlertDialog create = new AlertDialog.Builder(activity).create();
        this.f20677b = create;
        create.setCanceledOnTouchOutside(false);
        this.f20677b.show();
        this.f20677b.setOnDismissListener(this);
        Window window = this.f20677b.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        WindowManager windowManager = (WindowManager) activity.getSystemService("window");
        attributes.width = windowManager.getDefaultDisplay().getWidth();
        attributes.height = windowManager.getDefaultDisplay().getHeight();
        attributes.alpha = 0.9f;
        attributes.dimAmount = 0.8f;
        window.setAttributes(attributes);
        window.setContentView(2131427467);
        this.f20678c = (LinearLayout) window.findViewById(2131231249);
        if (!C6490b.m20696c("5")) {
            this.f20677b.dismiss();
            return;
        }
        C6713b bVar = new C6713b();
        C6490b bVar2 = new C6490b("5");
        bVar2.m20709a(this.f20679d);
        bVar2.m20708a(bVar);
        bVar2.m20697c(this.f20678c);
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6477b
    /* renamed from: c */
    public void mo20007c() {
        super.mo20007c();
        if (!C6793d.m19782d()) {
            m20004f();
        }
    }

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6477b
    /* renamed from: d */
    public void mo20006d() {
        super.mo20006d();
        if (!C6793d.m19782d()) {
            m20005e();
        }
    }

    /* renamed from: e */
    public final void m20005e() {
        new C6490b("5").m20694e();
    }

    /* renamed from: f */
    public final void m20004f() {
        m20010a(this.f20676a);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f20676a.m3445I();
    }
}
