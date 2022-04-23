package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.p037g.C0724d;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0932i;
import androidx.lifecycle.C0933j;
import androidx.lifecycle.FragmentC0943s;
import androidx.p026b.C0542i;
/* loaded from: classes-dex2jar.jar:androidx/core/app/ComponentActivity.class */
public class ComponentActivity extends Activity implements C0724d.AbstractC0725a, AbstractC0932i {

    /* renamed from: a */
    private C0542i<Class<? extends Object>, Object> f2765a = new C0542i<>();

    /* renamed from: b */
    private C0933j f2766b = new C0933j(this);

    @Override // androidx.core.p037g.C0724d.AbstractC0725a
    /* renamed from: a */
    public final boolean mo8409a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0724d.m8411a(decorView, keyEvent)) {
            return C0724d.m8410a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !C0724d.m8411a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    public AbstractC0927f getLifecycle() {
        return this.f2766b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentC0943s.m7556a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        this.f2766b.m7582a(AbstractC0927f.EnumC0929b.CREATED);
        super.onSaveInstanceState(bundle);
    }
}
