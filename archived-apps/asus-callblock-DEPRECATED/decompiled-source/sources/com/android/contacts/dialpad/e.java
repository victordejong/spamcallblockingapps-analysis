package com.android.contacts.dialpad;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.RelativeLayout;
import android.widget.SearchView;
import android.widget.TextView;
import com.android.contacts.CallDetailActivity;
import com.android.contacts.a;
import com.android.contacts.activities.AboutContactsAppActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.SpeedDialEditor;
import com.android.contacts.ag;
import com.android.contacts.calllog.UpdateMissCallIconService;
import com.android.contacts.dialpad.AdditionalButtonFragment;
import com.android.contacts.dialpad.CallDetailFragment;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.dialpad.TwelveKeyDialerFragment;
import com.android.contacts.dialpad.d;
import com.android.contacts.dialpad.f;
import com.android.contacts.j.j;
import com.android.contacts.q;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.AsusRedPointNotificationHelper;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.contacts.yellowpage.AsusYellowPageIndexActivity;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e.class */
public class e extends Fragment implements PopupMenu.OnMenuItemClickListener, a.AbstractC0019a, ag, AdditionalButtonFragment.b, CallDetailFragment.e, ResultListFragment.e, TwelveKeyDialerFragment.c {
    private static final String A = e.class.getSimpleName();
    private boolean B;
    private boolean C;
    private String D;
    private View E;
    private ImageButton F;
    private ImageButton G;
    private ImageButton H;
    private ImageButton I;
    private View O;
    private View P;
    private boolean T;
    private ImageButton V;
    private View W;
    private g Z;
    private boolean ag;
    private View ai;

    /* renamed from: b  reason: collision with root package name */
    public RelativeLayout f1037b;
    public LinearLayout c;
    public LinearLayout d;
    public LinearLayout e;
    EditText f;
    public CallDetailFragment g;
    public AdditionalButtonFragment h;
    public TwelveKeyDialerFragment i;
    public ResultListFragment j;
    SearchView k;
    String l;
    public DialPadBlurredLayout m;
    public FrameLayout n;
    public SharedPreferences p;
    private ListPopupWindow r;
    private com.asus.contacts.b.g s;
    private ListPopupWindow t;
    private int u;
    private boolean v;
    private int w;
    private FrameLayout x;
    private boolean y = true;
    private boolean z = false;

