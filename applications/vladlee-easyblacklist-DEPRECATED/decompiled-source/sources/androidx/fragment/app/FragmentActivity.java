package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.AbstractC0246d;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.app.C0598a;
import androidx.lifecycle.AbstractC0927f;
import androidx.lifecycle.AbstractC0950w;
import androidx.lifecycle.C0933j;
import androidx.lifecycle.C0949v;
import androidx.p026b.C0543j;
import androidx.p043e.p044a.AbstractC0816a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity.class */
public class FragmentActivity extends ComponentActivity implements C0598a.AbstractC0599a, C0598a.AbstractC0601c {

    /* renamed from: c */
    boolean f3618c;

    /* renamed from: d */
    boolean f3619d;

    /* renamed from: f */
    boolean f3621f;

    /* renamed from: g */
    boolean f3622g;

    /* renamed from: h */
    boolean f3623h;

    /* renamed from: i */
    int f3624i;

    /* renamed from: j */
    C0543j<String> f3625j;

    /* renamed from: a */
    final C0894j f3616a = C0894j.m7775a(new C0863a());

    /* renamed from: b */
    final C0933j f3617b = new C0933j(this);

    /* renamed from: e */
    boolean f3620e = true;

    /* renamed from: androidx.fragment.app.FragmentActivity$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentActivity$a.class */
    final class C0863a extends AbstractC0896l<FragmentActivity> implements AbstractC0246d, AbstractC0950w {
        public C0863a() {
            super(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.AbstractC0896l, androidx.fragment.app.AbstractC0893i
        /* renamed from: a */
        public final View mo7753a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: a */
        public final void mo7752a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            FragmentActivity.this.m7859a(fragment, intent, i, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: a */
        public final void mo7751a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
            FragmentActivity.this.m7858a(fragment, intentSender, i, intent, i2, i3, i4, bundle);
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: a */
        public final void mo7750a(Fragment fragment, String[] strArr, int i) {
            FragmentActivity.this.m7857a(fragment, strArr, i);
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: a */
        public final void mo7748a(String str, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, null, printWriter, strArr);
        }

        @Override // androidx.fragment.app.AbstractC0896l, androidx.fragment.app.AbstractC0893i
        /* renamed from: a */
        public final boolean mo7754a() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: a */
        public final boolean mo7749a(String str) {
            return C0598a.m8759a((Activity) FragmentActivity.this, str);
        }

        @Override // androidx.activity.AbstractC0246d
        /* renamed from: a_ */
        public final OnBackPressedDispatcher mo7850a_() {
            return FragmentActivity.this.mo7850a_();
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: b */
        public final boolean mo7747b() {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: c */
        public final LayoutInflater mo7746c() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: d */
        public final void mo7745d() {
            FragmentActivity.this.mo7853c();
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: e */
        public final boolean mo7744e() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: f */
        public final int mo7743f() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.fragment.app.AbstractC0896l
        /* renamed from: g */
        public final /* bridge */ /* synthetic */ FragmentActivity mo7742g() {
            return FragmentActivity.this;
        }

        @Override // androidx.lifecycle.AbstractC0932i
        public final AbstractC0927f getLifecycle() {
            return FragmentActivity.this.f3617b;
        }

        @Override // androidx.lifecycle.AbstractC0950w
        public final C0949v getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }
    }

    /* renamed from: a */
    private int m7860a(Fragment fragment) {
        if (this.f3625j.m8896b() < 65534) {
            while (this.f3625j.m8888e(this.f3624i) >= 0) {
                this.f3624i = (this.f3624i + 1) % 65534;
            }
            int i = this.f3624i;
            this.f3625j.m8894b(i, fragment.f3583o);
            this.f3624i = (this.f3624i + 1) % 65534;
            return i;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    /* renamed from: a */
    private View m7861a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3616a.m7776a(view, str, context, attributeSet);
    }

    /* renamed from: a */
    private static boolean m7856a(AbstractC0897m mVar, AbstractC0927f.EnumC0929b bVar) {
        boolean z = false;
        for (Fragment fragment : mVar.mo7667f()) {
            if (fragment != null) {
                boolean z2 = z;
                if (fragment.getLifecycle().mo7584a().m7585a(AbstractC0927f.EnumC0929b.STARTED)) {
                    fragment.f3573aa.m7582a(bVar);
                    z2 = true;
                }
                z = z2;
                if (fragment.getHost() != null) {
                    z = z2 | m7856a(fragment.getChildFragmentManager(), bVar);
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    private void m7855b() {
        do {
        } while (m7856a(this.f3616a.m7782a(), AbstractC0927f.EnumC0929b.CREATED));
    }

    /* renamed from: b */
    private static void m7854b(int i) {
        if ((i & (-65536)) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    @Override // androidx.core.app.C0598a.AbstractC0601c
    /* renamed from: a */
    public final void mo7862a(int i) {
        if (!this.f3621f && i != -1) {
            m7854b(i);
        }
    }

    /* renamed from: a */
    public final void m7859a(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.f3623h = true;
        try {
            if (i == -1) {
                C0598a.m8761a(this, intent, -1, bundle);
                return;
            }
            m7854b(i);
            C0598a.m8761a(this, intent, ((m7860a(fragment) + 1) << 16) + (i & 65535), bundle);
        } finally {
            this.f3623h = false;
        }
    }

    /* renamed from: a */
    public final void m7858a(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.f3622g = true;
        try {
            if (i == -1) {
                C0598a.m8760a(this, intentSender, i, intent, i2, i3, i4, bundle);
                return;
            }
            m7854b(i);
            C0598a.m8760a(this, intentSender, ((m7860a(fragment) + 1) << 16) + (i & 65535), intent, i2, i3, i4, bundle);
        } finally {
            this.f3622g = false;
        }
    }

    /* renamed from: a */
    final void m7857a(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            C0598a.m8758a(this, strArr, i);
            return;
        }
        m7854b(i);
        try {
            this.f3621f = true;
            C0598a.m8758a(this, strArr, ((m7860a(fragment) + 1) << 16) + (i & 65535));
        } finally {
            this.f3621f = false;
        }
    }

    @Deprecated
    /* renamed from: c */
    public void mo7853c() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f3618c);
        printWriter.print(" mResumed=");
        printWriter.print(this.f3619d);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3620e);
        if (getApplication() != null) {
            AbstractC0816a.m8006a(this).mo8000a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f3616a.m7782a().mo7698a(str, fileDescriptor, printWriter, strArr);
    }

    /* renamed from: f */
    public final AbstractC0897m m7852f() {
        return this.f3616a.m7782a();
    }

    @Deprecated
    /* renamed from: g */
    public final AbstractC0816a m7851g() {
        return AbstractC0816a.m8006a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f3616a.m7768c();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a = this.f3625j.m8899a(i4);
            this.f3625j.m8895b(i4);
            if (a == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a2 = this.f3616a.m7774a(a);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: ".concat(String.valueOf(a)));
            } else {
                a2.onActivityResult(i & 65535, i2, intent);
            }
        } else {
            C0598a.AbstractC0600b a3 = C0598a.m8763a();
            if (a3 == null || !a3.m8755b()) {
                super.onActivityResult(i, i2, intent);
            }
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3616a.m7768c();
        this.f3616a.m7781a(configuration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f3616a.m7772b();
        if (bundle != null) {
            this.f3616a.m7780a(bundle.getParcelable("android:support:fragments"));
            if (bundle.containsKey("android:support:next_request_index")) {
                this.f3624i = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.f3625j = new C0543j<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.f3625j.m8894b(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.f3625j == null) {
            this.f3625j = new C0543j<>();
            this.f3624i = 0;
        }
        super.onCreate(bundle);
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_CREATE);
        this.f3616a.m7766e();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        return this.f3616a.m7778a(menu, getMenuInflater()) | super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View a = m7861a(view, str, context, attributeSet);
        return a == null ? super.onCreateView(view, str, context, attributeSet) : a;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View a = m7861a((View) null, str, context, attributeSet);
        return a == null ? super.onCreateView(str, context, attributeSet) : a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f3616a.m7760k();
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f3616a.m7759l();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.f3616a.m7777a(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.f3616a.m7770b(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.f3616a.m7773a(z);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f3616a.m7768c();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.f3616a.m7771b(menu);
        }
        super.onPanelClosed(i, menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f3619d = false;
        this.f3616a.m7762i();
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.f3616a.m7769b(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_RESUME);
        this.f3616a.m7763h();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return super.onPreparePanel(i, view, menu);
        }
        return this.f3616a.m7779a(menu) | super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, androidx.core.app.C0598a.AbstractC0599a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        String concat;
        this.f3616a.m7768c();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String a = this.f3625j.m8899a(i3);
            this.f3625j.m8895b(i3);
            if (a == null) {
                concat = "Activity result delivered for unknown Fragment.";
            } else {
                Fragment a2 = this.f3616a.m7774a(a);
                if (a2 == null) {
                    concat = "Activity result no fragment exists for who: ".concat(String.valueOf(a));
                } else {
                    a2.onRequestPermissionsResult(i & 65535, strArr, iArr);
                    return;
                }
            }
            Log.w("FragmentActivity", concat);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f3619d = true;
        this.f3616a.m7768c();
        this.f3616a.m7758m();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        m7855b();
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_STOP);
        Parcelable d = this.f3616a.m7767d();
        if (d != null) {
            bundle.putParcelable("android:support:fragments", d);
        }
        if (this.f3625j.m8896b() > 0) {
            bundle.putInt("android:support:next_request_index", this.f3624i);
            int[] iArr = new int[this.f3625j.m8896b()];
            String[] strArr = new String[this.f3625j.m8896b()];
            for (int i = 0; i < this.f3625j.m8896b(); i++) {
                iArr[i] = this.f3625j.m8892c(i);
                strArr[i] = this.f3625j.m8889d(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f3620e = false;
        if (!this.f3618c) {
            this.f3618c = true;
            this.f3616a.m7765f();
        }
        this.f3616a.m7768c();
        this.f3616a.m7758m();
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_START);
        this.f3616a.m7764g();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f3616a.m7768c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f3620e = true;
        m7855b();
        this.f3616a.m7761j();
        this.f3617b.m7583a(AbstractC0927f.EnumC0928a.ON_STOP);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (!this.f3623h && i != -1) {
            m7854b(i);
        }
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i, Bundle bundle) {
        if (!this.f3623h && i != -1) {
            m7854b(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.f3622g && i != -1) {
            m7854b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.f3622g && i != -1) {
            m7854b(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
