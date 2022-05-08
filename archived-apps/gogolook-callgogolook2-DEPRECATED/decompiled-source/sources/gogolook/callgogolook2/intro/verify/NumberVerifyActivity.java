package gogolook.callgogolook2.intro.verify;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.flurry.sdk.AbstractC2829aq;
import com.flurry.sdk.C2799ae;
import com.flurry.sdk.C2806af;
import com.flurry.sdk.C2844au;
import com.flurry.sdk.C2866be;
import com.flurry.sdk.C2890bt;
import com.flurry.sdk.C2974dj;
import com.flurry.sdk.C3016ec;
import com.flurry.sdk.C3088fj;
import com.flurry.sdk.C3104fm;
import com.flurry.sdk.C3109fr;
import com.flurry.sdk.C3156ge;
import com.flurry.sdk.C3180gq;
import com.flurry.sdk.C3183gr;
import com.flurry.sdk.C3206hk;
import com.flurry.sdk.C3221hn;
import com.flurry.sdk.C3234hr;
import com.flurry.sdk.C3267ie;
import com.flurry.sdk.C3296il;
import com.flurry.sdk.C3349jp;
import com.flurry.sdk.C3427kr;
import com.flurry.sdk.C3445la;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.intro.verify.presenter.NumberVerifyPresenter;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.ToastDialog;
import java.util.Locale;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p596x.p599m.p600b.AbstractC14436a;
import p459j.p460a.p613z0.DialogC14618f;
import p459j.p460a.p613z0.DialogC14625g;
import p459j.p460a.p613z0.p617p.C14683f;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity.class */
public class NumberVerifyActivity extends WhoscallActivity implements AbstractC14436a.AbstractC14437a {

    /* renamed from: t */
    public static final String[] f10902t = {"1", "1", "1", "20", "212", "213", "216", "218", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "27", "290", "291", "297", "298", "299", "30", "31", "32", "33", "34", "350", "351", "352", "353", "355", "356", "357", "358", "359", "36", "370", "371", "372", "373", "374", "375", "376", "377", "378", "380", "381", "382", "385", "386", "387", "389", "39", "39", "40", "41", "420", "421", "423", "43", "44", "44", "45", "46", "47", "48", "49", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "51", "52", "53", "54", "55", "56", "57", "58", "590", "591", "592", "593", "595", "597", "598", "599", "60", "61", "61", "61", "62", "63", "64", "65", "66", "670", "672", "673", "674", "675", "676", "677", "678", "679", "680", "681", "682", "683", "685", "686", "687", "688", "689", "690", "691", "692", "7", "7", "81", "82", "84", "850", "852", "853", "855", "856", "86", "870", "880", "886", "90", "91", "92", "93", "94", "95", "960", "961", "962", "963", "964", "965", "966", "967", "968", "971", "972", "973", "974", "975", "976", "977", "98", "992", "993", "994", "995", "996", "998"};

    /* renamed from: u */
    public static final String[] f10903u = {"ca", "pr", "us", "eg", "ma", "dz", "tn", "ly", "gm", "sn", "mr", "ml", "gn", "ci", "bf", "ne", "tg", "bj", "mu", "lr", "sl", "gh", "ng", "td", NumberInfo.VALUE_DATA_SOURCE_CF, "cm", "cv", "st", C3180gq.f5242e, "ga", "cg", "cd", "ao", "gw", "sc", "sd", "rw", "et", "so", C2974dj.f4635a, "ke", "tz", "ug", "bi", "mz", "zm", "mg", "yt", "zw", "na", "mw", "ls", "bw", "sz", "km", "za", "sh", "er", "aw", "fo", "gl", C3183gr.f5255b, "nl", C2866be.f4164c, C3109fr.f5027a, "es", "gi", "pt", "lu", C3267ie.f5484b, "al", "mt", "cy", "fi", "bg", "hu", WebvttCueParser.ENTITY_LESS_THAN, "lv", "ee", "md", "am", "by", CatWalkWebPayload.CATWALK_AD_KEY, "mc", "sm", "ua", "rs", "me", C3234hr.f5410a, "si", "ba", "mk", "it", "va", "ro", "ch", "cz", "sk", "li", "at", "im", "gb", "dk", "se", "no", "pl", "de", "fk", "bz", "gt", "sv", C3221hn.f5373e, "ni", "cr", "pa", "pm", "ht", "pe", "mx", "cu", "ar", TtmlNode.TAG_BR, "cl", "co", "ve", "bl", "bo", "gy", C3016ec.f4704a, "py", "sr", "uy", "an", "my", C2844au.f4078a, "cx", "cc", "id", "ph", "nz", "sg", "th", "tl", AbstractC2829aq.f4050h, "bn", "nr", "pg", "to", "sb", "vu", C3088fj.f4968h, "pw", "wf", "ck", "nu", "ws", "ki", "nc", "tv", "pf", "tk", C3104fm.f5016a, "mh", "kz", "ru", C3349jp.f5728a, C3427kr.f5870b, "vn", "kp", C3206hk.f5330a, "mo", "kh", C3445la.f5920a, "cn", "pn", "bd", "tw", "tr", "in", "pk", C2806af.f3965a, "lk", "mm", "mv", "lb", "jo", "sy", "iq", "kw", "sa", "ye", "om", C2799ae.f3948c, C3296il.f5575b, "bh", "qa", C2890bt.f4323z, "mn", "np", "ir", "tj", "tm", "az", C3156ge.f5159j, "kg", "uz"};

