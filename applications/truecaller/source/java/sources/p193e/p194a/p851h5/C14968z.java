package p193e.p194a.p851h5;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.tcpermissions.AccessContactsActivity;
import com.truecaller.tcpermissions.PermissionRequestOptions;
import com.truecaller.tcpermissions.TcPermissionsHandlerActivity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1079n5.AbstractC18493c;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.h1;
import q3.a.j0;
import q3.a.n;
import q3.a.o;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.h5.z */
/* loaded from: classes14-dex2jar.jar:e/a/h5/z.class */
public final class C14968z implements AbstractC14967y {

    /* renamed from: a */
    public l<? super C14945l, s> f42716a;

    /* renamed from: b */
    public l<? super Boolean, s> f42717b;

    /* renamed from: c */
    public final c f42718c = g.a(false, 1);

    /* renamed from: d */
    public final f f42719d;

    /* renamed from: e */
    public final Context f42720e;

    /* renamed from: f */
    public final AbstractC19219a0 f42721f;

    /* renamed from: g */
    public final AbstractC18493c f42722g;

    /* renamed from: e.a.h5.z$a */
    /* loaded from: classes14-dex2jar.jar:e/a/h5/z$a.class */
    public final class C14969a {

        /* renamed from: a */
        public final s1.g f42723a = C25225a.m3978P1(new C14970a());

        /* renamed from: b */
        public final List<String> f42724b;

        /* renamed from: c */
        public final /* synthetic */ C14968z f42725c;

        /* renamed from: e.a.h5.z$a$a */
        /* loaded from: classes14-dex2jar.jar:e/a/h5/z$a$a.class */
        public static final class C14970a extends m implements a<List<? extends String>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C14970a() {
                super(0);
                C14969a.this = r4;
            }

            public Object invoke() {
                List<String> list = C14969a.this.f42724b;
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (C14969a.this.f42725c.f42721f.mo13825h((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            }
        }

        public C14969a(C14968z c14968z, List<String> list) {
            s1.z.c.l.e(list, "permissionsToRequest");
            this.f42725c = c14968z;
            this.f42724b = list;
        }

        /* renamed from: a */
        public final void m19328a() {
            StringBuilder m8728C = C22128a.m8728C("Broadcasting granted permissions: ");
            m8728C.append(m19327b());
            m8728C.toString();
            if (!m19327b().isEmpty()) {
                C14968z c14968z = this.f42725c;
                List<String> m19327b = m19327b();
                Objects.requireNonNull(c14968z);
                Intent intent = new Intent("com.truecaller.ACTION_PERMISSIONS_CHANGED");
                intent.putCharSequenceArrayListExtra("granted", new ArrayList<>(m19327b));
                C27062a.m968b(c14968z.f42720e).m966d(intent);
            }
        }

        /* renamed from: b */
        public final List<String> m19327b() {
            return (List) this.f42723a.getValue();
        }

        /* renamed from: c */
        public final boolean m19326c() {
            return this.f42724b.size() == m19327b().size();
        }
    }

    @e(c = "com.truecaller.tcpermissions.TcPermissionsViewImpl", f = "TcPermissionsView.kt", l = {368}, m = "handleAccessContactsResult")
    /* renamed from: e.a.h5.z$b */
    /* loaded from: classes14-dex2jar.jar:e/a/h5/z$b.class */
    public static final class C14971b extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f42727d;

        /* renamed from: e */
        public int f42728e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14971b(d dVar) {
            super(dVar);
            C14968z.this = r4;
        }

        /* renamed from: s */
        public final Object m19325s(Object obj) {
            this.f42727d = obj;
            this.f42728e |= Integer.MIN_VALUE;
            return C14968z.this.m19332h(null, null, null, this);
        }
    }

    /* renamed from: e.a.h5.z$c */
    /* loaded from: classes14-dex2jar.jar:e/a/h5/z$c.class */
    public static final class C14972c extends m implements l<C14945l, s> {

