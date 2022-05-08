package p459j.p460a.p531k0;

import android.text.TextUtils;
import gogolook.callgogolook2.block.blocklog.BlockLogActivity;
import gogolook.callgogolook2.main.calllog.CallLogsFragment;
import gogolook.callgogolook2.phonebook.FavoriteFragment;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import gogolook.callgogolook2.search.TextSearchFragment;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p459j.p460a.p463b0.p465r.C11214c;
import p459j.p460a.p463b0.p466s.C11243e;
import p459j.p460a.p463b0.p466s.View$OnLongClickListenerC11269m;
import p459j.p460a.p521j0.p522u.p523d.C12640p0;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.p590x4.C14296p;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.k0.f */
/* loaded from: classes3-dex2jar.jar:j/a/k0/f.class */
public class C12861f {

    /* renamed from: a */
    public static final String[] f29090a = {"pv", "user_type", "click_area", "longpress", "display_category", "display_order", "add", "action_complete"};

    /* renamed from: b */
    public static final Object[] f29091b = {Integer.MIN_VALUE, Integer.MIN_VALUE, null, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE};

    /* renamed from: c */
    public static final Map<String, Object> f29092c = new HashMap();

    /* renamed from: d */
    public static final String[] f29093d = {FavoriteFragment.class.getSimpleName(), "fav", BlockLogActivity.class.getSimpleName(), "block_logs", C11243e.class.getSimpleName(), "CTC", View$OnLongClickListenerC11269m.class.getSimpleName(), "dialer", "ColdStartList", "fav_rec", CallLogsFragment.class.getSimpleName(), "calllog", C12640p0.class.getSimpleName(), "CED", TextSearchFragment.class.getSimpleName(), "search_r", C11214c.class.getSimpleName(), "contact"};

    /* renamed from: j.a.k0.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/f$a.class */
    public static final class C12862a implements Action1<Void> {
        /* renamed from: a */
        public void call(Void r3) {
            if (C12861f.m5122f()) {
                C12861f.m5121g();
            }
        }
    }

    /* renamed from: j.a.k0.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/k0/f$b.class */
    public static final class C12863b implements Single.OnSubscribe<Void> {
        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: a */
    public static String m5130a(String str) {
        int i = 0;
        while (true) {
            String[] strArr = f29093d;
            if (i >= strArr.length) {
                return "unknown";
            }
            if (TextUtils.equals(strArr[i], str)) {
                return f29093d[i + 1];
            }
            i += 2;
        }
    }

    /* renamed from: a */
    public static void m5129a(String str, Object obj) {
        if (m5122f()) {
            f29092c.put(str, obj);
        }
    }

    /* renamed from: a */
    public static void m5128a(boolean z) {
        if (m5122f()) {
            if (z) {
                m5121g();
            } else {
                Single.create(new C12863b()).subscribeOn(Schedulers.m0io()).delay(10L, TimeUnit.SECONDS).subscribe(new C12862a(), C14081m3.m2611a());
            }
        }
    }

    /* renamed from: b */
    public static void m5126b(String str, Object obj) {
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        int i = 0;
        while (true) {
            String[] strArr = f29090a;
            if (i < strArr.length) {
                Object obj2 = TextUtils.equals(str, strArr[i]) ? obj : f29091b[i];
                if ((obj2 instanceof String) || obj2 == null) {
                    aVar.m1807a(f29090a[i], (String) obj2);
                } else if (obj2 instanceof Integer) {
                    String str2 = f29090a[i];
                    Integer num = (Integer) obj2;
                    Integer num2 = num;
                    if (num.intValue() == Integer.MIN_VALUE) {
                        num2 = null;
                    }
                    aVar.m1808a(str2, num2);
                } else {
                    aVar.m1807a(f29090a[i], (String) null);
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public static void m5125c() {
        f29092c.clear();
    }

    /* renamed from: d */
    public static void m5124d() {
        m5128a(false);
    }

    /* renamed from: e */
    public static long m5123e() {
        if (m5122f()) {
            m5129a("confirm_click", 0);
            m5128a(true);
        }
        f29092c.put(LogsGroupRealmObject.CREATETIME, Long.valueOf(System.currentTimeMillis()));
        return System.currentTimeMillis();
    }

    /* renamed from: f */
    public static boolean m5122f() {
        return f29092c.size() > 0;
    }

    /* renamed from: g */
    public static void m5121g() {
        m5125c();
    }
}