    /* renamed from: e */
    public Handler f10904e;

    /* renamed from: h */
    public String[] f10907h;

    /* renamed from: i */
    public String[] f10908i;
    @BindView(R$id.et_number)
    public EditText mEtNumber;
    @BindView(R$id.iv_dropdown)
    public ImageView mIvDropdown;
    @BindView(R$id.ll_countdown)
    public LinearLayout mLlCountdown;
    @BindView(R$id.ll_first_request)
    public LinearLayout mLlFirstRequest;
    @BindView(R$id.tv_contact_cs)
    public TextView mTvContactCs;
    @BindView(R$id.tv_countdown)
    public TextView mTvCountdown;
    @BindView(R$id.tv_country_code)
    public TextView mTvCountryCode;
    @BindView(R$id.tv_first_request)
    public TextView mTvFirstRequest;
    @BindView(R$id.tv_title)
    public TextView mTvTitle;
    @BindView(R$id.tv_warning)
    public TextView mTvWarning;

    /* renamed from: f */
    public long f10905f = 0;

    /* renamed from: g */
    public BaseAdapter f10906g = null;

    /* renamed from: j */
    public long f10909j = 0;

    /* renamed from: k */
    public Dialog f10910k = null;

    /* renamed from: l */
    public Runnable f10911l = new RunnableC4529f();

    /* renamed from: m */
    public TextWatcher f10912m = new C14683f(C14017g4.m2810n().toUpperCase());

    /* renamed from: n */
    public NumberVerifyPresenter f10913n = null;

    /* renamed from: o */
    public String f10914o = "";

    /* renamed from: p */
    public String f10915p = "";

    /* renamed from: q */
    public String f10916q = "";

    /* renamed from: r */
    public String f10917r = "";

    /* renamed from: s */
    public EnumC4543q f10918s = null;

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$a.class */
    public class RunnableC4524a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f10919a;

        public RunnableC4524a(boolean z) {
            this.f10919a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            C14376j.m1464a((Activity) NumberVerifyActivity.this, this.f10919a);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$b.class */
    public class DialogInterface$OnKeyListenerC4525b implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC4525b() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4 || keyEvent.getAction() != 1) {
                return false;
            }
            if (System.currentTimeMillis() - NumberVerifyActivity.this.f10909j > 1500) {
                C14687h.m862a(NumberVerifyActivity.this, (int) R$string.intro_verify_back_restart, 0).m858c();
                NumberVerifyActivity.this.f10909j = System.currentTimeMillis();
                return true;
            }
            NumberVerifyActivity.this.m28019c(false);
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$c.class */
    public class DialogInterface$OnClickListenerC4526c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4526c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (NumberVerifyActivity.this.f10918s == EnumC4543q.SMS) {
                NumberVerifyActivity.this.f10913n.m27968a(false);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$d.class */
    public class C4527d implements C13884a4.AbstractC13890d {
        public C4527d() {
        }