        /* renamed from: b */
        public final /* synthetic */ n f42730b;

        /* renamed from: c */
        public final /* synthetic */ C14968z f42731c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14972c(n nVar, C14968z c14968z) {
            super(1);
            this.f42730b = nVar;
            this.f42731c = c14968z;
        }

        /* renamed from: d */
        public Object m19324d(Object obj) {
            C14945l c14945l = (C14945l) obj;
            s1.z.c.l.e(c14945l, "result");
            boolean mo13825h = this.f42731c.f42721f.mo13825h("android.permission.READ_CONTACTS");
            l<? super Boolean, s> lVar = this.f42731c.f42717b;
            if (lVar != null) {
                s sVar = (s) lVar.d(Boolean.valueOf(mo13825h));
            }
            this.f42730b.c(c14945l);
            return s.a;
        }
    }

    /* renamed from: e.a.h5.z$d */
    /* loaded from: classes14-dex2jar.jar:e/a/h5/z$d.class */
    public static final class C14973d extends m implements l<C14945l, s> {

        /* renamed from: b */
        public final /* synthetic */ n f42732b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14973d(n nVar) {
            super(1);
            this.f42732b = nVar;
        }

        /* renamed from: d */
        public Object m19323d(Object obj) {
            C14945l c14945l = (C14945l) obj;
            s1.z.c.l.e(c14945l, "result");
            this.f42732b.c(c14945l);
            return s.a;
        }
    }

    @e(c = "com.truecaller.tcpermissions.TcPermissionsViewImpl", f = "TcPermissionsView.kt", l = {208, 211, 213, 215}, m = "requestPermissionsSuspended")
    /* renamed from: e.a.h5.z$e */
    /* loaded from: classes14-dex2jar.jar:e/a/h5/z$e.class */
    public static final class C14974e extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f42733d;

        /* renamed from: e */
        public int f42734e;

        /* renamed from: g */
        public Object f42736g;

        /* renamed from: h */
        public Object f42737h;

        /* renamed from: i */
        public Object f42738i;

        /* renamed from: j */
        public Object f42739j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14974e(d dVar) {
            super(dVar);
            C14968z.this = r4;
        }

        /* renamed from: s */
        public final Object m19322s(Object obj) {
            this.f42733d = obj;
            this.f42734e |= Integer.MIN_VALUE;
            return C14968z.this.mo19338b(null, null, this);
        }
    }

