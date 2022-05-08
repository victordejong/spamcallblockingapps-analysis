package gogolook.callgogolook2.phonebook;

import android.os.Bundle;
import android.view.MenuItem;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallFragmentActivity;
import p459j.p460a.p567t0.C13625a;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phonebook/FavoriteActivity.class */
public class FavoriteActivity extends WhoscallFragmentActivity {

    /* renamed from: e */
    public FavoriteFragment f12373e;

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(17432576, R$anim.dialpad_slide_out);
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        return this.f12373e.onContextItemSelected(menuItem);
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12373e = new FavoriteFragment();
        setContentView(R$layout.activity_fragment_container);
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(R$id.fragment_container, this.f12373e).commit();
        }
        m28668G().m6030d(R$string.calltab_subtab_favorite);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        C13625a.m3821a(this, 6);
        C13625a.m3821a(this, 7);
    }
}
