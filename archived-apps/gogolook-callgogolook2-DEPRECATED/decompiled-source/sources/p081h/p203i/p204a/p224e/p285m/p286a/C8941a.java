package p081h.p203i.p204a.p224e.p285m.p286a;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p259j.p276q.C8613h;
/* renamed from: h.i.a.e.m.a.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/a/a.class */
public class C8941a {

    /* renamed from: a */
    public final C8613h f20193a;

    public C8941a(C8613h hVar) {
        this.f20193a = hVar;
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    /* renamed from: a */
    public static C8941a m16790a(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull String str3, Bundle bundle) {
        return C8613h.m17617a(context, str, str2, str3, bundle).m17586f();
    }

    /* renamed from: a */
    public long m16792a() {
        return this.f20193a.m17621a();
    }

    /* renamed from: a */
    public List<Bundle> m16787a(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        return this.f20193a.m17605a(str, str2);
    }

    /* renamed from: a */
    public Map<String, Object> m16784a(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        return this.f20193a.m17601a(str, str2, z);
    }

    /* renamed from: a */
    public void m16791a(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.f20193a.m17619a(activity, str, str2);
    }

    /* renamed from: a */
    public void m16789a(Bundle bundle) {
        this.f20193a.m17615a(bundle, false);
    }

    /* renamed from: a */
    public void m16788a(@NonNull @Size(min = 1) String str) {
        this.f20193a.m17606a(str);
    }

    /* renamed from: a */
    public void m16786a(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f20193a.m17604a(str, str2, bundle);
    }

    /* renamed from: a */
    public void m16785a(String str, String str2, Object obj) {
        this.f20193a.m17602a(str, str2, obj, true);
    }

    /* renamed from: b */
    public Bundle m16782b(Bundle bundle) {
        return this.f20193a.m17615a(bundle, true);
    }

    /* renamed from: b */
    public String m16783b() {
        return this.f20193a.m17600b();
    }

    /* renamed from: b */
    public void m16781b(@NonNull @Size(min = 1) String str) {
        this.f20193a.m17597b(str);
    }

    /* renamed from: b */
    public void m16780b(String str, String str2, Bundle bundle) {
        this.f20193a.m17595b(str, str2, bundle);
    }

    @WorkerThread
    /* renamed from: c */
    public int m16777c(@NonNull @Size(min = 1) String str) {
        return this.f20193a.m17591c(str);
    }

    @Nullable
    /* renamed from: c */
    public String m16779c() {
        return this.f20193a.m17584g();
    }

    /* renamed from: c */
    public void m16778c(@NonNull Bundle bundle) {
        this.f20193a.m17616a(bundle);
    }

    @Nullable
    /* renamed from: d */
    public String m16776d() {
        return this.f20193a.m17594c();
    }

    @Nullable
    /* renamed from: e */
    public String m16775e() {
        return this.f20193a.m17590d();
    }

    @Nullable
    /* renamed from: f */
    public String m16774f() {
        return this.f20193a.m17588e();
    }
}
