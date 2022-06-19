package p193e.p194a.p678d4;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.common.GoogleApiAvailability;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.razorpay.AnalyticsConstants;
import java.util.Comparator;
import java.util.Objects;
import java.util.SortedSet;
import java.util.TreeSet;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p678d4.AbstractC12603e;
import s1.a.a.a.v0.f.d;
import s1.e0.k;
import s1.e0.x;
import s1.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d4.d */
/* loaded from: classes11-dex2jar.jar:e/a/d4/d.class */
public final class C12598d implements AbstractC12597c {

    /* renamed from: a */
    public final Context f36732a;

    /* renamed from: e.a.d4.d$a */
    /* loaded from: classes11-dex2jar.jar:e/a/d4/d$a.class */
    public static final class C12599a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(Integer.valueOf(((AbstractC12603e) t).f36736b), Integer.valueOf(((AbstractC12603e) t2).f36736b));
        }
    }

    /* renamed from: e.a.d4.d$b */
    /* loaded from: classes11-dex2jar.jar:e/a/d4/d$b.class */
    public static final class C12600b extends m implements l<AbstractC12603e, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12600b() {
            super(1);
            C12598d.this = r4;
        }

        /* renamed from: d */
        public Object m22837d(Object obj) {
            AbstractC12603e abstractC12603e = (AbstractC12603e) obj;
            s1.z.c.l.e(abstractC12603e, "it");
            return Boolean.valueOf(C12598d.this.mo22840d(abstractC12603e));
        }
    }

    /* renamed from: e.a.d4.d$c */
    /* loaded from: classes11-dex2jar.jar:e/a/d4/d$c.class */
    public static final class C12601c<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(Integer.valueOf(((AbstractC12603e) t).f36736b), Integer.valueOf(((AbstractC12603e) t2).f36736b));
        }
    }

    /* renamed from: e.a.d4.d$d */
    /* loaded from: classes11-dex2jar.jar:e/a/d4/d$d.class */
    public static final class C12602d extends m implements l<AbstractC12603e, Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12602d() {
            super(1);
            C12598d.this = r4;
        }

        /* renamed from: d */
        public Object m22836d(Object obj) {
            AbstractC12603e abstractC12603e = (AbstractC12603e) obj;
            s1.z.c.l.e(abstractC12603e, "it");
            C12598d c12598d = C12598d.this;
            Objects.requireNonNull(c12598d);
            s1.z.c.l.e(abstractC12603e, "engine");
            return Boolean.valueOf(abstractC12603e.mo22834b(c12598d.mo22842b(abstractC12603e)));
        }
    }

    @Inject
    public C12598d(Context context) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f36732a = context;
    }

    @Override // p193e.p194a.p678d4.AbstractC12597c
    /* renamed from: a */
    public PendingIntent mo22843a(AbstractC12603e abstractC12603e, int i, int i2) {
        PendingIntent pendingIntent;
        s1.z.c.l.e(abstractC12603e, "engine");
        if (s1.z.c.l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            pendingIntent = GoogleApiAvailability.f5673d.mo39065b(this.f36732a, i, i2);
        } else if (!s1.z.c.l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            throw new i();
        } else {
            pendingIntent = HuaweiApiAvailability.getInstance().getErrPendingIntent(this.f36732a, i, i2);
        }
        return pendingIntent;
    }

    @Override // p193e.p194a.p678d4.AbstractC12597c
    /* renamed from: b */
    public int mo22842b(AbstractC12603e abstractC12603e) {
        int i;
        s1.z.c.l.e(abstractC12603e, "engine");
        if (s1.z.c.l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            i = GoogleApiAvailability.f5673d.mo39063d(this.f36732a);
        } else if (!s1.z.c.l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            throw new i();
        } else {
            i = HuaweiApiAvailability.getInstance().isHuaweiMobileNoticeAvailable(this.f36732a);
        }
        return i;
    }

    @Override // p193e.p194a.p678d4.AbstractC12597c
    /* renamed from: c */
    public SortedSet<AbstractC12603e> mo22841c() {
        k f = x.f(d.k3(new AbstractC12603e[]{AbstractC12603e.C12604a.f36737c, AbstractC12603e.C12605b.f36738c}), new C12600b());
        C12599a c12599a = new C12599a();
        s1.z.c.l.e(f, "$this$toSortedSet");
        s1.z.c.l.e(c12599a, "comparator");
        TreeSet treeSet = new TreeSet(c12599a);
        x.q(f, treeSet);
        return treeSet;
    }

    @Override // p193e.p194a.p678d4.AbstractC12597c
    /* renamed from: d */
    public boolean mo22840d(AbstractC12603e abstractC12603e) {
        s1.z.c.l.e(abstractC12603e, "engine");
        return abstractC12603e.mo22835a(mo22842b(abstractC12603e));
    }

    @Override // p193e.p194a.p678d4.AbstractC12597c
    /* renamed from: e */
    public SortedSet<AbstractC12603e> mo22839e() {
        k f = x.f(d.k3(new AbstractC12603e[]{AbstractC12603e.C12604a.f36737c, AbstractC12603e.C12605b.f36738c}), new C12602d());
        C12601c c12601c = new C12601c();
        s1.z.c.l.e(f, "$this$toSortedSet");
        s1.z.c.l.e(c12601c, "comparator");
        TreeSet treeSet = new TreeSet(c12601c);
        x.q(f, treeSet);
        return treeSet;
    }

    @Override // p193e.p194a.p678d4.AbstractC12597c
    /* renamed from: f */
    public Integer mo22838f(AbstractC12603e abstractC12603e) {
        String str;
        Integer num;
        s1.z.c.l.e(abstractC12603e, "engine");
        if (s1.z.c.l.a(abstractC12603e, AbstractC12603e.C12604a.f36737c)) {
            str = "com.google.android.gms";
        } else if (!s1.z.c.l.a(abstractC12603e, AbstractC12603e.C12605b.f36738c)) {
            throw new i();
        } else {
            str = "com.huawei.hwid";
        }
        try {
            PackageManager packageManager = this.f36732a.getPackageManager();
            num = null;
            if (packageManager != null) {
                PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                num = null;
                if (packageInfo != null) {
                    num = Integer.valueOf(packageInfo.versionCode);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            num = null;
        }
        return num;
    }
}
