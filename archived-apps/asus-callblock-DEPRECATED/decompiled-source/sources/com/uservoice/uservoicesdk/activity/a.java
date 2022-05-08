package com.uservoice.uservoicesdk.activity;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.app.FragmentTransaction;
import android.app.SearchManager;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.i;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.ViewFlipper;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.ui.c;
import com.uservoice.uservoicesdk.ui.g;
import com.uservoice.uservoicesdk.ui.h;
import com.uservoice.uservoicesdk.ui.j;
import com.uservoice.uservoicesdk.ui.l;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/activity/a.class */
public class a extends i {
    private static final String n = a.class.getSimpleName();
    protected ActionBar.Tab o;
    protected c p;
    private int q = -1;
    private Menu r;
    private SearchView s;

    @SuppressLint({"NewApi"})
    public final void a(int i) {
        if (f()) {
            this.o.setText(String.format("%s (%d)", getString(d.f.c), Integer.valueOf(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"NewApi"})
    public final void a(Menu menu) {
        this.r = menu;
        if (f()) {
            menu.findItem(d.b.w).setOnActionExpandListener(new com.uservoice.uservoicesdk.ui.i((d) this, menu));
            this.s = (SearchView) menu.findItem(d.b.w).getActionView();
            this.s.setSearchableInfo(((SearchManager) getSystemService("search")).getSearchableInfo(getComponentName()));
            this.s.setOnSuggestionListener(new SearchView.OnSuggestionListener() { // from class: com.uservoice.uservoicesdk.activity.a.1
                @Override // android.widget.SearchView.OnSuggestionListener
                public final boolean onSuggestionClick(int i) {
                    Cursor cursor = (Cursor) a.this.s.getSuggestionsAdapter().getItem(i);
                    a.this.s.setQuery(cursor.getString(cursor.getColumnIndex("suggest_text_1")), true);
                    a.this.s.clearFocus();
                    return false;
                }

                @Override // android.widget.SearchView.OnSuggestionListener
                public final boolean onSuggestionSelect(int i) {
                    return false;
                }
            });
            this.s.setQueryHint(getResources().getString(d.f.n));
            this.s.setOnQueryTextListener(new j((d) this));
            this.s.setImeOptions(3);
            View inflate = LayoutInflater.from(this).inflate(d.c.g, (ViewGroup) null);
            ListView listView = (ListView) inflate.findViewById(d.b.u);
            View findViewById = inflate.findViewById(d.b.h);
            listView.setEmptyView(findViewById);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.uservoice.uservoicesdk.activity.a.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                }
            });
            this.p = new c(this);
            listView.setAdapter((ListAdapter) this.p);
            listView.setOnItemClickListener(this.p);
            ViewFlipper viewFlipper = (ViewFlipper) findViewById(d.b.an);
            if (viewFlipper == null) {
                Log.w(n, "Something goes wrong! ViewFlipper is null!");
                return;
            }
            viewFlipper.addView(inflate, 1);
            this.o = getActionBar().newTab().setText(getString(d.f.c)).setTabListener(new ActionBar.TabListener() { // from class: com.uservoice.uservoicesdk.activity.a.3
                @Override // android.app.ActionBar.TabListener
                public final void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                }

                @Override // android.app.ActionBar.TabListener
                public final void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                    a.this.p.a(((Integer) tab.getTag()).intValue());
                }

                @Override // android.app.ActionBar.TabListener
                public final void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
                }
            }).setTag(Integer.valueOf(g.f4784b));
            getActionBar().addTab(this.o);
            try {
                ActionBar actionBar = getActionBar();
                Method declaredMethod = actionBar.getClass().getDeclaredMethod("setHasEmbeddedTabs", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(actionBar, false);
            } catch (Exception e) {
            }
        } else {
            menu.findItem(d.b.w).setVisible(false);
        }
    }

    public h<?> c() {
        return this.p;
    }

    @SuppressLint({"NewApi"})
    public void d() {
        ((ViewFlipper) findViewById(d.b.an)).setDisplayedChild(1);
        if (f()) {
            if (this.q == -1) {
                this.q = getActionBar().getNavigationMode();
            }
            getActionBar().setNavigationMode(2);
        }
    }

    @SuppressLint({"NewApi"})
    public void e() {
        ((ViewFlipper) findViewById(d.b.an)).setDisplayedChild(0);
        if (f()) {
            getActionBar().setNavigationMode(this.q == -1 ? 0 : this.q);
        }
    }

    @SuppressLint({"NewApi"})
    public final boolean f() {
        return Build.VERSION.SDK_INT >= 11 && getActionBar() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.support.v4.app.e, android.app.Activity
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        l.a((Activity) this);
        if (l.a(com.uservoice.uservoicesdk.g.f4678b)) {
            setTheme(d.g.f4629b);
        } else {
            setTheme(d.g.f4628a);
        }
        super.onCreate(bundle);
        if (f()) {
            getActionBar().setDisplayHomeAsUpEnabled(true);
            getActionBar().setDisplayUseLogoEnabled(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.app.i, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null && intent.getAction() != null && intent.getAction().endsWith("android.intent.action.SEARCH")) {
            this.s.setQuery(intent.getStringExtra("query"), true);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean onOptionsItemSelected;
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            onOptionsItemSelected = true;
        } else {
            onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        }
        return onOptionsItemSelected;
    }
}
