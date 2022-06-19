package p193e.p194a.p682e;

import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.ContactsActivity;
import com.truecaller.p183ui.components.ScrimInsetsFrameLayout;
import com.truecaller.permission.RequiredPermissionsActivity;
import e.m.d.y.n;
import n3.b.a.h;
import p1727n3.p1734b.p1741e.AbstractC25450a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.e.w0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/w0.class */
public abstract class AbstractC13325w0 extends h implements ScrimInsetsFrameLayout.AbstractC4685a {

    /* renamed from: a */
    public Fragment f38724a;

    /* renamed from: b */
    public AbstractC14965w f38725b;

    /* renamed from: c */
    public Toolbar f38726c;

    public void onBackPressed() {
        if (mo21929qa()) {
            return;
        }
        AbstractC13335y0 abstractC13335y0 = this.f38724a;
        if ((abstractC13335y0 instanceof AbstractC13335y0) && abstractC13335y0.mo21904or()) {
            return;
        }
        try {
            AbstractC13325w0.super.onBackPressed();
        } catch (IllegalStateException e) {
            C10480a.m26061I1(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onConfigurationChanged(Configuration configuration) {
        C15571h.m18652D(this);
        AbstractC13325w0.super.onConfigurationChanged(getResources().getConfiguration());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractC13325w0.super.onCreate(bundle);
        C15571h.m18652D(this);
        if (bundle == null) {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            Intent intent = getIntent();
            if (intent != null) {
                AbstractC19854f<AbstractC19463a0> mo12217s = ((AbstractC21187w1) m28551L.getApplicationContext()).mo10154s().mo12217s();
                String stringExtra = intent.getStringExtra("AppUserInteraction.Context");
                String stringExtra2 = intent.getStringExtra("AppUserInteraction.Action");
                if (!TextUtils.isEmpty(stringExtra) && !TextUtils.isEmpty(stringExtra2)) {
                    n.y1(mo12217s, stringExtra, stringExtra2);
                } else if ("android.intent.action.MAIN".equals(intent.getAction()) && intent.hasCategory("android.intent.category.LAUNCHER")) {
                    ComponentName component = intent.getComponent();
                    if (component == null || !component.getClassName().equals(ContactsActivity.class.getName())) {
                        n.y1(mo12217s, "appIcon", "openApp");
                    } else {
                        n.y1(mo12217s, "contactsIcon", "openApp");
                    }
                }
            }
        }
        this.f38725b = TrueApp.m36032b0().mo10154s().mo12182u6();
    }

    public void onDestroy() {
        AbstractC13325w0.super.onDestroy();
        getClass().getSimpleName();
    }

    public void onPause() {
        AbstractC13325w0.super.onPause();
        getClass().getSimpleName();
    }

    public void onPostCreate(Bundle bundle) {
        AbstractC13325w0.super.onPostCreate(bundle);
        ScrimInsetsFrameLayout scrimInsetsFrameLayout = (ScrimInsetsFrameLayout) findViewById((int) C2752R.C2754id.capture_insets_frame_layout);
        if (scrimInsetsFrameLayout != null) {
            scrimInsetsFrameLayout.setOnInsetsCallback(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onPrepareOptionsMenu(Menu menu) {
        m21926ta(menu);
        return AbstractC13325w0.super.onPrepareOptionsMenu(menu);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        AbstractC13325w0.super.onResume();
        getClass().getSimpleName();
        if (!m21928ra() || this.f38725b.mo19348i()) {
            supportInvalidateOptionsMenu();
            return;
        }
        RequiredPermissionsActivity.m34830qa(this);
        finish();
    }

    public void onStart() {
        AbstractC13325w0.super.onStart();
        getClass().getSimpleName();
    }

    public void onStop() {
        AbstractC13325w0.super.onStop();
        getClass().getSimpleName();
    }

    public void onSupportActionModeStarted(AbstractC25450a abstractC25450a) {
        m21926ta(abstractC25450a.mo3517e());
        AbstractC13325w0.super.onSupportActionModeStarted(abstractC25450a);
    }

    /* renamed from: pa */
    public int mo21930pa() {
        return 2130970409;
    }

    /* renamed from: qa */
    public boolean mo21929qa() {
        return false;
    }

    /* renamed from: ra */
    public boolean m21928ra() {
        return true;
    }

    /* renamed from: sa */
    public void mo21927sa(AbstractC13329x0 abstractC13329x0, String str) {
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(C2752R.C2754id.content_frame, abstractC13329x0, null);
        c26907a.mo1127f();
        this.f38724a = abstractC13329x0;
    }

    public void setSupportActionBar(Toolbar toolbar) {
        this.f38726c = toolbar;
        AbstractC13325w0.super.setSupportActionBar(toolbar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ta */
    public final void m21926ta(Menu menu) {
        Drawable icon;
        if (menu == null) {
            return;
        }
        int mo21930pa = mo21930pa();
        for (int i = 0; i < menu.size(); i++) {
            MenuItem item = menu.getItem(i);
            int i2 = C19045j0.f53198b;
            if (item != null && (icon = item.getIcon()) != null) {
                C19291g.m13522p1(this, icon, mo21930pa);
                item.setIcon(icon);
            }
        }
    }
}