        @Override // p459j.p460a.p582w0.C13884a4.AbstractC13890d
        /* renamed from: a */
        public void mo3169a(int i) {
            if (i == 3) {
                NumberVerifyActivity.this.f10913n.m27950i();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$e.class */
    public static /* synthetic */ class C4528e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f10924a = new int[EnumC4543q.values().length];

        static {
            try {
                f10924a[EnumC4543q.SMS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$f.class */
    public class RunnableC4529f implements Runnable {
        public RunnableC4529f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            Object obj2;
            long currentTimeMillis = (System.currentTimeMillis() - NumberVerifyActivity.this.f10905f) / 1000;
            if (currentTimeMillis < 30) {
                int i = 30 - ((int) currentTimeMillis);
                int i2 = i % 60;
                int i3 = i / 60;
                TextView textView = NumberVerifyActivity.this.mTvCountdown;
                StringBuilder sb = new StringBuilder();
                if (i3 >= 10) {
                    obj = Integer.valueOf(i3);
                } else {
                    obj = "0" + i3;
                }
                sb.append(obj);
                sb.append(" : ");
                if (i2 >= 10) {
                    obj2 = Integer.valueOf(i2);
                } else {
                    obj2 = "0" + i2;
                }
                sb.append(obj2);
                textView.setText(sb.toString());
                NumberVerifyActivity.this.f10904e.postDelayed(this, 1000L);
                return;
            }
            NumberVerifyActivity.this.f10913n.m27967a(false, NumberVerifyActivity.this.f10913n.m27952g(), 1);
            NumberVerifyActivity.this.mo1338d();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$g.class */
    public class View$OnClickListenerC4530g implements View.OnClickListener {
        public View$OnClickListenerC4530g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NumberVerifyActivity.this.m27999u();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$h.class */
    public class View$OnClickListenerC4531h implements View.OnClickListener {
        public View$OnClickListenerC4531h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NumberVerifyActivity.this.m27999u();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$i.class */
    public class C4532i implements TextView.OnEditorActionListener {
        public C4532i() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            int i2 = i & 255;
            if (i2 != 6 && i2 != 2 && i2 != 5) {
                return false;
            }
            NumberVerifyActivity.this.mTvFirstRequest.performClick();
            return false;
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$j.class */
    public class View$OnFocusChangeListenerC4533j implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC4533j() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (!z) {
                NumberVerifyActivity.this.m28006o();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$k */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$k.class */
    public class View$OnClickListenerC4534k implements View.OnClickListener {
        public View$OnClickListenerC4534k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NumberVerifyActivity.this.m28002r();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$l */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$l.class */
    public class C4535l implements Action1<String> {
        public C4535l() {
        }

        /* renamed from: a */
        public void call(String str) {
            if (str != null) {
                NumberVerifyActivity.this.mTvCountryCode.setText(str);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$m */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$m.class */
    public class C4536m implements Single.OnSubscribe<String> {

        /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$m$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$m$a.class */
        public class C4537a extends BaseAdapter {
            public C4537a() {
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return NumberVerifyActivity.f10902t.length + 1;
            }

            @Override // android.widget.Adapter
            public Object getItem(int i) {
                return Integer.valueOf(i);
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return i;
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                C4539o oVar;
                if (view == null) {
                    view = NumberVerifyActivity.this.getLayoutInflater().inflate(R$layout.spinner_item_country, (ViewGroup) null);
                    oVar = new C4539o(NumberVerifyActivity.this, view);
                    view.setTag(oVar);
                } else {
                    oVar = (C4539o) view.getTag();
                }
                TextView textView = oVar.f10935a;
                textView.setText("+" + NumberVerifyActivity.this.f10908i[i]);
                oVar.f10936b.setText(NumberVerifyActivity.this.f10907h[i]);
                return view;
            }
        }

        public C4536m() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super String> singleSubscriber) {
            String str;
            NumberVerifyActivity.this.f10908i = new String[NumberVerifyActivity.f10902t.length + 1];
            NumberVerifyActivity.this.f10907h = new String[NumberVerifyActivity.f10903u.length + 1];
            String n = C14017g4.m2810n();
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = NumberVerifyActivity.f10903u;
                if (i2 >= strArr.length) {
                    str = null;
                    i2 = 0;
                    break;
                } else if (n.equalsIgnoreCase(strArr[i2])) {
                    str = "+" + NumberVerifyActivity.f10902t[i2].trim();
                    NumberVerifyActivity.this.f10916q = str;
                    NumberVerifyActivity.this.f10917r = n;
                    break;
                } else {
                    i2++;
                }
            }
            singleSubscriber.onSuccess(str);
            NumberVerifyActivity.this.f10908i[0] = NumberVerifyActivity.f10902t[i2];
            NumberVerifyActivity.this.f10907h[0] = new Locale("", NumberVerifyActivity.f10903u[i2]).getDisplayCountry();
            while (i < NumberVerifyActivity.f10902t.length) {
                i++;
                NumberVerifyActivity.this.f10908i[i] = NumberVerifyActivity.f10902t[i];
                NumberVerifyActivity.this.f10907h[i] = new Locale("", NumberVerifyActivity.f10903u[i]).getDisplayCountry();
            }
            NumberVerifyActivity.this.f10906g = new C4537a();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$n */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$n.class */
    public class DialogInterface$OnClickListenerC4538n implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4538n() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            NumberVerifyActivity numberVerifyActivity = NumberVerifyActivity.this;
            numberVerifyActivity.f10916q = "+" + NumberVerifyActivity.this.f10908i[i].trim();
            NumberVerifyActivity.this.f10917r = i > 0 ? NumberVerifyActivity.f10903u[i - 1].toUpperCase() : C14017g4.m2810n().toUpperCase();
            NumberVerifyActivity numberVerifyActivity2 = NumberVerifyActivity.this;
            numberVerifyActivity2.mTvCountryCode.setText(numberVerifyActivity2.f10916q);
            NumberVerifyActivity numberVerifyActivity3 = NumberVerifyActivity.this;
            numberVerifyActivity3.mEtNumber.removeTextChangedListener(numberVerifyActivity3.f10912m);
            NumberVerifyActivity numberVerifyActivity4 = NumberVerifyActivity.this;
            numberVerifyActivity4.f10912m = new C14683f(numberVerifyActivity4.f10917r);
            NumberVerifyActivity numberVerifyActivity5 = NumberVerifyActivity.this;
            numberVerifyActivity5.mEtNumber.addTextChangedListener(numberVerifyActivity5.f10912m);
            EditText editText = NumberVerifyActivity.this.mEtNumber;
            editText.setText(C14108o4.m2486c(editText.getText().toString()));
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$o */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$o.class */
    public class C4539o {

        /* renamed from: a */
        public TextView f10935a;

        /* renamed from: b */
        public TextView f10936b;

        public C4539o(NumberVerifyActivity numberVerifyActivity, View view) {
            this.f10935a = (TextView) view.findViewById(R$id.tv_text1);
            this.f10936b = (TextView) view.findViewById(R$id.tv_text2);
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$p */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$p.class */
    public class View$OnClickListenerC4540p implements View.OnClickListener {

        /* renamed from: a */
        public EnumC4543q f10937a;

        /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$p$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$p$a.class */
        public class DialogInterface$OnClickListenerC4541a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC4541a(View$OnClickListenerC4540p pVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$p$b */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$p$b.class */
        public class DialogInterface$OnClickListenerC4542b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC4542b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                View$OnClickListenerC4540p.this.m27993a();
                dialogInterface.dismiss();
            }
        }

        public View$OnClickListenerC4540p(EnumC4543q qVar) {
            this.f10937a = qVar;
        }

        /* renamed from: a */
        public final void m27993a() {
            if (m27991a(NumberVerifyActivity.this.f10916q, NumberVerifyActivity.this.f10914o)) {
                if (C4528e.f10924a[this.f10937a.ordinal()] == 1) {
                    NumberVerifyActivity.this.m28001s();
                }
                NumberVerifyActivity.this.f10918s = this.f10937a;
            }
        }

        /* renamed from: a */
        public final boolean m27991a(String str, String str2) {
            if (TextUtils.isEmpty(str2)) {
                NumberVerifyActivity.this.m28022c((int) R$string.verification_mainpage_hint_blank);
                return false;
            }
            if ((str + str2).length() > 5) {
                return true;
            }
            NumberVerifyActivity.this.m28022c((int) R$string.verification_mainpage_hint_format);
            return false;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NumberVerifyActivity numberVerifyActivity = NumberVerifyActivity.this;
            numberVerifyActivity.f10914o = numberVerifyActivity.mEtNumber.getText().toString().trim();
            if (C14108o4.m2489b(NumberVerifyActivity.this.f10916q + NumberVerifyActivity.this.f10914o, NumberVerifyActivity.this.f10917r).equals(C14137r4.m2374d())) {
                C14687h.m862a(NumberVerifyActivity.this, (int) R$string.card_number_verification_same_message, 0).m858c();
            } else if (!C14017g4.m2835A() || NumberVerifyActivity.this.f10914o.length() > 10) {
                m27993a();
            } else {
                DialogC14618f fVar = new DialogC14618f(NumberVerifyActivity.this);
                fVar.m995c(R$string.intro_br_ddd_check);
                fVar.m999b(R$string.edit, new DialogInterface$OnClickListenerC4541a(this));
                fVar.m1007a(R$string.button_continue, new DialogInterface$OnClickListenerC4542b());
                fVar.show();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.verify.NumberVerifyActivity$q */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/verify/NumberVerifyActivity$q.class */
    public enum EnumC4543q {
        SMS
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: a */
    public void mo1343a() {
        reset();
        C14687h.m862a(this, (int) R$string.card_number_verification_violation_message, 0).m858c();
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: a */
    public void mo1342a(String str) {
        reset();
        DialogC14618f fVar = new DialogC14618f(this);
        fVar.m998b(String.format(getString(R$string.registration_login_check_content), str));
        fVar.m999b(R$string.registration_login_check_yes, new DialogInterface$OnClickListenerC4526c());
        fVar.m993d(R$string.registration_login_check_no);
        fVar.m990f(4);
        fVar.show();
    }

    /* renamed from: a */
    public final void m28027a(boolean z) {
        this.mTvCountryCode.setEnabled(z);
        this.mIvDropdown.setEnabled(z);
        this.mEtNumber.setEnabled(z);
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: b */
    public void mo1341b() {
        m27997w();
        m28017d(true);
        m28019c(false);
        this.f10904e.postDelayed(new RunnableC4524a(true ^ TextUtils.isEmpty(getIntent().getStringExtra("extra_old_number"))), 300L);
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: b */
    public void mo1340b(String str) {
    }

    /* renamed from: b */
    public void m28023b(boolean z) {
        C12484b i = m28683i();
        if (i == null) {
            return;
        }
        if (z) {
            i.m6043a(true);
            i.m6032c(false);
            i.m6028d(true);
            i.m6038b(WhoscallActivity.m28686b(R$string.phonenumber_verification));
            this.mTvTitle.setVisibility(8);
            return;
        }
        i.m6031d();
        this.mTvTitle.setVisibility(0);
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: c */
    public void mo1339c() {
        reset();
        m28003q();
    }

    /* renamed from: c */
    public final void m28022c(int i) {
        this.mTvWarning.setText(i);
        EditText editText = this.mEtNumber;
        editText.setSelection(0, editText.getText().length());
    }

    /* renamed from: c */
    public void m28019c(boolean z) {
        if (!C14217x3.m2196a((Activity) this) || !z) {
            C14217x3.m2194a(this.f10910k);
            return;
        }
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -2);
        ProgressWheel progressWheel = new ProgressWheel(this.f10650a);
        progressWheel.m26015a(C14217x3.m2201a(47.0f));
        progressWheel.setLayoutParams(layoutParams);
        progressWheel.m26008c();
        if (this.f10910k == null) {
            this.f10910k = new Dialog(this.f10650a);
            this.f10910k.requestWindowFeature(1);
            this.f10910k.setContentView(progressWheel);
            this.f10910k.setCancelable(false);
            this.f10910k.setCanceledOnTouchOutside(false);
            this.f10910k.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            this.f10910k.setOnKeyListener(new DialogInterface$OnKeyListenerC4525b());
        }
        this.f10910k.show();
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: d */
    public void mo1338d() {
        m28017d(false);
        reset();
    }

    /* renamed from: d */
    public final void m28017d(boolean z) {
        ToastDialog toastDialog = new ToastDialog(this);
        toastDialog.setTitle(z ? R$string.verification_toast_success : R$string.verification_toast_fail);
        toastDialog.m25842a(z ? R$drawable.ic_toast_success : R$drawable.ic_toast_fail);
        toastDialog.show();
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    /* renamed from: e */
    public void mo1337e() {
        reset();
        m28022c(R$string.verification_mainpage_hint_format);
    }

    /* renamed from: o */
    public final void m28006o() {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
        if (getCurrentFocus() == null) {
            inputMethodManager.hideSoftInputFromWindow(this.mEtNumber.getWindowToken(), 0);
        } else {
            inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 0);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i2) {
            case 100:
                mo1341b();
                return;
            case 101:
                mo1337e();
                return;
            case 102:
                mo1343a();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setSoftInputMode(32);
        setContentView(R$layout.number_verify_activity);
        ButterKnife.bind(this);
        this.f10915p = getIntent().getStringExtra("extra_old_number");
        this.f10913n = new NumberVerifyPresenter(this, this);
        this.f10913n.m27962c();
        this.f10913n.m27957d(this.f10915p);
        m28023b(C14217x3.m2107z());
        this.f10904e = new Handler();
        m28000t();
        C13915b3.m3055b("isNotNumberOwner", false);
        if (this.f10913n.m27953f()) {
            m28003q();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (!this.f10913n.m27956e()) {
            finish();
        }
        this.f10913n.m27959d();
        m28019c(false);
        m28006o();
        super.onDestroy();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m27998v();
        m28027a(!this.f10913n.m27953f());
    }

    /* renamed from: p */
    public final void m28004p() {
        Single.create(new C4536m()).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4535l());
    }

    /* renamed from: q */
    public final void m28003q() {
        Intent intent = new Intent(this, SmsVerifyActivity.class);
        intent.putExtra("extra_country_code", this.f10916q);
        intent.putExtra("extra_number", this.f10914o);
        intent.putExtra("extra_old_number", this.f10915p);
        intent.putExtra("extra_country", this.f10917r);
        startActivityForResult(intent, 1);
    }

    /* renamed from: r */
    public final void m28002r() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("with_extra_info", true);
        bundle.putString("title_postfix", "Whoscall-" + WhoscallActivity.m28686b(R$string.verification_toast_fail) + "  " + C14017g4.m2806r());
        bundle.putBoolean("need_num_verified", false);
        bundle.putInt("category_id", 6);
        bundle.putInt("step", 2);
        C13884a4.m3187a(this.f10650a, 2, bundle, new C4527d());
    }

    @Override // p459j.p460a.p596x.p599m.p600b.AbstractC14436a.AbstractC14437a
    public void reset() {
        m28006o();
        String d = C14108o4.m2484d();
        if (this.f10913n.m27953f()) {
            this.f10916q = C14092n3.m2584a("verifying_country_code", "");
            this.f10914o = C14092n3.m2584a("verifying_number", "");
        }
        if (!TextUtils.isEmpty(this.f10916q) && !TextUtils.isEmpty(this.f10914o)) {
            this.mTvCountryCode.setText(this.f10916q);
            this.mEtNumber.setText(this.f10914o);
        } else if (!TextUtils.isEmpty(d)) {
            this.mEtNumber.setText(C14108o4.m2473m(d));
        } else {
            this.mEtNumber.setText("");
        }
        m28019c(false);
        m27997w();
        this.mTvWarning.setText("");
        m27998v();
    }

    /* renamed from: s */
    public final void m28001s() {
        if (this.f10913n.m27953f()) {
            m28003q();
            return;
        }
        this.f10913n.m27964b(this.f10916q);
        this.f10913n.m27960c(this.f10914o);
        this.f10913n.m27971a(this.f10917r);
        this.f10913n.m27968a(true);
        m28019c(true);
    }

    /* renamed from: t */
    public final void m28000t() {
        this.mTvCountryCode.setText("...");
        if (!this.f10913n.m27953f()) {
            m28004p();
        }
        reset();
        if (getIntent().getBooleanExtra("INTENT_SHOW_DIALOG", false)) {
            m28678n();
        }
        this.mTvCountryCode.setOnClickListener(new View$OnClickListenerC4530g());
        this.mIvDropdown.setOnClickListener(new View$OnClickListenerC4531h());
        this.mEtNumber.setOnEditorActionListener(new C4532i());
        this.mEtNumber.addTextChangedListener(this.f10912m);
        this.mEtNumber.setOnFocusChangeListener(new View$OnFocusChangeListenerC4533j());
        this.mEtNumber.requestFocus();
        this.mTvContactCs.setOnClickListener(new View$OnClickListenerC4534k());
        this.mTvFirstRequest.setOnClickListener(new View$OnClickListenerC4540p(EnumC4543q.SMS));
    }

    /* renamed from: u */
    public final void m27999u() {
        if (this.f10906g != null) {
            DialogC14625g gVar = new DialogC14625g(this);
            gVar.m973a(this.f10906g, new DialogInterface$OnClickListenerC4538n());
            gVar.show();
        }
    }

    /* renamed from: v */
    public final void m27998v() {
        int a = C13915b3.m3066a("first_verify_failed_count", 0);
        int a2 = C13915b3.m3066a("second_verify_failed_count", 0);
        if (this.mTvContactCs.getVisibility() == 8 && a + a2 >= 3) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(200L);
            this.mTvContactCs.setVisibility(0);
            this.mTvContactCs.startAnimation(alphaAnimation);
        }
    }

    /* renamed from: w */
    public final void m27997w() {
        this.f10904e.removeCallbacks(this.f10911l);
        this.f10905f = 0L;
        m28027a(true);
        this.mLlCountdown.setVisibility(8);
        this.mLlFirstRequest.setVisibility(0);
        m27998v();
        this.mTvCountdown.setText("");
    }
}
