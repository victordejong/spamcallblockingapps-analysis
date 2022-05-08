package androidx.activity;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0930g;
import androidx.lifecycle.AbstractC0932i;
import androidx.lifecycle.AbstractC0950w;
import androidx.lifecycle.C0933j;
import androidx.lifecycle.C0949v;
import androidx.lifecycle.FragmentC0943s;
import androidx.savedstate.AbstractC1154c;
import androidx.savedstate.C1150a;
import androidx.savedstate.C1153b;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity.class */
public class ComponentActivity extends androidx.core.app.ComponentActivity implements AbstractC0246d, AbstractC0932i, AbstractC0950w, AbstractC1154c {

    /* renamed from: c */
    private C0949v f520c;

    /* renamed from: e */
    private int f522e;

    /* renamed from: a */
    private final C0933j f518a = new C0933j(this);

    /* renamed from: b */
    private final C1153b f519b = C1153b.m6693a(this);

    /* renamed from: d */
    private final OnBackPressedDispatcher f521d = new OnBackPressedDispatcher(new RunnableC0244b(this));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.activity.ComponentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$a.class */
    public static final class C0241a {

        /* renamed from: a */
        Object f525a;

        /* renamed from: b */
        C0949v f526b;

        C0241a() {
        }
    }

    public ComponentActivity() {
        if (getLifecycle() != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                getLifecycle().mo7580a(new AbstractC0930g() { // from class: androidx.activity.ComponentActivity.2
                    @Override // androidx.lifecycle.AbstractC0930g
                    /* renamed from: a */
                    public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
                        if (aVar == AbstractC0927f.EnumC0928a.ON_STOP) {
                            Window window = ComponentActivity.this.getWindow();
                            View peekDecorView = window != null ? window.peekDecorView() : null;
                            if (peekDecorView != null) {
                                peekDecorView.cancelPendingInputEvents();
                            }
                        }
                    }
                });
            }
            getLifecycle().mo7580a(new AbstractC0930g() { // from class: androidx.activity.ComponentActivity.3
                @Override // androidx.lifecycle.AbstractC0930g
                /* renamed from: a */
                public final void mo6700a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar) {
                    if (aVar == AbstractC0927f.EnumC0928a.ON_DESTROY && !ComponentActivity.this.isChangingConfigurations()) {
                        ComponentActivity.this.getViewModelStore().m7549a();
                    }
                }
            });
            if (19 <= Build.VERSION.SDK_INT && Build.VERSION.SDK_INT <= 23) {
                getLifecycle().mo7580a(new ImmLeaksCleaner(this));
                return;
            }
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
    }

    @Override // androidx.activity.AbstractC0246d
    /* renamed from: a_ */
    public final OnBackPressedDispatcher mo7850a_() {
        return this.f521d;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.AbstractC0932i
    public AbstractC0927f getLifecycle() {
        return this.f518a;
    }

    @Override // androidx.savedstate.AbstractC1154c
    public final C1150a getSavedStateRegistry() {
        return this.f519b.m6695a();
    }

    @Override // androidx.lifecycle.AbstractC0950w
    public C0949v getViewModelStore() {
        if (getApplication() != null) {
            if (this.f520c == null) {
                C0241a aVar = (C0241a) getLastNonConfigurationInstance();
                if (aVar != null) {
                    this.f520c = aVar.f526b;
                }
                if (this.f520c == null) {
                    this.f520c = new C0949v();
                }
            }
            return this.f520c;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f521d.m9960a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f519b.m6694a(bundle);
        FragmentC0943s.m7556a(this);
        int i = this.f522e;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C0949v vVar = this.f520c;
        C0949v vVar2 = vVar;
        if (vVar == null) {
            C0241a aVar = (C0241a) getLastNonConfigurationInstance();
            vVar2 = vVar;
            if (aVar != null) {
                vVar2 = aVar.f526b;
            }
        }
        if (vVar2 == null) {
            return null;
        }
        C0241a aVar2 = new C0241a();
        aVar2.f525a = null;
        aVar2.f526b = vVar2;
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        AbstractC0927f lifecycle = getLifecycle();
        if (lifecycle instanceof C0933j) {
            ((C0933j) lifecycle).m7582a(AbstractC0927f.EnumC0929b.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.f519b.m6692b(bundle);
    }
}