    /* renamed from: a  reason: collision with root package name */
    public View f1036a = null;
    private a J = new a(new Handler());
    private b K = null;
    private c L = null;
    private AbstractC0034e M = null;
    private boolean N = false;
    private boolean Q = false;
    private String R = BuildConfig.FLAVOR;
    private boolean S = false;
    private int U = -1;
    private boolean X = false;
    private boolean Y = true;
    private View aa = null;
    private View ab = null;
    private LinearLayout ac = null;
    private LinearLayout ad = null;
    TextView o = null;
    private FrameLayout ae = null;
    private boolean af = false;
    private CallDetailFragment.f ah = new CallDetailFragment.f() { // from class: com.android.contacts.dialpad.e.7
        @Override // com.android.contacts.dialpad.CallDetailFragment.f
        public final void a(String str) {
            e.this.f.getText().clear();
            e.this.f.append(str);
            if (e.this.h != null) {
                e.this.h.j();
            }
        }
    };
    private final String aj = "com.asus.action.PHONE_ACCOUNTS_CHANGED";
    private final String ak = "android.intent.action.SIM_STATE_CHANGED";
    Handler q = new Handler() { // from class: com.android.contacts.dialpad.e.12
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                e.this.d.setVisibility(8);
                e.this.e.setVisibility(0);
                return;
            }
            e.this.e.setVisibility(8);
            e.this.d.setVisibility(0);
        }
    };
    private AdapterView.OnItemClickListener al = new AdapterView.OnItemClickListener() { // from class: com.android.contacts.dialpad.e.13
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int i2 = (int) ((f.a) view.getTag()).f1062a;
            ImageView imageView = ((f.a) view.getTag()).c;
            switch (i2) {
                case 2131755013:
                case 2131755687:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, e.this.getActivity(), "Dialer", "Dialer- Hide_number_for_next_call", null, null);
                    } else {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(10, e.this.getActivity(), "Dialer", "Dialer- Hide_number_for_next_call", null, null);
                    }
                    com.android.contacts.dialpad.b.e = !com.android.contacts.dialpad.b.e;
                    e.this.h.b(com.android.contacts.dialpad.b.e);
                    break;
                case 2131755807:
                case 2131755834:
                    if (e.this.p.getInt("keypad_mode", 0) == 0) {
                        e.this.p.edit().putInt("keypad_mode", 1).apply();
                        e.this.h.a(true);
                        if (e.this.aa != null) {
                            e.this.aa.setVisibility(8);
                        }
                        if (e.this.ab != null) {
                            e.this.ab.setVisibility(8);
                        }
                        e.this.i.g();
                        TwelveKeyDialerFragment twelveKeyDialerFragment = e.this.i;
                        TwelveKeyDialerFragment unused = e.this.i;
                        twelveKeyDialerFragment.l();
                        e.this.i.m();
                        e.this.i.f(true);
                        e.this.i.c(true);
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, e.this.getActivity(), "Dialer", "Dialer- Switch Full_screen_dialpad", null, null);
                        } else {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(10, e.this.getActivity(), "Dialer", "Dialer- Switch Full_screen_dialpad", null, null);
                        }
                    } else {
                        e.this.p.edit().putInt("keypad_mode", 0).apply();
                        AdditionalButtonFragment additionalButtonFragment = e.this.h;
                        boolean z = e.this.h.c;
                        switch (AdditionalButtonFragment.k()) {
                            case 0:
                            case 1:
                                AdditionalButtonFragment.d = 0;
                                Log.d("ControlFragment", "VO_MODE");
                                break;
                            case 2:
                            case 3:
                                AdditionalButtonFragment.d = 1;
                                Log.d("ControlFragment", "T9_MODE");
                                break;
                            case 4:
                                AdditionalButtonFragment.d = 2;
                                break;
                            default:
                                AdditionalButtonFragment.d = 2;
                                Log.e("ControlFragment", "No hand write system property matched!");
                                break;
                        }
                        if (AdditionalButtonFragment.d == 2 || AdditionalButtonFragment.d != 1) {
                            additionalButtonFragment.g();
                        } else {
                            additionalButtonFragment.e();
                        }
                        additionalButtonFragment.o.setEnabled(true);
                        additionalButtonFragment.o.setVisibility(0);
                        additionalButtonFragment.p.setVisibility(0);
                        if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(additionalButtonFragment.p, com.android.contacts.skin.a.a(0));
                        } else if (additionalButtonFragment.w) {
                            com.android.contacts.skin.a.a(additionalButtonFragment.p, additionalButtonFragment.getActivity().getResources().getColor(2131034180));
                        } else {
                            com.android.contacts.skin.a.a(additionalButtonFragment.p, additionalButtonFragment.getActivity().getResources().getColor(2131034378));
                        }
                        additionalButtonFragment.f();
                        if (z) {
                            if (additionalButtonFragment.p != null) {
                                additionalButtonFragment.p.setImageResource(2131165315);
                            }
                            additionalButtonFragment.q.setText(BuildConfig.FLAVOR);
                            additionalButtonFragment.q.setVisibility(8);
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) additionalButtonFragment.p.getLayoutParams();
                            layoutParams.addRule(13, -1);
                            additionalButtonFragment.p.setLayoutParams(layoutParams);
                        }
                        if (com.android.contacts.ipcall.b.b(additionalButtonFragment.getActivity())) {
                            additionalButtonFragment.p.setImageResource(2131165372);
                            additionalButtonFragment.o.setTag("ip_call_settings");
                            additionalButtonFragment.q.setVisibility(8);
                        }
                        e.this.i.f();
                        TwelveKeyDialerFragment twelveKeyDialerFragment2 = e.this.i;
                        TwelveKeyDialerFragment unused2 = e.this.i;
                        twelveKeyDialerFragment2.l();
                        e.this.i.m();
                        e.this.i.f(false);
                        e.this.i.c(!e.this.h.c);
                        if (PhoneCapabilityTester.IsSystemApp()) {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(9, e.this.getActivity(), "Dialer", "Dialer- Switch Smart_search_dialpad", null, null);
                        } else {
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(10, e.this.getActivity(), "Dialer", "Dialer- Switch Smart_search_dialpad", null, null);
                        }
                    }
                    e.this.i.b();
                    ResultListFragment resultListFragment = e.this.j;
                    if (resultListFragment.y != null) {
                        Log.d("ResultListFragment", "notifySearchItemChange: startSearch");
                        resultListFragment.m = null;
                        resultListFragment.y.b();
                    }
                    if (com.android.contacts.j.h.b()) {
                        if (resultListFragment.E.getInt("keypad_mode", 0) != 1 || PhoneCapabilityTester.isUsingTwoPanes(resultListFragment.getActivity())) {
                            Log.d("SmartDialUnbundle", "notifySearchItemChange: Unbundle SmartDial in SMART_SEARCH mode");
                            com.android.contacts.j.h.a(0);
                            resultListFragment.v();
                            resultListFragment.a(resultListFragment.getActivity());
                        } else {
                            Log.d("SmartDialUnbundle", "notifySearchItemChange: Unbundle SmartDial in CONTACT_SEARCH mode");
                            com.android.contacts.j.h.a(1);
                            resultListFragment.u();
                            resultListFragment.b(resultListFragment.getActivity());
                        }
                    }
                    e.this.h.i();
                    break;
                case 2131755851:
                    AboutContactsAppActivity.gotoGooglePlay(e.this.getActivity());
                    if (AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(e.this.getActivity(), 12)) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(e.this.getActivity(), 12);
                        if (imageView != null) {
                            imageView.setVisibility(8);
                            break;
                        }
                    }
                    break;
            }
            if (e.this.t != null) {
                e.this.t.dismiss();
                e.this.t = null;
            }
        }
    };
    private final SearchView.OnQueryTextListener am = new SearchView.OnQueryTextListener() { // from class: com.android.contacts.dialpad.e.3
        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            str = null;
            if (!TextUtils.isEmpty(e.this.l) || !TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(e.this.l)) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(8, e.this.getActivity(), "CallLog", true);
                    if (e.this.p != null) {
                        e.this.p.edit().putInt("calllog_search_count", e.this.p.getInt("calllog_search_count", 0) + 1).commit();
                    }
                }
                if (TextUtils.isEmpty(str)) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(8, e.this.getActivity(), "CallLog", "Enter the number of keywords when searching in call log", e.this.l != null ? String.valueOf(e.this.l.length()) : "0", null);
                }
            }
            Log.d(e.A, "onQueryTextChange,  newText: " + str + ", mUserLastQuery: " + e.this.l);
            e.this.j.c(TextUtils.isEmpty(str));
            e.this.l = str;
            if (!TextUtils.isEmpty(str)) {
                e.this.j.l = false;
            }
            if (e.this.U != -1) {
                e.this.p.edit().putInt("keypad_mode", 0).apply();
            }
            if (!com.android.contacts.j.h.b()) {
                e.this.j.b(str);
                return true;
            }
            ResultListFragment resultListFragment = e.this.j;
            if (resultListFragment.D) {
                return true;
            }
            if (TextUtils.isEmpty(str)) {
            }
            resultListFragment.m = str;
            if (TextUtils.isEmpty(resultListFragment.m)) {
                resultListFragment.x = true;
                resultListFragment.i();
                if (resultListFragment.H != null && resultListFragment.H.d() < j.a().f1552b) {
                    resultListFragment.H.a();
                }
            }
            if (resultListFragment.H == null) {
                return true;
            }
            com.android.contacts.j.f fVar = resultListFragment.H;
            String str2 = resultListFragment.m;
            if (fVar.h) {
                return true;
            }
            fVar.k = Long.valueOf(System.currentTimeMillis());
            fVar.d = str2;
            if (fVar.e == null) {
                fVar.e = new com.android.contacts.j.d(fVar, fVar.i);
                fVar.e.start();
            }
            fVar.e.a(fVar.d);
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
            if (e.this.k == null || e.this.getView() == null) {
                return true;
            }
            e.this.b(e.this.getView());
            e.this.getView().clearFocus();
            e.this.j.l = e.this.T;
            return true;
        }
    };
    private BroadcastReceiver an = new BroadcastReceiver() { // from class: com.android.contacts.dialpad.e.6
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            boolean z = true;
            if ("com.asus.action.PHONE_ACCOUNTS_CHANGED".equals(intent.getAction())) {
                Log.d(e.A, "[onRecieve] Action_PHONE_ACCOUNTS_CHANGED");
            } else if ("android.intent.action.SIM_STATE_CHANGED".equals(intent.getAction())) {
                Log.d(e.A, "[onRecieve] ACTION_SIM_STATE_CHANGE");
            } else if ("android.intent.action.AIRPLANE_MODE".equals(intent.getAction())) {
                Log.d(e.A, "[onRecieve] Action_AIRPLANE_MODE_CHANGED");
            } else {
                z = false;
            }
            if (z) {
                try {
                    Log.d(e.A, "setupDialButton");
                    e eVar = e.this;
                    if (eVar.h != null) {
                        eVar.h.c();
                    }
                    if (com.android.contacts.simcardmanage.b.a(eVar.getActivity())) {
                        if (eVar.j != null) {
                            eVar.j.t();
                            ResultListFragment resultListFragment = eVar.j;
                            if (!com.android.contacts.simcardmanage.b.a(resultListFragment.getActivity()) || !resultListFragment.f901b || !resultListFragment.c) {
                                resultListFragment.u.setVisibility(8);
                                resultListFragment.g(0);
                            } else {
                                resultListFragment.u.setVisibility(0);
                                resultListFragment.o();
                            }
                            if (resultListFragment.q != null) {
                                resultListFragment.q.notifyDataSetChanged();
                            }
                            if (resultListFragment.p != null) {
                                resultListFragment.p.notifyDataSetChanged();
                            }
                            if (com.android.contacts.j.h.b() && com.android.contacts.j.h.c() == 0 && resultListFragment.H != null && resultListFragment.H.l != null) {
                                resultListFragment.H.l.notifyDataSetChanged();
                                Log.d("SmartDialUnbundle", "notifyDataSetChanged 6");
                            }
                        }
                        if (eVar.g != null) {
                            eVar.g.c();
                            CallDetailFragment callDetailFragment = eVar.g;
                            if (callDetailFragment.f845a != null) {
                                callDetailFragment.f845a.notifyDataSetChanged();
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.d(e.A, "Fail to setup dial button, Exception : " + e.toString());
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$a.class */
    private final class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (e.this.j != null) {
                int i = e.this.j.A;
                if (e.this.h != null && i == 10) {
                    e.this.h.j();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$b.class */
    public interface b {
        void onChangeCallLogPositionFromSmartDial(String str, int i, String str2, long[] jArr);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$c.class */
    public interface c {
        void onContactDetailSelected(Uri uri);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$d.class */
    public static final class d extends DialogFragment {

        /* renamed from: a  reason: collision with root package name */
        private Integer f1056a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f1057b;

        public static d a(Integer num) {
            return a(num, null);
        }

        private static d a(Integer num, Integer num2) {
            d dVar = new d();
            Bundle bundle = new Bundle();
            if (num != null) {
                bundle.putInt("argTitleResId", num.intValue());
            }
            if (num2 != null) {
                bundle.putInt("argMessageResId", num2.intValue());
            }
            dVar.setArguments(bundle);
            return dVar;
        }

        public static d b(Integer num) {
            return a(null, num);
        }

        @Override // android.app.DialogFragment, android.app.Fragment
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            if (getArguments().containsKey("argTitleResId")) {
                this.f1056a = Integer.valueOf(getArguments().getInt("argTitleResId"));
            }
            if (getArguments().containsKey("argMessageResId")) {
                this.f1057b = Integer.valueOf(getArguments().getInt("argMessageResId"));
            }
        }

        @Override // android.app.DialogFragment
        public final Dialog onCreateDialog(Bundle bundle) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            if (this.f1056a != null) {
                builder.setTitle(this.f1056a.intValue());
            }
            builder.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.e.d.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    d.this.dismiss();
                }
            });
            if (this.f1057b != null) {
                builder.setMessage(this.f1057b.intValue());
            }
            return builder.create();
        }
    }

    /* renamed from: com.android.contacts.dialpad.e$e  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$e.class */
    public interface AbstractC0034e {
        void onHandwriteChange(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$f.class */
    public interface f {
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$g.class */
    public interface g {
        int getProviderStatus();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/e$h.class */
    private final class h extends AsyncTask<String, Void, a.c> {
        h() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ a.c doInBackground(String[] strArr) {
            return com.asus.a.a.a(e.this.getActivity(), strArr[0], "2");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(a.c cVar) {
            a.c cVar2 = cVar;
            String str = cVar2.d;
            String str2 = cVar2.f2356b;
            boolean isEmergencyNumber = PhoneNumberUtils.isEmergencyNumber(PhoneNumberUtils.stripSeparators(cVar2.f2355a));
            int i = cVar2.l;
            int i2 = cVar2.k;
            if (e.this.o != null && e.this.getActivity() != null) {
                if (com.android.contacts.skin.a.b()) {
                    e.this.o.setTextColor(e.this.getActivity().getResources().getColor(2131034140));
                } else if (com.android.contacts.skin.a.c()) {
                    e.this.o.setTextColor(com.android.contacts.skin.a.a(2));
                } else {
                    e.this.o.setTextColor(e.this.getActivity().getResources().getColor(2131034139));
                }
                if (i == 0) {
                    e.this.o.setTextColor(-1299649);
                } else if (i == 1) {
                    e.this.o.setTextColor(-670719);
                }
                if (str2 != null) {
                    e.this.o.setText(str2);
                } else if (str == null || i == 4) {
                    if (isEmergencyNumber) {
                        String str3 = BuildConfig.FLAVOR;
                        if (e.this.getActivity() != null) {
                            str3 = BuildConfig.FLAVOR;
                            if (e.this.getActivity().getResources() != null) {
                                str3 = BuildConfig.FLAVOR;
                                if (Resources.getSystem() != null) {
                                    str3 = e.this.getActivity().getResources().getString(Resources.getSystem().getIdentifier("emergency_call_dialog_number_for_display", "string", "android"));
                                }
                            }
                        }
                        e.this.o.setText(str3);
                    } else {
                        e.this.o.setText(2131756240);
                    }
                } else if (i2 > 0) {
                    e.this.o.setText(str + "(" + i2 + ")");
                } else {
                    e.this.o.setText(str);
                }
                e.this.o.setVisibility(0);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            if (com.android.contacts.skin.a.b()) {
                e.this.o.setTextColor(e.this.getActivity().getResources().getColor(2131034140));
            } else if (com.android.contacts.skin.a.c()) {
                e.this.o.setTextColor(com.android.contacts.skin.a.a(2));
            } else {
                e.this.o.setTextColor(-16777216);
            }
            e.this.o.setText(2131755312);
            e.this.o.setVisibility(0);
        }
    }

    public static float a(Activity activity, float f2) {
        return (int) ((activity.getResources().getDisplayMetrics().density * f2) + 0.5f);
    }

    private int a(ListAdapter listAdapter) {
        int i;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        Resources resources = getResources();
        this.u = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(2131100286));
        int i2 = 0;
        int i3 = 0;
        View view = null;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i2 >= count) {
                break;
            }
            int itemViewType = listAdapter.getItemViewType(i2);
            i3 = i3;
            if (itemViewType != i3) {
                i3 = itemViewType;
                view = null;
            }
            if (this.x == null) {
                this.x = new FrameLayout(getActivity());
            }
            view = listAdapter.getView(i2, view, this.x);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= this.u) {
                i = this.u;
                break;
            }
            if (measuredWidth > i4) {
                i4 = measuredWidth;
            }
            i2++;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LinearLayout linearLayout, int i, int i2) {
        if (linearLayout != null) {
            Drawable b2 = android.support.v4.a.a.a.b(getResources().getDrawable(i).mutate());
            android.support.v4.a.a.a.a(b2, i2);
            linearLayout.setBackground(b2);
        }
    }

    static /* synthetic */ void a(e eVar, View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) eVar.getActivity().getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        if (!inputMethodManager.showSoftInput(view, 0)) {
            Log.w(A, "Failed to show soft input method.");
            eVar.Q = true;
            return;
        }
        eVar.Q = false;
    }

    private void a(String str, String str2) {
        try {
            this.ag = true;
            if (this.i != null) {
                this.i.q = this.ag;
            }
            String formatNumber = PhoneNumberUtils.formatNumber(PhoneNumberUtils.extractNetworkPortion(str), str2, this.D);
            if (!TextUtils.isEmpty(formatNumber)) {
                Editable text = this.f.getText();
                text.replace(0, text.length(), formatNumber);
                TwelveKeyDialerFragment twelveKeyDialerFragment = (TwelveKeyDialerFragment) getFragmentManager().findFragmentById(2131296692);
                if (twelveKeyDialerFragment != null) {
                    twelveKeyDialerFragment.b(text.toString());
                }
            }
            this.ag = false;
            if (this.i != null) {
                this.i.q = this.ag;
            }
        } catch (Throwable th) {
            this.ag = false;
            if (this.i != null) {
                this.i.q = this.ag;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, g gVar) {
        boolean z2 = true;
        getActivity();
        boolean z3 = MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER;
        if (com.asus.a.a.h(getActivity()) && !this.y && this.W != null && z3) {
            if (isHidden()) {
                z2 = false;
            }
            this.X = com.asus.contacts.yellowpage.promotion.c.a(getActivity());
            if (this.X && z2) {
                String c2 = com.asus.contacts.yellowpage.promotion.c.c(getActivity());
                this.s = com.asus.contacts.b.g.a(getActivity());
                Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
                int width = defaultDisplay.getWidth();
                int dimensionPixelOffset = getResources().getDimensionPixelOffset(2131099730) / 2;
                int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(2131099729);
                int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(2131099803);
                this.s.f2596b = gVar;
                this.s.a(this.W, c2, null, (defaultDisplay.getWidth() / 4) * 3, (width - dimensionPixelOffset) - dimensionPixelOffset2, dimensionPixelOffset3, z, 2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c5, code lost:
        if (android.text.TextUtils.isEmpty(r7) == false) goto L_0x00c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d6, code lost:
        if (r5.startsWith("404") == false) goto L_0x00d9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e7, code lost:
        if (r7.startsWith("404") == false) goto L_0x00ea;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f8, code lost:
        if (r5.startsWith("460") == false) goto L_0x00fb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0109, code lost:
        if (r7.startsWith("460") == false) goto L_0x010c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0181, code lost:
        if (r5.startsWith("404") == false) goto L_0x0184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0192, code lost:
        if (r5.startsWith("460") == false) goto L_0x0195;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.e.a(android.content.Context):boolean");
    }

    private static boolean a(Intent intent) {
        boolean z = false;
        String action = intent.getAction();
        if ("android.intent.action.DIAL".equals(action) || "android.intent.action.VIEW".equals(action)) {
            z = intent.getBooleanExtra(MainDialtactsActivity.ADD_CALL_MODE_KEY, false);
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    private long[] a(String str, int i, String str2) {
        long[] jArr;
        String str3 = str;
        if (str.indexOf("/") != -1) {
            str3 = PhoneNumberUtils.stripSeparators(str);
        }
        String str4 = PhoneCapabilityTester.IsAsusDevice() ? "block = " + i + " OR block is NULL OR block <=0" : str2 == null ? "lookup_uri is null" : "lookup_uri ='" + ContactsContract.Contacts.getLookupUri(i, str2) + "'";
        Cursor query = getActivity().getContentResolver().query(Uri.withAppendedPath(CallLog.Calls.CONTENT_FILTER_URI, str3), null, str4, null, "date DESC");
        Log.d(A, "[getCallIds] selection: " + str4 + " and get cursor count = " + (query != null ? query.getCount() : -1));
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long[] jArr2 = new long[query.getCount()];
                    int columnIndex = query.getColumnIndex("_id");
                    int i2 = 1;
                    jArr2[0] = query.getInt(columnIndex);
                    while (query.moveToNext()) {
                        jArr2[i2] = query.getLong(columnIndex);
                        i2++;
                    }
                    jArr = jArr2;
                    if (query != null) {
                        query.close();
                        jArr = jArr2;
                    }
                    return jArr;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        jArr = null;
        if (query != null) {
            query.close();
            jArr = null;
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
        if (inputMethodManager != null && view != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* JADX WARN: Finally extract failed */
    private boolean b(Intent intent) {
        boolean z;
        Uri data;
        Cursor query;
        String action = intent.getAction();
        if (("android.intent.action.DIAL".equals(action) || "android.intent.action.VIEW".equals(action)) && (data = intent.getData()) != null) {
            if (Constants.SCHEME_TEL.equals(data.getScheme())) {
                a(PhoneNumberUtils.convertKeypadLettersToDigits(PhoneNumberUtils.replaceUnicodeDigits(data.getSchemeSpecificPart())), (String) null);
                z = true;
            } else {
                String type = intent.getType();
                if (("vnd.android.cursor.item/person".equals(type) || "vnd.android.cursor.item/phone".equals(type)) && (query = getActivity().getContentResolver().query(intent.getData(), new String[]{"number", "number_key"}, null, null, null)) != null) {
                    try {
                        if (query.moveToFirst()) {
                            a(query.getString(0), query.getString(1));
                            query.close();
                            z = true;
                        } else {
                            query.close();
                        }
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private void c(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                    c(((ViewGroup) view).getChildAt(i));
                }
                if (!(view instanceof ListView)) {
                    ((ViewGroup) view).removeAllViews();
                }
            }
        }
    }

    private boolean g() {
        return this.f != null;
    }

    private void h() {
        this.k.setSearchableInfo(((SearchManager) getActivity().getSystemService("search")).getSearchableInfo(getActivity().getComponentName()));
        this.k.setQueryRefinementEnabled(true);
        if (com.android.contacts.skin.a.b()) {
            this.k.setBackgroundResource(2131034127);
            try {
                TextView textView = (TextView) this.k.findViewById(getResources().getIdentifier("android:id/search_src_text", null, null));
                if (textView != null) {
                    textView.setTextColor(getResources().getColor(2131034156));
                }
            } catch (Exception e) {
                Log.d(A, "searchview no Dark Theme resources 2: " + e.toString());
            }
        } else if (com.android.contacts.skin.a.c()) {
            this.k.setBackgroundColor(com.android.contacts.skin.a.a(3));
            try {
                int a2 = com.android.contacts.skin.a.a(0);
                TextView textView2 = (TextView) this.k.findViewById(getResources().getIdentifier("android:id/search_src_text", null, null));
                if (textView2 != null) {
                    textView2.setTextColor(com.android.contacts.skin.a.a(2));
                    textView2.setHintTextColor(com.android.contacts.skin.a.a(2));
                }
                ImageView imageView = (ImageView) this.k.findViewById(getResources().getIdentifier("android:id/search_close_btn", null, null));
                if (imageView != null) {
                    com.android.contacts.skin.a.a(imageView, a2);
                }
                ImageView imageView2 = (ImageView) this.k.findViewById(getResources().getIdentifier("android:id/search_voice_btn", null, null));
                if (imageView2 != null) {
                    com.android.contacts.skin.a.a(imageView2, a2);
                }
                ImageView imageView3 = (ImageView) this.k.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
                if (imageView3 != null) {
                    com.android.contacts.skin.a.a(imageView3, a2);
                }
            } catch (Exception e2) {
                Log.d(A, "searchview no Global Theme resources 2");
            }
        } else {
            this.k.setBackgroundResource(2131165223);
        }
        try {
            ImageView imageView4 = (ImageView) this.k.findViewById(getResources().getIdentifier("android:id/search_mag_icon", null, null));
            LinearLayout linearLayout = (LinearLayout) this.k.findViewById(getResources().getIdentifier("android:id/search_plate", null, null));
            LinearLayout linearLayout2 = (LinearLayout) this.k.findViewById(getResources().getIdentifier("android:id/submit_area", null, null));
            LinearLayout linearLayout3 = (LinearLayout) this.k.findViewById(getResources().getIdentifier("android:id/search_edit_frame", null, null));
            if (imageView4 != null) {
                ((ViewGroup.MarginLayoutParams) imageView4.getLayoutParams()).setMargins(0, 0, 0, 0);
                imageView4.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.e.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (e.this.k != null) {
                            EditText editText = (EditText) e.this.k.findViewById(e.this.getResources().getIdentifier("android:id/search_src_text", null, null));
                            if (editText != null) {
                                editText.setFocusable(true);
                                editText.requestFocus();
                                ((InputMethodManager) e.this.getActivity().getSystemService("input_method")).showSoftInput(editText, 1);
                            }
                        }
                    }
                });
                imageView4.requestLayout();
            }
            if (linearLayout2 != null) {
                linearLayout2.setBackground(new ColorDrawable(0));
            }
            if (linearLayout != null) {
                linearLayout.setBackground(new ColorDrawable(0));
            }
            if (linearLayout3 != null) {
                if (com.android.contacts.skin.a.b()) {
                    getActivity();
                    com.android.contacts.skin.a.d();
                    linearLayout3.setBackground(com.android.contacts.skin.a.a(getActivity(), 2131165914, getResources().getColor(2131034120)));
                } else {
                    linearLayout3.setBackground(getResources().getDrawable(2131165914));
                }
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 16;
                layoutParams.setMargins((int) getResources().getDimension(2131099965), 0, (int) getResources().getDimension(2131099965), 0);
                linearLayout3.setLayoutParams(layoutParams);
            }
        } catch (Exception e3) {
            Log.d(A, "searchview resource exception: " + e3.toString());
        }
        View currentFocus = getActivity().getCurrentFocus();
        if (currentFocus != null) {
            b(currentFocus);
            currentFocus.clearFocus();
        }
        if (TextUtils.isEmpty(this.l)) {
            a(BuildConfig.FLAVOR);
        } else {
            a(this.l);
        }
    }

    private void i() {
        if (com.asus.a.a.h(getActivity()) && !this.y) {
            if (this.W == null) {
                this.W = ((ViewStub) this.f1036a.findViewById(2131297312)).inflate();
            }
            if (this.W != null) {
                this.V = (ImageButton) this.W.findViewById(2131297310);
                if (com.android.contacts.skin.a.c()) {
                    com.android.contacts.skin.a.a(this.V, com.android.contacts.skin.a.a(2));
                }
                final ImageView imageView = (ImageView) this.W.findViewById(2131296371);
                this.V.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.e.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AsusRedPointNotificationHelper.getInstance().disableRedPoint(e.this.getActivity(), 9);
                        if (imageView != null) {
                            imageView.setVisibility(8);
                        }
                        ImplicitIntentsUtil.startActivityInApp(e.this.getActivity(), new Intent(e.this.getActivity(), AsusYellowPageIndexActivity.class));
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(18, e.this.getActivity(), "Yellow Page", true);
                    }
                });
                this.V.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.contacts.dialpad.e.5
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        e.this.a(true, (g) null);
                        return true;
                    }
                });
                if (imageView != null && AsusRedPointNotificationHelper.getInstance().isNeedShowRedPoint(getActivity(), 9)) {
                    imageView.setVisibility(0);
                }
            }
        }
    }

    @Override // com.android.contacts.a.AbstractC0019a
    public final void a() {
        if (!TextUtils.isEmpty(this.l)) {
            a(this.l, true);
            a(BuildConfig.FLAVOR);
        }
    }

    @Override // com.android.contacts.dialpad.TwelveKeyDialerFragment.c
    public final void a(View view) {
        ListPopupWindow listPopupWindow;
        Activity activity = getActivity();
        if (activity == null) {
            listPopupWindow = null;
        } else {
            this.t = new ListPopupWindow(activity);
            com.android.contacts.dialpad.f fVar = new com.android.contacts.dialpad.f(activity);
            this.t.setAdapter(fVar);
            this.t.setAnchorView(view);
            this.t.setModal(true);
            if (!this.v) {
                this.w = a(fVar);
                this.v = true;
            }
            this.t.setContentWidth(this.w);
            this.t.setOnItemClickListener(this.al);
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(16, getActivity(), "Click SmartDialpad Option Menu", true);
            this.t.show();
            listPopupWindow = this.t;
        }
        this.r = listPopupWindow;
        if (this.r != null) {
            this.r.show();
        }
    }

    @Override // com.android.contacts.dialpad.ResultListFragment.e
    public final void a(d.b bVar, int i) {
        long[] a2 = a(bVar.h, bVar.f1020a, bVar.i);
        if (i == 10 && a2 != null) {
            boolean z = getResources().getConfiguration().orientation == 2;
            if (!this.C || !z) {
                Activity activity = getActivity();
                Intent intent = new Intent(activity, CallDetailActivity.class);
                intent.putExtra("EXTRA_CALL_LOG_IDS", a2);
                intent.putExtra("CALL_LOG_NAME", bVar.g);
                intent.putExtra("CALL_LOG_NUMBER", bVar.h);
                intent.putExtra("FROM_WHICH_TAB", "FROM_DIALPAD_TAB");
                ImplicitIntentsUtil.startActivityInApp(activity, intent);
                return;
            }
            this.K.onChangeCallLogPositionFromSmartDial(bVar.h, bVar.f1020a, bVar.i, a2);
        } else if (i != 11 && i != 10) {
        } else {
            if (this.C) {
                this.L.onContactDetailSelected(ContactsContract.Contacts.getLookupUri(bVar.f1020a, bVar.i));
                getActivity().getActionBar().selectTab(getActivity().getActionBar().getTabAt(MainDialtactsActivity.TAB_INDEX_ALLCONTACTS / 2));
                return;
            }
            Uri lookupUri = ContactsContract.Contacts.getLookupUri(bVar.f1020a, bVar.i);
            Log.d(A, "[onDetailButtonClick] uri: " + lookupUri);
            ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("android.intent.action.VIEW", lookupUri));
        }
    }

    @Override // com.android.contacts.dialpad.ResultListFragment.e
    public final void a(d.b bVar, int i, long[] jArr) {
        if (i == 10) {
            boolean z = getResources().getConfiguration().orientation == 2;
            if (!this.C || !z) {
                Activity activity = getActivity();
                Intent intent = new Intent(activity, CallDetailActivity.class);
                intent.putExtra("EXTRA_CALL_LOG_IDS", jArr);
                intent.putExtra("CALL_LOG_NAME", bVar.g);
                intent.putExtra("CALL_LOG_NUMBER", bVar.h);
                intent.putExtra("FROM_WHICH_TAB", "FROM_DIALPAD_TAB");
                intent.putExtra("EXTRA_CONTACT_ID", bVar.f1020a);
                ImplicitIntentsUtil.startActivityInApp(activity, intent);
                return;
            }
            this.K.onChangeCallLogPositionFromSmartDial(bVar.h, bVar.f1020a, bVar.i, jArr);
        } else if (i != 11) {
            Log.w(A, "onDetailButtonClick unhandle type: " + i);
        } else if (this.C) {
            this.L.onContactDetailSelected(ContactsContract.Contacts.getLookupUri(bVar.f1020a, bVar.i));
            getActivity().getActionBar().selectTab(getActivity().getActionBar().getTabAt(MainDialtactsActivity.TAB_INDEX_ALLCONTACTS / 2));
        } else {
            ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("android.intent.action.VIEW", ContactsContract.Contacts.getLookupUri(bVar.f1020a, bVar.i)));
        }
    }

    public final void a(String str) {
        if (this.k != null) {
            this.k.setQuery(str, false);
            if (str != null) {
                str.equals(BuildConfig.FLAVOR);
            }
        }
    }

    public final void a(String str, boolean z) {
        this.S = z;
        this.R = str;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x012f -> B:36:0x00fc). Please submit an issue!!! */
    @Override // com.android.contacts.ag
    public final void a(boolean z) {
        this.B = z;
        if (g()) {
            getFragmentManager().beginTransaction().commitAllowingStateLoss();
            ResultListFragment resultListFragment = this.j;
            Log.d("ResultListFragment", "onVisibility change");
            boolean z2 = resultListFragment.getResources().getConfiguration().orientation == 2;
            if (PhoneCapabilityTester.isUsingTwoPanes(resultListFragment.getActivity()) && z2) {
                if (resultListFragment.G == null || resultListFragment.G.e()) {
                    resultListFragment.p();
                } else {
                    resultListFragment.q();
                }
            }
            if (!(resultListFragment.getActivity() == null || resultListFragment.getActivity().getIntent() == null || resultListFragment.getActivity().getIntent().getData() != null)) {
                if (!z) {
                    Log.d("ResultListFragment", "updateOnExit");
                    resultListFragment.j();
                } else {
                    Log.d("ResultListFragment", "updateOnEntry");
                    resultListFragment.k();
                    resultListFragment.j = true;
                    if (resultListFragment.r == 4) {
                        try {
                            new ResultListFragment.f(true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                        } catch (Exception e) {
                            Log.i("ResultListFragment", e.toString());
                        }
                    }
                    if (PhoneCapabilityTester.IsUnbundled()) {
                        Intent intent = new Intent(resultListFragment.getActivity(), UpdateMissCallIconService.class);
                        intent.putExtra("count", 0);
                        resultListFragment.getActivity().startService(intent);
                    }
                    resultListFragment.i();
                }
            }
            this.Y = z;
            if (!z) {
                this.i.k();
                com.android.contacts.dialpad.b.e = false;
                this.h.b(com.android.contacts.dialpad.b.e);
                if (this.s != null) {
                    this.s.f2595a.dismiss();
                    return;
                }
                return;
            }
            a(false, this.Z);
        }
    }

    public final void a(String[] strArr) {
        Uri[] uriArr;
        if (strArr != null) {
            Uri[] uriArr2 = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr2[i] = Uri.parse(strArr[i]);
            }
            uriArr = uriArr2;
        } else {
            uriArr = null;
        }
        if (this.g == null) {
            return;
        }
        if (uriArr != null) {
            this.g.c = uriArr;
            Log.d(A, "get in from CallDetailActivity");
            return;
        }
        Log.d(A, "get in from DDS");
        this.g.c = null;
    }

    @Override // com.android.contacts.dialpad.CallDetailFragment.e
    public final void a_() {
        if (this.j != null) {
            ResultListFragment.r();
        }
    }

    @Override // com.android.contacts.a.AbstractC0019a
    public final void b() {
        if (!TextUtils.isEmpty(this.l)) {
            a(this.l, true);
            a(BuildConfig.FLAVOR);
        }
    }

    public final void b(String str, boolean z) {
        if (this.i != null) {
            TwelveKeyDialerFragment twelveKeyDialerFragment = this.i;
            if (twelveKeyDialerFragment.c != null && twelveKeyDialerFragment.f978b != null) {
                if (z) {
                    twelveKeyDialerFragment.c.setText(str);
                    twelveKeyDialerFragment.c.setVisibility(0);
                    twelveKeyDialerFragment.f978b.setVisibility(8);
                    return;
                }
                twelveKeyDialerFragment.c.setText(str);
                twelveKeyDialerFragment.c.setVisibility(8);
                twelveKeyDialerFragment.f978b.setVisibility(0);
            }
        }
    }

    @Override // com.android.contacts.dialpad.AdditionalButtonFragment.b
    public final void b(boolean z) {
        this.M.onHandwriteChange(z);
    }

    @Override // com.android.contacts.dialpad.CallDetailFragment.e
    public final void b_() {
        if (this.j != null) {
            ResultListFragment.s();
        }
    }

    public final View c() {
        if (this.aa == null) {
            this.aa = ((ViewStub) this.f1036a.findViewById(2131296305)).inflate();
            this.aa.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.e.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        String d2 = e.this.i.d();
                        String str = d2;
                        if (TextUtils.isEmpty(d2)) {
                            str = e.this.l;
                        }
                        if (str != null) {
                            com.android.contacts.a.a(str, e.this).show(e.this.getFragmentManager(), "dialog");
                        }
                    } catch (Exception e) {
                        Log.d(e.A, e.toString());
                    }
                }
            });
            if (com.android.contacts.skin.a.c()) {
                LinearLayout linearLayout = (LinearLayout) this.f1036a.findViewById(2131296311);
                ImageView imageView = (ImageView) this.f1036a.findViewById(2131296310);
                TextView textView = (TextView) this.f1036a.findViewById(2131296312);
                if (linearLayout != null) {
                    linearLayout.setBackgroundColor(com.android.contacts.skin.a.a(0));
                }
                if (imageView != null) {
                    com.android.contacts.skin.a.a(imageView, com.android.contacts.skin.a.a(3));
                }
                if (textView != null) {
                    textView.setTextColor(com.android.contacts.skin.a.a(3));
                }
            }
        }
        return this.aa;
    }

    public final View c(boolean z) {
        if (this.ac == null && z) {
            if (this.ab == null) {
                this.ab = ((ViewStub) this.f1036a.findViewById(2131297462)).inflate();
            }
            this.ac = (LinearLayout) this.f1036a.findViewById(2131297410);
            this.ad = (LinearLayout) this.f1036a.findViewById(2131297413);
            if (com.android.contacts.skin.a.c()) {
                ImageView imageView = (ImageView) this.f1036a.findViewById(2131297414);
                TextView textView = (TextView) this.f1036a.findViewById(2131297415);
                com.android.contacts.skin.a.a(imageView, com.android.contacts.skin.a.a(3));
                if (textView != null) {
                    textView.setTextColor(com.android.contacts.skin.a.a(3));
                }
                ImageView imageView2 = (ImageView) this.f1036a.findViewById(2131297411);
                TextView textView2 = (TextView) this.f1036a.findViewById(2131297412);
                com.android.contacts.skin.a.a(imageView2, com.android.contacts.skin.a.a(3));
                if (textView2 != null) {
                    textView2.setTextColor(com.android.contacts.skin.a.a(3));
                }
                final int a2 = com.android.contacts.skin.a.a(0);
                a(this.ad, 2131165256, a2);
                a(this.ac, 2131165258, a2);
                final int a3 = com.android.contacts.skin.a.a(a2, 1.02f, 0.65f);
                this.ad.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.dialpad.e.8
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            e.this.a(e.this.ad, 2131165256, a3);
                            return false;
                        } else if (motionEvent.getAction() == 3) {
                            e.this.a(e.this.ad, 2131165256, a2);
                            return false;
                        } else if (motionEvent.getAction() != 1) {
                            return false;
                        } else {
                            e.this.a(e.this.ad, 2131165256, a2);
                            return false;
                        }
                    }
                });
                this.ac.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.dialpad.e.9
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            e.this.a(e.this.ac, 2131165258, a3);
                            return false;
                        } else if (motionEvent.getAction() == 3) {
                            e.this.a(e.this.ac, 2131165258, a2);
                            return false;
                        } else if (motionEvent.getAction() != 1) {
                            return false;
                        } else {
                            e.this.a(e.this.ac, 2131165258, a2);
                            return false;
                        }
                    }
                });
            }
            this.o = (TextView) this.f1036a.findViewById(2131297409);
            this.ac.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.e.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        String d2 = e.this.i.d();
                        String str = d2;
                        if (TextUtils.isEmpty(d2)) {
                            str = e.this.l;
                        }
                        if (str != null) {
                            com.android.contacts.a.a(str, e.this).show(e.this.getFragmentManager(), "dialog");
                        }
                    } catch (Exception e) {
                        Log.d(e.A, e.toString());
                    }
                }
            });
            this.ad.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.e.11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        String d2 = e.this.i.d();
                        String str = d2;
                        if (TextUtils.isEmpty(d2)) {
                            str = e.this.l;
                        }
                        if (str != null) {
                            new h().execute(str);
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(1, e.this.getActivity(), "Action", "Dialpad", "query number", null);
                            SharedPreferences m = com.asus.a.c.m(e.this.getActivity());
                            if (m != null) {
                                m.edit().putInt("diapad_checkCount", m.getInt("diapad_checkCount", 0) + 1).commit();
                            }
                        }
                    } catch (Exception e) {
                        Log.d(e.A, e.toString());
                    }
                }
            });
        }
        return this.ab;
    }

    public final void d() {
        if (this.i != null) {
            this.i.b();
        }
    }

    public final void d(boolean z) {
        if (z) {
            this.f1037b.getLayoutParams().height = 588;
            this.f1037b.requestLayout();
            ViewGroup.LayoutParams layoutParams = this.d.getLayoutParams();
            layoutParams.height = 588;
            this.d.requestLayout();
            layoutParams.height = 588;
            this.e.requestLayout();
            this.F.setVisibility(0);
            this.G.setVisibility(0);
            this.I.setVisibility(0);
            this.H.setVisibility(0);
            return;
        }
        this.f1037b.getLayoutParams().height = 92;
        this.f1037b.requestLayout();
        ViewGroup.LayoutParams layoutParams2 = this.d.getLayoutParams();
        layoutParams2.height = 92;
        this.d.requestLayout();
        layoutParams2.height = 92;
        this.e.requestLayout();
        this.F.setVisibility(8);
        this.G.setVisibility(8);
        this.I.setVisibility(8);
        this.H.setVisibility(8);
    }

    public final void e(boolean z) {
        if (z) {
            this.P.setVisibility(0);
        } else {
            this.P.setVisibility(8);
        }
    }

    public final boolean e() {
        return this.n != null && this.n.getVisibility() == 0;
    }

    public final void f(boolean z) {
        if (this.ae == null) {
            return;
        }
        if (z) {
            this.ae.setVisibility(0);
        } else {
            this.ae.setVisibility(8);
        }
    }

    public final void g(boolean z) {
        if (this.O != null) {
            if (z) {
                this.O.setVisibility(0);
            } else {
                this.O.setVisibility(8);
            }
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.K = (b) activity;
        this.L = (c) activity;
        this.M = (AbstractC0034e) activity;
        this.Z = (g) activity;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.D = q.a(getActivity());
        this.p = PreferenceManager.getDefaultSharedPreferences(getActivity());
        if (bundle != null) {
            this.ag = bundle.getBoolean("pref_digits_filled_by_intent");
            this.l = bundle.getString("LastSmartSearch");
        }
        Activity activity = getActivity();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.asus.action.PHONE_ACCOUNTS_CHANGED");
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        try {
            activity.registerReceiver(this.an, intentFilter);
        } catch (Exception e) {
            Log.d(A, "Fail to register phone account changed, Exception : " + e.toString());
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (this.B && this.C && g()) {
            menuInflater.inflate(2131492885, menu);
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f1036a == null) {
            this.f1036a = layoutInflater.inflate(2131427508, viewGroup, false);
            this.C = PhoneCapabilityTester.isUsingTwoPanes(getActivity());
            Log.d(A, "mDualPane = " + this.C);
            this.ai = this.f1036a.findViewById(2131296747);
            this.f = (EditText) this.f1036a.findViewById(2131296746);
            this.f.setCursorVisible(false);
            this.O = this.f1036a.findViewById(2131296318);
            FragmentManager childFragmentManager = getChildFragmentManager();
            this.i = (TwelveKeyDialerFragment) childFragmentManager.findFragmentById(2131296692);
            this.j = (ResultListFragment) childFragmentManager.findFragmentById(2131297236);
            this.h = (AdditionalButtonFragment) childFragmentManager.findFragmentById(2131296320);
            this.ae = (FrameLayout) this.f1036a.findViewById(2131296321);
            this.m = null;
            this.n = (FrameLayout) this.f1036a.findViewById(2131296693);
            if (this.m != null) {
                this.m.setBlurredView(this.j.getView());
            }
            if (com.android.contacts.skin.a.b() && this.O != null) {
                this.O.setBackgroundResource(2131034340);
            }
            this.af = false;
        }
        setHasOptionsMenu(true);
        if (getActivity().getIntent().getAction() != null && getActivity().getIntent().getAction().equals(MainDialtactsActivity.ACTION_ENTER_CALL_LOG)) {
            g(true);
            this.h.k = true;
            boolean booleanExtra = getActivity().getIntent().getBooleanExtra("showVipOnly", false);
            if (this.j != null && booleanExtra) {
                ResultListFragment resultListFragment = this.j;
                resultListFragment.t();
                if (resultListFragment.t == null) {
                    resultListFragment.l();
                }
                resultListFragment.s = 0;
                resultListFragment.w = 0;
                if (resultListFragment.v != null) {
                    resultListFragment.v.setImageResource(2131165309);
                    if (com.android.contacts.skin.a.b()) {
                        com.android.contacts.skin.a.a(resultListFragment.v, resultListFragment.e);
                    } else if (com.android.contacts.skin.a.c()) {
                        com.android.contacts.skin.a.a(resultListFragment.v, resultListFragment.e);
                    }
                }
                resultListFragment.f(4);
                ((TextView) resultListFragment.t.findViewById(2131296450)).setText(2131756458);
            }
        }
        this.z = PhoneCapabilityTester.checkApkInstalled(getActivity(), "com.asus.soundrecorder");
        this.P = this.f1036a.findViewById(2131297318);
        if (getResources().getBoolean(2130968599) && this.p.getInt("keypad_mode", 0) == 0) {
            e(this.i != null && TextUtils.isEmpty(this.i.d()));
        }
        this.k = (SearchView) this.f1036a.findViewById(2131297319);
        this.k.setOnQueryTextListener(this.am);
        this.k.setQueryHint(getString(2131756149));
        this.k.setBackgroundResource(2131165509);
        this.k.setOnQueryTextFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.android.contacts.dialpad.e.14
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    if (e.this.i != null) {
                        e.this.i.b();
                    }
                    if (e.this.h != null) {
                        e.this.h.b();
                    }
                    if (e.this.j != null) {
                        e.this.T = e.this.j.l;
                    }
                    e.this.U = e.this.p.getInt("keypad_mode", 0);
                    if (TextUtils.isEmpty(e.this.l)) {
                        e.this.a(BuildConfig.FLAVOR);
                    } else {
                        e.this.a(e.this.l);
                    }
                    e.a(e.this, view.findFocus());
                    return;
                }
                if (e.this.j != null) {
                    e.this.j.l = e.this.T;
                }
                e.this.p.edit().putInt("keypad_mode", e.this.U).apply();
                e.this.U = -1;
            }
        });
        h();
        i();
        return this.f1036a;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        c(this.E);
        c(this.f1036a);
        this.f1036a = null;
        this.E = null;
        if (this.aa != null) {
            this.aa.setOnClickListener(null);
            this.aa = null;
        }
        if (this.ac != null) {
            this.ac.setOnClickListener(null);
            this.ac = null;
        }
        if (this.ad != null) {
            this.ad.setOnClickListener(null);
            this.ad = null;
        }
        c(this.ab);
        this.ab = null;
        if (getActivity() != null) {
            try {
                getActivity().unregisterReceiver(this.an);
            } catch (Exception e) {
                Log.d(A, "Fail to unRegister phone account changed, Exception : " + e.toString());
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.K = null;
        this.L = null;
        this.M = null;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        boolean z2 = false;
        switch (menuItem.getItemId()) {
            case 2131297038:
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(getActivity(), "Dialer", "Settings", "Block_list");
                ImplicitIntentsUtil.startActivityInApp(getActivity(), CompatUtils.isNCompatible() ? new Intent("com.asus.app.blocklist.LAUNCH") : new Intent("android.intent.action.ASUS_ENTER_BLOCK_CALL_SMS_LOG"));
                z = true;
                break;
            case 2131297039:
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(getActivity(), "Dialer", "Settings", "Call_recording");
                try {
                    new Intent("android.intent.action.MAIN");
                    Intent launchIntentForPackage = getActivity().getPackageManager().getLaunchIntentForPackage("com.asus.soundrecorder");
                    launchIntentForPackage.setComponent(new ComponentName("com.asus.soundrecorder", "com.asus.soundrecorder.AsusRecordingsManager"));
                    launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
                    launchIntentForPackage.putExtra("folder", "callrecordings");
                    ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), launchIntentForPackage, false);
                    z = true;
                    break;
                } catch (Exception e) {
                    Log.e(A, e.toString());
                    z = true;
                    break;
                }
            case 2131297056:
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(getActivity(), "Dialer", "Settings", "Hide_number_for_next_call");
                if (!com.android.contacts.dialpad.b.e) {
                    z2 = true;
                }
                com.android.contacts.dialpad.b.e = z2;
                this.h.b(com.android.contacts.dialpad.b.e);
                z = true;
                break;
            case 2131297078:
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(getActivity(), "Dialer", "Settings", "Speed_dial");
                Intent intent = new Intent("com.android.contacts.action.EDIT_SPEED_DIAL");
                intent.putExtra(SpeedDialEditor.EXTRA_FROM_SPEED_DIAL, true);
                ImplicitIntentsUtil.startActivityInApp(getActivity(), intent);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        if (this.B && this.C && g()) {
            MenuItem findItem = menu.findItem(2131297056);
            MenuItem findItem2 = menu.findItem(2131297038);
            MenuItem findItem3 = menu.findItem(2131297039);
            if (getActivity() == null || a(getActivity())) {
                findItem.setVisible(false);
            } else {
                findItem.setVisible(true);
                if (com.android.contacts.dialpad.b.e) {
                    findItem.setTitle(2131755013);
                } else {
                    findItem.setTitle(2131755685);
                }
            }
            if (com.asus.blocklist.a.a(getActivity())) {
                findItem2.setVisible(true);
            } else {
                findItem2.setVisible(false);
            }
            if (PhoneCapabilityTester.isATTSku()) {
                findItem3.setVisible(false);
            } else {
                findItem3.setVisible(this.z);
            }
            AsusRedPointNotificationDualPanelHelper instance = AsusRedPointNotificationDualPanelHelper.getInstance();
            instance.addMenuItem(0, menu.findItem(2131297078));
            instance.addMenuItem(0, menu.findItem(2131297056));
            instance.addMenuItem(0, menu.findItem(2131297038));
            instance.addMenuItem(0, menu.findItem(2131297039));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02f9  */
    @Override // android.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 967
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.e.onResume():void");
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("pref_digits_filled_by_intent", this.ag);
        bundle.putString("LastSmartSearch", this.l);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        if (getActivity() != null) {
            getActivity().getContentResolver().registerContentObserver(CallLog.CONTENT_URI, true, this.J);
        }
        Intent intent = getActivity().getIntent();
        if (!g()) {
            Log.i(A, "Screen configuration is requested before onCreateView() is called. Ignored");
        } else if (!a(intent)) {
            b(intent);
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        if (this.r != null) {
            this.r.dismiss();
            this.r = null;
        }
        super.onStop();
        if (getActivity() != null) {
            getActivity().getContentResolver().unregisterContentObserver(this.J);
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
    }
}
