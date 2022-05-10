package androidx.appcompat.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.FragmentActivity;
import p012b.p016b.p017k.AbstractC0586b;
import p012b.p016b.p017k.AbstractC0587c;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p016b.p026q.C0705k0;
import p012b.p042i.p043h.C0838a;
import p012b.p042i.p043h.C0855f;
import p012b.p042i.p043h.C0867m;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatActivity.class */
public class AppCompatActivity extends FragmentActivity implements AbstractC0586b, C0867m.AbstractC0868a {

    /* renamed from: q */
    public AbstractC0587c f269q;

    /* renamed from: r */
    public Resources f270r;

    @Override // p012b.p016b.p017k.AbstractC0586b
    /* renamed from: a */
    public AbstractC0622b mo36853a(AbstractC0622b.AbstractC0623a aVar) {
        return null;
    }

    /* renamed from: a */
    public void m39181a(Intent intent) {
        C0855f.m35773a(this, intent);
    }

    @Override // p012b.p016b.p017k.AbstractC0586b
    /* renamed from: a */
    public void mo36852a(AbstractC0622b bVar) {
    }

    /* renamed from: a */
    public void m39180a(C0867m mVar) {
        mVar.m35700a((Activity) this);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m39175k().mo36878a(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(m39175k().mo36873b(context));
    }

    @Override // p012b.p016b.p017k.AbstractC0586b
    /* renamed from: b */
    public void mo36851b(AbstractC0622b bVar) {
    }

    /* renamed from: b */
    public void m39177b(C0867m mVar) {
    }

    /* renamed from: b */
    public boolean m39179b(Intent intent) {
        return C0855f.m35770b(this, intent);
    }

    /* renamed from: b */
    public final boolean m39178b(KeyEvent keyEvent) {
        Window window;
        return Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // p012b.p042i.p043h.C0867m.AbstractC0868a
    /* renamed from: c */
    public Intent mo35695c() {
        return C0855f.m35774a(this);
    }

    /* renamed from: c */
    public void m39176c(int i) {
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        ActionBar l = m39174l();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (l == null || !l.m39221e()) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar l = m39174l();
        if (keyCode != 82 || l == null || !l.m39222a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m39175k().mo36885a(i);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m39175k().mo36875b();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f270r == null && C0705k0.m36348b()) {
            this.f270r = new C0705k0(this, super.getResources());
        }
        Resources resources = this.f270r;
        Resources resources2 = resources;
        if (resources == null) {
            resources2 = super.getResources();
        }
        return resources2;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m39175k().mo36863e();
    }

    @Override // androidx.fragment.app.FragmentActivity
    /* renamed from: j */
    public void mo38331j() {
        m39175k().mo36863e();
    }

    /* renamed from: k */
    public AbstractC0587c m39175k() {
        if (this.f269q == null) {
            this.f269q = AbstractC0587c.m36884a(this, this);
        }
        return this.f269q;
    }

    /* renamed from: l */
    public ActionBar m39174l() {
        return m39175k().mo36869c();
    }

    @Deprecated
    /* renamed from: m */
    public void m39173m() {
    }

    /* renamed from: n */
    public boolean m39172n() {
        Intent c = mo35695c();
        if (c == null) {
            return false;
        }
        if (m39179b(c)) {
            C0867m a = C0867m.m35698a((Context) this);
            m39180a(a);
            m39177b(a);
            a.m35701a();
            try {
                C0838a.m35802a((Activity) this);
                return true;
            } catch (IllegalStateException e) {
                finish();
                return true;
            }
        } else {
            m39181a(c);
            return true;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f270r != null) {
            this.f270r.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        m39175k().mo36881a(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        m39173m();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC0587c k = m39175k();
        k.mo36865d();
        k.mo36880a(bundle);
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m39175k().mo36862f();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (m39178b(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar l = m39174l();
        if (menuItem.getItemId() != 16908332 || l == null || (l.mo36795g() & 4) == 0) {
            return false;
        }
        return m39172n();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m39175k().mo36872b(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m39175k().mo36861g();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m39175k().mo36867c(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m39175k().mo36860h();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m39175k().mo36859i();
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m39175k().mo36876a(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        ActionBar l = m39174l();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (l == null || !l.m39218k()) {
            super.openOptionsMenu();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m39175k().mo36868c(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        m39175k().mo36879a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m39175k().mo36871b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m39175k().mo36864d(i);
    }
}
