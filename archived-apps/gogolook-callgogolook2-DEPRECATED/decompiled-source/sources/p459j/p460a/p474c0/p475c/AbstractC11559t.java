package p459j.p460a.p474c0.p475c;

import android.net.Uri;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import java.util.ArrayList;
import java.util.HashSet;
import p459j.p460a.p474c0.p499h.C12211s;
import p459j.p460a.p521j0.p529x.C12810o;
/* renamed from: j.a.c0.c.t */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/t.class */
public abstract class AbstractC11559t {

    /* renamed from: a */
    public final C12211s f25829a;

    /* renamed from: c */
    public NotificationCompat.Style f25831c;

    /* renamed from: d */
    public NotificationCompat.Builder f25832d;

    /* renamed from: e */
    public boolean f25833e;

    /* renamed from: f */
    public int f25834f;

    /* renamed from: g */
    public int f25835g;

    /* renamed from: h */
    public ArrayList<Uri> f25836h = null;

    /* renamed from: i */
    public ArrayList<Uri> f25837i = null;

    /* renamed from: j */
    public String f25838j = null;

    /* renamed from: b */
    public final HashSet<String> f25830b = new HashSet<>();

    public AbstractC11559t(C12211s sVar) {
        this.f25829a = sVar;
    }

    /* renamed from: a */
    public abstract NotificationCompat.Style mo9167a(NotificationCompat.Builder builder);

    /* renamed from: a */
    public String mo9168a() {
        return null;
    }

    /* renamed from: a */
    public void m9166a(String str) {
    }

    /* renamed from: b */
    public Uri mo9165b() {
        return null;
    }

    /* renamed from: b */
    public void m9164b(String str) {
        if (!C12810o.m5228q()) {
            str = m9161d();
        }
        this.f25838j = str;
    }

    /* renamed from: c */
    public String m9163c() {
        return this.f25838j;
    }

    /* renamed from: c */
    public void m9162c(String str) {
    }

    /* renamed from: d */
    public String m9161d() {
        return MyApplication.m29013o().getString(R$string.smsdialog_hide_hint);
    }

    /* renamed from: e */
    public abstract int mo9160e();

    /* renamed from: f */
    public long mo9159f() {
        return Long.MIN_VALUE;
    }

    /* renamed from: g */
    public boolean mo9158g() {
        return false;
    }

    /* renamed from: h */
    public abstract int mo9157h();

    /* renamed from: i */
    public String mo9156i() {
        return null;
    }
}
