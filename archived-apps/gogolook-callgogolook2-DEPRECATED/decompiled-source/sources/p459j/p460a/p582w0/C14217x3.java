package p459j.p460a.p582w0;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Paint;
import android.graphics.Rect;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.core.app.TaskStackBuilder;
import androidx.fragment.app.Fragment;
import com.criteo.utils.Utils;
import com.facebook.ads.AdError;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.appwidget.LargeWidgetProvider;
import gogolook.callgogolook2.appwidget.Small2WidgetProvider;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.CallReceiver;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import gogolook.callgogolook2.util.OJni;
import java.io.File;
import java.io.PrintStream;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import p081h.p160h.p172b.p173a.C6295d;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p160h.p179e.p180a.p184j.C6364a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p471b1.p473b.C11510a;
import p459j.p460a.p471b1.p473b.C11511b;
import p459j.p460a.p530k.AbstractAsyncTaskC12818a;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.C14989s;
import p626l.p640y.C15103n;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.w0.x3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x3.class */
public class C14217x3 {

    /* renamed from: a */
    public static String f31745a;

    /* renamed from: b */
    public static String f31746b;

    /* renamed from: c */
    public static int f31747c = 800;

    /* renamed from: d */
    public static int f31748d = 600;

    /* renamed from: e */
    public static float f31749e;

    /* renamed from: f */
    public static int f31750f;

    /* renamed from: g */
    public static int f31751g;

    /* renamed from: h */
    public static HandlerThread f31752h;

    /* renamed from: i */
    public static Handler f31753i;

    /* renamed from: j */
    public static DecimalFormat f31754j = new DecimalFormat("#.##");

    /* renamed from: j.a.w0.x3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$a.class */
    public static final class C14218a implements Single.OnSubscribe<String> {

        /* renamed from: a */
        public final /* synthetic */ boolean f31755a;

        /* renamed from: b */
        public final /* synthetic */ String f31756b;

        /* renamed from: c */
        public final /* synthetic */ Context f31757c;

        public C14218a(boolean z, String str, Context context) {
            this.f31755a = z;
            this.f31756b = str;
            this.f31757c = context;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super String> singleSubscriber) {
            if (this.f31755a) {
                singleSubscriber.onSuccess(C14094o.m2561b(this.f31756b));
                return;
            }
            String b = C14217x3.m2161b(this.f31757c, this.f31756b, false);
            C14094o.m2560b(this.f31756b, b);
            singleSubscriber.onSuccess(b);
        }
    }

    /* renamed from: j.a.w0.x3$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$b.class */
    public static final class RunnableC14219b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f31758a;

        public RunnableC14219b(Context context) {
            this.f31758a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AppWidgetManager instance = AppWidgetManager.getInstance(this.f31758a);
                Intent intent = new Intent(this.f31758a, LargeWidgetProvider.class);
                intent.setAction("gogolook.callgogolook2.CHANGE_LARGE_WIDGET_DATA");
                int[] appWidgetIds = instance.getAppWidgetIds(new ComponentName(this.f31758a, LargeWidgetProvider.class));
                intent.putExtra("appWidgetIds", appWidgetIds);
                if (appWidgetIds.length > 0) {
                    this.f31758a.sendBroadcast(intent);
                }
                Intent intent2 = new Intent(this.f31758a, Small2WidgetProvider.class);
                intent2.setAction("gogolook.callgogolook2.CHANGE_SMALL_WIDGET_DATA");
                int[] appWidgetIds2 = instance.getAppWidgetIds(new ComponentName(this.f31758a, Small2WidgetProvider.class));
                intent2.putExtra("appWidgetIds", appWidgetIds2);
                if (appWidgetIds2.length > 0) {
                    this.f31758a.sendBroadcast(intent2);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: j.a.w0.x3$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$c.class */
    public static final class DialogInterface$OnClickListenerC14220c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31759a;

        /* renamed from: b */
        public final /* synthetic */ String f31760b;

        /* renamed from: c */
        public final /* synthetic */ int f31761c;

        public DialogInterface$OnClickListenerC14220c(Context context, String str, int i) {
            this.f31759a = context;
            this.f31760b = str;
            this.f31761c = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13915b3.m3055b("isFirstCall", false);
            C14217x3.m2149d(this.f31759a, this.f31760b, this.f31761c);
        }
    }

    /* renamed from: j.a.w0.x3$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$d.class */
    public static final class C14221d extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ Context f31762d;

        /* renamed from: e */
        public final /* synthetic */ int f31763e;

        /* renamed from: f */
        public final /* synthetic */ boolean f31764f;

        /* renamed from: j.a.w0.x3$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$d$a.class */
        public class RunnableC14222a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ NumberInfo f31765a;

            /* renamed from: b */
            public final /* synthetic */ String f31766b;

            public RunnableC14222a(NumberInfo numberInfo, String str) {
                this.f31765a = numberInfo;
                this.f31766b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                C14289m.m1883a(C14221d.this.f31763e != 29, C14221d.this.f31763e, Integer.valueOf(!TextUtils.isEmpty(this.f31765a.m28393C()) ? 1 : 0), Integer.valueOf(!TextUtils.isEmpty(C14217x3.m2155c(C14221d.this.f31762d, this.f31766b)) ? 1 : 0), C6295d.m23362a(C14221d.this.f31762d).m23360a(this.f31766b) ? "emergency_num" : C14108o4.m2477i(this.f31766b) ? "mobile" : C14108o4.m2478h(this.f31766b) ? "landline" : "others", C14221d.this.f31764f);
            }
        }

