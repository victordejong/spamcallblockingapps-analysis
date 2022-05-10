package p131c.p431l.p432a.p452c;

import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.netqin.p525cm.main.p529ui.NqApplication;
import java.util.Iterator;
import java.util.List;
import p131c.p132a.p133a.p134a.C1999i;
import p131c.p431l.p432a.p452c.C6782b;
import p131c.p431l.p432a.p468n.C6846g;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: c.l.a.c.e */
/* loaded from: classes2-dex2jar.jar:c/l/a/c/e.class */
public class C6794e {

    /* renamed from: b */
    public static String f20930b = "BillingManager MyIabUtil";

    /* renamed from: a */
    public final Runnable f20931a = new RunnableC6796b();

    /* renamed from: c.l.a.c.e$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/e$a.class */
    public class C6795a implements C6782b.AbstractC6791g {
        public C6795a(C6794e eVar) {
        }

        @Override // p131c.p431l.p432a.p452c.C6782b.AbstractC6791g
        /* renamed from: a */
        public void mo3327a() {
        }

        @Override // p131c.p431l.p432a.p452c.C6782b.AbstractC6791g
        /* renamed from: a */
        public void mo3326a(List<C1999i> list) {
            boolean z = false;
            if (list == null || list.isEmpty()) {
                C6850i.m19579a(C6794e.f20930b, "onPurchasesUpdated purchases is null, 设置为普通用户");
                C6793d.m19786a(false);
                return;
            }
            Iterator<C1999i> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C1999i next = it.next();
                String str = C6794e.f20930b;
                C6850i.m19579a(str, "onPurchasesUpdated sku and PurchaseState: " + next.m31274e() + ",PurchaseState：" + next.m31277b());
                if (next.m31277b() == 1) {
                    C6850i.m19579a(C6794e.f20930b, "onPurchasesUpdated Purchase successful，设置为会员");
                    z = true;
                    break;
                }
            }
            C6793d.m19786a(z);
        }
    }

    /* renamed from: c.l.a.c.e$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/e$b.class */
    public class RunnableC6796b implements Runnable {
        public RunnableC6796b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C6794e.m19772e()) {
                C6793d.m19784b(false);
                C6850i.m19579a(C6794e.f20930b, "check Over 未安装GP");
            } else if (C6793d.m19787a()) {
                C6850i.m19579a(C6794e.f20930b, "开始查询订单");
                C6794e.this.m19778a();
            }
        }
    }

    /* renamed from: c.l.a.c.e$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/e$c.class */
    public static final class C6797c {

        /* renamed from: a */
        public static final C6794e f20933a = new C6794e();
    }

    /* renamed from: a */
    public static boolean m19776a(String str, PackageManager packageManager) {
        if (TextUtils.isEmpty(str) || packageManager == null) {
            return false;
        }
        try {
            packageManager.getApplicationInfo(str, 8192);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: d */
    public static C6794e m19773d() {
        return C6797c.f20933a;
    }

    /* renamed from: e */
    public static boolean m19772e() {
        return m19776a("com.android.vending", NqApplication.m3303b().getPackageManager());
    }

    /* renamed from: a */
    public final void m19778a() {
        new C6782b(NqApplication.m3303b(), new C6795a(this));
    }

    /* renamed from: b */
    public void m19775b() {
        C6846g.m19587a(this.f20931a);
    }
}
