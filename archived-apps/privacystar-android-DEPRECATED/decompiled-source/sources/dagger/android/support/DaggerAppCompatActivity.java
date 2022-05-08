package dagger.android.support;

import android.app.Fragment;
import android.os.Bundle;
import android.support.p004v7.app.AppCompatActivity;
import dagger.android.AndroidInjection;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasDispatchingFragmentInjector;
import javax.inject.Inject;
/* loaded from: classes2-dex2jar.jar:dagger/android/support/DaggerAppCompatActivity.class */
public abstract class DaggerAppCompatActivity extends AppCompatActivity implements HasDispatchingFragmentInjector, HasDispatchingSupportFragmentInjector {
    @Inject
    DispatchingAndroidInjector<Fragment> frameworkFragmentInjector;
    @Inject
    DispatchingAndroidInjector<android.support.p001v4.app.Fragment> supportFragmentInjector;

    public DispatchingAndroidInjector<Fragment> fragmentInjector() {
        return this.frameworkFragmentInjector;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        AndroidInjection.inject(this);
        super.onCreate(bundle);
    }

    @Override // dagger.android.support.HasDispatchingSupportFragmentInjector
    public DispatchingAndroidInjector<android.support.p001v4.app.Fragment> supportFragmentInjector() {
        return this.supportFragmentInjector;
    }
}
