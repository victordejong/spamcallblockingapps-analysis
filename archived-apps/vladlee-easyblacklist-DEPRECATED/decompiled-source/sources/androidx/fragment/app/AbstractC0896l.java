package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.C0598a;
import androidx.core.p036f.C0687f;
import java.io.PrintWriter;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public abstract class AbstractC0896l<E> extends AbstractC0893i {

    /* renamed from: a */
    private final Activity f3768a;

    /* renamed from: b */
    final LayoutInflater$Factory2C0898n f3769b;

    /* renamed from: c */
    private final Context f3770c;

    /* renamed from: d */
    private final Handler f3771d;

    /* renamed from: e */
    private final int f3772e;

    private AbstractC0896l(Activity activity, Context context, Handler handler) {
        this.f3769b = new LayoutInflater$Factory2C0898n();
        this.f3768a = activity;
        this.f3770c = (Context) C0687f.m8548a(context, "context == null");
        this.f3771d = (Handler) C0687f.m8548a(handler, "handler == null");
        this.f3772e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC0896l(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler());
    }

    @Override // androidx.fragment.app.AbstractC0893i
    /* renamed from: a */
    public View mo7753a(int i) {
        return null;
    }

    /* renamed from: a */
    public void mo7752a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            this.f3770c.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: a */
    public void mo7751a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (i == -1) {
            C0598a.m8760a(this.f3768a, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: a */
    public void mo7750a(Fragment fragment, String[] strArr, int i) {
    }

    /* renamed from: a */
    public void mo7748a(String str, PrintWriter printWriter, String[] strArr) {
    }

    @Override // androidx.fragment.app.AbstractC0893i
    /* renamed from: a */
    public boolean mo7754a() {
        return true;
    }

    /* renamed from: a */
    public boolean mo7749a(String str) {
        return false;
    }

    /* renamed from: b */
    public boolean mo7747b() {
        return true;
    }

    /* renamed from: c */
    public LayoutInflater mo7746c() {
        return LayoutInflater.from(this.f3770c);
    }

    /* renamed from: d */
    public void mo7745d() {
    }

    /* renamed from: e */
    public boolean mo7744e() {
        return true;
    }

    /* renamed from: f */
    public int mo7743f() {
        return this.f3772e;
    }

    /* renamed from: g */
    public abstract E mo7742g();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final Activity m7741h() {
        return this.f3768a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final Context m7740i() {
        return this.f3770c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final Handler m7739j() {
        return this.f3771d;
    }
}
