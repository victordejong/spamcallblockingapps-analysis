package p131c.p396i.p397a.p404g;

import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;
/* renamed from: c.i.a.g.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/g/a.class */
public class FragmentC6540a extends Fragment {

    /* renamed from: a */
    public final C6547d f20306a = new C6547d();

    /* renamed from: a */
    public C6547d m20557a() {
        return this.f20306a;
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f20306a.m20545a(configuration);
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f20306a.m20544a(bundle);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        this.f20306a.m20542b();
        this.f20306a.m20548a();
        super.onDestroy();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f20306a.m20538c();
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        this.f20306a.m20537d();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        this.f20306a.m20536e();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f20306a.m20540b(bundle);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f20306a.m20535f();
    }

    @Override // android.app.Fragment
    public void onStop() {
        this.f20306a.m20534g();
        super.onStop();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        this.f20306a.m20547a(i);
    }
}
