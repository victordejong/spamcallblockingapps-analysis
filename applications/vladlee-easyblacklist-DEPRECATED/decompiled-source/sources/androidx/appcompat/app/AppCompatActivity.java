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
import androidx.appcompat.app.C0274a;
import androidx.appcompat.view.AbstractC0343b;
import androidx.appcompat.widget.C0497bz;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0598a;
import androidx.core.app.C0610h;
import androidx.core.app.C0621o;
import androidx.fragment.app.FragmentActivity;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatActivity.class */
public class AppCompatActivity extends FragmentActivity implements C0274a.AbstractC0276b, AbstractC0310n, C0621o.AbstractC0622a {

    /* renamed from: k */
    private AbstractC0311o f1108k;

    /* renamed from: l */
    private Resources f1109l;

    /* renamed from: h */
    private boolean m9924h() {
        boolean z;
        Intent a = C0610h.m8741a(this);
        if (a == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            z = shouldUpRecreateTask(a);
        } else {
            String action = getIntent().getAction();
            z = false;
            if (action != null) {
                z = false;
                if (!action.equals("android.intent.action.MAIN")) {
                    z = true;
                }
            }
        }
        if (z) {
            C0621o a2 = C0621o.m8694a((Context) this);
            a2.m8696a((Activity) this);
            a2.m8697a();
            try {
                C0598a.m8762a((Activity) this);
                return true;
            } catch (IllegalStateException e) {
                finish();
                return true;
            }
        } else if (Build.VERSION.SDK_INT >= 16) {
            navigateUpTo(a);
            return true;
        } else {
            a.addFlags(67108864);
            startActivity(a);
            finish();
            return true;
        }
    }

    @Override // androidx.appcompat.app.C0274a.AbstractC0276b
    /* renamed from: a */
    public final C0274a.AbstractC0275a mo9864a() {
        return m9925e().mo9760k();
    }

    /* renamed from: a */
    public final AbstractC0343b m9928a(AbstractC0343b.AbstractC0344a aVar) {
        return m9925e().mo9778a(aVar);
    }

    /* renamed from: a */
    public final void m9927a(Toolbar toolbar) {
        m9925e().mo9777a(toolbar);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m9925e().mo9773b(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        m9925e().mo9763h();
    }

    /* renamed from: b */
    public final ActionBar m9926b() {
        return m9925e().mo9786a();
    }

    @Override // androidx.fragment.app.FragmentActivity
    /* renamed from: c */
    public final void mo7853c() {
        m9925e().mo9762i();
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        ActionBar a = m9925e().mo9786a();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (a == null || !a.mo9850e()) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.core.app.C0621o.AbstractC0622a
    /* renamed from: d */
    public final Intent mo8693d() {
        return C0610h.m8741a(this);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar a = m9925e().mo9786a();
        if (keyCode != 82 || a == null || !a.mo9852a(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* renamed from: e */
    public final AbstractC0311o m9925e() {
        if (this.f1108k == null) {
            this.f1108k = AbstractC0311o.m9784a(this, this);
        }
        return this.f1108k;
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) m9925e().mo9774b(i);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return m9925e().mo9775b();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.f1109l == null && C0497bz.m9033a()) {
            this.f1109l = new C0497bz(this, super.getResources());
        }
        Resources resources = this.f1109l;
        return resources == null ? super.getResources() : resources;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        m9925e().mo9762i();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f1109l != null) {
            this.f1109l.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        m9925e().mo9782a(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        AbstractC0311o e = m9925e();
        e.mo9759l();
        e.mo9771c();
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m9925e().mo9761j();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar a = m9925e().mo9786a();
        if (menuItem.getItemId() != 16908332 || a == null || (a.mo9840a() & 4) == 0) {
            return false;
        }
        return m9924h();
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
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m9925e().mo9768d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        m9925e().mo9764g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m9925e().mo9758m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        m9925e().mo9766e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m9925e().mo9765f();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m9925e().mo9776a(charSequence);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        ActionBar a = m9925e().mo9786a();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (a == null || !a.mo9851d()) {
            super.openOptionsMenu();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m9925e().mo9770c(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        m9925e().mo9781a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m9925e().mo9780a(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        m9925e().mo9785a(i);
    }
}