    @Inject
    public C14968z(@Named("UI") f fVar, Context context, AbstractC19219a0 abstractC19219a0, AbstractC18493c abstractC18493c) {
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC18493c, "ugcManager");
        this.f42719d = fVar;
        this.f42720e = context;
        this.f42721f = abstractC19219a0;
        this.f42722g = abstractC18493c;
    }

    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: a */
    public void mo19339a() {
        try {
            Intent flags = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION").setFlags(268435456);
            Intent data = flags.setData(Uri.parse("package:" + this.f42720e.getPackageName()));
            s1.z.c.l.d(data, "Intent(Settings.ACTION_M…${context.packageName}\"))");
            this.f42720e.startActivity(data);
        } catch (ActivityNotFoundException e) {
            C10480a.m26061I1(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0244  */
    /* JADX WARN: Type inference failed for: r0v13, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v15, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v220, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v253, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v26, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v277, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v28, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v288, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r0v301, types: [e.a.h5.z$a] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18 */
    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo19338b(com.truecaller.tcpermissions.PermissionRequestOptions r7, java.lang.String[] r8, s1.w.d<? super p193e.p194a.p851h5.C14945l> r9) {
        /*
            Method dump skipped, instructions count: 1230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p851h5.C14968z.mo19338b(com.truecaller.tcpermissions.PermissionRequestOptions, java.lang.String[], s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: c */
    public void mo19337c(List<String> list, l<? super C14945l, s> lVar) {
        s1.z.c.l.e(list, "permissions");
        s1.z.c.l.e(lVar, "callback");
        PermissionRequestOptions permissionRequestOptions = new PermissionRequestOptions(false, false, null, 7);
        s1.z.c.l.e(list, "permissions");
        s1.z.c.l.e(permissionRequestOptions, "options");
        s1.z.c.l.e(lVar, "callback");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f42719d, (j0) null, new C14934a0(this, lVar, permissionRequestOptions, list, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: d */
    public void mo19336d(C14945l c14945l) {
        s1.z.c.l.e(c14945l, "result");
        l<? super C14945l, s> lVar = this.f42716a;
        if (lVar != null) {
            this.f42716a = null;
            lVar.d(c14945l);
        }
    }

    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: e */
    public void mo19335e() {
        try {
            Intent flags = new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM").setFlags(268435456);
            Intent data = flags.setData(Uri.parse("package:" + this.f42720e.getPackageName()));
            s1.z.c.l.d(data, "Intent(Settings.ACTION_R…${context.packageName}\"))");
            this.f42720e.startActivity(data);
        } catch (ActivityNotFoundException e) {
            C10480a.m26061I1(e);
        }
    }

    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: f */
    public Object mo19334f(String[] strArr, d<? super C14945l> dVar) {
        return mo19338b(new PermissionRequestOptions(false, false, null, 7), (String[]) Arrays.copyOf(strArr, strArr.length), dVar);
    }

    @Override // p193e.p194a.p851h5.AbstractC14967y
    /* renamed from: g */
    public void mo19333g(l<? super Boolean, s> lVar) {
        s1.z.c.l.e(lVar, "callback");
        this.f42717b = lVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m19332h(com.truecaller.tcpermissions.PermissionRequestOptions r7, p193e.p194a.p851h5.C14945l r8, p193e.p194a.p851h5.C14968z.C14969a r9, s1.w.d<? super p193e.p194a.p851h5.C14945l> r10) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p851h5.C14968z.m19332h(com.truecaller.tcpermissions.PermissionRequestOptions, e.a.h5.l, e.a.h5.z$a, s1.w.d):java.lang.Object");
    }

    /* renamed from: i */
    public final Object m19331i(d<? super C14945l> dVar) {
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        this.f42716a = new C14972c(oVar, this);
        Intent intent = new Intent(this.f42720e, AccessContactsActivity.class);
        intent.setFlags(268435456);
        this.f42720e.startActivity(intent);
        Object y = oVar.y();
        if (y == s1.w.j.a.a) {
            s1.z.c.l.e(dVar, "frame");
        }
        return y;
    }

    /* renamed from: j */
    public final Object m19330j(PermissionRequestOptions permissionRequestOptions, C14969a c14969a, d<? super C14945l> dVar) {
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        this.f42716a = new C14973d(oVar);
        StringBuilder m8728C = C22128a.m8728C("Requesting permissions ");
        m8728C.append(c14969a.f42724b);
        m8728C.append('.');
        m8728C.toString();
        Context context = this.f42720e;
        List<String> list = c14969a.f42724b;
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(permissionRequestOptions, "options");
        s1.z.c.l.e(list, "permissions");
        Intent intent = new Intent(context, TcPermissionsHandlerActivity.class);
        intent.setFlags(268435456);
        intent.putStringArrayListExtra("permissions", new ArrayList<>(list));
        intent.putExtra("options", permissionRequestOptions);
        context.startActivity(intent);
        Object y = oVar.y();
        if (y == s1.w.j.a.a) {
            s1.z.c.l.e(dVar, "frame");
        }
        return y;
    }

    /* renamed from: k */
    public final boolean m19329k(List<String> list) {
        Object obj;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (s1.z.c.l.a((String) obj, "android.permission.READ_CONTACTS")) {
                break;
            }
        }
        boolean z = false;
        if (((String) obj) != null) {
            z = false;
            if (this.f42722g.mo14860a()) {
                z = false;
                if (!this.f42722g.mo14858c()) {
                    z = true;
                }
            }
        }
        return z;
    }
}
