package p131c.p431l.p432a.p442b.p445c;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.p008os.ServiceManager;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.telephony.ITelephony;
import com.netqin.p525cm.utils.NQSPFManager;
import java.lang.reflect.Method;
import p131c.p431l.p432a.p454d.C6799a;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
/* renamed from: c.l.a.b.c.g */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/g.class */
public class C6758g {

    /* renamed from: i */
    public static C6758g f20836i;

    /* renamed from: b */
    public int f20838b;

    /* renamed from: c */
    public AudioManager f20839c;

    /* renamed from: d */
    public Context f20840d;

    /* renamed from: f */
    public C6727b f20842f;

    /* renamed from: g */
    public C6851j<NQSPFManager.EnumAntiHarass> f20843g;

    /* renamed from: h */
    public C6727b f20844h;

    /* renamed from: a */
    public boolean f20837a = true;

    /* renamed from: e */
    public ITelephony f20841e = ITelephony.Stub.asInterface(ServiceManager.getService("phone"));

    /* renamed from: c.l.a.b.c.g$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/g$a.class */
    public class C6759a extends Thread {
        public C6759a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            C6758g.this.m19866c();
        }
    }

    /* renamed from: c.l.a.b.c.g$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/c/g$b.class */
    public class C6760b extends Thread {
        public C6760b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            C6758g.this.m19866c();
        }
    }

    public C6758g(Context context) {
        this.f20840d = context.getApplicationContext();
        this.f20842f = C6727b.m19968a(context);
        this.f20843g = NQSPFManager.m3184a(this.f20840d).f35744c;
        AudioManager audioManager = (AudioManager) this.f20840d.getSystemService("audio");
        this.f20839c = audioManager;
        this.f20838b = audioManager.getRingerMode();
        this.f20844h = C6727b.m19968a(this.f20840d);
    }

    /* renamed from: a */
    public static C6758g m19873a(Context context) {
        C6758g gVar;
        synchronized (C6758g.class) {
            try {
                if (f20836i == null) {
                    f20836i = new C6758g(context);
                }
                gVar = f20836i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    /* renamed from: a */
    public final ITelephony m19875a() {
        Object systemService = this.f20840d.getSystemService("phone2");
        if (systemService == null) {
            return null;
        }
        try {
            Method declaredMethod = systemService.getClass().getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            if (declaredMethod == null) {
                return null;
            }
            return (ITelephony) declaredMethod.invoke(this.f20840d.getSystemService("phone2"), new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public final String m19871a(String str) {
        String b = this.f20842f.m19955b(str);
        if (!TextUtils.isEmpty(b)) {
            C6850i.m19577b("HarassCallFilter", "联系人中的姓名： = " + b);
            return b;
        }
        C6850i.m19577b("HarassCallFilter", "黑白名单和联系人中的名字都为空");
        return null;
    }

    /* renamed from: a */
    public void m19874a(int i) {
        C6760b bVar;
        StringBuilder sb = new StringBuilder();
        sb.append("endCall start: ");
        sb.append(this.f20841e == null ? "mTelephony is null" : "mTelephony is not null");
        C6850i.m19579a("HarassCallFilter", sb.toString());
        boolean d = m19864d();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("设置静音结果：");
        String str = "true";
        sb2.append(d ? "true" : "false");
        C6850i.m19579a("HarassCallFilter", sb2.toString());
        boolean z = Build.VERSION.SDK_INT >= 23 && this.f20840d.checkSelfPermission("android.permission.CALL_PHONE") != -1;
        if (Build.VERSION.SDK_INT < 28 || this.f20840d.checkSelfPermission("android.permission.ANSWER_PHONE_CALLS") == -1) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 23 || (i2 <= 27 && z)) {
                try {
                    try {
                        if (i == 1) {
                            this.f20841e = ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
                        } else if (i == 2) {
                            this.f20841e = m19875a();
                        }
                        boolean endCall = this.f20841e != null ? this.f20841e.endCall() : false;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("挂断电话结果：");
                        if (!endCall) {
                            str = "false";
                        }
                        sb3.append(str);
                        C6850i.m19579a("HarassCallFilter", sb3.toString());
                        C6799a.m19765a(endCall);
                        this.f20837a = true;
                        bVar = new C6760b();
                    } catch (Exception e) {
                        e.printStackTrace();
                        this.f20837a = false;
                        bVar = new C6760b();
                    }
                    bVar.start();
                } catch (Throwable th) {
                    new C6760b().start();
                    throw th;
                }
            }
        } else {
            C6850i.m19579a("HarassCallFilter", "Start rejectCall Android P");
            TelecomManager telecomManager = (TelecomManager) this.f20840d.getSystemService("telecom");
            if (telecomManager != null) {
                Log.d("HarassCallFilter", "Start rejectCall Android P endcall");
                C6799a.m19765a(telecomManager.endCall());
                this.f20837a = true;
                new C6759a().start();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0092, code lost:
        if (r7 != false) goto L_0x0095;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d2  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m19869a(java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p445c.C6758g.m19869a(java.lang.String, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean[] m19870a(java.lang.String r5, int r6) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p445c.C6758g.m19870a(java.lang.String, int):java.lang.Boolean[]");
    }

    /* renamed from: b */
    public final void m19868b() {
        C6741c.m19914a(this.f20840d, "com.netqin.antiharass.refresh");
    }

    /* renamed from: b */
    public boolean m19867b(String str) {
        boolean z = true;
        if (this.f20842f.m19932h(str)) {
            m19869a(str, true);
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public final void m19866c() {
        try {
            this.f20839c.setRingerMode(this.f20838b);
        } catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public boolean m19865c(String str) {
        m19869a(str, false);
        return true;
    }

    /* renamed from: d */
    public final boolean m19864d() {
        Context context;
        if (this.f20839c == null && (context = this.f20840d) != null) {
            this.f20839c = (AudioManager) context.getSystemService("audio");
        }
        AudioManager audioManager = this.f20839c;
        if (audioManager == null) {
            return false;
        }
        try {
            audioManager.setRingerMode(0);
            return true;
        } catch (Exception e) {
            C6850i.m19578a((Throwable) e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if (r4.f20842f.m19940e(r5) == false) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0091, code lost:
        if (r4.f20842f.m19937f(r5) == false) goto L_0x00ae;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m19863d(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r4
            c.l.a.n.j<com.netqin.cm.utils.NQSPFManager$EnumAntiHarass> r0 = r0.f20843g
            r6 = r0
            com.netqin.cm.utils.NQSPFManager$EnumAntiHarass r0 = com.netqin.p525cm.utils.NQSPFManager.EnumAntiHarass.antiharass_block_model
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r6
            r1 = r7
            r2 = 0
            int r0 = r0.m19573a(r1, r2)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0097
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x007d
            r0 = r9
            r1 = 2
            if (r0 == r1) goto L_0x0041
            r0 = r9
            r1 = 3
            if (r0 == r1) goto L_0x0032
            r0 = r8
            r10 = r0
            goto L_0x00b1
        L_0x0032:
            java.lang.String r0 = "HarassCallFilter"
            java.lang.String r1 = "拦截模式为：：：关闭"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
            r0 = r8
            r10 = r0
            goto L_0x00b1
        L_0x0041:
            java.lang.String r0 = "HarassCallFilter"
            java.lang.String r1 = "拦截模式为：：：接收白名单和通讯录"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
            r0 = r4
            c.l.a.b.c.b r0 = r0.f20842f
            r1 = r5
            boolean r0 = r0.m19945d(r1)
            if (r0 != 0) goto L_0x0072
            r0 = r8
            r10 = r0
            r0 = r4
            c.l.a.b.c.b r0 = r0.f20842f
            r1 = r5
            boolean r0 = r0.m19937f(r1)
            if (r0 != 0) goto L_0x00b1
            r0 = r8
            r10 = r0
            r0 = r4
            c.l.a.b.c.b r0 = r0.f20842f
            r1 = r5
            boolean r0 = r0.m19940e(r1)
            if (r0 != 0) goto L_0x00b1
        L_0x0072:
            java.lang.String r0 = "HarassCallFilter"
            java.lang.String r1 = "不在白名单和通讯录中，  需要拦截"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
            goto L_0x00ae
        L_0x007d:
            java.lang.String r0 = "HarassCallFilter"
            java.lang.String r1 = "拦截模式为：：：只接受白名单"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
            r0 = r8
            r10 = r0
            r0 = r4
            c.l.a.b.c.b r0 = r0.f20842f
            r1 = r5
            boolean r0 = r0.m19937f(r1)
            if (r0 != 0) goto L_0x00b1
            goto L_0x00ae
        L_0x0097:
            r0 = r8
            r10 = r0
            r0 = r4
            c.l.a.b.c.b r0 = r0.f20842f
            r1 = r5
            boolean r0 = r0.m19945d(r1)
            if (r0 == 0) goto L_0x00b1
            java.lang.String r0 = "HarassCallFilter"
            java.lang.String r1 = "该号码在黑名单中"
            p131c.p431l.p432a.p468n.C6850i.m19577b(r0, r1)
        L_0x00ae:
            r0 = 1
            r10 = r0
        L_0x00b1:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p442b.p445c.C6758g.m19863d(java.lang.String):boolean");
    }

    /* renamed from: e */
    public boolean m19862e(String str) {
        return m19863d(str);
    }
}
