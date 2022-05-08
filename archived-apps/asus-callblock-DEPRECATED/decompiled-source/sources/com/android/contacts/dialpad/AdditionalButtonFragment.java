package com.android.contacts.dialpad;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.sip.SipManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.telecom.PhoneAccountHandle;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Log;
import android.view.IWindowManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.AsusDialerSettingActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.dialpad.AsusLinearLayout;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.dialpad.TwelveKeyDialerFragment;
import com.android.contacts.dialpad.e;
import com.android.contacts.dialpad.i;
import com.android.contacts.ezmode.h;
import com.android.contacts.util.CallLogAsync;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.HapticFeedback;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.utility.SystemPropertiesReflection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AdditionalButtonFragment.class */
public class AdditionalButtonFragment extends Fragment implements View.OnClickListener, AsusLinearLayout.a, ResultListFragment.g, TwelveKeyDialerFragment.b {
    private static String[] B;
    private boolean C;
    private SharedPreferences I;
    private String L;
    private View al;
    private Context aq;
    private ImageView as;
    private ImageView at;

    /* renamed from: b  reason: collision with root package name */
    protected b f814b;
    e n;
    RelativeLayout o;
    ImageButton p;
    TextView q;
    LinearLayout s;
    public e.f t;

    /* renamed from: a  reason: collision with root package name */
    public static final String f813a = AdditionalButtonFragment.class.getSimpleName();
    private static final String[] A = {"VO_x86", "VO_arm", "T9_x86", "T9_arm", "NOHWR"};
    static int d = 0;
    static Pattern e = Pattern.compile("((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)([^#]*)");
    public static boolean v = false;
    private static boolean av = false;
    boolean c = false;
    private boolean z = false;
    int f = -1;
    boolean g = false;
    private boolean D = true;
    public boolean h = false;
    public boolean i = false;
    public boolean j = false;
    private boolean E = false;
    private boolean F = false;
    public boolean k = false;
    private boolean G = false;
    private boolean H = true;
    private String J = null;
    private String K = BuildConfig.FLAVOR;
    private InputMethodSubtype M = null;
    TwelveKeyDialerFragment l = null;
    ResultListFragment m = null;
    HapticFeedback r = new HapticFeedback();
    private RelativeLayout N = null;
    private ImageButton O = null;
    private LinearLayout P = null;
    private ImageView Q = null;
    private TextView R = null;
    private View S = null;
    private LinearLayout T = null;
    private ImageView U = null;
    private TextView V = null;
    private LinearLayout W = null;
    private ImageView X = null;
    private TextView Y = null;
    private View Z = null;
    private FrameLayout aa = null;
    private View ab = null;
    private LinearLayout ac = null;
    private ImageView ad = null;
    private TextView ae = null;
    private LinearLayout af = null;
    private ImageView ag = null;
    private TextView ah = null;
    private View ai = null;
    private FrameLayout aj = null;
    private InputMethodManager ak = null;
    private boolean am = false;
    private boolean an = false;
    CallLogAsync u = new CallLogAsync();
    private boolean ao = false;
    boolean w = false;
    private boolean ap = false;
    private int[] ar = {2131296932, 2131296668, 2131296647};
    boolean x = true;
    private boolean au = false;
    public i y = null;
    private ArrayList<String> aw = null;
    private Animator.AnimatorListener ax = new Animator.AnimatorListener() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.4
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AdditionalButtonFragment.this.ap = true;
            AdditionalButtonFragment.this.b();
            AdditionalButtonFragment.this.O.setEnabled(true);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            try {
                new a(AdditionalButtonFragment.this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    };
    private Animator.AnimatorListener ay = new Animator.AnimatorListener() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.5
        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            AdditionalButtonFragment.this.ap = false;
            AdditionalButtonFragment.this.j();
            AdditionalButtonFragment.this.O.setEnabled(true);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            if (AdditionalButtonFragment.this.n != null) {
                AdditionalButtonFragment.this.n.g(false);
                AdditionalButtonFragment.this.n.n.setVisibility(0);
            }
        }
    };
    private Animation.AnimationListener az = new Animation.AnimationListener() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.6
        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            if (AdditionalButtonFragment.this.m != null) {
                AdditionalButtonFragment.this.m.c(false);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    };
    private ValueAnimator.AnimatorUpdateListener aA = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.7
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (AdditionalButtonFragment.this.n != null && AdditionalButtonFragment.this.n.m != null) {
                AdditionalButtonFragment.this.n.m.invalidate();
            }
        }
    };
    private boolean aB = true;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AdditionalButtonFragment$a.class */
    private final class a extends AsyncTask<Void, Void, Void> {
        private a() {
        }

        /* synthetic */ a(AdditionalButtonFragment additionalButtonFragment, byte b2) {
            this();
        }

        private static Void a() {
            try {
                int c = (int) com.asus.contacts.b.a.c();
                switch (c) {
                    case 300:
                        c -= 50;
                        break;
                    case 500:
                        c -= 100;
                        break;
                    case 800:
                        c -= 170;
                        break;
                }
                Log.d(AdditionalButtonFragment.f813a, "[SyncAdditionalButtonDividerWithAnimAsyncTask] delayedTime = " + c);
                Thread.sleep(c);
                return null;
            } catch (InterruptedException e) {
                e.printStackTrace();
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            if (AdditionalButtonFragment.this.n != null) {
                AdditionalButtonFragment.this.n.g(true);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/AdditionalButtonFragment$b.class */
    public interface b {
        void b(boolean z);
    }

    public static float a() {
        float f = 1.0f;
        try {
            float animationScale = IWindowManager.Stub.asInterface(ServiceManager.getService("window")).getAnimationScale(1);
            f = animationScale;
            Log.d("ControlFragment", "getTraisitionAnimationScale(): oldScale=" + animationScale);
            f = animationScale;
        } catch (RemoteException e2) {
            Log.e("ControlFragment", "getTraisitionAnimationScale(): RemoteException " + e2);
        }
        return f;
    }

    private static float a(Activity activity, float f) {
        return (int) ((activity.getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    private Intent a(String str, String str2, int i, boolean z) {
        Intent callIntent;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        if (i >= 0) {
            PhoneAccountHandle h = com.android.contacts.simcardmanage.b.h(getActivity(), i);
            if (z) {
                if (getActivity() instanceof MainDialtactsActivity) {
                    str6 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
                }
                callIntent = CallUtil.getVideoCallIntent(str2, str6, h);
            } else {
                if (getActivity() instanceof MainDialtactsActivity) {
                    str3 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
                }
                callIntent = CallUtil.getCallIntent(str2, str3, h);
            }
        } else if (z) {
            if (getActivity() instanceof MainDialtactsActivity) {
                str4 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
            }
            callIntent = CallUtil.getVideoCallIntent(str2, str4);
        } else {
            if (getActivity() instanceof MainDialtactsActivity) {
                str5 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
            }
            callIntent = CallUtil.getCallIntent(str2, str5);
        }
        if (str != null) {
            callIntent.putExtra("com.android.phone.AsusDialName", str);
        }
        callIntent.putExtra("com.android.phone.FromAsusDialer", true);
        callIntent.putExtra("extra_asus_dial_use_dualsim", i);
        if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
            callIntent.putExtra("extra_asus_dial_use_dualsim", 0);
        } else if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
            callIntent.putExtra("extra_asus_dial_use_dualsim", 1);
        }
        return callIntent;
    }

    private String a(int i) {
        return com.android.contacts.simcardmanage.b.f(getActivity(), i);
    }

    private static String a(String str) {
        String a2 = com.asus.contacts.a.a("ro.handwrite.mode_old");
        r6 = com.asus.contacts.a.a("ro.handwrite.mode_new");
        String str2 = str;
        if (str.equals(a2)) {
        }
        return str2;
    }

    public static void a(float f) {
        Log.d("ControlFragment", "disableTraisitionAnimationScale(): oldScale=" + f);
        IWindowManager asInterface = IWindowManager.Stub.asInterface(ServiceManager.getService("window"));
        if (f > 0.0f) {
            try {
                asInterface.setAnimationScale(1, 0.0f);
            } catch (RemoteException e2) {
                Log.e("ControlFragment", "disableTraisitionAnimationScale(): RemoteException " + e2);
            }
        }
    }

    private void a(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                    a(((ViewGroup) view).getChildAt(i));
                }
                if (!(view instanceof ListView)) {
                    ((ViewGroup) view).removeAllViews();
                }
            }
        }
    }

    private void a(boolean z, int i) {
        r7 = getResources().getDrawable(2131165496);
        Drawable drawable = getResources().getDrawable(2131165339);
        drawable = getResources().getDrawable(2131165386);
        if (!this.ao && i == 0) {
        }
        Drawable drawable2 = getResources().getDrawable(2131165433);
        Drawable drawable3 = getResources().getDrawable(2131165339);
        if (drawable == null) {
            Log.e(f813a, "[enableDialButtonImage] cannot find drawable...");
            return;
        }
        Drawable b2 = android.support.v4.a.a.a.b(drawable);
        android.support.v4.a.a.a.a(b2, z ? getActivity().getResources().getColor(2131034142) : getActivity().getResources().getColor(2131034141));
        Drawable b3 = android.support.v4.a.a.a.b(drawable2);
        android.support.v4.a.a.a.a(b3, z ? getActivity().getResources().getColor(2131034142) : getActivity().getResources().getColor(2131034141));
        Drawable b4 = android.support.v4.a.a.a.b(drawable3);
        android.support.v4.a.a.a.a(b4, z ? getActivity().getResources().getColor(2131034142) : getActivity().getResources().getColor(2131034141));
        switch (i) {
            case 0:
                this.Q.setImageDrawable(b2);
                return;
            case 1:
                this.U.setImageDrawable(b2);
                return;
            case 2:
                this.X.setImageDrawable(b2);
                return;
            case 3:
                this.ad.setImageDrawable(b4);
                return;
            case 4:
                this.ag.setImageDrawable(b3);
                return;
            default:
                return;
        }
    }

    public static boolean a(Context context, String str) {
        boolean z;
        boolean z2 = true;
        String str2 = str;
        if (str == null) {
            str2 = BuildConfig.FLAVOR;
        }
        String string = Settings.System.getString(context.getContentResolver(), "sip_call_options");
        if (string == null) {
            string = "SIP_ADDRESS_ONLY";
        }
        boolean z3 = !CallUtil.isUriNumber(str2);
        boolean z4 = av;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            z = (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) ? false : activeNetworkInfo.getType() == 1 || !SipManager.isSipWifiOnly(context);
        } else {
            z = false;
        }
        Log.d("ControlFragment", "isSipCallOptionDisplayed: sipCallOption " + string + ", isRegularCall " + z3 + ", isInCellNetwork " + z4 + ", isNetworkConnected " + z);
        if (!z || !string.equals("SIP_ASK_ME_EACH_TIME") || !z3 || !z4) {
            Log.d("ControlFragment", "isSipCallOptionDisplayed: Sip call option dialog is NOT diaplayed => return false");
            z2 = false;
        } else {
            Log.d("ControlFragment", "isSipCallOptionDisplayed: Sip call option dialog is diaplayed => return true");
        }
        return z2;
    }

    private static String b(String str) {
        while (true) {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((i == 0 && charAt == '+') || PhoneNumberUtils.isISODigit(charAt) || charAt == '#' || charAt == '*' || charAt == ',' || charAt == ';') {
                    sb.append(charAt);
                } else if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                    str = PhoneNumberUtils.convertKeypadLettersToDigits(str);
                }
            }
            return sb.toString();
        }
    }

    public static boolean b(Context context, String str) {
        boolean z = false;
        String str2 = str;
        if (str == null) {
            str2 = BuildConfig.FLAVOR;
        }
        if (CallUtil.isUriNumber(str2)) {
            Log.d("ControlFragment", "isHomeDialingDisplayed: This is an uri number => return false");
        } else {
            String stripSeparators = PhoneNumberUtils.stripSeparators(str2);
            if (Settings.System.getInt(context.getContentResolver(), "home_dialing_status", 0) == 0) {
                Log.d("ControlFragment", "isHomeDialingDisplayed: Home dialing is disabled => return false");
            } else if (Settings.System.getInt(context.getContentResolver(), "home_dialing_ask_status", 0) == 1) {
                Log.d("ControlFragment", "isHomeDialingDisplayed: Home dialing is enabled (do not ask) => return false");
            } else if (stripSeparators.isEmpty() || !stripSeparators.substring(0, 1).equals("+")) {
                Log.d("ControlFragment", "isHomeDialingDisplayed: Home dialing is enabled (ask again and not contain leading + sign) => return true");
                z = true;
            } else {
                Log.d("ControlFragment", "isHomeDialingDisplayed: Home dialing is enabled (ask again but contain leading + sign) => return false");
            }
        }
        return z;
    }

    private static boolean c(Context context, String str) {
        boolean z = false;
        if (str != null) {
            if (str.length() == 2) {
                if (B == null) {
                    B = context.getResources().getStringArray(Resources.getSystem().getIdentifier("config_twoDigitNumberPattern", "array", "android"));
                }
                String[] strArr = B;
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        Log.d("ControlFragment", "isTwoDigitShortCode(): Two Digit Number Pattern - false");
                        z = false;
                        break;
                    } else if (str.equals(strArr[i])) {
                        Log.d("ControlFragment", "isTwoDigitShortCode(): Two Digit Number Pattern - true");
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    private void e(boolean z) {
        LayoutInflater from = LayoutInflater.from(getActivity());
        Resources resources = getResources();
        if (this.an && this.s != null) {
            if (this.s.getChildCount() > 0) {
                a(this.s);
            }
            if (!z) {
                this.s.addView(from.inflate(2131427503, (ViewGroup) null), new ActionBar.LayoutParams(-1, (int) a(getActivity(), 100.0f)));
            } else {
                this.s.addView(from.inflate(2131427504, (ViewGroup) null), new ActionBar.LayoutParams(-1, (int) a(getActivity(), 69.0f)));
            }
        }
        this.O = (ImageButton) this.al.findViewById(2131296932);
        this.N = (RelativeLayout) this.al.findViewById(2131296933);
        this.at = (ImageView) this.al.findViewById(2131296934);
        if (com.android.contacts.skin.a.b() && this.at != null) {
            this.at.setImageResource(2131165439);
        }
        if (this.ao) {
            this.O.setVisibility(8);
        } else {
            this.N.setOnClickListener(this);
        }
        this.P = (LinearLayout) this.al.findViewById(2131296668);
        this.Q = (ImageView) this.al.findViewById(2131296669);
        this.R = (TextView) this.al.findViewById(2131296674);
        if (resources.getBoolean(2130968591)) {
            this.P.setOnClickListener(this);
        } else {
            this.P.setVisibility(8);
            this.P = null;
        }
        this.o = (RelativeLayout) this.al.findViewById(2131296259);
        this.p = (ImageButton) this.al.findViewById(2131296256);
        this.q = (TextView) this.al.findViewById(2131296956);
        this.as = (ImageView) this.al.findViewById(2131296957);
        if (com.android.contacts.skin.a.b() && this.as != null) {
            this.as.setImageResource(2131165439);
        }
        if (this.ao) {
            this.o.setVisibility(8);
        }
    }

    private void f(boolean z) {
        if (z) {
            this.Q.setVisibility(8);
            this.R.setText(2131755553);
            return;
        }
        this.Q.setVisibility(0);
        this.R.setText(2131755552);
    }

    public static int k() {
        int i;
        String a2 = com.asus.contacts.a.a("ro.config.hwrlib");
        if (!com.asus.contacts.a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU, BuildConfig.FLAVOR).toLowerCase().startsWith("jp")) {
            if (!TextUtils.isEmpty(a2) && PhoneCapabilityTester.IsAsusDevice()) {
                Log.e("ControlFragment", "ro.config.hwrlib=" + a2);
                int i2 = 0;
                while (true) {
                    if (i2 >= A.length) {
                        i = -1;
                        break;
                    }
                    i = i2;
                    if (a2.equals(A[i2])) {
                        break;
                    }
                    i2++;
                }
            } else {
                Log.e(f813a, "ro.config.hwrlib is null or empty string.");
                i = -1;
            }
        } else {
            i = 4;
        }
        return i;
    }

    private void n() {
        this.S = ((ViewStub) this.al.findViewById(2131296257)).inflate();
        this.T = (LinearLayout) this.al.findViewById(2131296672);
        this.W = (LinearLayout) this.al.findViewById(2131296673);
        this.U = (ImageView) this.al.findViewById(2131296670);
        this.X = (ImageView) this.al.findViewById(2131296671);
        this.V = (TextView) this.al.findViewById(2131296675);
        this.Y = (TextView) this.al.findViewById(2131296676);
        this.Z = this.al.findViewById(2131296421);
        this.aa = (FrameLayout) this.al.findViewById(2131296422);
        this.T.setOnClickListener(this);
        this.W.setOnClickListener(this);
    }

    private void o() {
        this.ab = ((ViewStub) this.al.findViewById(2131296258)).inflate();
        this.ac = (LinearLayout) this.al.findViewById(2131297537);
        this.af = (LinearLayout) this.al.findViewById(2131297520);
        this.ad = (ImageView) this.al.findViewById(2131297538);
        this.ag = (ImageView) this.al.findViewById(2131297521);
        this.ai = this.al.findViewById(2131296421);
        this.aj = (FrameLayout) this.al.findViewById(2131296422);
        this.ac.setOnClickListener(this);
        this.af.setOnClickListener(this);
    }

    private boolean p() {
        boolean z = false;
        if (com.android.contacts.simcardmanage.b.d(getActivity()) == 2) {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Intent a(String str, String str2, long j, String str3, boolean z, int i, int i2, boolean z2) {
        Intent callIntent;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        if (i2 >= 0) {
            PhoneAccountHandle h = com.android.contacts.simcardmanage.b.h(getActivity(), i2);
            if (z2) {
                if (getActivity() instanceof MainDialtactsActivity) {
                    str7 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
                }
                callIntent = CallUtil.getVideoCallIntent(str2, str7, h);
            } else {
                if (getActivity() instanceof MainDialtactsActivity) {
                    str4 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
                }
                callIntent = CallUtil.getCallIntent(str2, str4, h);
            }
        } else if (z2) {
            if (getActivity() instanceof MainDialtactsActivity) {
                str5 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
            }
            callIntent = CallUtil.getVideoCallIntent(str2, str5);
        } else {
            if (getActivity() instanceof MainDialtactsActivity) {
                str6 = CallUtil.getCallOrigin(((MainDialtactsActivity) getActivity()).getIntent());
            }
            callIntent = CallUtil.getCallIntent(str2, str6);
        }
        if (str != null) {
            callIntent.putExtra("com.android.phone.AsusDialName", str);
        } else {
            callIntent.putExtra("com.android.phone.AsusDialName", BuildConfig.FLAVOR);
        }
        callIntent.putExtra("com.android.phone.AsusDialContactId", j);
        callIntent.putExtra("com.android.phone.AsusDialLabel", str3);
        callIntent.putExtra("com.android.phone.AsusDialPhoto", z);
        callIntent.putExtra("com.android.phone.AsusDialBirthday", i);
        callIntent.putExtra("com.android.phone.FromAsusDialer", true);
        callIntent.putExtra("extra_asus_dial_use_dualsim", i2);
        if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
            callIntent.putExtra("extra_asus_dial_use_dualsim", 0);
        } else if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
            callIntent.putExtra("extra_asus_dial_use_dualsim", 1);
        }
        return callIntent;
    }

    @Override // com.android.contacts.dialpad.TwelveKeyDialerFragment.b
    public final void a(Editable editable, boolean z) {
        a(editable.length() > 0, this.n != null ? this.n.e() | this.x : true);
        if (editable == null || editable.length() <= 0) {
            this.aB = true;
        } else {
            this.aB = false;
        }
    }

    public final void a(b bVar) {
        this.f814b = bVar;
    }

    public final void a(boolean z) {
        switch (k()) {
            case 0:
            case 1:
                d = 0;
                Log.d("ControlFragment", "VO_MODE");
                break;
            case 2:
            case 3:
                d = 1;
                Log.d("ControlFragment", "T9_MODE");
                break;
            case 4:
                d = 2;
                break;
            default:
                Log.e("ControlFragment", "No hand write system property matched!");
                d = 2;
                break;
        }
        if (d == 2 || d != 1) {
            g();
        } else {
            e();
        }
        if (!z) {
            this.o.setEnabled(true);
            this.o.setVisibility(0);
            this.p.setVisibility(0);
            if (com.android.contacts.skin.a.c()) {
                com.android.contacts.skin.a.a(this.p, com.android.contacts.skin.a.a(0));
            } else if (this.w) {
                com.android.contacts.skin.a.a(this.p, getActivity().getResources().getColor(2131034180));
            } else {
                com.android.contacts.skin.a.a(this.p, getActivity().getResources().getColor(2131034378));
            }
        } else {
            if (l()) {
                if (PhoneCapabilityTester.IsAsusDevice()) {
                    this.p.setImageResource(2131165250);
                } else {
                    this.o.setVisibility(4);
                    this.p.setVisibility(4);
                    this.o.setEnabled(false);
                }
            }
            Drawable b2 = android.support.v4.a.a.a.b(this.p.getDrawable());
            int i = 2131034376;
            if (com.android.contacts.skin.a.b()) {
                i = 2131034377;
            }
            android.support.v4.a.a.a.a(b2, getActivity().getResources().getColor(i));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
            layoutParams.addRule(13, -1);
            this.p.setLayoutParams(layoutParams);
            this.o.setEnabled(false);
        }
        f();
        if (com.android.contacts.ipcall.b.b(getActivity())) {
            this.p.setImageResource(2131165372);
            this.o.setTag("ip_call_settings");
            this.q.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0719  */
    /* JADX WARN: Removed duplicated region for block: B:207:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v2 */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5 */
    /* JADX WARN: Type inference failed for: r33v6 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r12, int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 1889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.AdditionalButtonFragment.a(boolean, int, boolean):void");
    }

    public final void a(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5 = true;
        boolean z6 = true;
        if (getActivity() != null) {
            if (PhoneCapabilityTester.isRCSVerizon() && !this.ao) {
                if (this.ab == null) {
                    o();
                }
                Drawable drawable = getResources().getDrawable(2131165339);
                Drawable drawable2 = getResources().getDrawable(2131165433);
                if (this.S != null) {
                    this.S.setVisibility(8);
                }
                this.P.setVisibility(8);
                this.ad.setImageDrawable(drawable);
                this.ag.setImageDrawable(drawable2);
                if (this.ac != null) {
                    if (!p() || !TelecomUtil.isInCall(getActivity())) {
                        boolean z7 = !TextUtils.isEmpty(this.K);
                        if (com.android.contacts.dialpad.b.f1010a) {
                            z6 = false;
                        }
                        z2 &= (z7 | z) & z6;
                        this.ac.setEnabled(z2);
                        this.af.setEnabled(z2);
                    } else {
                        this.ac.setEnabled(z2);
                        this.af.setEnabled(z2);
                    }
                    a(z2, 3);
                    a(z2, 4);
                }
            } else if (com.android.contacts.simcardmanage.b.a(getActivity())) {
                boolean z8 = (!com.android.contacts.dialpad.b.f1010a) & (z | (!TextUtils.isEmpty(this.K))) & z2;
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                    z3 = false;
                    z4 = z8;
                } else if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                    z3 = z8;
                    z4 = false;
                } else {
                    z3 = z8;
                    z4 = z8;
                }
                if (this.E && this.F) {
                    if (this.S == null) {
                        n();
                    }
                    if (this.S != null) {
                        this.S.setVisibility(0);
                    }
                    if (this.P != null) {
                        this.P.setVisibility(8);
                    }
                    if (this.T != null) {
                        this.T.setEnabled(z4);
                    }
                    if (this.W != null) {
                        this.W.setEnabled(z3);
                    }
                    this.V.setTextColor(z4 ? getActivity().getResources().getColor(2131034142) : getActivity().getResources().getColor(2131034141));
                    a(z4, 1);
                    this.Y.setTextColor(z3 ? getActivity().getResources().getColor(2131034142) : getActivity().getResources().getColor(2131034141));
                    a(z3, 2);
                } else if (z8) {
                    if (this.S != null) {
                        this.S.setVisibility(8);
                    }
                    if (this.P != null) {
                        this.P.setVisibility(0);
                        this.P.setEnabled(z8);
                    }
                    this.R.setTextColor(getActivity().getResources().getColor(2131034142));
                    a(z8, 0);
                } else {
                    if (this.S != null) {
                        this.S.setVisibility(8);
                    }
                    if (this.P != null) {
                        this.P.setEnabled(z8);
                        this.P.setVisibility(0);
                    }
                    this.R.setTextColor(getActivity().getResources().getColor(2131034141));
                    a(z8, 0);
                }
            } else if (this.P != null) {
                if (!p() || !TelecomUtil.isInCall(getActivity())) {
                    boolean z9 = !TextUtils.isEmpty(this.K);
                    if (com.android.contacts.dialpad.b.f1010a) {
                        z5 = false;
                    }
                    z2 &= (z9 | z) & z5;
                    this.P.setEnabled(z2);
                } else {
                    this.P.setEnabled(z2);
                }
                this.R.setTextColor(z2 ? getActivity().getResources().getColor(2131034142) : getActivity().getResources().getColor(2131034141));
                a(z2, 0);
            }
        }
    }

    public final void b() {
        if (this.n != null && this.n.e()) {
            this.x = false;
            this.n.n.setVisibility(8);
            a(!TextUtils.isEmpty(this.l.c()), false);
            if (!this.an || !this.am) {
                this.O.setImageResource(2131165254);
            } else if (this.n != null) {
                this.n.d(false);
            }
            if (com.android.contacts.skin.a.c()) {
                com.android.contacts.skin.a.a(this.O, com.android.contacts.skin.a.a(0));
            }
            if (getActivity() != null) {
                getActivity().invalidateOptionsMenu();
            }
            this.k = true;
        }
        if (this.m != null) {
            int i = this.I.getInt("keypad_mode", 0);
            this.m.c(true);
            if (i == 1) {
                this.l.b();
                this.m.i();
            }
        }
        boolean z = false;
        if (isAdded()) {
            z = false;
            if (getResources().getConfiguration().orientation == 2) {
                z = true;
            }
        }
        CallDetailFragment callDetailFragment = getFragmentManager() == null ? null : (CallDetailFragment) getFragmentManager().findFragmentById(2131296685);
        if (callDetailFragment != null && z) {
            String str = BuildConfig.FLAVOR;
            if (this.m != null) {
                str = this.m.m;
            }
            if (str == null || str.equals(BuildConfig.FLAVOR)) {
                if (callDetailFragment.isHidden()) {
                    getFragmentManager().beginTransaction().show(callDetailFragment).commitAllowingStateLoss();
                }
                this.m.q();
            } else {
                this.m.p();
            }
        }
        if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && this.m != null) {
            this.m.b(true);
        }
    }

    public final void b(boolean z) {
        com.android.contacts.dialpad.b.e = z;
        if (!com.android.contacts.simcardmanage.b.a(getActivity())) {
            if (com.android.contacts.dialpad.b.e) {
                Toast.makeText(getActivity(), 2131755686, 0).show();
            }
            f(com.android.contacts.dialpad.b.e);
        } else if (com.android.contacts.dialpad.b.e) {
            Toast.makeText(getActivity(), 2131755686, 0).show();
        }
    }

    public final void c() {
        if (!isAdded()) {
            Log.d("ControlFragment", "Fragment AdditionalButtonFragment not attached to Activity");
            return;
        }
        if (com.android.contacts.simcardmanage.b.a(getActivity())) {
            this.E = PhoneCapabilityTester.isSimActive(getActivity(), 1);
            this.F = PhoneCapabilityTester.isSimActive(getActivity(), 2);
            if (!this.E || !this.F) {
                if (this.S != null) {
                    this.S.setVisibility(8);
                }
                this.P.setVisibility(0);
                if (this.ao) {
                    this.R.setTextSize(0, getResources().getDimension(2131100108));
                    this.P.setBackgroundDrawable(getResources().getDrawable(2131165842));
                } else {
                    this.R.setTextSize(0, getResources().getDimension(2131099665));
                    this.P.setBackgroundDrawable(getResources().getDrawable(2131165271));
                }
                if (this.E || this.F) {
                    this.Q.setVisibility(0);
                } else {
                    this.Q.setVisibility(8);
                }
            } else {
                this.P.setVisibility(8);
                if (this.S == null) {
                    n();
                }
                this.S.setVisibility(0);
                this.T.setVisibility(0);
                this.V.setVisibility(0);
                this.V.setText(a(1));
                this.U.setVisibility(0);
                this.W.setVisibility(0);
                this.Y.setVisibility(0);
                this.Y.setText(a(2));
                this.X.setVisibility(0);
                if (this.ao) {
                    this.V.setTextSize(0, getResources().getDimension(2131100109));
                    this.Y.setTextSize(0, getResources().getDimension(2131100109));
                    this.T.setBackgroundDrawable(getResources().getDrawable(2131165843));
                    this.W.setBackgroundDrawable(getResources().getDrawable(2131165844));
                } else {
                    this.V.setTextSize(0, getResources().getDimension(2131099666));
                    this.Y.setTextSize(0, getResources().getDimension(2131099666));
                    this.T.setBackgroundDrawable(getResources().getDrawable(2131165272));
                    this.W.setBackgroundDrawable(getResources().getDrawable(2131165273));
                }
            }
        } else {
            if (this.ao) {
                this.R.setTextSize(0, getResources().getDimension(2131100106));
            }
            if (this.S != null) {
                this.S.setVisibility(8);
            }
            this.P.setVisibility(0);
        }
        if (!this.ao) {
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(2131099674);
            LinearLayout.LayoutParams layoutParams = this.N != null ? (LinearLayout.LayoutParams) this.N.getLayoutParams() : (LinearLayout.LayoutParams) this.O.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.o.getLayoutParams();
            layoutParams.leftMargin = dimensionPixelOffset;
            layoutParams2.rightMargin = dimensionPixelOffset;
            if (this.N != null) {
                this.N.setLayoutParams(layoutParams);
            } else {
                this.O.setLayoutParams(layoutParams);
            }
            this.o.setLayoutParams(layoutParams2);
        }
    }

    public final void c(boolean z) {
        if (z) {
            this.s.setVisibility(0);
            if (this.n != null) {
                this.n.f(z);
                return;
            }
            return;
        }
        this.s.setVisibility(8);
        if (this.n != null) {
            this.n.f(z);
        }
    }

    public final void d() {
        boolean z = true;
        this.O.setEnabled(true);
        this.c = false;
        if (this.f814b != null) {
            this.f814b.b(this.c);
        }
        if (this.I.getInt("keypad_mode", 0) != 1 || this.g) {
            a(false);
        } else {
            a(true);
        }
        if ((getResources().getConfiguration().uiMode & 15) != 3) {
            z = false;
        }
        if (z) {
            this.p.setImageResource(2131165398);
            this.q.setText(BuildConfig.FLAVOR);
            this.q.setVisibility(8);
        }
        f(com.android.contacts.dialpad.b.e);
        if (this.h) {
            this.h = false;
        } else if (this.i) {
            b();
            this.i = false;
        } else if (this.j) {
            b();
            this.j = false;
        } else if (this.k) {
            b();
        } else {
            j();
            if (this.n != null) {
                this.n.g(false);
            }
        }
    }

    public final void d(boolean z) {
        this.H = true;
        this.am = z;
        e(this.am);
        d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        com.asus.contacts.a.a(SystemPropertiesReflection.Key.BUILD_ASUS_SKU);
        if (this.I.getBoolean("pref_use_defalut", true)) {
            Locale locale = getResources().getConfiguration().locale;
            String replace = a(Locale.getDefault().toString()).replace("_", "-");
            int i = 0;
            for (int i2 = 0; i2 < com.android.contacts.dialpad.b.d.length; i2++) {
                i = i;
                if (replace.equals(com.android.contacts.dialpad.b.d[i2])) {
                    i++;
                }
            }
            if (i > 0 || PhoneCapabilityTester.isCUCCSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCNSku()) {
                if (!this.an || !this.am) {
                    this.p.setImageResource(2131165246);
                } else {
                    this.p.setImageResource(2131165435);
                }
                if (com.android.contacts.skin.a.b() && this.q != null) {
                    this.q.setTextColor(getResources().getColor(2131034151));
                }
                this.q.setText(2131755684);
                this.q.setVisibility(0);
                this.o.setOnClickListener(this);
                this.o.setTag("VOHandwrite");
            } else {
                g();
            }
        } else {
            String string = this.I.getString(AsusDialerSettingActivity.KEY_DIALPAD_LIST, "0");
            if (string.equals("2") || string.equals("3") || PhoneCapabilityTester.isCUCCSku() || PhoneCapabilityTester.isCMCCSku() || PhoneCapabilityTester.isCNSku()) {
                if (!this.an || !this.am) {
                    this.p.setImageResource(2131165246);
                } else {
                    this.p.setImageResource(2131165435);
                }
                this.q.setText(2131755684);
                this.q.setVisibility(0);
                this.o.setOnClickListener(this);
                this.o.setTag("VOHandwrite");
            } else {
                g();
            }
        }
        if (com.android.contacts.skin.a.c()) {
            com.android.contacts.skin.a.a(this.p, com.android.contacts.skin.a.a(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        if ((this.I.getInt("keypad_mode", 0) != 1 || this.g) && !l()) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
            layoutParams.removeRule(13);
            this.p.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.q.getLayoutParams();
            layoutParams2.addRule(3, 2131296256);
            this.q.setLayoutParams(layoutParams2);
            this.q.setVisibility(0);
            if (d == 1) {
                this.q.setText(2131755684);
            } else if (this.I.getBoolean("pref_use_defalut", true)) {
                Locale locale = getResources().getConfiguration().locale;
                String replace = a(Locale.getDefault().toString()).replace("_", "-");
                if (replace.equals("zh-CN") || replace.equals("zh-TW")) {
                    this.q.setText(2131755684);
                } else if (replace.equals("ja-JP")) {
                    this.q.setText("JA");
                } else {
                    this.q.setText(replace.substring(0, 2).toUpperCase());
                }
            } else {
                String str = com.android.contacts.dialpad.b.c[Integer.valueOf(this.I.getString(AsusDialerSettingActivity.KEY_HANDWRITE_LIST, "7")).intValue()];
                if (str.equals("zh-CN") || str.equals("zh-TW")) {
                    this.q.setText(2131755684);
                } else if (str.equals("ja-JP")) {
                    this.q.setText("JA");
                } else {
                    this.q.setText(str.substring(0, 2).toUpperCase());
                }
            }
        } else {
            this.q.setText(BuildConfig.FLAVOR);
            this.q.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        this.p.setImageResource(2131165250);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
        layoutParams.addRule(13, -1);
        this.p.setLayoutParams(layoutParams);
        this.q.setText(BuildConfig.FLAVOR);
        this.q.setVisibility(8);
        this.o.setTag("voiceSearch");
        if (getActivity().getPackageManager().queryIntentActivities(new Intent("android.speech.action.RECOGNIZE_SPEECH"), 0).size() != 0) {
            this.o.setOnClickListener(this);
            return;
        }
        this.o.setEnabled(false);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.o.setVisibility(4);
            this.p.setVisibility(4);
        }
    }

    @Override // com.android.contacts.dialpad.ResultListFragment.g
    public final void h() {
        boolean z = true;
        if (getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        if (z && !this.k && this.m.C != 0) {
            m();
        }
    }

    public final void i() {
        this.K = this.I.getString("DialtactsActivity_last_dial_number", BuildConfig.FLAVOR);
        CallLogAsync.GetLastOutgoingCallArgs getLastOutgoingCallArgs = new CallLogAsync.GetLastOutgoingCallArgs(getActivity(), new CallLogAsync.OnLastOutgoingCallComplete() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.3
            @Override // com.android.contacts.util.CallLogAsync.OnLastOutgoingCallComplete
            public final void lastOutgoingCall(String str) {
                boolean z;
                boolean z2 = true;
                AdditionalButtonFragment.this.K = str;
                if (AdditionalButtonFragment.this.l == null || AdditionalButtonFragment.this.n == null) {
                    z = true;
                    z2 = true;
                } else {
                    if (TextUtils.isEmpty(AdditionalButtonFragment.this.l.c())) {
                        z2 = false;
                    }
                    z = AdditionalButtonFragment.this.n.e() | AdditionalButtonFragment.this.x;
                }
                AdditionalButtonFragment.this.a(z2, z);
            }
        });
        if (this.I.getInt("keypad_mode", 0) == 1 && !this.g) {
            this.K = BuildConfig.FLAVOR;
            try {
                this.u.getLastOutgoingCall(getLastOutgoingCallArgs);
            } catch (Exception e2) {
                Log.e(f813a, "Error occurred in getLastOutgoingCall: " + e2.getMessage());
            }
        } else if (this.m != null) {
            Cursor h = this.m.h();
            if (!(h == null || h.getCount() == 0)) {
                this.K = " ";
                if (this.n != null) {
                    this.n.e();
                }
            }
            try {
                this.u.getLastOutgoingCall(getLastOutgoingCallArgs);
            } catch (Exception e3) {
                Log.e(f813a, "Error occurred in getLastOutgoingCall: " + e3.getMessage());
            }
        }
    }

    public final void j() {
        this.x = true;
        if (this.n != null) {
            this.n.a(BuildConfig.FLAVOR);
            this.n.k.clearFocus();
        }
        a(this.l != null && !TextUtils.isEmpty(this.l.c()), true);
        if (!this.an || !this.am) {
            this.O.setImageResource(2131165249);
        } else {
            this.O.setImageResource(2131165440);
            if (this.n != null) {
                this.n.d(true);
            }
        }
        if (com.android.contacts.skin.a.c()) {
            com.android.contacts.skin.a.a(this.O, com.android.contacts.skin.a.a(0));
        }
        if (getActivity() != null) {
            getActivity().invalidateOptionsMenu();
        }
        this.k = false;
        if (this.m != null) {
            if (getActivity() == null || !PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                this.m.c(false);
            } else {
                this.m.c(true);
            }
        }
        if (this.n != null) {
            if (this.n.n != null) {
                if (this.ap) {
                    this.n.n.setY(this.n.n.getY() - this.n.n.getHeight());
                    this.ap = false;
                }
                this.n.n.setVisibility(0);
            }
            if (this.n.m != null) {
                this.n.m.invalidate();
            }
        }
        boolean z = isAdded() && getResources().getConfiguration().orientation == 2;
        if ((getFragmentManager() == null ? null : (CallDetailFragment) getFragmentManager().findFragmentById(2131296685)) != null && z) {
            this.m.p();
        }
        if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && this.m != null) {
            if (this.c) {
                this.m.b(true);
            } else {
                this.m.b(false);
            }
        }
    }

    public final boolean l() {
        return this.o != null && "voiceSearch".equals((String) this.o.getTag());
    }

    public final void m() {
        if (this.O.isEnabled()) {
            try {
                if (com.asus.contacts.b.a.a(getActivity())) {
                    this.O.setEnabled(false);
                    this.x = false;
                    this.l.a(1, this.ax);
                    if (this.aB) {
                        this.l.a(1, this.az);
                    }
                } else {
                    b();
                    if (this.n != null) {
                        this.n.g(true);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                b();
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Log.d("ControlFragment", "onActivityCreated()");
        boolean z = false;
        super.onActivityCreated(bundle);
        this.ak = (InputMethodManager) getActivity().getSystemService("input_method");
        if (bundle != null) {
            z = bundle.getBoolean("hidden");
            this.D = bundle.getBoolean("smart_search");
        }
        FragmentManager fragmentManager = getFragmentManager();
        fragmentManager.beginTransaction();
        if (this.ao) {
            this.m = (ResultListFragment) fragmentManager.findFragmentById(2131296821);
        } else {
            this.m = (ResultListFragment) fragmentManager.findFragmentById(2131297236);
        }
        if (this.m != null) {
            this.m.a(this.D);
        }
        if (this.ao) {
            this.l = (TwelveKeyDialerFragment) getFragmentManager().findFragmentById(2131296811);
        } else {
            this.l = (TwelveKeyDialerFragment) getFragmentManager().findFragmentById(2131296692);
        }
        if (this.l != null) {
            this.l.n = this;
            this.l.a(this);
            this.l.a(this.m);
            if (z) {
                b();
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 5678 && i2 == -1) {
            if (this.y == null) {
                this.y = new i(getActivity());
                this.y.d = new i.b() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.1
                    @Override // com.android.contacts.dialpad.i.b
                    public final void a(int i3) {
                        AdditionalButtonFragment.this.y.f1067a.a();
                        if (i3 < AdditionalButtonFragment.this.aw.size()) {
                            String str = ((String) AdditionalButtonFragment.this.aw.get(i3)).toString();
                            AdditionalButtonFragment.this.m.a(false);
                            AdditionalButtonFragment.this.l.l.setInputType(1);
                            AdditionalButtonFragment.this.l.a(str, "Voice Search");
                            return;
                        }
                        Log.d("ControlFragment", "IndexOutOfBound");
                    }
                };
            }
            this.aw = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            Iterator<String> it = this.aw.iterator();
            int i3 = 0;
            while (it.hasNext()) {
                i iVar = this.y;
                String next = it.next();
                i.c cVar = iVar.f1067a;
                cVar.f1074a.add(new i.a(next, i3));
                i3++;
            }
            getActivity().showDialog(100);
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        Log.d("ControlFragment", "onAttach()");
        super.onAttach(activity);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296259:
                if ((getResources().getConfiguration().uiMode & 15) == 3) {
                    Intent intent = new Intent();
                    intent.setClassName("com.asus.contacts", "com.android.contacts.activities.PeopleActivity");
                    try {
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                        return;
                    } catch (SecurityException e2) {
                        Log.e("ControlFragment", "securityException : " + e2.toString());
                        return;
                    }
                } else {
                    String str = (String) this.o.getTag();
                    if (str.equals("VOHandwrite")) {
                        if (this.l.l.getText() != null) {
                            this.l.l.getText().clear();
                        }
                        this.l.c(this.c);
                        this.c = !this.c;
                        this.f814b.b(this.c);
                        if (this.c) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(getActivity(), "Dialer", "HandWriting", "On");
                            Log.d("ControlFragment", "isHandwriteLibExist = " + this.l.i());
                            if (!(this.l.e != null)) {
                                this.l.e();
                            }
                            if (!this.l.i()) {
                                TwelveKeyDialerFragment twelveKeyDialerFragment = this.l;
                                boolean a2 = TwelveKeyDialerFragment.a(twelveKeyDialerFragment.getActivity());
                                if (twelveKeyDialerFragment.f != null) {
                                    twelveKeyDialerFragment.f.a((Context) twelveKeyDialerFragment.getActivity(), false, twelveKeyDialerFragment.d, a2);
                                }
                                if (!twelveKeyDialerFragment.d && twelveKeyDialerFragment.g != null) {
                                    twelveKeyDialerFragment.g.a((Context) twelveKeyDialerFragment.getActivity(), true, twelveKeyDialerFragment.d, a2);
                                }
                            }
                            this.D = false;
                            this.m.a(this.D);
                            this.l.l.setInputType(1);
                            if (this.an && this.am) {
                                this.p.setImageResource(2131165315);
                            } else if (this.p != null) {
                                this.p.setImageResource(2131165315);
                            }
                            this.q.setText(BuildConfig.FLAVOR);
                            this.q.setVisibility(8);
                            this.l.o = false;
                            this.l.j();
                            if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                                this.m.b(true);
                            }
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
                            layoutParams.addRule(13, -1);
                            this.p.setLayoutParams(layoutParams);
                        } else {
                            this.D = true;
                            this.m.a(this.D);
                            if (!this.an || !this.am) {
                                this.p.setImageResource(2131165246);
                            } else {
                                this.p.setImageResource(2131165435);
                            }
                            f();
                            this.l.l.setInputType(3);
                            this.l.d(false);
                            this.l.o = false;
                            this.l.j();
                            if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                                this.m.b(true);
                            }
                            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.p.getLayoutParams();
                            layoutParams2.removeRule(13);
                            this.p.setLayoutParams(layoutParams2);
                        }
                        if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(this.p, com.android.contacts.skin.a.a(0));
                        }
                    } else if (str.equals("ip_call_settings")) {
                        this.l.c(com.android.contacts.ipcall.b.e(getActivity()));
                    } else {
                        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
                        intent2.putExtra("calling_package", getClass().getPackage().getName());
                        intent2.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
                        startActivityForResult(intent2, 5678);
                    }
                    if (this.l.isHidden()) {
                        j();
                        this.l.e(this.z);
                        this.l.d(this.c);
                        return;
                    }
                    return;
                }
            case 2131296668:
                this.r.vibrate();
                if (this.E) {
                    a(com.android.contacts.dialpad.b.e, 0, false);
                    return;
                } else if (this.F) {
                    a(com.android.contacts.dialpad.b.e, 1, false);
                    return;
                } else {
                    a(com.android.contacts.dialpad.b.e, -1, false);
                    return;
                }
            case 2131296672:
                this.r.vibrate();
                a(com.android.contacts.dialpad.b.e, 0, false);
                return;
            case 2131296673:
                this.r.vibrate();
                a(com.android.contacts.dialpad.b.e, 1, false);
                return;
            case 2131296933:
                if (this.n.n.getVisibility() != 0) {
                    try {
                        if (com.asus.contacts.b.a.a(getActivity())) {
                            this.O.setEnabled(false);
                            this.l.a(2, this.ay);
                            if (this.aB) {
                                this.l.a(2, this.az);
                            }
                        } else {
                            j();
                            if (this.n != null) {
                                this.n.g(false);
                            }
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        j();
                    }
                    this.l.e(this.z);
                    this.l.d(this.c);
                    if (this.n != null) {
                        this.n.a(BuildConfig.FLAVOR);
                        return;
                    }
                    return;
                }
                m();
                this.z = this.l.l.isCursorVisible();
                this.l.d(false);
                return;
            case 2131297520:
                this.r.vibrate();
                a(com.android.contacts.dialpad.b.e, 0, true);
                return;
            case 2131297537:
                this.r.vibrate();
                a(com.android.contacts.dialpad.b.e, 0, false);
                return;
            default:
                return;
        }
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        Log.d("ControlFragment", "onCreate()");
        super.onCreate(bundle);
        this.aq = getActivity();
        this.I = PreferenceManager.getDefaultSharedPreferences(getActivity());
        this.ao = h.a(getActivity());
        this.L = getResources().getString(2131755434);
        try {
            this.r.init(getActivity(), getResources().getBoolean(2130968587));
        } catch (Resources.NotFoundException e2) {
            Log.e("ControlFragment", "Vibrate control bool missing.", e2);
        }
        this.w = PhoneCapabilityTester.isUsingTwoPanes(this.aq);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.d("ControlFragment", "onCreateView()");
        if (this.al == null) {
            this.al = h.c(getActivity());
            h.c();
            this.s = (LinearLayout) this.al.findViewById(2131296319);
            if (com.android.contacts.skin.a.b()) {
                if (this.s != null) {
                    this.s.setBackgroundResource(2131034132);
                }
            } else if (com.android.contacts.skin.a.c() && this.s != null) {
                this.s.setBackgroundColor(com.android.contacts.skin.a.a(com.android.contacts.skin.a.a(3), 1.0f, 0.9f));
            }
            this.am = false;
            this.an = false;
            e(this.am);
        }
        return this.al;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        Log.d("ControlFragment", "onDestroy()");
        if (this.y != null) {
            this.y.d = null;
        }
        com.android.contacts.dialpad.b.f1010a = false;
        this.H = true;
        super.onDestroy();
        MemoryUtils.fixInputMethodManagerLeak(getActivity());
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        Log.d("ControlFragment", "onDestroyView()");
        a(this.o);
        a(this.p);
        a(this.q);
        a(this.al);
        this.al = null;
        this.f814b = null;
        h.c();
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        Log.d("ControlFragment", "onDetach()");
        super.onDetach();
    }

    @Override // android.app.Fragment
    public void onPause() {
        Log.d("ControlFragment", "onPause()");
        super.onPause();
        if (this.n != null) {
            this.C = this.n.e();
        }
        Log.d("ControlFragment", "disableHandwrite()");
        Log.d("ControlFragment", "mIsSmartSearch = " + this.D);
        if (!this.D) {
            this.D = true;
            this.m.a(this.D);
            this.G = false;
            View currentFocus = getActivity().getCurrentFocus();
            if (!(this.ak == null || currentFocus == null)) {
                this.ak.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
            }
        }
        this.I.edit().putString("DialtactsActivity_last_dial_number", this.K).apply();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0109  */
    @Override // android.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.AdditionalButtonFragment.onResume():void");
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Log.d("ControlFragment", "onSaveInstanceState()");
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("hidden", this.C);
        bundle.putBoolean("smart_search", this.D);
    }

    @Override // android.app.Fragment
    public void onStart() {
        Log.d("ControlFragment", "onStart()");
        super.onStart();
        CallUtil.addIsLockListener(new CallUtil.IsLockListener() { // from class: com.android.contacts.dialpad.AdditionalButtonFragment.2
            @Override // com.android.contacts.util.CallUtil.IsLockListener
            public final void afterFinished() {
                boolean z = true;
                if (AdditionalButtonFragment.this.l != null) {
                    if (TextUtils.isEmpty(AdditionalButtonFragment.this.l.c())) {
                        z = false;
                    }
                    AdditionalButtonFragment.this.a(z, AdditionalButtonFragment.this.x);
                } else if (AdditionalButtonFragment.v) {
                    AdditionalButtonFragment.this.a(true, true);
                }
            }
        });
    }

    @Override // android.app.Fragment
    public void onStop() {
        Log.d("ControlFragment", "onStop()");
        super.onStop();
        CallUtil.clearIsLockListener();
        h.c();
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        Log.d("ControlFragment", "onTrimMemory(), level = " + i);
        super.onTrimMemory(i);
    }
}
