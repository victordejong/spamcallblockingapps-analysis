package com.scand.realmbrowser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import com.scand.realmbrowser.DbConfigBrowserFragment;
import com.scand.realmbrowser.DbTableFragment;
import com.scand.realmbrowser.EditDialogFragment;
import com.scand.realmbrowser.FieldFilterDialogFragment;
import com.scand.realmbrowser.breadcrumbs.StateHolder;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmObject;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/BrowserActivity.class */
public class BrowserActivity extends AppCompatActivity implements DbConfigBrowserFragment.DbConfigInteraction, DbTableFragment.DbTableInteraction, EditDialogFragment.OnFieldEditDialogInteraction, FieldFilterDialogFragment.FieldFilterDialogInteraction {

    /* renamed from: m */
    private static String f12412m = BrowserActivity.class.getSimpleName() + "_drawer_locked";

    /* renamed from: n */
    private static String f12413n = BrowserActivity.class.getSimpleName() + "_ class_name";

    /* renamed from: f */
    private Toolbar f12414f;

    /* renamed from: g */
    private DbTableFragment f12415g;

    /* renamed from: h */
    private DrawerLayout f12416h;

    /* renamed from: i */
    private RetainFragment f12417i;

    /* renamed from: j */
    private boolean f12418j = true;

    /* renamed from: k */
    private Realm f12419k;

    /* renamed from: l */
    private Class<? extends RealmObject> f12420l;

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/BrowserActivity$RetainFragment.class */
    public static class RetainFragment extends Fragment {

        /* renamed from: g */
        static final String f12421g = RetainFragment.class.getSimpleName() + "_tag";

        /* renamed from: f */
        List<StateHolder> f12422f;

        /* renamed from: G0 */
        List<StateHolder> m7839G0() {
            return this.f12422f;
        }

        /* renamed from: H0 */
        void m7838H0(List<StateHolder> list) {
            this.f12422f = list;
        }

        @Override // androidx.fragment.app.Fragment
        public void onCreate(@Nullable Bundle bundle) {
            super.onCreate(bundle);
            setRetainInstance(true);
        }
    }

    /* renamed from: i */
    private RetainFragment m7841i() {
        RetainFragment retainFragment = this.f12417i;
        if (retainFragment == null) {
            retainFragment = (RetainFragment) getSupportFragmentManager().findFragmentByTag(RetainFragment.f12421g);
        }
        this.f12417i = retainFragment;
        return retainFragment;
    }

    /* renamed from: j */
    public static void m7840j(Context context) {
        context.startActivity(new Intent(context, BrowserActivity.class));
    }

    @Override // com.scand.realmbrowser.DbTableFragment.DbTableInteraction
    /* renamed from: a */
    public void mo7776a(List<StateHolder> list) {
        m7841i().m7838H0(list);
    }

    @Override // com.scand.realmbrowser.DbConfigBrowserFragment.DbConfigInteraction
    /* renamed from: b */
    public void mo7801b(Class<? extends RealmObject> cls) {
        this.f12418j = false;
        this.f12416h.setDrawerLockMode(0);
        this.f12416h.m18551h();
        RealmConfiguration g = RealmBrowser.m7730f().m7729g(cls);
        Realm realm = this.f12419k;
        if (realm != null && !realm.m3164J().equals(g)) {
            this.f12419k.close();
        }
        this.f12419k = Realm.m3062I0(g);
        this.f12415g.m7783U0(cls);
        this.f12420l = cls;
    }

    @Override // com.scand.realmbrowser.DbTableFragment.DbTableInteraction
    /* renamed from: d */
    public List<StateHolder> mo7775d() {
        return m7841i().m7839G0();
    }

    @Override // com.scand.realmbrowser.DbTableFragment.DbTableInteraction
    /* renamed from: f */
    public Realm mo7774f() {
        return this.f12419k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1506R.layout.realm_browser_browser_activity);
        RetainFragment i = m7841i();
        this.f12417i = i;
        if (i == null) {
            this.f12417i = new RetainFragment();
            FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
            beginTransaction.m18343e(this.f12417i, RetainFragment.f12421g);
            beginTransaction.mo18339i();
        }
        Toolbar toolbar = (Toolbar) findViewById(C1506R.C1509id.toolbar);
        this.f12414f = toolbar;
        setSupportActionBar(toolbar);
        this.f12415g = (DbTableFragment) getSupportFragmentManager().findFragmentById(C1506R.C1509id.table_fragment);
        if (bundle != null) {
            this.f12418j = bundle.getBoolean(f12412m);
            if (mo7775d() == null) {
                this.f12418j = true;
            }
            String string = bundle.getString(f12413n);
            if (string != null) {
                try {
                    this.f12420l = Class.forName(string);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }
                this.f12419k = Realm.m3062I0(RealmBrowser.m7730f().m7729g(this.f12420l));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        DrawerLayout drawerLayout = (DrawerLayout) findViewById(C1506R.C1509id.drawer_layout);
        this.f12416h = drawerLayout;
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, drawerLayout, this.f12414f, 0, 0);
        this.f12416h.setDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.m22314i();
        if (this.f12418j) {
            this.f12416h.setDrawerLockMode(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(f12412m, this.f12418j);
        Class<? extends RealmObject> cls = this.f12420l;
        if (cls != null) {
            bundle.putString(f12413n, cls.getCanonicalName());
        }
    }

    @Override // com.scand.realmbrowser.FieldFilterDialogFragment.FieldFilterDialogInteraction
    /* renamed from: r0 */
    public void mo7743r0() {
        this.f12415g.mo7743r0();
    }

    @Override // com.scand.realmbrowser.EditDialogFragment.OnFieldEditDialogInteraction
    /* renamed from: z */
    public void mo7753z(int i) {
        this.f12415g.mo7753z(i);
    }
}
