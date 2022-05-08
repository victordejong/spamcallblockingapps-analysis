package com.android.contacts.dialpad;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.activities.AsusDeleteDuplicateActivity;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.ezmode.EzDetailContactActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static String f1065a;

    /* renamed from: b  reason: collision with root package name */
    static String f1066b = "DialpadTwelveKeyViewFactory";
    static View c = null;
    static View d = null;
    static View e = null;
    private static boolean g = false;
    static View f = null;

    public static void a() {
        Log.d(f1066b, "resetDialerView");
        d = null;
    }

    public static void a(Context context) {
        Log.d(f1066b, "initViews");
        e(context);
        f(context);
        g(context);
    }

    public static View b(Context context) {
        if (c == null) {
            Log.d(f1066b, "getControlView, languageDialpad is null");
            e(context);
        } else if (c.getParent() != null) {
            e(context);
        }
        return c;
    }

    public static void b() {
        Log.d(f1066b, "resetLanguageDialpad");
        c = null;
    }

    public static View c(Context context) {
        View view;
        if (e == null) {
            Log.d(f1066b, "getControlView, mControlView is null");
            g(context);
        } else if (e.getParent() != null) {
            g(context);
        } else if (com.android.contacts.ezmode.h.a(context)) {
            if (!g) {
                e = LayoutInflater.from(context).inflate(2131427552, (ViewGroup) null);
            }
            g = true;
        } else {
            if (g) {
                e = LayoutInflater.from(context).inflate(2131427344, (ViewGroup) null);
            }
            g = false;
        }
        if (context instanceof EzDetailContactActivity) {
            if (f == null) {
                f = LayoutInflater.from(context).inflate(2131427552, (ViewGroup) null);
            }
            view = f;
        } else {
            if (com.android.contacts.ezmode.h.a(context)) {
                if (!g) {
                    e = LayoutInflater.from(context).inflate(2131427552, (ViewGroup) null);
                }
                g = true;
            } else {
                if (g) {
                    e = LayoutInflater.from(context).inflate(2131427344, (ViewGroup) null);
                }
                g = false;
            }
            view = e;
        }
        return view;
    }

    public static void c() {
        Log.d(f1066b, "resetControlView");
        f = null;
        e = null;
    }

    public static View d(Context context) {
        if (d == null) {
            Log.d(f1066b, "getControlView, mDialerView is null");
            f(context);
        } else if (d.getParent() != null) {
            f(context);
        }
        return d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void e(Context context) {
        char c2;
        char c3 = 0;
        Log.d(f1066b, "in initLanguageDialpad");
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        LayoutInflater from = LayoutInflater.from(context);
        Locale locale = context.getResources().getConfiguration().locale;
        f1065a = Locale.getDefault().toString();
        try {
            if (!defaultSharedPreferences.getBoolean("pref_use_defalut", true)) {
                String string = defaultSharedPreferences.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0");
                switch (string.hashCode()) {
                    case 49:
                        if (string.equals("1")) {
                            break;
                        }
                        c3 = 65535;
                        break;
                    case AsusDeleteDuplicateActivity.DeleteDuplicateTask.DELETE_BATCH_LIMIT /* 50 */:
                    default:
                        c3 = 65535;
                        break;
                    case 51:
                        if (string.equals("3")) {
                            c3 = 1;
                            break;
                        }
                        c3 = 65535;
                        break;
                }
                switch (c3) {
                    case 0:
                        c = from.inflate(2131427514, (ViewGroup) null);
                        break;
                    case 1:
                        c = from.inflate(2131427505, (ViewGroup) null);
                        break;
                    default:
                        c = from.inflate(2131427511, (ViewGroup) null);
                        break;
                }
            } else {
                String str = f1065a;
                switch (str.hashCode()) {
                    case -326827913:
                        c2 = 65535;
                        if (str.equals("zh_TW_#Hant")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 108860863:
                        c2 = 65535;
                        if (str.equals("ru_RU")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 115861812:
                        c2 = 65535;
                        if (str.equals("zh_TW")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                    case 1:
                        c = from.inflate(2131427505, (ViewGroup) null);
                        break;
                    case 2:
                        c = from.inflate(2131427514, (ViewGroup) null);
                        break;
                    default:
                        c = from.inflate(2131427511, (ViewGroup) null);
                        break;
                }
            }
            Log.d(f1066b, "initLanguageDialpad complete");
        } catch (RuntimeException e2) {
            Log.e(f1066b, "fail to initLanguageDialpad due to:" + e2.toString());
        }
    }

    private static void f(Context context) {
        Log.d(f1066b, "in initDialerView");
        LayoutInflater from = LayoutInflater.from(context);
        try {
            if (!PhoneCapabilityTester.hasNavigationBar() || PhoneCapabilityTester.isUsingTwoPanes(context)) {
                d = from.inflate(2131427678, (ViewGroup) null);
            } else {
                d = from.inflate(2131427679, (ViewGroup) null);
            }
            Log.d(f1066b, "initDialerViews complete");
        } catch (RuntimeException e2) {
            Log.e(f1066b, "fail to initDialerViews due to:" + e2.toString());
        }
    }

    private static void g(Context context) {
        LayoutInflater from = LayoutInflater.from(context);
        try {
            if (com.android.contacts.ezmode.h.a(context)) {
                g = true;
                e = from.inflate(2131427552, (ViewGroup) null);
            } else {
                g = false;
                e = from.inflate(2131427344, (ViewGroup) null);
            }
            Log.d(f1066b, "initControlViews complete");
        } catch (RuntimeException e2) {
            Log.e(f1066b, "fail to initControlViews due to:" + e2.toString());
        }
    }
}
