package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import p012b.p035f.C0793g;
import p012b.p042i.p054p.C0985e;
import p012b.p068o.AbstractC1109g;
import p012b.p068o.C1110h;
import p012b.p068o.FragmentC1119o;
/* loaded from: classes-dex2jar.jar:androidx/core/app/ComponentActivity.class */
public class ComponentActivity extends Activity implements AbstractC1109g, C0985e.AbstractC0986a {

    /* renamed from: a */
    public C1110h f1098a = new C1110h(this);

    public ComponentActivity() {
        new C0793g();
    }

    /* renamed from: a */
    public Lifecycle mo34644a() {
        return this.f1098a;
    }

    @Override // p012b.p042i.p054p.C0985e.AbstractC0986a
    /* renamed from: a */
    public boolean mo35301a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0985e.m35303a(decorView, keyEvent)) {
            return C0985e.m35302a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0985e.m35303a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC1119o.m34635a(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f1098a.m34661a(Lifecycle.State.CREATED);
        super.onSaveInstanceState(bundle);
    }
}
