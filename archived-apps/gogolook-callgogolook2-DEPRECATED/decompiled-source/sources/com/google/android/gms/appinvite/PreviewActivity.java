package com.google.android.gms.appinvite;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p225a.View$OnClickListenerC6709a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/appinvite/PreviewActivity.class */
public class PreviewActivity extends Activity {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final View m32087a(Context context, ViewGroup viewGroup, Bundle bundle) {
        char c;
        boolean z;
        View inflate = LayoutInflater.from(context).inflate(bundle.getInt("com.google.android.gms.appinvite.LAYOUT_RES_ID"), viewGroup, false);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("com.google.android.gms.appinvite.VIEWS");
        if (parcelableArrayList != null) {
            int size = parcelableArrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = parcelableArrayList.get(i);
                i++;
                Bundle bundle2 = (Bundle) obj;
                View findViewById = inflate.findViewById(bundle2.getInt("View_id"));
                for (String str : bundle2.keySet()) {
                    switch (str.hashCode()) {
                        case -1829808865:
                            if (str.equals("View_minHeight")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case -499175494:
                            if (str.equals("TextView_text")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case -111184848:
                            if (str.equals("WebView_data")) {
                                c = 6;
                                break;
                            }
                            c = 65535;
                            break;
                        case 573559753:
                            if (str.equals("TextView_textColor")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 966644059:
                            if (str.equals("View_backgroundColor")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1729346977:
                            if (str.equals("TextView_isTitle")) {
                                c = 5;
                                break;
                            }
                            c = 65535;
                            break;
                        case 1920443715:
                            if (str.equals("View_onClickListener")) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    switch (c) {
                        case 0:
                            findViewById.setBackgroundColor(bundle2.getInt(str));
                            break;
                        case 1:
                            findViewById.setMinimumHeight(bundle2.getInt(str));
                            break;
                        case 2:
                            String string = bundle2.getString(str);
                            if (string.hashCode() != 94756344) {
                                z = true;
                            } else {
                                z = true;
                                if (string.equals(MraidParser.MRAID_COMMAND_CLOSE)) {
                                    z = false;
                                }
                            }
                            if (z) {
                                break;
                            } else {
                                findViewById.setOnClickListener(new View$OnClickListenerC6709a(this));
                                break;
                            }
                        case 3:
                            if (findViewById instanceof TextView) {
                                ((TextView) findViewById).setText(bundle2.getCharSequence(str));
                                break;
                            } else {
                                break;
                            }
                        case 4:
                            if (findViewById instanceof TextView) {
                                ((TextView) findViewById).setTextColor(bundle2.getInt(str));
                                break;
                            } else {
                                break;
                            }
                        case 5:
                            if ((findViewById instanceof TextView) && bundle2.getBoolean(str)) {
                                setTitle(((TextView) findViewById).getText());
                                break;
                            }
                            break;
                        case 6:
                            if (findViewById instanceof ViewGroup) {
                                WebView webView = new WebView(this);
                                webView.loadData(bundle2.getString(str), "text/html; charset=utf-8", "UTF-8");
                                ((ViewGroup) findViewById).addView(webView, new ViewGroup.LayoutParams(-1, -1));
                                break;
                            } else {
                                break;
                            }
                    }
                }
            }
        }
        return inflate;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getCallingActivity() == null || !"com.google.android.gms".equals(getCallingActivity().getPackageName())) {
            finish();
            return;
        }
        int i = 0;
        try {
            Context createPackageContext = createPackageContext("com.google.android.gms", 0);
            Bundle extras = getIntent().getExtras();
            View a = m32087a(createPackageContext, null, extras);
            if (a == null) {
                finish();
                return;
            }
            TabHost tabHost = (TabHost) a.findViewById(16908306);
            TabWidget tabWidget = (TabWidget) a.findViewById(16908307);
            ArrayList parcelableArrayList = extras.getParcelableArrayList("com.google.android.gms.appinvite.TABS");
            if (!(tabHost == null || tabWidget == null || parcelableArrayList == null)) {
                tabHost.setup();
                int size = parcelableArrayList.size();
                while (i < size) {
                    Object obj = parcelableArrayList.get(i);
                    i++;
                    Bundle bundle2 = (Bundle) obj;
                    TabHost.TabSpec newTabSpec = tabHost.newTabSpec(bundle2.getString("tabTag"));
                    newTabSpec.setContent(bundle2.getInt("tabContentId"));
                    newTabSpec.setIndicator(m32087a(createPackageContext, tabWidget, bundle2));
                    tabHost.addTab(newTabSpec);
                }
            }
            setContentView(a);
        } catch (PackageManager.NameNotFoundException e) {
            finish();
        }
    }
}
