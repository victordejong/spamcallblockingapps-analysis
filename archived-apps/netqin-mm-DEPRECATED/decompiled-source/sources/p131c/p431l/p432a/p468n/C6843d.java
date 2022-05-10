package p131c.p431l.p432a.p468n;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextUtils;
import android.widget.EditText;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p131c.p431l.p432a.p442b.p448f.p451c.DialogC6776a;
import p131c.p431l.p432a.p468n.p469s.p470a.C6862a;
import p131c.p431l.p432a.p468n.p469s.p473d.C6865a;
/* renamed from: c.l.a.n.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/d.class */
public class C6843d {
    /* renamed from: a */
    public static int m19607a() {
        return 18;
    }

    /* renamed from: a */
    public static int m19597a(String str, Context context) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0;
        }
    }

    /* renamed from: a */
    public static String m19606a(long j) {
        return new SimpleDateFormat("HH:mm").format(new Date(j));
    }

    /* renamed from: a */
    public static String m19604a(Context context) {
        return context.getPackageName();
    }

    /* renamed from: a */
    public static String m19603a(Context context, long j) {
        return C6862a.m19524c(j) ? context.getString(2131558519) : C6862a.m19523d(j) ? context.getString(2131558520) : new SimpleDateFormat("yyyy-MM-dd").format(new Date(j));
    }

    /* renamed from: a */
    public static void m19605a(Activity activity, int i, int i2, int i3, int i4, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        if (activity != null) {
            DialogC6776a.C6777a aVar = new DialogC6776a.C6777a(activity);
            aVar.m19831b(i);
            aVar.m19837a(i2);
            if (onClickListener2 != null) {
                aVar.m19836a(i4, onClickListener2);
            }
            if (onClickListener != null) {
                aVar.m19830b(i3, onClickListener);
            }
            aVar.m19827b(false);
            DialogC6776a a = aVar.m19838a();
            if (i == 2131558606) {
                a.m19841a().setTextSize(m19607a());
            }
            a.show();
        }
    }

    /* renamed from: a */
    public static void m19602a(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                C6850i.m19577b("CommonMethod", "空的地址");
                return;
            }
            Intent intent = new Intent();
            intent.addFlags(268435456);
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            if (intent.resolveActivity(context.getPackageManager()) != null) {
                context.startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m19601a(Context context, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                C6850i.m19577b("CommonMethod", "空的包名");
            } else if (C6865a.m19516a(context)) {
                C6860r.m19532b(context, str, str2);
            } else {
                C6859q.m19549a(context, context.getString(2131558649), false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static void m19600a(Context context, String str, String str2, String str3) {
        if (m19592c(context)) {
            m19601a(context, str, str3);
        } else {
            m19602a(context, str2);
        }
    }

    /* renamed from: a */
    public static void m19599a(EditText editText) {
        if (editText != null) {
            Editable text = editText.getText();
            if (!TextUtils.isEmpty(text) && (text instanceof Spannable)) {
                Selection.setSelection(text, text.length());
            }
        }
    }

    /* renamed from: a */
    public static void m19598a(DialogC6776a aVar, String str) {
        if (aVar != null && aVar.m19840a(-2) != null) {
            if (TextUtils.isEmpty(str)) {
                aVar.m19840a(-2).setEnabled(false);
                aVar.m19840a(-2).setTextColor(Color.parseColor("#545454"));
                return;
            }
            aVar.m19840a(-2).setEnabled(true);
            aVar.m19840a(-2).setTextColor(Color.parseColor("#3f51b5"));
        }
    }

    /* renamed from: b */
    public static String m19595b(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo != null ? packageInfo.versionName : "5.2.42.00";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "5.2.42.00";
        }
    }

    /* renamed from: b */
    public static boolean m19596b() {
        Locale locale = Locale.getDefault();
        String country = locale.getCountry();
        String language = locale.getLanguage();
        return (country == null || country.length() <= 0) ? language != null && language.length() > 0 && language.compareToIgnoreCase("zh") == 0 : country.compareToIgnoreCase("CN") == 0;
    }

    /* renamed from: b */
    public static boolean m19594b(Context context, String str) {
        boolean z = false;
        try {
            z = context.getPackageManager().getPackageInfo(str, 0).applicationInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return z;
    }

    /* renamed from: c */
    public static void m19591c(Context context, String str) {
        try {
            context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static boolean m19593c() {
        return C6865a.m19517a() >= 14;
    }

    /* renamed from: c */
    public static boolean m19592c(Context context) {
        return m19594b(context, "com.android.vending");
    }

    /* renamed from: d */
    public static boolean m19590d() {
        return Build.VERSION.SDK_INT >= 20;
    }
}