        public C14221d(Context context, int i, boolean z) {
            this.f31762d = context;
            this.f31763e = i;
            this.f31764f = z;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            C14174u.m2288p().execute(new RunnableC14222a(numberInfo, str));
        }
    }

    /* renamed from: j.a.w0.x3$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$e.class */
    public static final class RunnableC14223e implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            CallReceiver.f12105b = false;
            CallReceiver.f12106c = 0;
        }
    }

    /* renamed from: j.a.w0.x3$f */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$f.class */
    public static final class C14224f implements Action1<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ Context f31768a;

        /* renamed from: b */
        public final /* synthetic */ int f31769b;

        /* renamed from: c */
        public final /* synthetic */ String f31770c;

        public C14224f(Context context, int i, String str) {
            this.f31768a = context;
            this.f31769b = i;
            this.f31770c = str;
        }

        /* renamed from: a */
        public void call(Boolean bool) {
            C14217x3.m2191a(this.f31768a, this.f31769b, this.f31770c, bool.booleanValue());
        }
    }

    /* renamed from: j.a.w0.x3$g */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$g.class */
    public static final class C14225g implements Single.OnSubscribe<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ Context f31771a;

        /* renamed from: b */
        public final /* synthetic */ String f31772b;

        /* renamed from: c */
        public final /* synthetic */ int f31773c;

        public C14225g(Context context, String str, int i) {
            this.f31771a = context;
            this.f31772b = str;
            this.f31773c = i;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            singleSubscriber.onSuccess(Boolean.valueOf(C14217x3.m2154c(this.f31771a, this.f31772b, this.f31773c)));
        }
    }

    /* renamed from: j.a.w0.x3$h */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$h.class */
    public static final class View$OnClickListenerC14226h implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f31774a;

        public View$OnClickListenerC14226h(Dialog dialog) {
            this.f31774a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f31774a.dismiss();
        }
    }

    /* renamed from: j.a.w0.x3$i */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$i.class */
    public static final class View$OnClickListenerC14227i implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f31775a;

        public View$OnClickListenerC14227i(Dialog dialog) {
            this.f31775a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f31775a.dismiss();
        }
    }

    /* renamed from: j.a.w0.x3$j */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$j.class */
    public enum EnumC14228j {
        WifiOnly,
        Always
    }

    /* renamed from: j.a.w0.x3$k */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x3$k.class */
    public static class C14229k {

        /* renamed from: a */
        public static volatile float f31779a = MyApplication.m29013o().getResources().getDisplayMetrics().density;

        /* renamed from: b */
        public static volatile float f31780b = MyApplication.m29013o().getResources().getDisplayMetrics().scaledDensity;
    }

    /* renamed from: A */
    public static boolean m2207A() {
        String[] split;
        for (String str : C13978e.f31386a.m9458a("VersionCodeRecord", "").split(",")) {
            if (!TextUtils.isEmpty(str) && !str.equals(String.valueOf(67908191))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: B */
    public static boolean m2206B() {
        return m2115r() != 0;
    }

    /* renamed from: C */
    public static void m2205C() {
        C13915b3.m3055b("isRegisterOver", true);
    }

    /* renamed from: D */
    public static boolean m2204D() {
        if (C13915b3.m3056b("previous_country", "").equals(C14017g4.m2810n())) {
            return false;
        }
        C13987e3.m2930b();
        C13915b3.m3044e("previous_country", C14017g4.m2810n());
        return true;
    }

    /* renamed from: E */
    public static boolean m2203E() {
        return C14098o2.m2548d();
    }

    /* renamed from: a */
    public static int m2201a(float f) {
        return (int) ((f * C14229k.f31779a) + 0.5f);
    }

    /* renamed from: a */
    public static int m2175a(String str, float f, int i) {
        Rect rect = new Rect();
        Paint paint = new Paint();
        paint.setTextSize(f);
        paint.getTextBounds(str, 0, str.length(), rect);
        int width = rect.left + rect.width();
        int i2 = width;
        if (width > 0) {
            i2 = width + i;
        }
        return i2;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static PendingIntent m2188a(Context context, Intent intent, int i) {
        Intent intent2 = (Intent) intent.clone();
        PendingIntent activity = PendingIntent.getActivity(context, i, intent, 536870912);
        if (activity != null) {
            activity.cancel();
        }
        return TaskStackBuilder.create(context).addNextIntentWithParentStack(intent2).getPendingIntent(i, 134217728);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static PendingIntent m2187a(Context context, Intent intent, Intent intent2, int i) {
        Intent intent3 = (Intent) intent2.clone();
        PendingIntent activity = PendingIntent.getActivity(context, i, intent2, 536870912);
        if (activity != null) {
            activity.cancel();
        }
        return TaskStackBuilder.create(context).addNextIntent(intent).addNextIntent(intent3).getPendingIntent(i, 134217728);
    }

    /* renamed from: a */
    public static Intent m2185a(Context context, String str) {
        Uri parse = Uri.parse(PhoneNumberUtil.RFC3966_PREFIX + Uri.encode(str));
        boolean a = C6295d.m23362a(context).m23360a(str);
        Intent intent = null;
        if (a) {
            intent = new Intent("com.android.phone.EmergencyDialer.DIAL", parse);
            if (!m2189a(context, intent)) {
                intent = null;
            }
        }
        Intent intent2 = intent;
        if (intent == null) {
            intent2 = new Intent("android.intent.action.CALL", parse);
        }
        return intent2;
    }

    /* renamed from: a */
    public static String m2200a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m2199a(int i, Object... objArr) {
        return C14206w4.m2224a(i, objArr);
    }

    /* renamed from: a */
    public static String m2192a(Context context, double d) {
        if (d < 1.0d) {
            return ((int) (d * 1000.0d)) + context.getString(R$string.search_distanceinfo_unit_m);
        }
        return f31754j.format(d) + context.getString(R$string.search_distanceinfo_unit_km);
    }

    /* renamed from: a */
    public static String m2174a(Date date, TimeZone timeZone) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        if (timeZone != null) {
            simpleDateFormat.setTimeZone(timeZone);
        }
        return simpleDateFormat.format(date);
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m2179a(PrintStream printStream) {
        printStream.println("id,_number,_e164,_type,_kind,_reason,_createtime,_updatetime,_status");
        for (BlockListRealmObject blockListRealmObject : C13032a.m4748a(null, null, null, null, null)) {
            long id = blockListRealmObject.getId();
            String str = blockListRealmObject.get_number();
            String str2 = blockListRealmObject.get_e164();
            int intValue = blockListRealmObject.get_type().intValue();
            int intValue2 = blockListRealmObject.get_kind().intValue();
            String str3 = blockListRealmObject.get_reason();
            long j = blockListRealmObject.get_createtime();
            long j2 = blockListRealmObject.get_updatetime();
            int intValue3 = blockListRealmObject.get_status().intValue();
            StringBuilder sb = new StringBuilder();
            sb.append(Long.valueOf(id) + ",");
            sb.append(str + ",");
            sb.append(str2 + ",");
            sb.append(intValue + ",");
            sb.append(intValue2 + ",");
            sb.append(str3 + ",");
            sb.append(Long.valueOf(j) + ",");
            sb.append(Long.valueOf(j2) + ",");
            sb.append(intValue3);
            printStream.println(sb.toString());
        }
        return null;
    }

    /* renamed from: a */
    public static Single<String> m2176a(String str) {
        Context o = MyApplication.m29013o();
        boolean d = C14094o.m2556d(str);
        return Single.create(new C14218a(d, str, o)).subscribeOn(d ? AndroidSchedulers.mainThread() : Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread());
    }

    /* renamed from: a */
    public static void m2198a(long j) {
        C13915b3.m3057b("first_install_time", System.currentTimeMillis());
    }

    /* renamed from: a */
    public static void m2195a(Activity activity, boolean z) {
        if (activity != null && z && !m2108y()) {
            Dialog dialog = new Dialog(activity);
            View inflate = LayoutInflater.from(activity).inflate(R$layout.callenddialog_dialer, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R$id.txv_yes);
            textView.setText(C14206w4.m2225a((int) R$string.got_it));
            textView.setOnClickListener(new View$OnClickListenerC14226h(dialog));
            ((TextView) inflate.findViewById(R$id.txv_content)).setText(C14206w4.m2225a((int) R$string.whoscall_dialer_replace_coachmark));
            ImageView imageView = (ImageView) inflate.findViewById(R$id.imgv_image);
            imageView.setImageResource(R$drawable.img_dock_icon_tutorial);
            imageView.setOnClickListener(new View$OnClickListenerC14227i(dialog));
            dialog.requestWindowFeature(1);
            dialog.setContentView(inflate);
            dialog.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            dialog.getWindow().setLayout(-1, -2);
            dialog.getWindow().getDecorView().setBackgroundColor(0);
            dialog.getWindow().getDecorView().setPadding(m2201a(30.0f), 0, m2201a(30.0f), 0);
            if (C13878a3.m3244a(dialog)) {
                m2171a(true);
                C14289m.m1839o();
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m2194a(Dialog dialog) {
        if (dialog != null && dialog.isShowing()) {
            try {
                dialog.dismiss();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static void m2191a(Context context, int i, String str, boolean z) {
        switch (i) {
            case 0:
                C14299q.m1692n();
                break;
            case 1:
                C14299q.m1717g();
                break;
            case 2:
                C14299q.m1712h();
                break;
            case 3:
                C14299q.m1689o();
                break;
            case 4:
                C14299q.m1740b("List");
                break;
            case 5:
                C14299q.m1740b("Map");
                break;
            case 6:
                C14299q.m1695m();
                break;
            case 8:
                C14299q.m1735c("List");
                break;
            case 9:
                C14299q.m1686p();
            case 10:
                C14299q.m1735c("Map");
                break;
            case 11:
                C14299q.m1708i();
                break;
            case 12:
                C14299q.m1704j();
                break;
            case 13:
                C14299q.m1701k();
                break;
            case 14:
                C14299q.m1698l();
                break;
            case 15:
                C14299q.m1722f();
                break;
            case 16:
                C14299q.m1727e();
                break;
        }
        C11052i.m10328e().m10340a(str, new C14221d(context, i, z), 0, EnumC11047e.Other);
    }

    /* renamed from: a */
    public static void m2190a(Context context, long j) {
        C14174u.m2286r().removeMessages(0);
        C14174u.m2286r().postDelayed(new RunnableC14219b(context), j);
    }

    @TargetApi(21)
    /* renamed from: a */
    public static void m2186a(Context context, ConnectivityManager.NetworkCallback networkCallback) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        builder.addTransportType(1).addTransportType(0);
        connectivityManager.registerNetworkCallback(builder.build(), networkCallback);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static void m2181a(AsyncTask asyncTask) {
        if (asyncTask instanceof AbstractAsyncTaskC12818a) {
            ((AbstractAsyncTaskC12818a) asyncTask).m5203c();
        } else if (Build.VERSION.SDK_INT >= 11) {
            asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        } else {
            asyncTask.execute((Object[]) null);
        }
    }

    /* renamed from: a */
    public static void m2180a(View view, boolean z) {
        if (!z) {
            view.setVisibility(8);
            return;
        }
        if (m2189a(MyApplication.m29013o(), m2113t())) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* renamed from: a */
    public static void m2178a(Object obj, String str, NumberInfo numberInfo) {
        boolean z = obj instanceof Fragment;
        if (z || (obj instanceof Activity)) {
            Context activity = z ? ((Fragment) obj).getActivity() : (Activity) obj;
            String str2 = null;
            if (numberInfo != null) {
                RowInfo a = RowInfo.m28256a(C14108o4.m2474l(str), numberInfo);
                str2 = null;
                if (a != null) {
                    str2 = null;
                    if (a.m28224h() != null) {
                        str2 = a.m28224h().name;
                    }
                }
            }
            try {
                m2177a(obj, str2, str, 200);
            } catch (ActivityNotFoundException e) {
                C14687h.m862a(activity, (int) R$string.not_support_function, 1).m858c();
            }
        }
    }

    /* renamed from: a */
    public static final void m2177a(Object obj, String str, String str2, int i) {
        boolean z = obj instanceof Fragment;
        if (z || (obj instanceof Activity)) {
            Intent j = m2132j();
            if (!TextUtils.isEmpty(str)) {
                j.putExtra("name", str);
            }
            if (!TextUtils.isEmpty(str2)) {
                j.putExtra("phone", str2);
            }
            C14094o.m2553g(str2);
            if (z) {
                ((Fragment) obj).startActivityForResult(j, i);
            } else {
                ((Activity) obj).startActivityForResult(j, i);
            }
        }
    }

    /* renamed from: a */
    public static void m2171a(boolean z) {
        C13915b3.m3055b("prefs_show_dial_pad_intro", z);
    }

    /* renamed from: a */
    public static boolean m2202a() {
        if (f31749e <= 0.0f) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) MyApplication.m29013o().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            f31749e = displayMetrics.widthPixels / displayMetrics.heightPixels;
        }
        return f31749e < 0.7f;
    }

    /* renamed from: a */
    public static boolean m2197a(long j, long j2) {
        if (j2 >= 9223372036768375807L) {
            return false;
        }
        boolean z = false;
        if (j > j2) {
            z = false;
            if (j < j2 + AdUtils.ONE_DAY) {
                z = true;
            }
        }
        return z;
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m2196a(Activity activity) {
        return C14191v.m2262a(activity);
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m2193a(Context context) {
        return C14191v.m2255b(context);
    }

    /* renamed from: a */
    public static boolean m2189a(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: a */
    public static boolean m2182a(Context context, String str, boolean z, int i) {
        if (!z || !C13915b3.m3062a("isFirstCall", true) || !(context instanceof Activity)) {
            m2149d(context, str, i);
            return true;
        }
        DialogC14618f fVar = new DialogC14618f(context);
        fVar.m995c(R$string.call_alert);
        fVar.m1000b(R$string.understand);
        fVar.m999b(R$string.okok, new DialogInterface$OnClickListenerC14220c(context, str, i));
        fVar.m1007a(R$string.cancel, (DialogInterface.OnClickListener) null);
        fVar.m996b(true);
        fVar.show();
        return false;
    }

    /* renamed from: a */
    public static boolean m2173a(List<?> list) {
        return list == null || list.size() == 0;
    }

    /* renamed from: a */
    public static boolean m2172a(@Nullable JSONArray jSONArray) {
        return jSONArray == null || jSONArray.length() == 0;
    }

    /* renamed from: b */
    public static float m2169b(float f) {
        return f / C14229k.f31779a;
    }

    /* renamed from: b */
    public static String m2170b() {
        String b = C6364a.m22978b();
        String str = b;
        if (TextUtils.isEmpty(b)) {
            String a = C14092n3.m2584a("accessToken", "");
            str = a;
            if (TextUtils.isEmpty(a)) {
                str = m2157c(MyApplication.m29013o());
            }
        }
        return str;
    }

    /* renamed from: b */
    public static String m2163b(Context context, String str) {
        return m2150d(context, str);
    }

    /* renamed from: b */
    public static String m2161b(Context context, String str, boolean z) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String l = z ? C14108o4.m2474l(str) : null;
        try {
            Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{CacheIndexRealmObject.DISPLAY_NAME, "number"}, null, null, null);
            if (query != null) {
                int columnIndex = query.getColumnIndex("number");
                int columnIndex2 = query.getColumnIndex(CacheIndexRealmObject.DISPLAY_NAME);
                int count = query.getCount();
                for (int i = 0; i < count; i++) {
                    query.moveToPosition(i);
                    if (!z) {
                        str2 = query.getString(columnIndex2);
                        break;
                    } else if (C14108o4.m2474l(query.getString(columnIndex)).equals(l)) {
                        str2 = query.getString(columnIndex2);
                        break;
                    }
                }
            }
            str2 = null;
            if (query != null) {
                query.close();
            }
            return str2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static void m2168b(int i) {
        C13915b3.m3048d("pref_default_phone_revert_promotion_count", i);
    }

    /* renamed from: b */
    public static void m2167b(Activity activity) {
        activity.finish();
    }

    /* renamed from: b */
    public static void m2166b(Context context) {
        String[] list;
        if (context != null) {
            File file = new File(context.getCacheDir().getParent());
            if (file.exists()) {
                for (String str : file.list()) {
                    if (!str.equals("lib")) {
                        C15103n.m427c(new File(file, str));
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public static void m2165b(Context context, Intent intent) {
        try {
            TaskStackBuilder.create(context).addNextIntentWithParentStack(intent).getPendingIntent(0, 134217728).send();
        } catch (Throwable th) {
            intent.addFlags(335544320);
            context.startActivity(intent);
            C13973d4.m2952a(th);
        }
    }

    @TargetApi(21)
    /* renamed from: b */
    public static void m2164b(Context context, ConnectivityManager.NetworkCallback networkCallback) {
        ((ConnectivityManager) context.getSystemService("connectivity")).unregisterNetworkCallback(networkCallback);
    }

    /* renamed from: b */
    public static boolean m2160b(String str) {
        return TextUtils.isEmpty(str);
    }

    /* renamed from: c */
    public static float m2158c(float f) {
        return C14229k.f31780b * f;
    }

    /* renamed from: c */
    public static NetworkInfo m2159c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) MyApplication.m29013o().getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    /* renamed from: c */
    public static String m2157c(Context context) {
        if (TextUtils.isEmpty(f31745a)) {
            f31745a = OJni.getApiKey(context);
        }
        return f31745a;
    }

    /* renamed from: c */
    public static String m2155c(Context context, String str) {
        String a = C14094o.m2558c(str) ? C14094o.m2566a(str) : null;
        String str2 = a;
        if (TextUtils.isEmpty(a)) {
            str2 = m2163b(context, str);
        }
        C14094o.m2565a(str, str2);
        return str2;
    }

    /* renamed from: c */
    public static HashMap<String, String> m2153c(@NonNull String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        StringTokenizer stringTokenizer = new StringTokenizer(str, PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR);
        while (stringTokenizer.hasMoreElements()) {
            String nextToken = stringTokenizer.nextToken();
            if (nextToken.length() > 0) {
                int indexOf = nextToken.indexOf(61);
                if (indexOf < 0) {
                    hashMap.put(nextToken, "");
                } else {
                    hashMap.put(nextToken.substring(0, indexOf), nextToken.substring(indexOf + 1));
                }
            }
        }
        return hashMap;
    }

    @Deprecated
    /* renamed from: c */
    public static boolean m2156c(@Nullable Context context, @NonNull Intent intent) {
        return C14191v.m2259a(context, intent);
    }

    /* renamed from: c */
    public static boolean m2154c(Context context, String str, int i) {
        Intent a = m2185a(context, str);
        if (context instanceof Activity) {
            context.startActivity(a);
        } else {
            a.setFlags(268435456);
            context.startActivity(a);
        }
        CallReceiver.f12105b = true;
        CallReceiver.f12106c = i;
        C14174u.m2293k().postDelayed(new RunnableC14223e(), 1000L);
        return "com.android.phone.EmergencyDialer.DIAL".equals(a.getAction());
    }

    /* renamed from: d */
    public static int m2152d() {
        NetworkInfo c = m2159c();
        if (c != null) {
            return c.getType();
        }
        return -1;
    }

    /* renamed from: d */
    public static String m2150d(Context context, String str) {
        try {
            Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"_id"}, null, null, null);
            String string = (query == null || !query.moveToFirst()) ? null : query.getString(query.getColumnIndex("_id"));
            if (query != null) {
                query.close();
            }
            return string;
        } catch (Exception e) {
            return null;
        }
    }

    @TargetApi(24)
    /* renamed from: d */
    public static Locale m2151d(Context context) {
        return context == null ? Locale.getDefault() : Build.VERSION.SDK_INT >= 24 ? context.getResources().getConfiguration().getLocales().get(0) : context.getResources().getConfiguration().locale;
    }

    /* renamed from: d */
    public static void m2149d(Context context, String str, int i) {
        Single.create(new C14225g(context, str, i)).observeOn(Schedulers.m0io()).subscribe(new C14224f(context, i, str), C14081m3.m2611a());
    }

    /* renamed from: e */
    public static String m2148e() {
        NetworkInfo c = m2159c();
        return c != null ? c.getTypeName() : "no_network";
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        if ("02:00:00:00:00:00".equals(r0) != false) goto L_0x0039;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2147e(android.content.Context r3) {
        /*
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3204n()
            java.lang.String r0 = "android.permission.ACCESS_WIFI_STATE"
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3217d(r0)
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3206l()
            r0 = 0
            r4 = r0
            r0 = r3
            java.lang.String r1 = "wifi"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: Exception -> 0x0042
            android.net.wifi.WifiManager r0 = (android.net.wifi.WifiManager) r0     // Catch: Exception -> 0x0042
            android.net.wifi.WifiInfo r0 = r0.getConnectionInfo()     // Catch: Exception -> 0x0042
            java.lang.String r0 = r0.getMacAddress()     // Catch: Exception -> 0x0042
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: Exception -> 0x0042
            if (r0 != 0) goto L_0x0039
            r0 = r5
            r4 = r0
            r0 = r5
            r3 = r0
            java.lang.String r0 = "02:00:00:00:00:00"
            r1 = r5
            boolean r0 = r0.equals(r1)     // Catch: Exception -> 0x0042
            if (r0 == 0) goto L_0x0045
        L_0x0039:
            r0 = r5
            r4 = r0
            java.lang.String r0 = m2135i()     // Catch: Exception -> 0x0042
            r3 = r0
            goto L_0x0045
        L_0x0042:
            r3 = move-exception
            r0 = r4
            r3 = r0
        L_0x0045:
            r0 = r3
            r4 = r0
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0051
            java.lang.String r0 = ""
            r4 = r0
        L_0x0051:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14217x3.m2147e(android.content.Context):java.lang.String");
    }

    /* renamed from: e */
    public static String m2146e(Context context, String str) {
        if (C14094o.m2556d(str)) {
            return C14094o.m2561b(str);
        }
        String b = m2161b(context, str, false);
        C14094o.m2560b(str, b);
        return b;
    }

    /* renamed from: e */
    public static boolean m2145e(Context context, String str, int i) {
        return m2182a(context, str, true, i);
    }

    /* renamed from: f */
    public static int m2144f() {
        return C13915b3.m3066a("pref_default_phone_revert_promotion_count", 0);
    }

    /* renamed from: f */
    public static String m2143f(Context context) {
        if (TextUtils.isEmpty(f31746b)) {
            f31746b = OJni.getSmsAnalyticsKey(context);
        }
        return f31746b;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    @androidx.annotation.WorkerThread
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2142f(android.content.Context r9, java.lang.String r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r9
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x005b, Exception -> 0x0061
            android.net.Uri r1 = android.provider.ContactsContract.CommonDataKinds.Phone.CONTENT_URI     // Catch: all -> 0x005b, Exception -> 0x0061
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x005b, Exception -> 0x0061
            r3 = r2
            r4 = 0
            java.lang.String r5 = "display_name"
            r3[r4] = r5     // Catch: all -> 0x005b, Exception -> 0x0061
            java.lang.String r3 = "contact_id = ?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x005b, Exception -> 0x0061
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: all -> 0x005b, Exception -> 0x0061
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x005b, Exception -> 0x0061
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0054
            r0 = r9
            r10 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: Exception -> 0x0050, all -> 0x0076
            if (r0 == 0) goto L_0x0054
            r0 = r9
            r10 = r0
            r0 = r9
            r1 = r9
            java.lang.String r2 = "display_name"
            int r1 = r1.getColumnIndex(r2)     // Catch: Exception -> 0x0050, all -> 0x0076
            java.lang.String r0 = r0.getString(r1)     // Catch: Exception -> 0x0050, all -> 0x0076
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x004e
            r0 = r9
            r0.close()
        L_0x004e:
            r0 = r11
            return r0
        L_0x0050:
            r11 = move-exception
            goto L_0x0064
        L_0x0054:
            r0 = r9
            if (r0 == 0) goto L_0x0074
            goto L_0x006e
        L_0x005b:
            r9 = move-exception
            r0 = r11
            r10 = r0
            goto L_0x0077
        L_0x0061:
            r11 = move-exception
            r0 = 0
            r9 = r0
        L_0x0064:
            r0 = r9
            r10 = r0
            r0 = r11
            p459j.p460a.p582w0.C13973d4.m2952a(r0)     // Catch: all -> 0x0076
            r0 = r9
            if (r0 == 0) goto L_0x0074
        L_0x006e:
            r0 = r9
            r0.close()
        L_0x0074:
            r0 = 0
            return r0
        L_0x0076:
            r9 = move-exception
        L_0x0077:
            r0 = r10
            if (r0 == 0) goto L_0x0081
            r0 = r10
            r0.close()
        L_0x0081:
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14217x3.m2142f(android.content.Context, java.lang.String):java.lang.String");
    }

    /* renamed from: g */
    public static Intent m2139g(Context context, String str) {
        String str2;
        if (new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str)).resolveActivity(context.getApplicationContext().getPackageManager()) != null) {
            str2 = "market://details?id=" + str;
        } else {
            str2 = Utils.URL + str;
        }
        return new Intent("android.intent.action.VIEW", Uri.parse(str2)).addFlags(268435456);
    }

    /* renamed from: g */
    public static String m2141g() {
        return ((double) C14229k.f31779a) >= 4.0d ? "xxxhdpi" : ((double) C14229k.f31779a) >= 3.0d ? "xxhdpi" : ((double) C14229k.f31779a) >= 2.0d ? "xhdpi" : ((double) C14229k.f31779a) >= 1.5d ? "hdpi" : ((double) C14229k.f31779a) >= 1.0d ? "mdpi" : "ldpi";
    }

    /* renamed from: g */
    public static String m2140g(Context context) {
        File d;
        File externalFilesDir;
        String str = null;
        if (context != null) {
            str = null;
            if (C11510a.m9440b()) {
                try {
                    str = "";
                    if (context.getExternalFilesDir(null) != null) {
                        str = externalFilesDir.getPath() + "/log/";
                    }
                } catch (Exception e) {
                    str = "";
                    if (C11510a.m9436d(context) != null) {
                        str = d.getPath() + "/WhosCall/log/";
                    }
                }
                C11511b.m9435a(new File(str));
            }
        }
        return str;
    }

    /* renamed from: h */
    public static long m2138h() {
        return C13915b3.m3065a("first_install_time", 0L);
    }

    /* renamed from: h */
    public static long m2136h(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            return 0L;
        }
    }

    /* renamed from: h */
    public static boolean m2137h(Context context) {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (SecurityException e) {
            networkInfo = null;
        }
        boolean z = false;
        if (networkInfo != null) {
            z = !networkInfo.isConnected() ? false : networkInfo.isAvailable();
        }
        return z;
    }

    /* renamed from: i */
    public static String m2135i() {
        Enumeration<NetworkInterface> enumeration;
        try {
            enumeration = NetworkInterface.getNetworkInterfaces();
        } catch (SocketException e) {
            e.printStackTrace();
            enumeration = null;
        }
        while (enumeration != null && enumeration.hasMoreElements()) {
            NetworkInterface nextElement = enumeration.nextElement();
            if (nextElement != null && "wlan0".equals(nextElement.getName())) {
                try {
                    byte[] hardwareAddress = nextElement.getHardwareAddress();
                    if (hardwareAddress == null || hardwareAddress.length == 0) {
                        return null;
                    }
                    StringBuilder sb = new StringBuilder();
                    int length = hardwareAddress.length;
                    for (int i = 0; i < length; i++) {
                        sb.append(String.format("%02X:", Byte.valueOf(hardwareAddress[i])));
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                } catch (SocketException e2) {
                    C14080m2.m2612a((Throwable) e2);
                    return null;
                }
            }
        }
        return null;
    }

    /* renamed from: i */
    public static boolean m2134i(@NonNull Context context) {
        double n = m2122n();
        double a = m2201a(24.0f);
        return n > a && Math.rint(n / a) == 2.0d;
    }

    /* renamed from: i */
    public static boolean m2133i(Context context, String str) {
        return !TextUtils.isEmpty(m2146e(context, str));
    }

    /* renamed from: j */
    public static Intent m2132j() {
        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        intent.putExtra("finishActivityOnSaveCompleted", true);
        return intent;
    }

    /* renamed from: j */
    public static boolean m2131j(Context context) {
        return !C14108o4.m2487c(context) || m2121n(context) || !C13915b3.m3045e("RoamingSettng").equals(EnumC14228j.WifiOnly.toString());
    }

    /* renamed from: j */
    public static boolean m2130j(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: k */
    public static Handler m2129k() {
        HandlerThread handlerThread;
        if (f31753i == null || (handlerThread = f31752h) == null || !handlerThread.isAlive()) {
            f31752h = new HandlerThread("refresh_main");
            f31752h.setPriority(1);
            f31752h.setDaemon(true);
            f31752h.start();
            f31753i = new Handler(f31752h.getLooper());
        }
        return f31753i;
    }

    /* renamed from: k */
    public static void m2127k(Context context, String str) {
        context.startActivity(m2139g(context, str));
    }

    /* renamed from: k */
    public static boolean m2128k(@NonNull Context context) {
        return ((LocationManager) context.getSystemService("location")).isProviderEnabled("gps");
    }

    /* renamed from: l */
    public static int m2126l() {
        if (f31751g <= 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) MyApplication.m29013o().getSystemService("window");
            if (!(windowManager == null || windowManager.getDefaultDisplay() == null)) {
                windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
                f31751g = displayMetrics.heightPixels;
            }
        }
        int i = f31751g;
        int i2 = i;
        if (i <= 0) {
            i2 = f31748d;
        }
        return i2;
    }

    /* renamed from: l */
    public static boolean m2125l(@NonNull Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return !TextUtils.isEmpty(Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
        }
        boolean z = false;
        if (Settings.Secure.getInt(context.getContentResolver(), "location_mode", 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: m */
    public static int m2124m() {
        if (f31750f <= 0) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) MyApplication.m29013o().getSystemService("window");
            if (!(windowManager == null || windowManager.getDefaultDisplay() == null)) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                f31750f = displayMetrics.widthPixels;
            }
        }
        int i = f31750f;
        int i2 = i;
        if (i <= 0) {
            i2 = f31747c;
        }
        return i2;
    }

    /* renamed from: m */
    public static boolean m2123m(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(0)) == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    /* renamed from: n */
    public static int m2122n() {
        Context o = MyApplication.m29013o();
        int a = m2201a(24.0f);
        int identifier = o.getResources().getIdentifier("status_bar_height", "dimen", IJSExecutor.JS_FUNCTION_GROUP);
        if (identifier > 0) {
            a = o.getResources().getDimensionPixelSize(identifier);
        }
        return a;
    }

    /* renamed from: n */
    public static boolean m2121n(Context context) {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    /* renamed from: o */
    public static String m2120o() {
        String e = C6364a.m22969e();
        if (TextUtils.isEmpty(e)) {
            e = C14092n3.m2584a("userId", "");
        }
        return e;
    }

    /* renamed from: o */
    public static void m2119o(Context context) {
        m2190a(context, (long) TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
    }

    /* renamed from: p */
    public static String m2118p() {
        String o = m2120o();
        String str = o;
        if (TextUtils.isEmpty(o)) {
            str = C14017g4.m2820d();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2117p(android.content.Context r4) {
        /*
            r0 = r4
            java.lang.String r0 = m2140g(r0)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L_0x004f
            java.io.File r0 = new java.io.File     // Catch: all -> 0x003b
            r4 = r0
            r0 = r4
            r1 = r5
            java.lang.String r2 = "blocklist.csv"
            r0.<init>(r1, r2)     // Catch: all -> 0x003b
            r0 = r4
            java.io.File r0 = p459j.p460a.p471b1.p473b.C11511b.m9419f(r0)     // Catch: all -> 0x003b
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: all -> 0x0037, all -> 0x003b
            r5 = r0
            r0 = r5
            r1 = r4
            r0.<init>(r1)     // Catch: all -> 0x0037
            r0 = r5
            java.io.PrintStream r0 = p459j.p460a.p471b1.p473b.C11511b.m9427a(r0)     // Catch: all -> 0x0037
            j.a.w0.d r1 = p459j.p460a.p582w0.C13953d.f31339a     // Catch: all -> 0x0037
            java.lang.Object r0 = p459j.p460a.p471b1.p473b.C11511b.m9426a(r0, r1)     // Catch: all -> 0x0037
            r0 = r4
            r5 = r0
            goto L_0x0044
        L_0x0037:
            r5 = move-exception
            goto L_0x003e
        L_0x003b:
            r5 = move-exception
            r0 = 0
            r4 = r0
        L_0x003e:
            r0 = r5
            p459j.p460a.p582w0.C14080m2.m2612a(r0)
            r0 = r4
            r5 = r0
        L_0x0044:
            r0 = r6
            r4 = r0
            r0 = r5
            if (r0 == 0) goto L_0x004f
            r0 = r5
            java.lang.String r0 = r0.getAbsolutePath()
            r4 = r0
        L_0x004f:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14217x3.m2117p(android.content.Context):java.lang.String");
    }

    /* renamed from: q */
    public static int m2116q() {
        return m2206B() ? (int) TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - m2115r()) : 0;
    }

    /* renamed from: r */
    public static long m2115r() {
        return C13915b3.m3065a("app_update_time", 0L);
    }

    /* renamed from: s */
    public static String m2114s() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: t */
    public static Intent m2113t() {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        return intent;
    }

    /* renamed from: u */
    public static String m2112u() {
        Context o = MyApplication.m29013o();
        if (o == null) {
            return "Cannot get WebView version, Context is null.";
        }
        PackageManager packageManager = o.getPackageManager();
        if (packageManager == null) {
            return "Cannot get WebView version, PackageManager is null.";
        }
        try {
            return packageManager.getPackageInfo("com.google.android.webview", 0).versionName;
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    /* renamed from: v */
    public static boolean m2111v() {
        return m2137h(MyApplication.m29013o());
    }

    /* renamed from: w */
    public static boolean m2110w() {
        boolean z = false;
        if (!C14017g4.m2831E() || C13915b3.m3062a("hasTextsearchLocationPermission", false)) {
            z = true;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: x */
    public static boolean m2109x() {
        C13930d dVar = new C13930d();
        dVar.m3018e();
        try {
            Context o = MyApplication.m29013o();
            ActivityManager activityManager = (ActivityManager) o.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            if (activityManager != null) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses == null) {
                    dVar.m3017f();
                    return false;
                }
                String packageName = o.getPackageName();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.importance == 100 || runningAppProcessInfo.importance == 125) {
                        if (runningAppProcessInfo.processName.equals(packageName)) {
                            dVar.m3017f();
                            return true;
                        }
                    }
                }
            }
            dVar.m3017f();
            return false;
        } catch (Throwable th) {
            dVar.m3017f();
            throw th;
        }
    }

    /* renamed from: y */
    public static boolean m2108y() {
        return C13915b3.m3062a("prefs_show_dial_pad_intro", false);
    }

    /* renamed from: z */
    public static boolean m2107z() {
        return C13915b3.m3062a("isRegisterOver", false);
    }
}
