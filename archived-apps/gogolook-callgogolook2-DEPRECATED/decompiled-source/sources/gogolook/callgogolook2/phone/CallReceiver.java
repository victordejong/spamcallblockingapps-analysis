package gogolook.callgogolook2.phone;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.setting.CarrierIdSettingsActivity;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p521j0.C12489b;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14034j0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14189u3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.DialogC14618f;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver.class */
public class CallReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static boolean f12104a = false;

    /* renamed from: b */
    public static boolean f12105b = false;

    /* renamed from: c */
    public static int f12106c;

    /* renamed from: d */
    public static String f12107d;

    /* renamed from: e */
    public static Dialog f12108e;

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$a.class */
    public static final class C4915a extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ Context f12109d;

        /* renamed from: e */
        public final /* synthetic */ TextView f12110e;

        /* renamed from: f */
        public final /* synthetic */ TextView f12111f;

        /* renamed from: g */
        public final /* synthetic */ TextView f12112g;

        /* renamed from: h */
        public final /* synthetic */ boolean f12113h;

        /* renamed from: i */
        public final /* synthetic */ String f12114i;

        /* renamed from: j */
        public final /* synthetic */ Dialog f12115j;

        public C4915a(Context context, TextView textView, TextView textView2, TextView textView3, boolean z, String str, Dialog dialog) {
            this.f12109d = context;
            this.f12110e = textView;
            this.f12111f = textView2;
            this.f12112g = textView3;
            this.f12113h = z;
            this.f12114i = str;
            this.f12115j = dialog;
        }

        /* renamed from: a */
        public final String m26753a(NumberInfo numberInfo) {
            String str;
            if (!TextUtils.isEmpty(numberInfo.m28377S())) {
                str = numberInfo.m28377S() + UserProfile.CARD_CATE_SEPARATOR + C14189u3.m2264c().m2270a(this.f12114i, numberInfo);
            } else {
                str = numberInfo.m28305o() != null ? numberInfo.m28305o().equals(NumberInfo.ErrorReason.NO_NETWORK) ? C14206w4.m2225a((int) R$string.call_confirm_no_internet) : C14206w4.m2225a((int) R$string.call_confirm_error) : C14206w4.m2225a((int) R$string.call_confirm_no_carrier);
            }
            return str;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            String e = C14217x3.m2146e(this.f12109d, str);
            String C = TextUtils.isEmpty(e) ? numberInfo.m28393C() : e;
            int b = C12612g0.m5779b(numberInfo.m28377S());
            if (b > -1) {
                TextView textView = b == 0 ? this.f12110e : b == 1 ? this.f12111f : null;
                if (textView != null) {
                    textView.setTypeface(Typeface.DEFAULT_BOLD);
                    textView.setTextColor(Color.parseColor("#ff00b90d"));
                }
                this.f12112g.setTag(Integer.valueOf(b));
            }
            String str2 = b != -1 ? "matched" : this.f12113h ? TextUtils.isEmpty(numberInfo.m28377S()) ? numberInfo.m28305o() != null ? numberInfo.m28305o().equals(NumberInfo.ErrorReason.NO_NETWORK) ? "nointernet" : "servererror" : "nocarrier" : "nomatched" : null;
            if (TextUtils.isEmpty(str2)) {
                C14299q.m1763S();
            } else {
                C14299q.m1803A(str2);
                if (TextUtils.equals(str2, "nocarrier")) {
                    C14299q.m1655z(this.f12114i);
                }
                TextView textView2 = this.f12110e;
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append("_");
                boolean isEmpty = TextUtils.isEmpty(numberInfo.m28377S());
                String str3 = C14247d.f31851f;
                sb.append(isEmpty ? C14247d.f31851f : numberInfo.m28377S());
                sb.append("_");
                sb.append(TextUtils.isEmpty(C12612g0.m5797a(0)) ? C14247d.f31851f : C12612g0.m5797a(0));
                sb.append("_");
                if (!TextUtils.isEmpty(C12612g0.m5797a(1))) {
                    str3 = C12612g0.m5797a(1);
                }
                sb.append(str3);
                textView2.setTag(sb.toString());
            }
            boolean z = !TextUtils.isEmpty(numberInfo.m28377S());
            if (TextUtils.isEmpty(C)) {
                CallReceiver.m26757b(this.f12115j, this.f12114i, null, m26753a(numberInfo), z);
            } else if (!numberInfo.m28298r0() || !TextUtils.isEmpty(e)) {
                CallReceiver.m26757b(this.f12115j, C, this.f12114i, m26753a(numberInfo), z);
            } else {
                CallReceiver.m26757b(this.f12115j, this.f12114i, null, (numberInfo.m28305o() == null || !numberInfo.m28305o().equals(NumberInfo.ErrorReason.NO_NETWORK)) ? C14206w4.m2225a((int) R$string.call_confirm_error) : C14206w4.m2225a((int) R$string.call_confirm_no_internet), z);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$b.class */
    public static final class RunnableC4916b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            String unused = CallReceiver.f12107d = null;
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$c.class */
    public static final class DialogInterface$OnClickListenerC4917c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f12116a;

        /* renamed from: b */
        public final /* synthetic */ Intent f12117b;

        public DialogInterface$OnClickListenerC4917c(Context context, Intent intent) {
            this.f12116a = context;
            this.f12117b = intent;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            C13915b3.m3055b("prefs_callconfirm_has_checked_disclaimer", true);
            CallReceiver.m26764a(this.f12116a, this.f12117b);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$d.class */
    public static final class DialogInterface$OnDismissListenerC4918d implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            Dialog unused = CallReceiver.f12108e = null;
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$e.class */
    public static final class View$OnClickListenerC4919e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f12118a;

        /* renamed from: b */
        public final /* synthetic */ Context f12119b;

        /* renamed from: c */
        public final /* synthetic */ String f12120c;

        /* renamed from: d */
        public final /* synthetic */ boolean f12121d;

        /* renamed from: e */
        public final /* synthetic */ TextView f12122e;

        /* renamed from: f */
        public final /* synthetic */ TextView f12123f;

        public View$OnClickListenerC4919e(Dialog dialog, Context context, String str, boolean z, TextView textView, TextView textView2) {
            this.f12118a = dialog;
            this.f12119b = context;
            this.f12120c = str;
            this.f12121d = z;
            this.f12122e = textView;
            this.f12123f = textView2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f12118a.isShowing()) {
                CallReceiver.m26755b(this.f12119b, this.f12120c, this.f12121d ? 0 : -1);
                if (this.f12121d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.f12122e.getTag());
                    sb.append(this.f12122e.getTypeface() == Typeface.DEFAULT_BOLD ? "_follow" : this.f12123f.getTypeface() == Typeface.DEFAULT_BOLD ? "_notfollow" : "_null");
                    C14299q.m1661x(sb.toString());
                } else {
                    C14299q.m1767Q();
                }
                Dialog unused = CallReceiver.f12108e = null;
                this.f12118a.dismiss();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$f.class */
    public static final class View$OnClickListenerC4920f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f12124a;

        /* renamed from: b */
        public final /* synthetic */ Context f12125b;

        /* renamed from: c */
        public final /* synthetic */ String f12126c;

        /* renamed from: d */
        public final /* synthetic */ TextView f12127d;

        /* renamed from: e */
        public final /* synthetic */ TextView f12128e;

        public View$OnClickListenerC4920f(Dialog dialog, Context context, String str, TextView textView, TextView textView2) {
            this.f12124a = dialog;
            this.f12125b = context;
            this.f12126c = str;
            this.f12127d = textView;
            this.f12128e = textView2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f12124a.isShowing()) {
                CallReceiver.m26755b(this.f12125b, this.f12126c, 1);
                StringBuilder sb = new StringBuilder();
                sb.append(this.f12127d.getTag());
                sb.append(this.f12128e.getTypeface() == Typeface.DEFAULT_BOLD ? "_follow" : this.f12127d.getTypeface() == Typeface.DEFAULT_BOLD ? "_notfollow" : "_null");
                C14299q.m1658y(sb.toString());
                Dialog unused = CallReceiver.f12108e = null;
                this.f12124a.dismiss();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$g.class */
    public static final class DialogInterface$OnDismissListenerC4921g implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            Dialog unused = CallReceiver.f12108e = null;
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$h.class */
    public static final class View$OnClickListenerC4922h implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$i.class */
    public static final class View$OnClickListenerC4923i implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Dialog f12129a;

        public View$OnClickListenerC4923i(Dialog dialog) {
            this.f12129a = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12129a.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$j.class */
    public static final class View$OnClickListenerC4924j implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f12130a;

        /* renamed from: b */
        public final /* synthetic */ Dialog f12131b;

        public View$OnClickListenerC4924j(boolean z, Dialog dialog) {
            this.f12130a = z;
            this.f12131b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f12130a) {
                C14299q.m1769P();
            } else {
                C14299q.m1765R();
            }
            this.f12131b.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$k.class */
    public static final class View$OnClickListenerC4925k implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f12132a;

        /* renamed from: b */
        public final /* synthetic */ Dialog f12133b;

        public View$OnClickListenerC4925k(Context context, Dialog dialog) {
            this.f12132a = context;
            this.f12133b = dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f12132a;
            context.startActivity(CarrierIdSettingsActivity.m26146a(context));
            this.f12133b.dismiss();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.CallReceiver$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/CallReceiver$l.class */
    public enum EnumC4926l {
        Normal,
        InAppHint,
        CallTips
    }

    /* renamed from: a */
    public static void m26764a(Context context, Intent intent) {
        if (m26767a() || intent == null) {
            return;
        }
        if (!C13915b3.m3062a("prefs_callconfirm_has_checked_disclaimer", false)) {
            m26756b(context, intent);
            return;
        }
        boolean z = C12612g0.m5765l() && C12612g0.m5757t();
        String stringExtra = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
        Dialog dialog = new Dialog(context, 16973840);
        dialog.getWindow().requestFeature(1);
        dialog.getWindow().setBackgroundDrawableResource(17170445);
        dialog.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        dialog.setContentView(R$layout.call_confirm_dialog);
        TextView textView = (TextView) dialog.findViewById(R$id.tv_countdown);
        dialog.findViewById(R$id.ll_sim_btn_container_0);
        TextView textView2 = (TextView) dialog.findViewById(R$id.tv_sim_btn_0);
        View findViewById = dialog.findViewById(R$id.ll_sim_btn_container_1);
        TextView textView3 = (TextView) dialog.findViewById(R$id.tv_sim_btn_1);
        ImageView imageView = (ImageView) dialog.findViewById(R$id.iv_close_btn);
        View findViewById2 = dialog.findViewById(R$id.iv_setting_btn);
        textView2.setOnClickListener(new View$OnClickListenerC4919e(dialog, context, stringExtra, z, textView2, textView3));
        if (z) {
            findViewById.setVisibility(0);
            textView2.setText(C14206w4.m2225a((int) R$string.call_confirm_dual_call) + " " + C12612g0.m5797a(0));
            textView2.setTextColor(Color.parseColor("#ff333333"));
            textView3.setText(C14206w4.m2225a((int) R$string.call_confirm_dual_call) + " " + C12612g0.m5797a(1));
            textView3.setOnClickListener(new View$OnClickListenerC4920f(dialog, context, stringExtra, textView2, textView3));
        } else {
            findViewById.setVisibility(8);
            textView2.setText(R$string.call_confrim_call);
        }
        dialog.setOnDismissListener(new DialogInterface$OnDismissListenerC4921g());
        dialog.findViewById(R$id.ll_dialog).setOnClickListener(new View$OnClickListenerC4922h());
        dialog.findViewById(R$id.dialog_background).setOnClickListener(new View$OnClickListenerC4923i(dialog));
        imageView.setOnClickListener(new View$OnClickListenerC4924j(z, dialog));
        findViewById2.setVisibility(0);
        findViewById2.setOnClickListener(new View$OnClickListenerC4925k(context, dialog));
        m26757b(dialog, stringExtra, null, C14206w4.m2225a((int) R$string.call_confirm_searching), false);
        f12108e = dialog;
        C13878a3.m3244a(dialog);
        C11052i.m10328e().m10340a(stringExtra, new C4915a(context, textView2, textView3, textView, z, stringExtra, dialog), 0, EnumC11047e.CallDialogOutPre);
    }

    /* renamed from: a */
    public static void m26763a(Context context, Intent intent, EnumC4926l lVar) {
        m26761a(context, context.getString(R$string.carrier_disclaimer_title), context.getString(R$string.carrier_disclaimer_content), intent, lVar);
    }

    /* renamed from: a */
    public static void m26761a(Context context, String str, String str2, Intent intent, EnumC4926l lVar) {
        if (!m26767a()) {
            DialogC14618f fVar = new DialogC14618f(context);
            fVar.setTitle(str);
            fVar.m998b(str2);
            fVar.m999b(R$string.call_confirm_got_it, new DialogInterface$OnClickListenerC4917c(context, intent));
            fVar.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            fVar.setOnDismissListener(new DialogInterface$OnDismissListenerC4918d());
            f12108e = fVar;
            C13878a3.m3244a(fVar);
        }
    }

    /* renamed from: a */
    public static void m26758a(boolean z) {
        f12104a = z;
    }

    /* renamed from: a */
    public static boolean m26767a() {
        Dialog dialog = f12108e;
        if (dialog == null) {
            return false;
        }
        return dialog.isShowing();
    }

    /* renamed from: b */
    public static void m26757b(Dialog dialog, String str, String str2, String str3, boolean z) {
        TextView textView = (TextView) dialog.findViewById(R$id.tv_line1);
        TextView textView2 = (TextView) dialog.findViewById(R$id.tv_line2);
        TextView textView3 = (TextView) dialog.findViewById(R$id.tv_line3);
        RelativeLayout relativeLayout = (RelativeLayout) dialog.findViewById(R$id.carrier_line);
        ImageView imageView = (ImageView) dialog.findViewById(R$id.carrier_icon);
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
        if (TextUtils.isEmpty(str2)) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(str2);
            textView2.setVisibility(0);
        }
        if (TextUtils.isEmpty(str3)) {
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            textView3.setText(str3);
            if (TextUtils.equals(str3, C14206w4.m2225a((int) R$string.call_confirm_no_internet)) || TextUtils.equals(str3, C14206w4.m2225a((int) R$string.call_confirm_error)) || TextUtils.equals(str3, C14206w4.m2225a((int) R$string.call_confirm_no_carrier))) {
                textView3.setTextColor(Color.parseColor("#ff777777"));
                textView3.setTypeface(Typeface.DEFAULT);
                imageView.setVisibility(8);
            } else if (z) {
                int b = C12612g0.m5782b(MyApplication.m29013o(), C12612g0.m5775c(str3));
                imageView.setVisibility(0);
                Drawable background = imageView.getBackground();
                Drawable drawable = background;
                if (background == null) {
                    drawable = MyApplication.m29013o().getResources().getDrawable(R$drawable.ic_sim);
                }
                drawable.setColorFilter(b, PorterDuff.Mode.SRC_ATOP);
                textView3.setTextColor(b);
            } else {
                imageView.setVisibility(8);
            }
        }
        if (textView3.getText().toString().equals(C14206w4.m2225a((int) R$string.call_confirm_no_internet)) || textView3.getText().toString().equals(C14206w4.m2225a((int) R$string.call_confirm_no_internet))) {
            textView3.setTextColor(Color.parseColor("#aaaaaa"));
        }
        if (textView2.getVisibility() == 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) textView.getLayoutParams();
            marginLayoutParams.topMargin = C14217x3.m2201a(45.0f);
            textView.setLayoutParams(marginLayoutParams);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) relativeLayout.getLayoutParams();
            marginLayoutParams2.topMargin = C14217x3.m2201a(5.0f);
            marginLayoutParams2.bottomMargin = C14217x3.m2201a(46.0f);
            relativeLayout.setLayoutParams(marginLayoutParams2);
        }
    }

    /* renamed from: b */
    public static void m26756b(Context context, Intent intent) {
        m26763a(context, intent, EnumC4926l.Normal);
    }

    /* renamed from: b */
    public static void m26755b(Context context, String str, int i) {
        f12107d = str;
        Intent a = C14217x3.m2185a(context, str);
        a.setFlags(268435456);
        if (i != -1) {
            C12612g0.m5791a(a, i, f12107d);
        }
        if (ContextCompat.checkSelfPermission(context, "android.permission.CALL_PHONE") == 0) {
            context.startActivity(a);
            C14174u.m2293k().postDelayed(new RunnableC4916b(), 5000L);
        }
    }

    /* renamed from: b */
    public static boolean m26754b(String str) {
        return "android.intent.action.PHONE_STATE".equals(str);
    }

    /* renamed from: a */
    public final void m26760a(Intent intent) {
        if (!CallUtils.m26527q()) {
            C12489b.m6010b().m6016a(intent);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = CallReceiver.class.getCanonicalName() + ".onReceive";
        if (!"android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction()) || CallUtils.m26533k()) {
            boolean b = m26754b(intent.getAction());
            if (!C14017g4.m2800x() || !b || intent.hasExtra("incoming_number")) {
                LogManager.m28584a(intent);
                LogManager.m28572b("Method = " + str + " - start");
                boolean z = context instanceof MyApplication;
                if (z) {
                    f12104a = true;
                }
                C14037j3.m2731a().mo2704a(new C14034j0(intent));
                if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction()) && C12612g0.m5756u() && C13878a3.m3250a()) {
                    boolean d = C12612g0.m5774d();
                    boolean e = C12612g0.m5772e();
                    boolean z2 = true;
                    if (!d) {
                        z2 = e;
                    }
                    if (z2) {
                        String stringExtra = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
                        if (!TextUtils.isEmpty(stringExtra) && !stringExtra.equals(f12107d) && !m26767a() && C12612g0.m5793a(context, stringExtra)) {
                            setResultData(null);
                            m26764a(context, intent);
                        }
                    }
                    C14080m2.m2616a("sIsFromInApp: " + f12105b + ", Prefs.getBoolean(Prefs.PREFS_CALLCONFIRM_HAS_CLICK_INTRO_DIALOG, false): " + C13915b3.m3062a("prefs_callconfirm_has_click_intro_dialog", false));
                }
                if ((intent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL") || b) && (z || !f12104a)) {
                    m26760a(intent);
                }
                LogManager.m28572b("Method = " + str + ", isDynamicContext=" + z + ", isDynamicRegisterEnabled=" + f12104a);
                StringBuilder sb = new StringBuilder();
                sb.append("Method = ");
                sb.append(str);
                sb.append(" - end");
                LogManager.m28572b(sb.toString());
                return;
            }
            LogManager.m28572b("Method = " + str + " - de-dupe PHONE_STATE_CHANGED event");
        }
    }
}
