package android.support.v4.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.session.MediaController;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.v4.app.a;
import android.support.v4.app.c;
import android.support.v4.app.t;
import android.support.v4.b.h;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/i.class */
public class i extends g implements a.AbstractC0002a, c.a {

    /* renamed from: a  reason: collision with root package name */
    final Handler f70a = new Handler() { // from class: android.support.v4.app.i.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    if (i.this.e) {
                        i.this.a(false);
                        return;
                    }
                    return;
                case 2:
                    i.this.b();
                    i.this.f71b.b();
                    return;
                default:
                    super.handleMessage(message);
                    return;
            }
        }
    };

    /* renamed from: b  reason: collision with root package name */
    final k f71b = new k(new a());
    boolean c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    int j;
    boolean k;
    android.support.v4.b.i<String> l;
    android.support.v4.media.session.a m;

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/i$a.class */
    final class a extends l<i> {
        public a() {
            super(i.this);
        }

        @Override // android.support.v4.app.l, android.support.v4.app.j
        public final View a(int i) {
            return i.this.findViewById(i);
        }

        @Override // android.support.v4.app.l
        public final void a(Fragment fragment) {
            i.this.onAttachFragment(fragment);
        }

        @Override // android.support.v4.app.l
        public final void a(Fragment fragment, Intent intent, int i, Bundle bundle) {
            i.this.startActivityFromFragment(fragment, intent, i, bundle);
        }

        @Override // android.support.v4.app.l
        public final void a(Fragment fragment, String[] strArr, int i) {
            i.a(i.this, fragment, strArr, i);
        }

        @Override // android.support.v4.app.l
        public final void a(String str, PrintWriter printWriter, String[] strArr) {
            i.this.dump(str, null, printWriter, strArr);
        }

        @Override // android.support.v4.app.l, android.support.v4.app.j
        public final boolean a() {
            Window window = i.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // android.support.v4.app.l
        public final boolean a(String str) {
            return Build.VERSION.SDK_INT >= 23 ? i.this.shouldShowRequestPermissionRationale(str) : false;
        }

        @Override // android.support.v4.app.l
        public final boolean b() {
            return !i.this.isFinishing();
        }

        @Override // android.support.v4.app.l
        public final LayoutInflater c() {
            return i.this.getLayoutInflater().cloneInContext(i.this);
        }

        @Override // android.support.v4.app.l
        public final void d() {
            i.this.supportInvalidateOptionsMenu();
        }

        @Override // android.support.v4.app.l
        public final boolean e() {
            return i.this.getWindow() != null;
        }

        @Override // android.support.v4.app.l
        public final int f() {
            Window window = i.this.getWindow();
            return window == null ? 0 : window.getAttributes().windowAnimations;
        }

        @Override // android.support.v4.app.l
        public final /* bridge */ /* synthetic */ i g() {
            return i.this;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/app/i$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        Object f74a;

        /* renamed from: b  reason: collision with root package name */
        List<Fragment> f75b;
        h<String, s> c;

        b() {
        }
    }

    private int a(Fragment fragment) {
        if (this.l.b() >= 65534) {
            throw new IllegalStateException("Too many pending Fragment activity results.");
        }
        while (true) {
            android.support.v4.b.i<String> iVar = this.l;
            int i = this.j;
            if (iVar.f137a) {
                iVar.a();
            }
            if (android.support.v4.b.b.a(iVar.f138b, iVar.c, i) >= 0) {
                this.j = (this.j + 1) % 65534;
            } else {
                int i2 = this.j;
                this.l.a(i2, fragment.q);
                this.j = (this.j + 1) % 65534;
                return i2;
            }
        }
    }

    private static String a(View view) {
        String resourcePackageName;
        char c = 'F';
        char c2 = '.';
        StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        switch (view.getVisibility()) {
            case 0:
                sb.append('V');
                break;
            case 4:
                sb.append('I');
                break;
            case 8:
                sb.append('G');
                break;
            default:
                sb.append('.');
                break;
        }
        sb.append(view.isFocusable() ? 'F' : '.');
        sb.append(view.isEnabled() ? 'E' : '.');
        sb.append(view.willNotDraw() ? '.' : 'D');
        sb.append(view.isHorizontalScrollBarEnabled() ? 'H' : '.');
        sb.append(view.isVerticalScrollBarEnabled() ? 'V' : '.');
        sb.append(view.isClickable() ? 'C' : '.');
        sb.append(view.isLongClickable() ? 'L' : '.');
        sb.append(' ');
        if (!view.isFocused()) {
            c = '.';
        }
        sb.append(c);
        sb.append(view.isSelected() ? 'S' : '.');
        if (view.isPressed()) {
            c2 = 'P';
        }
        sb.append(c2);
        sb.append(' ');
        sb.append(view.getLeft());
        sb.append(',');
        sb.append(view.getTop());
        sb.append('-');
        sb.append(view.getRight());
        sb.append(',');
        sb.append(view.getBottom());
        int id = view.getId();
        if (id != -1) {
            sb.append(" #");
            sb.append(Integer.toHexString(id));
            Resources resources = view.getResources();
            if (!(id == 0 || resources == null)) {
                switch ((-16777216) & id) {
                    case 16777216:
                        resourcePackageName = "android";
                        String resourceTypeName = resources.getResourceTypeName(id);
                        String resourceEntryName = resources.getResourceEntryName(id);
                        sb.append(" ");
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName);
                        sb.append("/");
                        sb.append(resourceEntryName);
                        break;
                    case 2130706432:
                        resourcePackageName = "app";
                        String resourceTypeName2 = resources.getResourceTypeName(id);
                        String resourceEntryName2 = resources.getResourceEntryName(id);
                        sb.append(" ");
                        sb.append(resourcePackageName);
                        sb.append(":");
                        sb.append(resourceTypeName2);
                        sb.append("/");
                        sb.append(resourceEntryName2);
                        break;
                    default:
                        try {
                            resourcePackageName = resources.getResourcePackageName(id);
                            String resourceTypeName22 = resources.getResourceTypeName(id);
                            String resourceEntryName22 = resources.getResourceEntryName(id);
                            sb.append(" ");
                            sb.append(resourcePackageName);
                            sb.append(":");
                            sb.append(resourceTypeName22);
                            sb.append("/");
                            sb.append(resourceEntryName22);
                            break;
                        } catch (Resources.NotFoundException e) {
                            break;
                        }
                }
            }
        }
        sb.append("}");
        return sb.toString();
    }

    static /* synthetic */ void a(i iVar, Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            android.support.v4.app.a.a(iVar, strArr, i);
        } else if (((-65536) & i) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else {
            try {
                iVar.i = true;
                android.support.v4.app.a.a(iVar, strArr, ((iVar.a(fragment) + 1) << 16) + (65535 & i));
            } finally {
                iVar.i = false;
            }
        }
    }

    private void a(String str, PrintWriter printWriter, View view) {
        ViewGroup viewGroup;
        int childCount;
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        printWriter.println(a(view));
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) > 0) {
            String str2 = str + "  ";
            for (int i = 0; i < childCount; i++) {
                a(str2, printWriter, viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v4.app.e
    public final View a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f71b.f76a.f.a(view, str, context, attributeSet);
    }

    final void a(boolean z) {
        if (!this.f) {
            this.f = true;
            this.g = z;
            this.f70a.removeMessages(1);
            k kVar = this.f71b;
            boolean z2 = this.g;
            l<?> lVar = kVar.f76a;
            lVar.h = z2;
            if (lVar.i != null && lVar.k) {
                lVar.k = false;
                if (z2) {
                    lVar.i.d();
                } else {
                    lVar.i.c();
                }
            }
            this.f71b.f76a.f.b(2);
        }
    }

    protected final void b() {
        this.f71b.f76a.f.j();
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i = Build.VERSION.SDK_INT;
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.c);
        printWriter.print("mResumed=");
        printWriter.print(this.d);
        printWriter.print(" mStopped=");
        printWriter.print(this.e);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.f);
        l<?> lVar = this.f71b.f76a;
        printWriter.print(str2);
        printWriter.print("mLoadersStarted=");
        printWriter.println(lVar.k);
        if (lVar.i != null) {
            printWriter.print(str2);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(lVar.i)));
            printWriter.println(":");
            lVar.i.a(str2 + "  ", printWriter);
        }
        this.f71b.f76a.f.a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        a(str + "  ", printWriter, getWindow().getDecorView());
    }

    public Object getLastCustomNonConfigurationInstance() {
        b bVar = (b) getLastNonConfigurationInstance();
        return bVar != null ? bVar.f74a : null;
    }

    public m getSupportFragmentManager() {
        return this.f71b.f76a.f;
    }

    public s getSupportLoaderManager() {
        t tVar;
        l<?> lVar = this.f71b.f76a;
        if (lVar.i != null) {
            tVar = lVar.i;
        } else {
            lVar.j = true;
            lVar.i = lVar.a("(root)", lVar.k, true);
            tVar = lVar.i;
        }
        return tVar;
    }

    public final android.support.v4.media.session.a getSupportMediaController() {
        return this.m;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f71b.a();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String a2 = this.l.a(i4);
            this.l.b(i4);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.f71b.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
            } else {
                a3.onActivityResult(65535 & i, i2, intent);
            }
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.f71b.f76a.f.c()) {
            a();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f71b.f76a.f.a(configuration);
    }

    @Override // android.support.v4.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        k kVar = this.f71b;
        kVar.f76a.f.a(kVar.f76a, kVar.f76a, (Fragment) null);
        super.onCreate(bundle);
        b bVar = (b) getLastNonConfigurationInstance();
        if (bVar != null) {
            this.f71b.f76a.g = bVar.c;
        }
        if (bundle != null) {
            this.f71b.f76a.f.a(bundle.getParcelable("android:support:fragments"), bVar != null ? bVar.f75b : null);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.j = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.l = new android.support.v4.b.i<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.l.a(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.l == null) {
            this.l = new android.support.v4.b.i<>();
            this.j = 0;
        }
        this.f71b.f76a.f.g();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        boolean onCreatePanelMenu;
        if (i == 0) {
            boolean onCreatePanelMenu2 = super.onCreatePanelMenu(i, menu);
            k kVar = this.f71b;
            onCreatePanelMenu = onCreatePanelMenu2 | kVar.f76a.f.a(menu, getMenuInflater());
            if (Build.VERSION.SDK_INT < 11) {
                onCreatePanelMenu = true;
            }
        } else {
            onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        }
        return onCreatePanelMenu;
    }

    @Override // android.support.v4.app.g, android.app.Activity, android.view.LayoutInflater.Factory2
    public /* bridge */ /* synthetic */ View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.support.v4.app.e, android.app.Activity, android.view.LayoutInflater.Factory
    public /* bridge */ /* synthetic */ View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return super.onCreateView(str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        a(false);
        this.f71b.f76a.f.l();
        l<?> lVar = this.f71b.f76a;
        if (lVar.i != null) {
            lVar.i.g();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean onKeyDown;
        if (Build.VERSION.SDK_INT < 5 && i == 4 && keyEvent.getRepeatCount() == 0) {
            onBackPressed();
            onKeyDown = true;
        } else {
            onKeyDown = super.onKeyDown(i, keyEvent);
        }
        return onKeyDown;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f71b.f76a.f.m();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        boolean b2;
        if (!super.onMenuItemSelected(i, menuItem)) {
            switch (i) {
                case 0:
                    b2 = this.f71b.f76a.f.a(menuItem);
                    break;
                case 6:
                    b2 = this.f71b.f76a.f.b(menuItem);
                    break;
                default:
                    b2 = false;
                    break;
            }
        } else {
            b2 = true;
        }
        return b2;
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.f71b.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        switch (i) {
            case 0:
                this.f71b.f76a.f.b(menu);
                break;
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.d = false;
        if (this.f70a.hasMessages(2)) {
            this.f70a.removeMessages(2);
            b();
        }
        this.f71b.f76a.f.b(4);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        this.f70a.removeMessages(2);
        b();
        this.f71b.b();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        boolean onPreparePanel;
        if (i != 0 || menu == null) {
            onPreparePanel = super.onPreparePanel(i, view, menu);
        } else {
            if (this.h) {
                this.h = false;
                menu.clear();
                onCreatePanelMenu(i, menu);
            }
            onPreparePanel = super.onPreparePanel(0, view, menu) | this.f71b.f76a.f.a(menu);
        }
        return onPreparePanel;
    }

    @Override // android.app.Activity, android.support.v4.app.a.AbstractC0002a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String a2 = this.l.a(i3);
            this.l.b(i3);
            if (a2 == null) {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment a3 = this.f71b.a(a2);
            if (a3 == null) {
                Log.w("FragmentActivity", "Activity result no fragment exists for who: " + a2);
            } else {
                a3.onRequestPermissionsResult(i & 65535, strArr, iArr);
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f70a.sendEmptyMessage(2);
        this.d = true;
        this.f71b.b();
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        ArrayList arrayList;
        b bVar = null;
        if (this.e) {
            a(true);
        }
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        n nVar = this.f71b.f76a.f;
        if (nVar.f != null) {
            int i = 0;
            ArrayList arrayList2 = null;
            while (true) {
                arrayList = arrayList2;
                if (i >= nVar.f.size()) {
                    break;
                }
                Fragment fragment = nVar.f.get(i);
                arrayList2 = arrayList2;
                if (fragment != null) {
                    arrayList2 = arrayList2;
                    if (fragment.K) {
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        arrayList3.add(fragment);
                        fragment.L = true;
                        fragment.t = fragment.s != null ? fragment.s.p : -1;
                        arrayList2 = arrayList3;
                        if (n.f78a) {
                            Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                            arrayList2 = arrayList3;
                        }
                    }
                }
                i++;
            }
        } else {
            arrayList = null;
        }
        h<String, s> h = this.f71b.f76a.h();
        if (arrayList != null || h != null || onRetainCustomNonConfigurationInstance != null) {
            bVar = new b();
            bVar.f74a = onRetainCustomNonConfigurationInstance;
            bVar.f75b = arrayList;
            bVar.c = h;
        }
        return bVar;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Parcelable f = this.f71b.f76a.f.f();
        if (f != null) {
            bundle.putParcelable("android:support:fragments", f);
        }
        if (this.l.b() > 0) {
            bundle.putInt("android:support:next_request_index", this.j);
            int[] iArr = new int[this.l.b()];
            String[] strArr = new String[this.l.b()];
            for (int i = 0; i < this.l.b(); i++) {
                iArr[i] = this.l.c(i);
                strArr[i] = this.l.d(i);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.e = false;
        this.f = false;
        this.f70a.removeMessages(1);
        if (!this.c) {
            this.c = true;
            this.f71b.f76a.f.h();
        }
        this.f71b.a();
        this.f71b.b();
        l<?> lVar = this.f71b.f76a;
        if (!lVar.k) {
            lVar.k = true;
            if (lVar.i != null) {
                lVar.i.b();
            } else if (!lVar.j) {
                lVar.i = lVar.a("(root)", lVar.k, false);
                if (lVar.i != null && !lVar.i.e) {
                    lVar.i.b();
                }
            }
            lVar.j = true;
        }
        this.f71b.f76a.f.i();
        l<?> lVar2 = this.f71b.f76a;
        if (lVar2.g != null) {
            int size = lVar2.g.size();
            t[] tVarArr = new t[size];
            for (int i = size - 1; i >= 0; i--) {
                tVarArr[i] = (t) lVar2.g.c(i);
            }
            for (int i2 = 0; i2 < size; i2++) {
                t tVar = tVarArr[i2];
                if (tVar.f) {
                    if (t.f102a) {
                        Log.v("LoaderManager", "Finished Retaining in " + tVar);
                    }
                    tVar.f = false;
                    for (int b2 = tVar.f103b.b() - 1; b2 >= 0; b2--) {
                        t.a d = tVar.f103b.d(b2);
                        if (d.i) {
                            if (t.f102a) {
                                Log.v("LoaderManager", "  Finished Retaining: " + d);
                            }
                            d.i = false;
                            if (d.h != d.j && !d.h) {
                                d.a();
                            }
                        }
                        if (d.h && d.e && !d.k) {
                            d.a(d.d, d.g);
                        }
                    }
                }
                tVar.f();
            }
        }
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f71b.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.e = true;
        this.f70a.sendEmptyMessage(1);
        this.f71b.f76a.f.k();
    }

    public void setEnterSharedElementCallback(ai aiVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            setEnterSharedElementCallback(android.support.v4.app.b.a(android.support.v4.app.a.a(aiVar)));
        }
    }

    public void setExitSharedElementCallback(ai aiVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            setExitSharedElementCallback(android.support.v4.app.b.a(android.support.v4.app.a.a(aiVar)));
        }
    }

    public final void setSupportMediaController(android.support.v4.media.session.a aVar) {
        this.m = aVar;
        if (Build.VERSION.SDK_INT >= 21) {
            setMediaController((MediaController) aVar.f174a.a());
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (this.k || i == -1 || ((-65536) & i) == 0) {
            super.startActivityForResult(intent, i);
            return;
        }
        throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        this.k = true;
        try {
            if (i == -1) {
                android.support.v4.app.a.a(this, intent, -1, bundle);
            } else if (((-65536) & i) != 0) {
                throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
            } else {
                android.support.v4.app.a.a(this, intent, ((a(fragment) + 1) << 16) + (65535 & i), bundle);
            }
        } finally {
            this.k = false;
        }
    }

    public void supportFinishAfterTransition() {
        if (Build.VERSION.SDK_INT >= 21) {
            finishAfterTransition();
        } else {
            finish();
        }
    }

    public void supportInvalidateOptionsMenu() {
        if (Build.VERSION.SDK_INT >= 11) {
            invalidateOptionsMenu();
        } else {
            this.h = true;
        }
    }

    public void supportPostponeEnterTransition() {
        if (Build.VERSION.SDK_INT >= 21) {
            postponeEnterTransition();
        }
    }

    public void supportStartPostponedEnterTransition() {
        if (Build.VERSION.SDK_INT >= 21) {
            startPostponedEnterTransition();
        }
    }

    @Override // android.support.v4.app.c.a
    public final void validateRequestPermissionsRequestCode(int i) {
        if (!this.i && i != -1 && ((-65536) & i) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }
}
