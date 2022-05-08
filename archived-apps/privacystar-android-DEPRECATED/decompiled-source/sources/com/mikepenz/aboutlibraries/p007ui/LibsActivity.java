package com.mikepenz.aboutlibraries.p007ui;

import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.p004v7.app.ActionBar;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.MenuItem;
import com.mikepenz.aboutlibraries.C1453R;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.util.Colors;
/* renamed from: com.mikepenz.aboutlibraries.ui.LibsActivity */
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/LibsActivity.class */
public class LibsActivity extends AppCompatActivity {
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Libs.ActivityStyle activityStyle = Libs.ActivityStyle.DARK;
        Bundle extras = getIntent().getExtras();
        boolean z = false;
        boolean z2 = false;
        Libs.ActivityStyle activityStyle2 = activityStyle;
        if (extras != null) {
            int i = extras.getInt(Libs.BUNDLE_THEME, -1);
            if (i != -1) {
                setTheme(i);
                z2 = true;
            }
            String string = extras.getString(Libs.BUNDLE_STYLE);
            activityStyle2 = activityStyle;
            z = z2;
            if (string != null) {
                activityStyle2 = Libs.ActivityStyle.valueOf(string);
                z = z2;
            }
        }
        if (!z) {
            if (activityStyle2 == Libs.ActivityStyle.DARK) {
                setTheme(C1453R.C1458style.AboutLibrariesTheme);
            } else if (activityStyle2 == Libs.ActivityStyle.LIGHT) {
                setTheme(C1453R.C1458style.AboutLibrariesTheme_Light);
            } else if (activityStyle2 == Libs.ActivityStyle.LIGHT_DARK_TOOLBAR) {
                setTheme(C1453R.C1458style.AboutLibrariesTheme_Light_DarkToolbar);
            }
        }
        super.onCreate(bundle);
        setContentView(C1453R.C1457layout.activity_opensource);
        String str = "";
        if (extras != null) {
            str = extras.getString(Libs.BUNDLE_TITLE, "");
        }
        LibsSupportFragment libsSupportFragment = new LibsSupportFragment();
        libsSupportFragment.setArguments(extras);
        Toolbar toolbar = (Toolbar) findViewById(C1453R.C1456id.toolbar);
        if (activityStyle2 == Libs.ActivityStyle.LIGHT_DARK_TOOLBAR) {
            toolbar.setTitleTextColor(-1);
            toolbar.setSubtitleTextColor(-1);
        }
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            if (extras != null && extras.containsKey(Libs.BUNDLE_COLORS)) {
                Colors colors = (Colors) extras.getSerializable(Libs.BUNDLE_COLORS);
                if (colors != null) {
                    supportActionBar.setBackgroundDrawable(new ColorDrawable(colors.appBarColor));
                    if (Build.VERSION.SDK_INT >= 21) {
                        getWindow().setStatusBarColor(colors.statusBarColor);
                    }
                } else {
                    supportActionBar.setBackgroundDrawable(null);
                }
            }
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setDisplayShowTitleEnabled(!TextUtils.isEmpty(str));
            supportActionBar.setTitle(str);
        }
        getSupportFragmentManager().beginTransaction().replace(C1453R.C1456id.frame_container, libsSupportFragment).commit();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return false;
        }
        finish();
        return true;
    }
}
