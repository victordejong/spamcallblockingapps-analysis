package com.android.contacts.dialpad;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.KeyguardManager;
import android.app.ListFragment;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.UserManager;
import android.preference.PreferenceManager;
import android.provider.CallLog;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.telephony.ServiceState;
import android.text.Editable;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.CallDetailActivity;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.DialtactsActivity;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.activities.RequestStoragePermissionsActivity;
import com.android.contacts.ae;
import com.android.contacts.c.b;
import com.android.contacts.calllog.CallLogNotificationsService;
import com.android.contacts.calllog.e;
import com.android.contacts.calllog.m;
import com.android.contacts.calllog.n;
import com.android.contacts.calllog.o;
import com.android.contacts.calllog.p;
import com.android.contacts.calllog.s;
import com.android.contacts.calllog.t;
import com.android.contacts.dialpad.CallDetailFragment;
import com.android.contacts.dialpad.TwelveKeyDialerFragment;
import com.android.contacts.dialpad.d;
import com.android.contacts.dialpad.g;
import com.android.contacts.j.b;
import com.android.contacts.j.g;
import com.android.contacts.j.l;
import com.android.contacts.k;
import com.android.contacts.k.a;
import com.android.contacts.q;
import com.android.contacts.util.AsusAirViewUtils;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.android.contacts.util.AsusVipUtil;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ClipboardUtils;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.android.contacts.z;
import com.asus.a.c;
import com.asus.snapcall.SnapCallContentProvider;
import com.asus.updatesdk.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment.class */
public class ResultListFragment extends ListFragment implements SharedPreferences.OnSharedPreferenceChangeListener, PopupMenu.OnMenuItemClickListener, ae.b, ae.c, b.a, e.a, e.c, e.d, e.AbstractC0028e, e.f, m.b, TwelveKeyDialerFragment.b, d.e, d.f, d.g, g.a, g.b, g.c, g.d {
    private static String[] ay;
    int A;
    SharedPreferences E;
    public com.android.contacts.dialpad.e G;
    com.android.contacts.j.f H;
    private t L;
    private long M;
    private ListView P;
    private com.android.contacts.skin.a Q;
    private RelativeLayout R;
    private long V;
    private View X;
    private m Y;
    private c aB;
    private String aC;
    private View aa;
    private PopupMenu ab;
    private PopupWindow ac;
    private PopupWindow ad;
    private com.android.contacts.k.a af;
    private FrameLayout ag;
    private TextView ah;
    private TextView ai;
    private KeyguardManager aj;
    private com.android.contacts.dialpad.j an;
    private View as;
    private d.b av;
    private o aw;
    private String ax;

    /* renamed from: b  reason: collision with root package name */
    boolean f901b;
    boolean c;
    int e;
    ae f;
    String m;
    public SmartDialListView n;
    View o;
    com.android.contacts.dialpad.d p;
    public com.android.contacts.calllog.e q;
    View t;
    FrameLayout u;
    ImageView v;
    h y;

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f900a = Uri.parse("content://blocklist/blocklist");
    public static int k = 0;
    static Pattern F = Pattern.compile("((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)([^#]*)");
    private static int az = 0;
    private SimpleDateFormat K = new SimpleDateFormat("M/dd,E");
    private String N = null;
    private boolean O = false;
    String d = "No Search";
    boolean g = false;
    private int S = 0;
    boolean h = false;
    boolean i = false;
    boolean j = false;
    private boolean T = true;
    private boolean U = false;
    boolean l = true;
    private View W = null;
    private String Z = null;
    int r = 0;
    int s = 0;
    private boolean ae = false;
    private int ak = 0;
    int w = 0;
    private boolean al = true;
    boolean x = false;
    private boolean am = false;
    e z = null;
    private a ao = new a(new Handler());
    private d ap = new d(new Handler());
    private i aq = new i(new Handler());
    private int ar = -1;
    public boolean B = false;
    int C = 0;
    private boolean at = false;
    private int au = 0;
    boolean D = false;
    private final String aA = "SmartDialUnbundle";
    Handler I = new Handler() { // from class: com.android.contacts.dialpad.ResultListFragment.4
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean z;
            if (ResultListFragment.this.H != null) {
                com.android.contacts.j.f fVar = ResultListFragment.this.H;
                if (!fVar.h) {
                    if (!(fVar.l != null ? fVar.l.i : false)) {
                        synchronized (fVar.f) {
                            fVar.g.a();
                            com.android.contacts.j.b bVar = fVar.g;
                            for (com.android.contacts.j.a aVar : fVar.f) {
                                if (bVar.f1510a == null) {
                                    bVar.f1510a = new ArrayList<>();
                                    bVar.c = new ArrayList<>();
                                    bVar.d = 0;
                                }
                                if (bVar.f1511b != aVar.f1508a.c) {
                                    bVar.c.clear();
                                }
                                if (aVar.f1508a.g != 1) {
                                    l.a();
                                    if (l.a(aVar, l.a().d)) {
                                        int i2 = aVar.f1508a.h ? aVar.f1508a.f.get(0).f1548b : 0;
                                        if (bVar.d != i2) {
                                            b.a aVar2 = new b.a(aVar.f1508a.c, aVar.f1508a.f1545a);
                                            aVar2.a(aVar);
                                            bVar.f1510a.add(aVar2);
                                            bVar.c.add(Integer.valueOf(bVar.f1510a.size() - 1));
                                            bVar.d = i2;
                                        }
                                    }
                                } else if (aVar.f1509b == 0) {
                                    boolean z2 = false;
                                    if (bVar.c.size() > 0) {
                                        Iterator<Integer> it = bVar.c.iterator();
                                        while (true) {
                                            z2 = false;
                                            if (!it.hasNext()) {
                                                break;
                                            }
                                            if (bVar.f1510a.get(it.next().intValue()).c) {
                                                z2 = true;
                                                break;
                                            }
                                        }
                                    }
                                    if (!z2) {
                                        for (int i3 = 1; i3 < aVar.f1508a.f1546b.length; i3++) {
                                            b.a aVar3 = new b.a(aVar.f1508a.c, aVar.f1508a.f1545a);
                                            aVar3.c = true;
                                            aVar3.e = aVar;
                                            aVar3.g = i3;
                                            bVar.f1510a.add(aVar3);
                                            bVar.c.add(Integer.valueOf(bVar.f1510a.size() - 1));
                                        }
                                    }
                                } else {
                                    l.a();
                                    if (l.a(aVar, l.a().d)) {
                                        if (bVar.c.size() > 0) {
                                            Iterator<Integer> it2 = bVar.c.iterator();
                                            while (true) {
                                                if (!it2.hasNext()) {
                                                    z = false;
                                                    break;
                                                }
                                                b.a aVar4 = bVar.f1510a.get(it2.next().intValue());
                                                if (aVar4.d) {
                                                    if (PhoneNumberUtils.compare(aVar4.f.f1508a.f1546b[aVar4.f.f1509b], aVar.f1508a.f1546b[aVar.f1509b])) {
                                                        z = true;
                                                        break;
                                                    }
                                                } else {
                                                    aVar4.a(aVar);
                                                    z = true;
                                                    break;
                                                }
                                            }
                                            if (!z) {
                                                b.a aVar5 = new b.a(aVar.f1508a.c, aVar.f1508a.f1545a);
                                                aVar5.a(aVar);
                                                bVar.f1510a.add(aVar5);
                                                bVar.c.add(Integer.valueOf(bVar.f1510a.size() - 1));
                                            }
                                        } else {
                                            b.a aVar6 = new b.a(aVar.f1508a.c, aVar.f1508a.f1545a);
                                            aVar6.a(aVar);
                                            bVar.f1510a.add(aVar6);
                                            bVar.c.add(Integer.valueOf(bVar.f1510a.size() - 1));
                                        }
                                    }
                                }
                                bVar.f1511b = aVar.f1508a.c;
                            }
                            fVar.f.clear();
                        }
                        fVar.l.notifyDataSetChanged();
                    }
                }
                String string = message.getData().getString("QueryString");
                if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(ResultListFragment.this.aC)) {
                    com.android.contacts.asuscallerid.d.a().b();
                }
                if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(ResultListFragment.this.aC)) {
                    ResultListFragment.this.setListAdapter(ResultListFragment.this.H.l);
                }
                if (!(ResultListFragment.this.getActivity() == null || ResultListFragment.this.n == null || TextUtils.isEmpty(string))) {
                    ((TextView) ResultListFragment.this.n.getEmptyView()).setText(BuildConfig.FLAVOR);
                }
                Log.d("SmartDialUnbundle", "[Query] Query \"" + com.asus.a.a.c(string) + "\" complete. Get " + ResultListFragment.this.H.c() + " contacts. Spent " + (System.currentTimeMillis() - ResultListFragment.this.H.k.longValue()) + " ms");
                ResultListFragment.this.aC = string;
                int c2 = ResultListFragment.this.H.c();
                if (ResultListFragment.this.G != null) {
                    if (ResultListFragment.this.getActivity() == null || !com.asus.a.a.d(ResultListFragment.this.getActivity())) {
                        View c3 = ResultListFragment.this.G.c(false);
                        View c4 = ResultListFragment.this.G.c();
                        if (c3 != null) {
                            c3.setVisibility(8);
                        }
                        if (c4 != null) {
                            c4.setVisibility(8);
                            if (!(string == null || string.length() == 0)) {
                                boolean z3 = true;
                                int i4 = 0;
                                while (true) {
                                    if (i4 >= string.length()) {
                                        break;
                                    }
                                    char charAt = string.charAt(i4);
                                    if (!(charAt == ',' || PhoneNumberUtils.isDialable(charAt) || charAt == ';')) {
                                        z3 = false;
                                        break;
                                    }
                                    i4++;
                                }
                                TwelveKeyDialerFragment twelveKeyDialerFragment = ResultListFragment.this.D ? (TwelveKeyDialerFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296811) : (TwelveKeyDialerFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296692);
                                boolean z4 = twelveKeyDialerFragment != null ? twelveKeyDialerFragment.o : false;
                                if (z3 && !z4 && c2 == 0) {
                                    ResultListFragment.m();
                                    c4.setVisibility(0);
                                }
                            }
                        }
                    } else {
                        View c5 = ResultListFragment.this.G.c();
                        View c6 = ResultListFragment.this.G.c(true);
                        TextView textView = ResultListFragment.this.G.o;
                        if (c5 != null) {
                            c5.setVisibility(8);
                        }
                        if (c6 != null) {
                            c6.setVisibility(8);
                            if (!TextUtils.isEmpty(string)) {
                                boolean z5 = true;
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= string.length()) {
                                        break;
                                    }
                                    char charAt2 = string.charAt(i5);
                                    if (!(charAt2 == ',' || PhoneNumberUtils.isDialable(charAt2) || charAt2 == ';')) {
                                        z5 = false;
                                        break;
                                    }
                                    i5++;
                                }
                                TwelveKeyDialerFragment twelveKeyDialerFragment2 = ResultListFragment.this.D ? (TwelveKeyDialerFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296811) : (TwelveKeyDialerFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296692);
                                boolean z6 = twelveKeyDialerFragment2 != null ? twelveKeyDialerFragment2.o : false;
                                if (z5 && !z6 && c2 == 0) {
                                    ResultListFragment.m();
                                    c6.setVisibility(0);
                                }
                            }
                        }
                        if (textView != null) {
                            textView.setText(BuildConfig.FLAVOR);
                            textView.setVisibility(4);
                        }
                    }
                    if (ResultListFragment.this.G.m != null && ResultListFragment.this.G.m.getVisibility() == 0) {
                        ResultListFragment.this.G.m.invalidate();
                    }
                }
            }
        }
    };
    Handler J = new Handler() { // from class: com.android.contacts.dialpad.ResultListFragment.5
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (ResultListFragment.this.getActivity() != null && com.android.contacts.j.h.d() != 1) {
                Log.d("SmartDialUnbundle", "ResultListFragment mLoadSmartDialDataHandler priority: " + com.android.contacts.j.j.a(message.what) + ", process ...");
                try {
                    switch (message.what) {
                        case 1:
                            com.android.contacts.j.j.a().a(ResultListFragment.this.getActivity(), 0);
                            if (ResultListFragment.this.H != null && (ResultListFragment.this.H.d() == 0 || TextUtils.isEmpty(ResultListFragment.this.m) || message.arg1 == 1)) {
                                ResultListFragment.this.H.a();
                                break;
                            }
                            break;
                        case 2:
                            com.android.contacts.j.j.a().a(ResultListFragment.this.getActivity(), 1);
                            if (ResultListFragment.this.H != null && (ResultListFragment.this.H.d() == 0 || TextUtils.isEmpty(ResultListFragment.this.m) || message.arg1 == 1)) {
                                ResultListFragment.this.H.a();
                                break;
                            }
                            break;
                        case 3:
                            com.android.contacts.j.j.a().a(ResultListFragment.this.getActivity(), 2);
                            if (ResultListFragment.this.H != null && (ResultListFragment.this.H.d() == 0 || TextUtils.isEmpty(ResultListFragment.this.m) || message.arg1 == 1)) {
                                ResultListFragment.this.H.a();
                                break;
                            }
                            break;
                    }
                } catch (NullPointerException e2) {
                    Log.e("ResultListFragment", e2.getMessage());
                }
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$a.class */
    private final class a extends ContentObserver {
        public a(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            Log.d("ResultListFragment", "[CallLogContentObserver] onChange, set mRefreshDataRequired true");
            ResultListFragment.this.al = true;
            if (!ResultListFragment.this.D) {
                if (com.android.contacts.j.h.b() && com.android.contacts.j.h.c() == 0) {
                    Log.d("SmartDialUnbundle", "Calls DB change");
                    ResultListFragment.this.a(1, false);
                }
                try {
                    new b(ResultListFragment.this, (byte) 0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, uri);
                } catch (Exception e) {
                    Log.e("ResultListFragment", "Error occurred in CheckIsBlockListNumberTask: " + e.getMessage());
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$b.class */
    private final class b extends AsyncTask<Uri, Void, Boolean> {
        private b() {
        }

        /* synthetic */ b(ResultListFragment resultListFragment, byte b2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Boolean doInBackground(Uri... uriArr) {
            Throwable th;
            Cursor cursor;
            boolean z;
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                Log.d("ResultListFragment", "[CheckIsBlockListNumberTask] this is non-asus device, return false");
                z = false;
            } else {
                Uri uri = uriArr[0];
                try {
                    if (ResultListFragment.this.getActivity() == null) {
                        z = false;
                    } else {
                        cursor = ResultListFragment.this.getActivity().getContentResolver().query(uri, null, null, null, "_id DESC");
                        boolean z2 = false;
                        if (cursor != null) {
                            z2 = false;
                            try {
                                if (cursor.moveToFirst()) {
                                    z2 = cursor.getInt(cursor.getColumnIndex(ContactDetailCallogActivity.EXTRA_CONTACT_ID)) == 1;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        z = Boolean.valueOf(z2);
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            }
            return z;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            AdditionalButtonFragment additionalButtonFragment;
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (ResultListFragment.this.getFragmentManager() != null && !bool2.booleanValue() && (additionalButtonFragment = (AdditionalButtonFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296320)) != null) {
                additionalButtonFragment.i();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$c.class */
    public final class c extends com.android.contacts.dialpad.a {

        /* renamed from: b  reason: collision with root package name */
        long f960b = 0;

        public c(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // com.android.contacts.dialpad.a
        protected final void a(int i, Cursor cursor) {
            if (ResultListFragment.this.getActivity() != null) {
                try {
                    if (ResultListFragment.this.m == null || ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) {
                        if (ResultListFragment.this.G != null) {
                            ResultListFragment.this.G.b(" ", true);
                        }
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                    Log.d("SmartDialUnbundle", "[Query] ContactQueryHandler search: \"" + com.asus.a.a.c(ResultListFragment.this.m) + "\", spent time= " + (System.currentTimeMillis() - this.f960b));
                    if (cursor != null && cursor.getCount() != 0) {
                        cursor.moveToFirst();
                        String string = cursor.getString(cursor.getColumnIndex("display_name"));
                        Log.d("SmartDialUnbundle", "[Query] ContactQueryHandler search matched.");
                        if (ResultListFragment.this.G != null) {
                            ResultListFragment.this.G.b(string, true);
                        }
                    } else if (ResultListFragment.this.G != null) {
                        ResultListFragment.this.G.b(" ", false);
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$d.class */
    private final class d extends ContentObserver {
        public d(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            if (ResultListFragment.this.getActivity() != null && PhoneCapabilityTester.isDialtactInForeground(ResultListFragment.this.getActivity())) {
                if (PhoneCapabilityTester.isDebug()) {
                    Log.d("ResultListFragment", "[ContactsContentObserver] onChange, set mRefreshDataRequired true");
                }
                ResultListFragment.this.al = true;
                if (!ResultListFragment.this.D) {
                    if ((ResultListFragment.this.m == null || ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) && ResultListFragment.this.A == 10) {
                        ResultListFragment.this.g();
                    }
                    if (com.android.contacts.j.h.b() && com.android.contacts.j.h.c() == 0) {
                        Log.d("SmartDialUnbundle", "Contacts DB change");
                        ResultListFragment.this.a(2, true);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$e.class */
    public interface e {
        void a(d.b bVar, int i);

        void a(d.b bVar, int i, long[] jArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$f.class */
    public final class f extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        String f962a = BuildConfig.FLAVOR;

        /* renamed from: b  reason: collision with root package name */
        boolean f963b;

        public f(boolean z) {
            this.f963b = z;
        }

        private Boolean a() {
            Cursor cursor;
            Throwable th;
            Boolean bool;
            if (ResultListFragment.this.getActivity() == null) {
                bool = false;
            } else {
                try {
                    cursor = ResultListFragment.this.getActivity().getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "mimetype='vnd.android.cursor.item/group_membership' AND data1 IN ( SELECT _id FROM groups WHERE title = 'VIP')", null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                do {
                                    this.f962a += cursor.getLong(0) + ", ";
                                } while (cursor.moveToNext());
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    bool = true;
                    if (cursor != null) {
                        cursor.close();
                        bool = true;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            }
            return bool;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            if (ResultListFragment.this.Y != null) {
                if (!TextUtils.isEmpty(this.f962a) && this.f962a.length() > 0) {
                    this.f962a = this.f962a.substring(0, this.f962a.length() - 2);
                }
                ResultListFragment.this.N = this.f962a;
                ResultListFragment.this.Y.f733a = ResultListFragment.this.N;
                if (this.f963b) {
                    ResultListFragment.this.i();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$g.class */
    public interface g {
        void h();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$h.class */
    public final class h extends com.android.contacts.dialpad.a {
        public h(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // com.android.contacts.dialpad.a
        protected final void a(int i, Cursor cursor) {
            Cursor swapCursor;
            boolean z;
            boolean z2;
            boolean z3;
            if (ResultListFragment.this.getActivity() != null) {
                if (i == 0) {
                    Log.d("ResultListFragment", "onQueryComplete()");
                    Log.d("ResultListFragment", "Query finished. Query time = " + (System.currentTimeMillis() - ResultListFragment.this.V));
                    if (ResultListFragment.this.p != null) {
                        ResultListFragment.this.p.a(ResultListFragment.this.l);
                        AdditionalButtonFragment additionalButtonFragment = ResultListFragment.this.D ? (AdditionalButtonFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296802) : (AdditionalButtonFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296320);
                        if (additionalButtonFragment != null && additionalButtonFragment.l()) {
                            ResultListFragment.this.l = true;
                        }
                        cursor = ResultListFragment.this.p.swapCursor(cursor);
                        com.android.contacts.asuscallerid.d.a().b();
                        if (cursor != null) {
                            ResultListFragment.this.C = cursor.getCount();
                            if (ResultListFragment.this.C == 0) {
                                ResultListFragment.this.c(false);
                                ResultListFragment.m();
                                z = false;
                            } else {
                                ResultListFragment.m();
                                if (ResultListFragment.this.m == null) {
                                    ResultListFragment.this.c(false);
                                    ResultListFragment.n();
                                    z = false;
                                } else {
                                    ResultListFragment.this.c(false);
                                    ResultListFragment.n();
                                    z = false;
                                }
                            }
                        } else {
                            ResultListFragment.this.C = 0;
                            ResultListFragment.this.c(false);
                            z = false;
                            ResultListFragment.m();
                        }
                    } else {
                        z = true;
                    }
                    if (!(ResultListFragment.this.n == null || ResultListFragment.this.G == null)) {
                        if (ResultListFragment.this.getActivity() == null || !com.asus.a.a.d(ResultListFragment.this.getActivity()) || com.asus.a.c.d()) {
                            View c = ResultListFragment.this.G.c(false);
                            if (c != null) {
                                c.setVisibility(8);
                            }
                            View c2 = ResultListFragment.this.G.c();
                            if (c2 != null) {
                                c2.setVisibility(8);
                                String str = ResultListFragment.this.m;
                                if (!(str == null || str.length() == 0)) {
                                    int i2 = 0;
                                    while (true) {
                                        if (i2 >= str.length()) {
                                            z2 = true;
                                            break;
                                        }
                                        char charAt = str.charAt(i2);
                                        if (charAt != ',' && !PhoneNumberUtils.isDialable(charAt) && charAt != ';') {
                                            z2 = false;
                                            break;
                                        }
                                        i2++;
                                    }
                                    if (z2 && ResultListFragment.this.C == 0) {
                                        ResultListFragment.m();
                                        c2.setVisibility(0);
                                    }
                                }
                            }
                        } else {
                            View c3 = ResultListFragment.this.G.c();
                            if (c3 != null) {
                                c3.setVisibility(8);
                            }
                            View c4 = ResultListFragment.this.G.c(true);
                            TextView textView = ResultListFragment.this.G.o;
                            if (textView != null) {
                                textView.setText(BuildConfig.FLAVOR);
                                textView.setVisibility(4);
                            }
                            if (c4 != null) {
                                c4.setVisibility(8);
                                String str2 = ResultListFragment.this.m;
                                if (!(str2 == null || str2.length() == 0)) {
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= str2.length()) {
                                            z3 = true;
                                            break;
                                        }
                                        char charAt2 = str2.charAt(i3);
                                        if (charAt2 != ',' && !PhoneNumberUtils.isDialable(charAt2) && charAt2 != ';') {
                                            z3 = false;
                                            break;
                                        }
                                        i3++;
                                    }
                                    TwelveKeyDialerFragment twelveKeyDialerFragment = ResultListFragment.this.D ? (TwelveKeyDialerFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296811) : (TwelveKeyDialerFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296692);
                                    boolean z4 = twelveKeyDialerFragment != null ? twelveKeyDialerFragment.o : false;
                                    if (z3 && ResultListFragment.this.C == 0 && !z4) {
                                        ResultListFragment.m();
                                        c4.setVisibility(0);
                                    }
                                }
                            }
                        }
                    }
                    if (z && cursor != null) {
                        cursor.close();
                    }
                    if (!(ResultListFragment.this.G == null || ResultListFragment.this.G.m == null || ResultListFragment.this.G.m.getVisibility() != 0)) {
                        ResultListFragment.this.G.m.invalidate();
                    }
                } else if (i == 1) {
                    try {
                        if (!(ResultListFragment.this.p == null || (swapCursor = ResultListFragment.this.p.swapCursor(null)) == null)) {
                            swapCursor.close();
                        }
                        if (ResultListFragment.this.m == null || ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) {
                            if (ResultListFragment.this.G != null) {
                                ResultListFragment.this.G.b(" ", true);
                            }
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                        if (cursor != null && cursor.getCount() != 0) {
                            cursor.moveToFirst();
                            String string = cursor.getString(cursor.getColumnIndex("display_name"));
                            if (ResultListFragment.this.G != null) {
                                ResultListFragment.this.G.b(string, true);
                            }
                        } else if (ResultListFragment.this.G != null) {
                            ResultListFragment.this.G.b(" ", false);
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
                if (!(ResultListFragment.this.getActivity() == null || ResultListFragment.this.n == null)) {
                    ((TextView) ResultListFragment.this.n.getEmptyView()).setText(BuildConfig.FLAVOR);
                }
                ResultListFragment.this.setListAdapter(ResultListFragment.this.p);
            } else if (cursor != null) {
                cursor.close();
            }
        }

        public final void b() {
            String str;
            if (!ResultListFragment.this.D) {
                if (com.android.contacts.j.h.b()) {
                    ResultListFragment.this.w();
                    return;
                }
                Uri uri = Contacts.CONTENT_URI;
                a(0);
                a(1);
                if (ResultListFragment.this.E.getInt("keypad_mode", 0) != 1 || PhoneCapabilityTester.isUsingTwoPanes(ResultListFragment.this.getActivity())) {
                    com.android.contacts.dialpad.j jVar = ResultListFragment.this.an;
                    String str2 = ResultListFragment.this.m;
                    ResultListFragment.x();
                    jVar.a(str2);
                    Uri withAppendedPath = Uri.withAppendedPath(uri, "people/smart-dial");
                    if (ResultListFragment.this.m == null || ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) {
                        ResultListFragment.this.x = true;
                        ResultListFragment.this.i();
                        ResultListFragment.this.V = System.currentTimeMillis();
                        if (ResultListFragment.this.p != null) {
                            ResultListFragment.this.p.changeCursor(null);
                            return;
                        }
                        return;
                    }
                    if (!ResultListFragment.this.l || ResultListFragment.this.m == null || ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) {
                        str = "( name LIKE " + ("'%" + ResultListFragment.this.m + "%'") + " OR REPLACE(number, \" \", \"\") LIKE " + (ResultListFragment.this.m.length() >= 3 ? "'%" + ResultListFragment.this.m + "%'" : "'" + ResultListFragment.this.m + "%'") + " ) ";
                    } else {
                        com.android.contacts.dialpad.j unused = ResultListFragment.this.an;
                        String str3 = ResultListFragment.this.m;
                        withAppendedPath = withAppendedPath;
                        if (str3 != null) {
                            withAppendedPath = Uri.withAppendedPath(withAppendedPath, Uri.encode(str3.toString()));
                        }
                        str = null;
                    }
                    Log.d("ResultListFragment", "query: Uri = " + PhoneCapabilityTester.privacyLogCheck(withAppendedPath.toString()));
                    Log.d("ResultListFragment", "query: selection = " + PhoneCapabilityTester.privacyLogCheck(str));
                    ResultListFragment.this.V = System.currentTimeMillis();
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        a(0, withAppendedPath, com.android.contacts.dialpad.d.m, str, "name ASC");
                    }
                } else if (ResultListFragment.this.m == null || ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) {
                    ResultListFragment.this.b(true);
                    ResultListFragment.this.x = true;
                    ResultListFragment.this.i();
                    ResultListFragment.this.V = System.currentTimeMillis();
                    if (ResultListFragment.this.G != null) {
                        ResultListFragment.this.G.b(" ", true);
                    }
                    if (ResultListFragment.this.p != null) {
                        ResultListFragment.this.p.changeCursor(null);
                    }
                } else {
                    a(1, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(ResultListFragment.this.m)), null, null, null);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$i.class */
    private final class i extends ContentObserver {
        public i(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            AdditionalButtonFragment additionalButtonFragment;
            Log.d("ResultListFragment", "[SnapCallContentObserver] onChange, set mRefreshDataRequired true");
            ResultListFragment.this.al = true;
            if (!ResultListFragment.this.D) {
                if (com.android.contacts.j.h.b() && com.android.contacts.j.h.c() == 0) {
                    Log.d("SmartDialUnbundle", "Calls DB change");
                    ResultListFragment.this.a(1, true);
                }
                if (ResultListFragment.this.getFragmentManager() != null && (additionalButtonFragment = (AdditionalButtonFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296320)) != null) {
                    additionalButtonFragment.i();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/ResultListFragment$j.class */
    private final class j extends AsyncTask<String, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        ContentResolver f966a;

        /* renamed from: b  reason: collision with root package name */
        String f967b;
        String c;
        int d;

        j(ResultListFragment resultListFragment, ContentResolver contentResolver, String str) {
            this(contentResolver, str, null, 0);
        }

        j(ContentResolver contentResolver, String str, String str2, int i) {
            this.f966a = contentResolver;
            this.f967b = str;
            this.c = str2;
            this.d = i;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(String[] strArr) {
            boolean z;
            int delete;
            String[] strArr2 = strArr;
            if (this.f966a != null) {
                Uri uri = !PhoneCapabilityTester.IsAsusDevice() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL;
                Log.d("ResultListFragment", "deleteCallLogTask mNeedArgument = " + this.d + ", selection: " + strArr2[0]);
                switch (this.d) {
                    case 0:
                        delete = this.f966a.delete(uri, strArr2[0], null);
                        break;
                    case 1:
                        delete = this.f966a.delete(uri, strArr2[0], new String[]{this.f967b});
                        break;
                    case 2:
                        delete = this.f966a.delete(uri, strArr2[0], new String[]{this.f967b, this.c});
                        break;
                    default:
                        Log.e("ResultListFragment", "deleteCallLogTask error argument = " + this.d);
                        delete = -1;
                        break;
                }
                z = delete > 0;
            } else {
                z = false;
            }
            Log.d("ResultListFragment", "deleteCallLogTask isSucess = " + z);
            return Boolean.valueOf(z);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue() && ResultListFragment.this.y != null) {
                Log.d("ResultListFragment", "update callLog page");
                if (!com.android.contacts.j.h.b() || com.android.contacts.j.h.c() != 0) {
                    ResultListFragment.this.y.b();
                } else if (TextUtils.isEmpty(ResultListFragment.this.m)) {
                    ResultListFragment.this.i();
                } else {
                    Log.d("ResultListFragment", "Reload...");
                    ResultListFragment.this.a(2, false);
                }
            }
        }
    }

    private void A() {
        if (this.aj != null && !this.aj.inKeyguardRestrictedInputMode()) {
            this.Y.b();
            this.Y.c();
            TelecomUtil.cancelMissedCallsNotification(getActivity());
            if (getActivity() != null) {
                Intent intent = new Intent(getActivity(), CallLogNotificationsService.class);
                intent.setAction("com.android.contacts.calllog.UPDATE_NOTIFICATIONS");
                getActivity().startService(intent);
            }
        }
    }

    private boolean B() {
        boolean z;
        try {
            Cursor cursor = this.q.f411a;
            z = false;
            if (cursor != null) {
                z = false;
                if (cursor.getCount() > 0) {
                    z = true;
                }
            }
        } catch (Exception e2) {
            Log.d("ResultListFragment", "Fail to check has callLog, Exception : " + e2.toString());
            z = false;
        }
        return z;
    }

    private t C() {
        if (this.L == null) {
            this.L = new t(getActivity());
        }
        return this.L;
    }

    public static String a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            StringBuilder sb = new StringBuilder();
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if ((i2 == 0 && charAt == '+') || PhoneNumberUtils.isISODigit(charAt) || charAt == '#' || charAt == '*' || charAt == ',') {
                    sb.append(charAt);
                }
            }
            str2 = sb.toString();
        }
        return str2;
    }

    private void a(Context context, final String str) {
        com.asus.a.c.a(context, new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                switch (i2) {
                    case 0:
                        Intent intent = new Intent();
                        intent.setAction("android.intent.action.ASUS_END_CALL_TAG");
                        intent.putExtra("doNotTag", true);
                        intent.putExtra("number", str);
                        intent.putExtra("markFrom", 2);
                        ResultListFragment.this.startActivityForResult(intent, 149);
                        return;
                    case 1:
                        Intent intent2 = new Intent();
                        intent2.setAction("android.intent.action.ASUS_END_CALL_TAG");
                        intent2.putExtra("doNotTag", false);
                        intent2.putExtra("number", str);
                        intent2.putExtra("isShowBlockCheck", true);
                        intent2.putExtra("markFrom", 2);
                        ResultListFragment.this.startActivityForResult(intent2, 149);
                        return;
                    default:
                        return;
                }
            }
        });
    }

    private void a(o oVar, long j2) {
        Bitmap createBitmap;
        ImageView imageView = new ImageView(getActivity());
        imageView.layout(0, 0, 300, 300);
        k.a(getActivity()).a(imageView, oVar.h, false);
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof BitmapDrawable) {
            createBitmap = ((BitmapDrawable) drawable).getBitmap();
        } else {
            createBitmap = Bitmap.createBitmap(imageView.getWidth(), imageView.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Log.d("DoItLaterA", "contactInfo.photoId: " + oVar.h);
        Bundle bundle = new Bundle();
        bundle.putByteArray("extra_later_image", byteArray);
        bundle.putBoolean("extra_boolean_issaveimage", false);
        bundle.putString("extra_later_subtitle", oVar.e);
        bundle.putInt("extra_later_task_type", 1);
        bundle.putLong("extra_later_time", j2);
        if (!(oVar.l == 0 || oVar.f737a == null)) {
            bundle.putString("extra_later_title", oVar.f738b);
            bundle.putString("extra_later_data1", oVar.f737a.toString());
            Log.d("DoItLaterA", "contactInfo.lookupUri.toString(): " + oVar.f737a.toString());
        }
        boolean h2 = h(oVar.l);
        Log.d("DoItLaterA", "InVipGroup:" + h2);
        if (h2) {
            bundle.putInt("extra_later_importance", 2);
        }
        Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + oVar.e));
        com.asus.laterhandle.b.a(getActivity(), com.asus.laterhandle.b.a(getActivity()), bundle, intent);
    }

    /* JADX WARN: Finally extract failed */
    private long[] a(String str, int i2) {
        long[] jArr;
        String str2 = str;
        if (str.indexOf("/") != -1) {
            str2 = PhoneNumberUtils.stripSeparators(str);
        }
        Cursor query = getActivity().getContentResolver().query(Uri.withAppendedPath(CallLog.Calls.CONTENT_FILTER_URI, str2), new String[]{"_id"}, "block = " + i2 + " OR block is NULL ", null, "date DESC");
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    long[] jArr2 = new long[query.getCount()];
                    int columnIndex = query.getColumnIndex("_id");
                    jArr2[0] = query.getInt(columnIndex);
                    int i3 = 1;
                    while (query.moveToNext()) {
                        jArr2[i3] = query.getLong(columnIndex);
                        i3++;
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

    private void b(View view) {
        if (view != null) {
            if (view.getBackground() != null) {
                view.getBackground().setCallback(null);
            }
            if ((view instanceof ImageButton) && ((ImageButton) view).getDrawable() != null) {
                ((ImageButton) view).getDrawable().setCallback(null);
            }
            if (view instanceof ViewGroup) {
                for (int i2 = 0; i2 < ((ViewGroup) view).getChildCount(); i2++) {
                    b(((ViewGroup) view).getChildAt(i2));
                }
            }
        }
    }

    private void c(o oVar) {
        if (C().b(oVar.e)) {
            if (oVar.e.contains(",")) {
                oVar.e = oVar.e.substring(0, oVar.e.indexOf(44));
            } else if (oVar.e.contains(";")) {
                oVar.e = oVar.e.substring(0, oVar.e.indexOf(59));
            }
            ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", oVar.e, null)));
        }
    }

    private void c(String str) {
        String str2;
        if (C().b(str)) {
            String str3 = new String(str);
            if (str3.contains(",")) {
                str2 = str3.substring(0, str3.indexOf(44));
            } else {
                str2 = str3;
                if (str3.contains(";")) {
                    str2 = str3.substring(0, str3.indexOf(59));
                }
            }
            ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", str2, null)));
        }
    }

    private static boolean c(Context context) {
        Intent intent;
        if (com.android.contacts.simcardmanage.b.a(context)) {
            intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.setClassName("com.android.phone", "com.android.phone.TabPreferenceActivity");
            intent.putExtra("preferenceKey", "button_call_duration_key");
        } else {
            intent = new Intent();
            intent.setClassName("com.android.phone", "com.android.phone.CallDuration");
        }
        return context.getPackageManager().resolveActivity(intent, 65536) != null;
    }

    private void e(boolean z) {
        FragmentManager fragmentManager;
        if (getActivity() != null && (fragmentManager = getFragmentManager()) != null) {
            AdditionalButtonFragment additionalButtonFragment = this.D ? (AdditionalButtonFragment) fragmentManager.findFragmentById(2131296802) : (AdditionalButtonFragment) fragmentManager.findFragmentById(2131296320);
            TwelveKeyDialerFragment twelveKeyDialerFragment = this.D ? (TwelveKeyDialerFragment) fragmentManager.findFragmentById(2131296811) : (TwelveKeyDialerFragment) fragmentManager.findFragmentById(2131296692);
            if (additionalButtonFragment != null && twelveKeyDialerFragment != null) {
                additionalButtonFragment.a(!TextUtils.isEmpty(twelveKeyDialerFragment.c()), z && !additionalButtonFragment.k);
            }
        }
    }

    private void h(d.b bVar) {
        Bitmap createBitmap;
        ImageView imageView = new ImageView(getActivity());
        imageView.layout(0, 0, 300, 300);
        k.a(getActivity()).a(imageView, bVar.d, true);
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof BitmapDrawable) {
            createBitmap = ((BitmapDrawable) drawable).getBitmap();
        } else {
            createBitmap = Bitmap.createBitmap(imageView.getWidth(), imageView.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Log.d("DoItLaterA", "contactInfo.photoId: " + bVar.d);
        Bundle bundle = new Bundle();
        bundle.putByteArray("extra_later_image", byteArray);
        bundle.putBoolean("extra_boolean_issaveimage", false);
        bundle.putString("extra_later_subtitle", bVar.h);
        bundle.putInt("extra_later_task_type", 1);
        bundle.putLong("extra_later_time", bVar.e);
        if (!(bVar.f1020a == 0 || bVar.i == null)) {
            bundle.putString("extra_later_title", bVar.g);
            bundle.putString("extra_later_data1", bVar.i.toString());
            Log.d("DoItLaterA", "contactInfo.lookupUri.toString(): " + bVar.i.toString());
        }
        boolean h2 = h(bVar.f1020a);
        Log.d("DoItLaterA", "InVipGroup:" + h2);
        if (h2) {
            bundle.putInt("extra_later_importance", 2);
        }
        Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + bVar.h));
        com.asus.laterhandle.b.a(getActivity(), com.asus.laterhandle.b.a(getActivity()), bundle, intent);
    }

    private boolean h(int i2) {
        Cursor cursor;
        Throwable th;
        boolean z;
        ContentResolver contentResolver = getActivity().getContentResolver();
        try {
            cursor = contentResolver.query(Uri.parse("content://com.android.contacts/contacts"), new String[]{"_id", "name_raw_contact_id", "starred"}, "_id ='" + i2 + "'", null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        if (cursor.getInt(2) == 1) {
                            if (cursor != null) {
                                cursor.close();
                            }
                            z = true;
                        } else {
                            boolean isInVipGroup = AsusVipUtil.isInVipGroup(i2, contentResolver);
                            z = isInVipGroup;
                            if (cursor != null) {
                                cursor.close();
                                z = isInVipGroup;
                            }
                        }
                        return z;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            z = false;
            return z;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private void i(int i2) {
        final String str;
        Cursor cursor = (Cursor) this.q.getItem(i2);
        if (cursor == null || cursor.getCount() <= 0) {
            str = null;
        } else {
            int b2 = this.q.a(i2) ? this.q.b(i2) : 1;
            if (b2 > 1) {
                long[] jArr = new long[b2];
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < b2; i3++) {
                    jArr[i3] = cursor.getLong(0);
                    cursor.moveToNext();
                    if (sb.length() != 0) {
                        sb.append(",");
                    }
                    sb.append(jArr[i3]);
                }
                str = "_id IN (" + ((Object) sb) + ")";
            } else {
                str = "_id IN (" + cursor.getLong(0) + ")";
            }
        }
        Cursor cursor2 = (Cursor) this.q.getItem(i2);
        final String str2 = null;
        if (cursor2 != null) {
            str2 = null;
            if (cursor2.getCount() > 0) {
                str2 = cursor2.getString(1);
            }
        }
        new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755790)).setMessage(getActivity().getResources().getString(2131755524)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                new j(ResultListFragment.this, ResultListFragment.this.getActivity().getContentResolver(), str2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
                CallDetailFragment callDetailFragment = (CallDetailFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296685);
                if (callDetailFragment != null) {
                    callDetailFragment.a();
                    ResultListFragment.s();
                }
                if (ResultListFragment.this.D) {
                    ResultListFragment.this.i();
                }
            }
        }).setNegativeButton(getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                Log.d("AlertDialog", "Negative");
            }
        }).show();
    }

    private void i(final d.b bVar) {
        long j2 = -1;
        if (bVar != null) {
            j2 = bVar.f1021b;
        }
        final String str = bVar != null ? "_id IN (" + j2 + ")" : null;
        new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755790)).setMessage(getActivity().getResources().getString(2131755524)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                new j(ResultListFragment.this, ResultListFragment.this.getActivity().getContentResolver(), bVar.h).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
            }
        }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
    }

    public static void m() {
    }

    public static void n() {
    }

    public static void r() {
        k = 0;
    }

    public static void s() {
        int i2 = k - 1;
        k = i2;
        if (i2 < 0) {
            k = 0;
        }
    }

    static /* synthetic */ boolean x() {
        return true;
    }

    private void y() {
        if (this.q != null) {
            this.q.z = true;
        }
        if (this.Y != null) {
            this.Y.a(this.r, this.s);
        }
    }

    private void z() {
        if (this.Y != null) {
            this.Y.a();
        }
    }

    @Override // com.android.contacts.ae.b, com.android.contacts.dialpad.d.e
    public final String a() {
        return this.d;
    }

    @Override // com.android.contacts.ae.b
    public final void a(int i2) {
        i(i2);
    }

    @Override // com.android.contacts.ae.b
    public final void a(int i2, View view, o oVar) {
        String str = oVar.e;
        long j2 = oVar.q;
        int i3 = oVar.c;
        a(i2, view, oVar, str, j2);
    }

    @Override // com.android.contacts.ae.b
    public final void a(int i2, View view, d.b bVar) {
        if (view instanceof AbsListView) {
            ((AbsListView) view).setItemChecked(i2, true);
            c(i2);
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(5, getActivity(), "Dialer", this.d, this.d + ": press item", null);
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
        f(bVar);
    }

    @Override // com.android.contacts.dialpad.g.a
    public final void a(int i2, String str) {
        boolean z = true;
        switch (i2) {
            case 0:
                Log.v("ResultListFragment", "[PhoneStateListener] CALL_STATE_IDLE");
                if (this.G != null) {
                    this.G.f.setHint((CharSequence) null);
                }
                if (getActivity() == null) {
                    return;
                }
                if (getActivity().getIntent().getBooleanExtra("from_in_call_screen_emergecny", false)) {
                    getActivity().finish();
                    return;
                } else {
                    e(true);
                    return;
                }
            case 1:
                Log.v("ResultListFragment", "[PhoneStateListener] CALL_STATE_RINGING");
                return;
            case 2:
                Log.v("ResultListFragment", "[PhoneStateListener] CALL_STATE_OFFHOOK, unlock mode");
                e(true);
                return;
            default:
                Log.w("ResultListFragment", "[PhoneStateListener] Unhandle state : " + i2);
                com.android.contacts.dialpad.b.f1010a = false;
                if (com.android.contacts.dialpad.b.f1010a) {
                    z = false;
                }
                e(z);
                return;
        }
    }

    public final void a(int i2, boolean z) {
        if (!this.D && com.android.contacts.j.h.d() != 1) {
            Log.d("SmartDialUnbundle", "ResultListFragment loadSmartDialData priority: " + i2 + ", scheduling ...");
            switch (i2) {
                case 1:
                    this.J.removeMessages(1);
                    if (!this.J.hasMessages(3) && !this.J.hasMessages(2)) {
                        Message obtainMessage = this.J.obtainMessage();
                        obtainMessage.what = 1;
                        obtainMessage.arg1 = 1;
                        if (z) {
                            this.J.sendMessageDelayed(obtainMessage, 2000L);
                            return;
                        } else {
                            this.J.sendMessage(obtainMessage);
                            return;
                        }
                    } else {
                        return;
                    }
                case 2:
                    this.J.removeMessages(2);
                    this.J.removeMessages(1);
                    if (!this.J.hasMessages(3)) {
                        Message obtainMessage2 = this.J.obtainMessage();
                        obtainMessage2.what = 2;
                        obtainMessage2.arg1 = 1;
                        if (z) {
                            this.J.sendMessageDelayed(obtainMessage2, 2000L);
                            return;
                        } else {
                            this.J.sendMessage(obtainMessage2);
                            return;
                        }
                    } else {
                        return;
                    }
                case 3:
                    this.J.removeMessages(3);
                    this.J.removeMessages(2);
                    this.J.removeMessages(1);
                    Message obtainMessage3 = this.J.obtainMessage();
                    obtainMessage3.what = 3;
                    obtainMessage3.arg1 = 1;
                    this.J.sendMessage(obtainMessage3);
                    return;
                default:
                    Log.e("SmartDialUnbundle", "[ReloadSmartDialData] Not Supported Priority:" + i2);
                    return;
            }
        }
    }

    public final void a(Context context) {
        if (this.H == null) {
            com.android.contacts.j.h.a(context);
            com.android.contacts.j.h.b(0);
            this.H = new com.android.contacts.j.f();
            com.android.contacts.j.f fVar = this.H;
            Activity activity = getActivity();
            Handler handler = this.I;
            Log.d("SmartDialUnbundle", "QueryResultList init");
            fVar.i = handler;
            fVar.j = this;
            fVar.h = false;
            if (fVar.f1525b == null) {
                fVar.f1525b = new com.android.contacts.j.c(activity);
            }
            if (fVar.f1524a == null) {
                fVar.f1524a = new com.android.contacts.j.c(activity);
            }
            if (fVar.f == null) {
                fVar.f = new LinkedList();
            }
            if (fVar.g == null) {
                fVar.g = new com.android.contacts.j.b();
            }
            if (fVar.l == null) {
                fVar.l = new com.android.contacts.j.g(activity, fVar);
                com.android.contacts.j.g gVar = fVar.l;
                gVar.j = com.android.contacts.simcardmanage.b.a(gVar.f1526a);
                gVar.k = false;
                gVar.l = PhoneCapabilityTester.isATTSku();
                if (gVar.f1526a != null) {
                    gVar.m = com.asus.a.a.d(gVar.f1526a);
                    gVar.q = com.asus.a.a.h(gVar.f1526a);
                    gVar.n = com.android.contacts.ezmode.h.a(gVar.f1526a);
                    String string = Settings.System.getString(gVar.f1526a.getContentResolver(), "time_12_24");
                    if (string == null || !string.equals("24")) {
                        gVar.o = false;
                    } else {
                        gVar.o = true;
                    }
                }
            }
            this.H.l.f1527b = this.K.format(new Date());
            this.H.l.c = this.K.format(new Date(System.currentTimeMillis() - 86400000));
            this.H.l.d = this;
            this.H.l.f = this;
            this.H.l.a(this);
            a(3, true);
        }
    }

    public final void a(Intent intent) {
        Uri uri;
        int i2;
        Uri[] uriArr;
        boolean z = getResources().getConfiguration().orientation == 2;
        if (this.G != null && this.G.g != null && z) {
            CallDetailFragment callDetailFragment = (CallDetailFragment) getFragmentManager().findFragmentById(2131296685);
            Uri data = intent.getData();
            if (data != null) {
                uriArr = new Uri[]{data};
            } else {
                long[] longArrayExtra = intent.getLongArrayExtra("EXTRA_CALL_LOG_IDS");
                Uri[] uriArr2 = new Uri[longArrayExtra.length];
                if (PhoneCapabilityTester.IsUnbundled()) {
                    uri = CallLog.Calls.CONTENT_URI;
                    i2 = 0;
                } else {
                    uri = CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL;
                    i2 = 0;
                }
                while (i2 < longArrayExtra.length) {
                    uriArr2[i2] = ContentUris.withAppendedId(uri, longArrayExtra[i2]);
                    i2++;
                }
                uriArr = uriArr2;
            }
            callDetailFragment.c = uriArr;
            if (callDetailFragment.f846b != null) {
                try {
                    callDetailFragment.f846b.submit(CallDetailFragment.h.UPDATE_PHONE_CALL_DETAILS, new CallDetailFragment.c(uriArr, intent), new Void[0]);
                } catch (Exception e2) {
                    Log.w("CallDetailFragment", e2.toString());
                }
            }
        }
    }

    @Override // com.android.contacts.calllog.m.b
    public final void a(Cursor cursor) {
        Log.d("ResultListFragment", "onCallsFetched()");
        Log.d("ResultListFragment", "Query finished. Query time = " + (System.currentTimeMillis() - this.V));
        if ((this.m == null || this.m.equals(BuildConfig.FLAVOR)) && getActivity() != null) {
            this.q.z = false;
            this.q.b(cursor);
            if (cursor != null) {
                this.C = cursor.getCount();
                if (this.C != 0) {
                    if (getActivity() != null && PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                        c(true);
                    } else if (this.G == null || this.G.e()) {
                        c(false);
                    } else {
                        c(true);
                    }
                    if (this.m != null) {
                    }
                } else if (getActivity() != null && PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                    c(true);
                } else if (this.G == null || this.G.e()) {
                    c(false);
                } else {
                    c(true);
                }
            } else {
                this.C = 0;
                if (getActivity() != null && PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                    c(true);
                } else if (this.G == null || this.G.e()) {
                    c(false);
                } else {
                    c(true);
                }
            }
            if (this.G != null) {
                View c2 = this.G.c();
                if (c2 != null) {
                    c2.setVisibility(8);
                }
                View c3 = this.G.c(false);
                if (c3 != null) {
                    c3.setVisibility(8);
                }
                TextView textView = this.G.o;
                if (textView != null) {
                    textView.setText(BuildConfig.FLAVOR);
                    textView.setVisibility(4);
                }
                if (this.G.m != null && this.G.m.getVisibility() == 0) {
                    this.G.m.invalidate();
                }
            }
            if (!(getActivity() == null || this.n == null)) {
                if (com.android.contacts.skin.a.b()) {
                    ((TextView) this.n.getEmptyView()).setTextColor(getResources().getColor(2131034161));
                } else if (com.android.contacts.skin.a.c()) {
                    ((TextView) this.n.getEmptyView()).setTextColor(com.android.contacts.skin.a.a(2));
                }
                ((TextView) this.n.getEmptyView()).setText(getActivity().getResources().getString(2131756050));
            }
            if (getListAdapter() != this.q) {
                setListAdapter(this.q);
            }
            if (getActivity() != null && PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                boolean z = getResources().getConfiguration().orientation == 2;
                if (this.C == 0) {
                    p();
                } else if (this.G != null && this.G.g != null && z) {
                    s c4 = this.q.c(k);
                    if (c4 != null) {
                        a(c4.a(getActivity()));
                    }
                    if (this.G == null || this.G.e()) {
                        p();
                    } else {
                        q();
                    }
                }
            }
        } else {
            Log.d("ResultListFragment", "no need to change cursor");
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @Override // com.android.contacts.dialpad.g.a
    public final void a(ServiceState serviceState) {
        switch (serviceState.getState()) {
            case 0:
                Log.v("ResultListFragment", "[PhoneStateListener] STATE_IN_SERVICE, unlock mode");
                this.B = false;
                return;
            case 1:
                Log.v("ResultListFragment", "[PhoneStateListener] STATE_OUTOF_SERVICE, unlock mode");
                com.android.contacts.dialpad.b.f1010a = false;
                e(true);
                this.B = true;
                return;
            default:
                Log.w("ResultListFragment", "[PhoneStateListener] onServiceStateChanged unhandle state: " + serviceState);
                com.android.contacts.dialpad.b.f1010a = false;
                e(true);
                this.B = true;
                return;
        }
    }

    @Override // com.android.contacts.dialpad.TwelveKeyDialerFragment.b
    public final void a(Editable editable, boolean z) {
        if (this.D || !z) {
            return;
        }
        if (editable.length() != 0) {
            b(editable.toString().replace("-", BuildConfig.FLAVOR).replace("(", BuildConfig.FLAVOR).replace(")", BuildConfig.FLAVOR).replace(" ", BuildConfig.FLAVOR));
        } else if (this.G != null && TextUtils.isEmpty(this.G.l)) {
            b(BuildConfig.FLAVOR);
        }
    }

    public final void a(View view) {
        PopupMenu popupMenu;
        View view2 = view;
        if (view == null) {
            view2 = this.aa;
        }
        Activity activity = getActivity();
        if (activity == null) {
            popupMenu = null;
        } else {
            popupMenu = new PopupMenu(activity, view2);
            Menu menu = popupMenu.getMenu();
            popupMenu.inflate(2131492876);
            popupMenu.setOnMenuItemClickListener(this);
            MenuItem findItem = menu.findItem(2131296443);
            MenuItem findItem2 = menu.findItem(2131296437);
            MenuItem findItem3 = menu.findItem(2131296483);
            MenuItem findItem4 = menu.findItem(2131296482);
            findItem2.setVisible(B());
            findItem3.setVisible(B() || PhoneCapabilityTester.isRestoreFileExist());
            findItem4.setVisible(PhoneCapabilityTester.isRestoreFileExist());
            if (c(getActivity())) {
                findItem.setVisible(PhoneCapabilityTester.isInOwnerMode(activity));
            } else {
                findItem.setVisible(false);
            }
        }
        this.ab = popupMenu;
        if (this.ab != null) {
            this.ab.show();
        }
    }

    @Override // com.android.contacts.ae.b
    public final void a(o oVar) {
        a(oVar, oVar.q);
    }

    @Override // com.android.contacts.ae.b
    public final void a(s sVar) {
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(5, getActivity(), "Dialer", "Call Log", "Call Log: press item", null);
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(18, getActivity(), "Make a Call", true);
        Log.d("CallLogAdapter", "make call from callLog");
        if (sVar == null) {
            Toast.makeText(getActivity(), getActivity().getResources().getString(2131755636), 0).show();
        } else if (com.android.contacts.ipcall.b.b(getActivity())) {
            ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.DIAL", sVar.a(getActivity()).getData()), false);
        } else {
            boolean c2 = c(sVar);
            Log.d("CallLogAdapter", "isSucess = " + c2);
            if (c2) {
                c();
            }
        }
    }

    @Override // com.android.contacts.ae.b
    public final void a(d.b bVar) {
        f(bVar);
    }

    public final void a(boolean z) {
        Log.d("ResultListFragment", "switchSmartSearch(), turn " + (z ? "on" : "off"));
        if (this.l != z) {
            this.l = z;
            this.p.a(z);
            this.y.b();
            if (com.android.contacts.j.h.b()) {
                Log.d("SmartDialUnbundle", "switchSmartSearch(), turn " + (z ? "on" : "off"));
                w();
            }
            Log.d("ResultListFragment", "switchSmartSearch.startSearch()");
        }
    }

    @Override // com.android.contacts.calllog.e.AbstractC0028e
    public final boolean a(int i2, View view, o oVar, String str, long j2) {
        this.av = null;
        this.aw = null;
        if (oVar != null) {
            this.aw = null;
        } else {
            Log.d("ResultListFragment", "onLongClick info == null ");
        }
        this.ax = str;
        this.au = i2;
        this.aw = oVar;
        this.M = j2;
        view.setTag(this.aw.f738b);
        view.showContextMenu();
        return true;
    }

    @Override // com.android.contacts.calllog.e.d
    public final int b(int i2) {
        k = i2;
        Log.d("ResultListFragment", "lastselection = " + this.ar);
        return k;
    }

    @Override // com.android.contacts.calllog.e.a
    public final void b() {
        if (this.Y != null) {
            this.Y.a(this.r, this.s);
        }
    }

    @Override // com.android.contacts.ae.b
    public final void b(int i2, View view, d.b bVar) {
        e(i2, view, bVar);
    }

    public final void b(Context context) {
        if (this.aB == null) {
            this.aB = new c(context.getContentResolver());
        }
    }

    @Override // com.android.contacts.calllog.m.b
    public final void b(Cursor cursor) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (this.af == null || cursor == null) {
                Log.d("ResultListFragment", " mVoicemailStatusHelper == null || statusCursor == null ");
            } else {
                List<a.C0045a> a2 = this.af.a(cursor);
                if (a2.size() == 0) {
                    this.ag.setVisibility(8);
                } else {
                    if (this.ah == null) {
                        LayoutInflater.from(getActivity()).inflate(2131427433, this.ag);
                        this.ah = (TextView) this.W.findViewById(2131297544);
                        this.ai = (TextView) this.W.findViewById(2131297543);
                    }
                    this.ag.setVisibility(0);
                    final a.C0045a aVar = a2.get(0);
                    if (aVar.a()) {
                        this.ah.setText(aVar.f1581b);
                    }
                    if (aVar.d != -1) {
                        this.ai.setText(aVar.d);
                    }
                    if (aVar.e != null) {
                        this.ai.setVisibility(0);
                        this.ai.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                ImplicitIntentsUtil.startActivityOutsideApp(ResultListFragment.this.getActivity(), new Intent("android.intent.action.VIEW", aVar.e));
                            }
                        });
                    } else {
                        this.ai.setVisibility(8);
                    }
                }
            }
            boolean z = this.af.b(cursor) != 0;
            if (this.ae != z) {
                this.ae = z;
                Activity activity = getActivity();
                if (activity != null) {
                    activity.invalidateOptionsMenu();
                }
            }
            com.android.a.a.a.a(cursor);
        } else if (cursor != null) {
            cursor.close();
        }
    }

    @Override // com.android.contacts.ae.b
    public final void b(o oVar) {
        c(oVar);
    }

    @Override // com.android.contacts.ae.b
    public final void b(d.b bVar) {
        c(a(bVar.h));
    }

    public final void b(String str) {
        this.m = TextUtils.isEmpty(str) ? null : str;
        if (this.p != null) {
            com.android.contacts.dialpad.d dVar = this.p;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = BuildConfig.FLAVOR;
            }
            dVar.n = str2;
        }
        if (this.y != null) {
            this.y.b();
        }
    }

    public final void b(boolean z) {
        if (this.n != null && !this.D && !PhoneCapabilityTester.isHighendDevice(getActivity(), 1L)) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.n.getLayoutParams();
            layoutParams.height = z ? -1 : (int) TypedValue.applyDimension(1, 189.0f, getResources().getDisplayMetrics());
            this.n.setLayoutParams(layoutParams);
            this.n.requestLayout();
        }
    }

    @Override // com.android.contacts.ae.b
    public final boolean b(s sVar) {
        return c(sVar);
    }

    @Override // com.android.contacts.dialpad.d.f, com.android.contacts.j.g.c
    public final int c(int i2) {
        this.ar = i2;
        return this.ar;
    }

    @Override // com.android.contacts.calllog.e.c
    public final void c() {
        if (this.G != null) {
            this.G.d();
        }
    }

    @Override // com.android.contacts.ae.c
    public final void c(int i2, View view, d.b bVar) {
        if (view instanceof AbsListView) {
            ((AbsListView) view).setItemChecked(i2, true);
            c(i2);
        }
        f(bVar);
    }

    @Override // com.android.contacts.ae.b
    public final void c(d.b bVar) {
        i(bVar);
    }

    public final void c(boolean z) {
        t();
        if (z && this.X == null) {
            l();
        }
        if (this.D) {
            if (this.X != null) {
                this.X.setVisibility(8);
            }
            if (this.o != null) {
                this.o.setVisibility(8);
            }
        } else if (this.X == null) {
        } else {
            if (!z || (this.m != null && !this.m.equals(BuildConfig.FLAVOR))) {
                if (this.X != null) {
                    this.X.setVisibility(8);
                }
                if (this.o != null) {
                    this.o.setVisibility(8);
                    return;
                }
                return;
            }
            if (this.X != null) {
                this.X.setVisibility(0);
            }
            if (this.o != null) {
                this.o.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0310  */
    @Override // com.android.contacts.calllog.e.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(com.android.contacts.calllog.s r7) {
        /*
            Method dump skipped, instructions count: 800
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.ResultListFragment.c(com.android.contacts.calllog.s):boolean");
    }

    @Override // com.android.contacts.c.b.a
    public final void d() {
        if (this.y != null) {
            Log.d("ResultListFragment", "notifyBirthdayChange: startSearch");
            this.y.b();
        }
        if (com.android.contacts.j.h.b() && com.android.contacts.j.h.c() == 0) {
            Log.d("SmartDialUnbundle", "notifyBirthdayChange: startSearch");
            a(2, true);
        }
    }

    public final void d(int i2) {
        int applyDimension = (int) TypedValue.applyDimension(1, 64.0f, getResources().getDisplayMetrics());
        int applyDimension2 = (int) TypedValue.applyDimension(1, 41.0f, getResources().getDisplayMetrics());
        if (this.n != null) {
            switch (i2) {
                case 0:
                    this.n.setPadding(0, applyDimension + applyDimension2, 0, 0);
                    return;
                case 1:
                    this.n.setPadding(0, applyDimension, 0, 0);
                    return;
                case 2:
                    this.n.setPadding(0, 0, 0, 0);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.android.contacts.ae.c
    public final void d(int i2, View view, d.b bVar) {
        e(i2, view, bVar);
    }

    @Override // com.android.contacts.ae.c
    public final void d(d.b bVar) {
        f(bVar);
    }

    public final void d(boolean z) {
        if (this.T != z) {
            this.T = z;
            setHasOptionsMenu(true);
            getFragmentManager().invalidateOptionsMenu();
        }
    }

    public final String e(int i2) {
        return com.android.contacts.simcardmanage.b.f(getActivity(), i2);
    }

    public final void e() {
        if (this.p != null) {
            this.p.f1014a = this.K.format(new Date());
            this.p.f1015b = this.K.format(new Date(System.currentTimeMillis() - 86400000));
        }
    }

    @Override // com.android.contacts.ae.c
    public final void e(d.b bVar) {
        c(a(bVar.h));
    }

    @Override // com.android.contacts.dialpad.d.g
    public final boolean e(int i2, View view, d.b bVar) {
        if (bVar != null) {
            this.av = null;
        } else {
            Log.d("ResultListFragment", "onLongClick contactInfo == null ");
        }
        this.aw = null;
        this.au = i2;
        this.av = bVar;
        view.setTag(bVar);
        view.showContextMenu();
        return true;
    }

    public final void f() {
        if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER || this.D) {
            k();
            this.j = true;
        }
        if (this.at) {
            if (MainDialtactsActivity.mTabPosition == MainDialtactsActivity.TAB_INDEX_DIALER || az == 0) {
                Log.d("ResultListFragment", "onResume: First Enter, SmartQueryHandler.startSearch()");
                az = 1;
                this.y.b();
            } else {
                Log.d("ResultListFragment", "onResume: SmartQueryHandler do not need search");
            }
            this.at = false;
        }
    }

    public final void f(int i2) {
        switch (i2) {
            case 0:
                this.r = 0;
                break;
            case 1:
                this.r = 1;
                break;
            case 2:
                this.r = 2;
                break;
            case 3:
                this.r = 3;
                break;
            case 4:
                this.r = 4;
                break;
            case 5:
                this.r = 5;
                break;
            case 6:
                this.r = 6;
                break;
        }
        this.ak = this.r;
        k = 0;
        this.al = true;
        if (i2 == 4) {
            try {
                new f(true).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.i("ResultListFragment", e2.toString());
            }
        } else {
            i();
        }
    }

    @Override // com.android.contacts.dialpad.d.e
    public final void f(d.b bVar) {
        if (bVar.h != null) {
            boolean z = bVar.d > 0;
            String charSequence = ContactsContract.CommonDataKinds.Phone.getTypeLabel(getResources(), bVar.n, bVar.o).toString();
            if (com.android.contacts.ipcall.b.b(getActivity())) {
                ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.DIAL", q.a(bVar.h)), false);
                return;
            }
            String str = bVar.g;
            String str2 = bVar.h;
            long j2 = bVar.f1020a;
            int i2 = bVar.k;
            Log.d("ResultListFragment", "makeCall(): name=" + PhoneCapabilityTester.privacyLogCheck(str) + ", number=" + PhoneCapabilityTester.privacyLogCheck(str2) + ", contactId=" + j2 + ", label = " + charSequence);
            if (str2 != null) {
                String a2 = q.a(getActivity());
                String formatNumber = PhoneNumberUtils.formatNumber(str2, PhoneNumberUtils.formatNumberToE164(str2, a2), a2);
                AdditionalButtonFragment additionalButtonFragment = this.D ? (AdditionalButtonFragment) getFragmentManager().findFragmentById(2131296802) : (AdditionalButtonFragment) getFragmentManager().findFragmentById(2131296320);
                Log.d("ResultListFragment", "Call: " + PhoneCapabilityTester.privacyLogCheck(formatNumber));
                String str3 = formatNumber;
                if (com.android.contacts.dialpad.b.e) {
                    str3 = formatNumber;
                    if (!formatNumber.startsWith("#31#")) {
                        str3 = "#31#" + formatNumber;
                    }
                }
                Intent a3 = additionalButtonFragment.a(str, str3, j2, charSequence, z, i2, -1, false);
                if (additionalButtonFragment.f > 0) {
                    a3.putExtra("extra_asus_dial_use_dualsim", additionalButtonFragment.f - 1);
                }
                if (additionalButtonFragment.getResources().getBoolean(2130968595)) {
                    float a4 = AdditionalButtonFragment.a();
                    AdditionalButtonFragment.a(a4);
                    a3.putExtra("com.android.phone.AsusSetTransitionAnimationScale", a4);
                }
                CallUtil.startDialActivity(additionalButtonFragment.getActivity(), a3);
                Log.d("ControlFragment", "send intent");
                additionalButtonFragment.l.a();
            }
        }
    }

    @Override // com.android.contacts.j.g.d
    public final boolean f(int i2, View view, d.b bVar) {
        return e(i2, view, bVar);
    }

    public final void g() {
        if (!(this.ar == -1 || this.n == null)) {
            this.n.setItemChecked(this.ar, false);
        }
        if (this.as != null) {
            this.as.setVisibility(8);
        }
        this.A = 0;
    }

    public final void g(int i2) {
        this.s = i2;
        this.w = this.s;
        k = 0;
        this.al = true;
        i();
    }

    @Override // com.android.contacts.j.g.b
    public final void g(d.b bVar) {
        f(bVar);
    }

    public final Cursor h() {
        Cursor cursor = null;
        if (this.m == null || this.m.equals(BuildConfig.FLAVOR)) {
            if (this.q != null) {
                cursor = this.q.f411a;
            }
        } else if (this.p != null) {
            cursor = this.p.getCursor();
        }
        return cursor;
    }

    public final void i() {
        Log.d("ResultListFragment", "refreshData mRefreshDataRequired=" + this.al + ", mReloadCallLogRequired=" + this.x);
        if (this.al) {
            if (this.q != null) {
                com.android.contacts.calllog.e eVar = this.q;
                com.android.contacts.calllog.e.y.expireAll();
                eVar.c();
                eVar.d();
            }
            z();
            y();
            this.al = false;
            this.x = false;
        } else if (this.x) {
            z();
            y();
            this.x = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        PreferenceManager.getDefaultSharedPreferences(getActivity()).edit().putLong("keypad_timeout", System.currentTimeMillis()).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        A();
        if (!TextUtils.isEmpty(this.m) && !this.D && getFragmentManager() != null) {
            AdditionalButtonFragment additionalButtonFragment = (AdditionalButtonFragment) getFragmentManager().findFragmentById(2131296320);
            if (this.G != null && !this.G.e()) {
                if (System.currentTimeMillis() - PreferenceManager.getDefaultSharedPreferences(getActivity()).getLong("keypad_timeout", 0L) > 120000 && additionalButtonFragment != null) {
                    additionalButtonFragment.j();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        if (this.W != null) {
            LayoutInflater.from(getActivity());
            if (this.X == null) {
                this.X = ((ViewStub) this.W.findViewById(2131296355)).inflate();
            }
            this.t = this.W.findViewById(2131296451);
            if (this.t != null) {
                TextView textView = (TextView) this.t.findViewById(2131296450);
                switch (this.r) {
                    case 0:
                        textView.setText(2131755051);
                        break;
                    case 1:
                        textView.setText(2131755052);
                        break;
                    case 2:
                        textView.setText(2131755054);
                        break;
                    case 3:
                        textView.setText(2131755053);
                        break;
                    case 4:
                        textView.setText(2131756458);
                        break;
                    case 5:
                        textView.setText(2131755057);
                        break;
                    case 6:
                        textView.setText(2131755056);
                        break;
                }
                this.t.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        View inflate = ((LayoutInflater) ResultListFragment.this.getActivity().getBaseContext().getSystemService("layout_inflater")).inflate(2131427422, (ViewGroup) null);
                        ResultListFragment.this.ac = new PopupWindow(inflate, -2, -2);
                        ResultListFragment.this.ac.setBackgroundDrawable(ResultListFragment.this.getResources().getDrawable(2131165482));
                        ResultListFragment.this.ac.setWidth(ResultListFragment.this.getResources().getDimensionPixelSize(2131099725));
                        ResultListFragment.this.ac.setOutsideTouchable(true);
                        ResultListFragment.this.ac.setFocusable(true);
                        ResultListFragment.this.ac.setTouchable(true);
                        final TextView textView2 = (TextView) ResultListFragment.this.t.findViewById(2131296450);
                        View findViewById = inflate.findViewById(2131296448);
                        View findViewById2 = inflate.findViewById(2131296452);
                        View findViewById3 = inflate.findViewById(2131296456);
                        View findViewById4 = inflate.findViewById(2131296454);
                        View findViewById5 = inflate.findViewById(2131296460);
                        View findViewById6 = inflate.findViewById(2131296462);
                        View findViewById7 = inflate.findViewById(2131296458);
                        RadioButton radioButton = (RadioButton) inflate.findViewById(2131296463);
                        RadioButton radioButton2 = (RadioButton) inflate.findViewById(2131296459);
                        if (PhoneCapabilityTester.isRCSVerizon()) {
                            if (radioButton != null) {
                                radioButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.1
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        if (ResultListFragment.this.ac != null) {
                                            ResultListFragment.this.ac.dismiss();
                                        }
                                        textView2.setText(2131755057);
                                        ResultListFragment.this.f(5);
                                    }
                                });
                            }
                            if (radioButton2 != null) {
                                radioButton2.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        if (ResultListFragment.this.ac != null) {
                                            ResultListFragment.this.ac.dismiss();
                                        }
                                        textView2.setText(2131755056);
                                        ResultListFragment.this.f(6);
                                    }
                                });
                            }
                            if (findViewById6 != null) {
                                findViewById6.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.8
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        if (ResultListFragment.this.ac != null) {
                                            ResultListFragment.this.ac.dismiss();
                                        }
                                        textView2.setText(2131755057);
                                        ResultListFragment.this.f(5);
                                    }
                                });
                            }
                            if (findViewById7 != null) {
                                findViewById7.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.9
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view2) {
                                        if (ResultListFragment.this.ac != null) {
                                            ResultListFragment.this.ac.dismiss();
                                        }
                                        textView2.setText(2131755056);
                                        ResultListFragment.this.f(6);
                                    }
                                });
                            }
                        } else {
                            findViewById6.setVisibility(8);
                            findViewById7.setVisibility(8);
                        }
                        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755051);
                                ResultListFragment.this.f(0);
                            }
                        });
                        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.11
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755052);
                                ResultListFragment.this.f(1);
                            }
                        });
                        findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.12
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755054);
                                ResultListFragment.this.f(2);
                            }
                        });
                        findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.13
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755053);
                                ResultListFragment.this.f(3);
                            }
                        });
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            findViewById5.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.14
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    if (ResultListFragment.this.ac != null) {
                                        ResultListFragment.this.ac.dismiss();
                                    }
                                    textView2.setText(2131756458);
                                    ResultListFragment.this.f(4);
                                }
                            });
                        } else {
                            findViewById5.setVisibility(8);
                        }
                        RadioButton radioButton3 = (RadioButton) inflate.findViewById(2131296449);
                        RadioButton radioButton4 = (RadioButton) inflate.findViewById(2131296453);
                        RadioButton radioButton5 = (RadioButton) inflate.findViewById(2131296457);
                        RadioButton radioButton6 = (RadioButton) inflate.findViewById(2131296455);
                        RadioButton radioButton7 = (RadioButton) inflate.findViewById(2131296461);
                        radioButton3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755051);
                                ResultListFragment.this.f(0);
                            }
                        });
                        radioButton4.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755052);
                                ResultListFragment.this.f(1);
                            }
                        });
                        radioButton5.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.4
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755054);
                                ResultListFragment.this.f(2);
                            }
                        });
                        radioButton6.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.5
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131755053);
                                ResultListFragment.this.f(3);
                            }
                        });
                        radioButton7.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.16.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (ResultListFragment.this.ac != null) {
                                    ResultListFragment.this.ac.dismiss();
                                }
                                textView2.setText(2131756458);
                                ResultListFragment.this.f(4);
                            }
                        });
                        switch (ResultListFragment.this.r) {
                            case 0:
                                radioButton3.setChecked(true);
                                break;
                            case 1:
                                radioButton4.setChecked(true);
                                break;
                            case 2:
                                radioButton5.setChecked(true);
                                break;
                            case 3:
                                radioButton6.setChecked(true);
                                break;
                            case 4:
                                radioButton7.setChecked(true);
                                break;
                            case 5:
                                radioButton.setChecked(true);
                                break;
                            case 6:
                                radioButton2.setChecked(true);
                                break;
                        }
                        int dimensionPixelOffset = ResultListFragment.this.getResources().getDimensionPixelOffset(2131099796);
                        ResultListFragment.this.ac.showAsDropDown(ResultListFragment.this.t, -dimensionPixelOffset, -dimensionPixelOffset);
                    }
                });
            } else {
                Log.e("ResultListFragment", "mCallLogFilterHeader is null");
            }
            this.u = (FrameLayout) this.W.findViewById(2131297296);
            this.v = (ImageView) this.W.findViewById(2131297299);
            if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !this.f901b || !this.c) {
                this.u.setVisibility(8);
            } else {
                this.u.setVisibility(0);
                o();
            }
            this.aa = this.W.findViewById(2131296368);
            if (this.aa != null) {
                AsusAirViewUtils.setActionbarHoverHint(this.aa, getResources().getString(2131755228), new com.android.contacts.airview.a(getActivity()));
                this.aa.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ResultListFragment.this.a(view);
                    }
                });
            }
            this.R = (RelativeLayout) this.W.findViewById(2131296359);
            ImageView imageView = (ImageView) this.W.findViewById(2131296446);
            TextView textView2 = (TextView) this.W.findViewById(2131296450);
            if (com.android.contacts.skin.a.b()) {
                com.android.contacts.skin.a.a(this.R, null, imageView, textView2, getActivity());
                if (this.o != null) {
                    this.o.setBackgroundColor(getResources().getColor(2131034120));
                }
            } else if (com.android.contacts.skin.a.c()) {
                com.android.contacts.skin.a.a(this.R, null, imageView, textView2, getActivity());
                textView2.setBackground(com.android.contacts.skin.a.a(getActivity(), 2131165394, com.android.contacts.skin.a.a(2)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        if (this.u != null) {
            switch (this.s) {
                case 0:
                    this.v.setImageResource(2131165309);
                    if (!com.android.contacts.skin.a.b()) {
                        if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(this.v, this.e);
                            break;
                        }
                    } else {
                        com.android.contacts.skin.a.a(this.v, this.e);
                        break;
                    }
                    break;
                case 1:
                    this.v.setImageResource(2131165310);
                    if (!com.android.contacts.skin.a.b()) {
                        if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(this.v, this.e);
                            break;
                        }
                    } else {
                        com.android.contacts.skin.a.a(this.v, this.e);
                        break;
                    }
                    break;
                case 2:
                    this.v.setImageResource(2131165311);
                    if (!com.android.contacts.skin.a.b()) {
                        if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(this.v, this.e);
                            break;
                        }
                    } else {
                        com.android.contacts.skin.a.a(this.v, this.e);
                        break;
                    }
                    break;
            }
            this.u.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    View inflate = ((LayoutInflater) ResultListFragment.this.getActivity().getBaseContext().getSystemService("layout_inflater")).inflate(2131427658, (ViewGroup) null);
                    ResultListFragment.this.ad = new PopupWindow(inflate, -2, -2);
                    ResultListFragment.this.ad.setBackgroundDrawable(ResultListFragment.this.getResources().getDrawable(2131165482));
                    ResultListFragment.this.ad.setWidth(ResultListFragment.this.getResources().getDimensionPixelSize(2131099725));
                    ResultListFragment.this.ad.setOutsideTouchable(true);
                    ResultListFragment.this.ad.setFocusable(true);
                    ResultListFragment.this.ad.setTouchable(true);
                    View findViewById = inflate.findViewById(2131297297);
                    View findViewById2 = inflate.findViewById(2131297300);
                    View findViewById3 = inflate.findViewById(2131297302);
                    ((TextView) inflate.findViewById(2131297292)).setText(ResultListFragment.this.e(1));
                    ((TextView) inflate.findViewById(2131297293)).setText(ResultListFragment.this.e(2));
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ResultListFragment.this.ad.dismiss();
                            ResultListFragment.this.v.setImageResource(2131165309);
                            if (com.android.contacts.skin.a.b()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            } else if (com.android.contacts.skin.a.c()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            }
                            ResultListFragment.this.g(0);
                        }
                    });
                    findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ResultListFragment.this.ad.dismiss();
                            ResultListFragment.this.v.setImageResource(2131165310);
                            if (com.android.contacts.skin.a.b()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            } else if (com.android.contacts.skin.a.c()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            }
                            ResultListFragment.this.g(1);
                        }
                    });
                    findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ResultListFragment.this.ad.dismiss();
                            ResultListFragment.this.v.setImageResource(2131165311);
                            if (com.android.contacts.skin.a.b()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            } else if (com.android.contacts.skin.a.c()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            }
                            ResultListFragment.this.g(2);
                        }
                    });
                    RadioButton radioButton = (RadioButton) inflate.findViewById(2131297298);
                    RadioButton radioButton2 = (RadioButton) inflate.findViewById(2131297301);
                    RadioButton radioButton3 = (RadioButton) inflate.findViewById(2131297303);
                    radioButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ResultListFragment.this.ad.dismiss();
                            ResultListFragment.this.v.setImageResource(2131165309);
                            if (com.android.contacts.skin.a.b()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            } else if (com.android.contacts.skin.a.c()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            }
                            ResultListFragment.this.g(0);
                        }
                    });
                    radioButton2.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17.5
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ResultListFragment.this.ad.dismiss();
                            ResultListFragment.this.v.setImageResource(2131165310);
                            if (com.android.contacts.skin.a.b()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            } else if (com.android.contacts.skin.a.c()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            }
                            ResultListFragment.this.g(1);
                        }
                    });
                    radioButton3.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.17.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ResultListFragment.this.ad.dismiss();
                            ResultListFragment.this.v.setImageResource(2131165311);
                            if (com.android.contacts.skin.a.b()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            } else if (com.android.contacts.skin.a.c()) {
                                com.android.contacts.skin.a.a(ResultListFragment.this.v, ResultListFragment.this.e);
                            }
                            ResultListFragment.this.g(2);
                        }
                    });
                    switch (ResultListFragment.this.s) {
                        case 0:
                            radioButton.setChecked(true);
                            break;
                        case 1:
                            radioButton2.setChecked(true);
                            break;
                        case 2:
                            radioButton3.setChecked(true);
                            break;
                    }
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    int[] iArr2 = new int[2];
                    ResultListFragment.this.t.getLocationOnScreen(iArr2);
                    int dimensionPixelOffset = ResultListFragment.this.getResources().getDimensionPixelOffset(2131099796);
                    int i2 = iArr2[0] - iArr[0];
                    if ((iArr[0] + ResultListFragment.this.u.getWidth()) - ResultListFragment.this.ad.getWidth() > 0) {
                        i2 = ResultListFragment.this.u.getWidth() - ResultListFragment.this.ad.getWidth();
                    }
                    ResultListFragment.this.ad.showAsDropDown(ResultListFragment.this.u, i2, -dimensionPixelOffset);
                }
            });
            return;
        }
        Log.e("ResultListFragment", "mSimTypeFilterView is null");
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        Log.d("ResultListFragment", "onActivityCreated()");
        super.onActivityCreated(bundle);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        Log.d("ResultListFragment", "onActivityResult " + i2 + ", " + i3);
        try {
            super.onActivityResult(i2, i3, intent);
            boolean z = intent.getExtras().getBoolean(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_DIALPAD_STATUS);
            if (i2 == 149 && i3 == -1) {
                intent.getStringExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER);
                if (this.q != null) {
                    this.q.notifyDataSetChanged();
                    Log.d("ResultListFragment", "onActivityResult number:" + com.asus.a.a.c(intent.getStringExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER)));
                }
                if (this.p != null) {
                    this.p.notifyDataSetChanged();
                }
                AdditionalButtonFragment additionalButtonFragment = this.D ? (AdditionalButtonFragment) getFragmentManager().findFragmentById(2131296802) : (AdditionalButtonFragment) getFragmentManager().findFragmentById(2131296320);
                if (additionalButtonFragment != null) {
                    additionalButtonFragment.j = z;
                }
            }
        } catch (Exception e2) {
            Log.d("ResultListFragment", "Fail to refresh callLog e :" + e2.toString());
        }
        if (i2 != 199) {
            return;
        }
        if (!CompatUtils.isMarshmallowCompatible() || !Settings.canDrawOverlays(getActivity())) {
            Log.d("ResultListFragment", "Deny SYSTEM_ALERT_WINDOW permission");
            return;
        }
        Log.d("ResultListFragment", "Grant SYSTEM_ALERT_WINDOW permission");
        if (this.aw != null) {
            a(this.aw, this.M);
        } else if (this.av != null) {
            h(this.av);
        }
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        Log.d("ResultListFragment", "onAttach()");
        super.onAttach(activity);
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        boolean z;
        if (this.av != null) {
            String a2 = a(this.av.h);
            switch (menuItem.getItemId()) {
                case 2131296683:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Add_contact", null, null);
                    }
                    com.android.contacts.a.a(a2).show(getActivity().getFragmentManager(), "dialog");
                    z = true;
                    break;
                case 2131296684:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Add_to_block_list", null, null);
                    }
                    boolean z2 = false;
                    if (this.G != null) {
                        z2 = false;
                        if (!this.G.e()) {
                            z2 = true;
                        }
                    }
                    Intent intent = new Intent();
                    intent.setAction(BlockAndTagNumberActivity.ACTION);
                    intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.av.h);
                    intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_DIALPAD_STATUS, z2);
                    intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_ID, this.av.f1020a);
                    intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_DISPLAYNAME, this.av.g);
                    intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_FLAG, true);
                    intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_ONLY_BLOCK_NUMBER, true);
                    intent.putExtra(BlockAndTagNumberActivity.BLOCK_FROM_DIALER, true);
                    startActivityForResult(intent, 149);
                    z = true;
                    break;
                case 2131296685:
                case 2131296692:
                case 2131296693:
                default:
                    if (this.G != null && this.G.g != null) {
                        Log.d("ResultListFragment", "switch to CallDetailFragment onContextItemSelected");
                        z = this.G.g.onContextItemSelected(menuItem);
                        break;
                    } else {
                        z = super.onContextItemSelected(menuItem);
                        break;
                    }
                case 2131296686:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Copy_number", null, null);
                    }
                    z = true;
                    if (!TextUtils.isEmpty(a2)) {
                        ClipboardUtils.copyText(getActivity(), " ", a2, true);
                        z = true;
                        break;
                    }
                    break;
                case 2131296687:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Delete_all_calls_of_this_contact", null, null);
                    }
                    AlertDialog.Builder negativeButton = new AlertDialog.Builder(getActivity()).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.11
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            String str;
                            int i3;
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(17, ResultListFragment.this.getActivity(), "Deletion", "Delete methods", "Remove all from dialer", null);
                            String extractNetworkPortion = CompatUtils.isNCompatible() ? PhoneNumberUtils.extractNetworkPortion(ResultListFragment.this.av.h) : ResultListFragment.this.av.h;
                            String extractPostDialPortion = CompatUtils.isNCompatible() ? PhoneNumberUtils.extractPostDialPortion(ResultListFragment.this.av.h) : null;
                            if (ResultListFragment.this.av.f1020a <= 0) {
                                str = PhoneCapabilityTester.IsAsusDevice() ? "PHONE_NUMBERS_EQUAL( number, ?, 0 ) AND (contact_id = 0)" : "PHONE_NUMBERS_EQUAL( number, ?, 0 )";
                                if (!CompatUtils.isNCompatible()) {
                                    i3 = 1;
                                } else if (!TextUtils.isEmpty(extractPostDialPortion)) {
                                    str = str + " AND PHONE_NUMBERS_EQUAL( post_dial_digits, ?, 0 )";
                                    i3 = 2;
                                } else if (extractPostDialPortion != null) {
                                    str = str + " AND (post_dial_digits IS NULL OR post_dial_digits = ?)";
                                    i3 = 2;
                                } else {
                                    str = str + " AND (post_dial_digits IS NULL OR post_dial_digits = '')";
                                    i3 = 1;
                                }
                            } else if (PhoneCapabilityTester.IsAsusDevice()) {
                                str = " block = " + String.valueOf(ResultListFragment.this.av.f1020a) + " AND (contact_id = 0) ";
                                i3 = 0;
                            } else {
                                str = "lookup_uri = '" + ContactsContract.Contacts.getLookupUri(ResultListFragment.this.av.f1020a, ResultListFragment.this.av.i) + "' ";
                                i3 = 0;
                            }
                            new j(ResultListFragment.this.getActivity().getContentResolver(), extractNetworkPortion, extractPostDialPortion, i3).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
                        }
                    }).setNegativeButton(getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.10
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            Log.d("AlertDialog", "Negative");
                        }
                    });
                    if (this.av.f1020a != 0) {
                        negativeButton.setMessage(getActivity().getResources().getString(2131755518)).setTitle(getActivity().getResources().getString(2131755787));
                    } else {
                        negativeButton.setMessage(getActivity().getResources().getString(2131755519)).setTitle(getActivity().getResources().getString(2131755788));
                    }
                    negativeButton.show();
                    z = true;
                    break;
                case 2131296688:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Dial_from_sim1", null, null);
                    }
                    CallUtil.startDialActivity(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), this.av.g, this.av.h, this.av.f1020a, this.av.o, this.av.d > 0, this.av.k, 0));
                    z = true;
                    break;
                case 2131296689:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Dial_from_sim2", null, null);
                    }
                    CallUtil.startDialActivity(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), this.av.g, this.av.h, this.av.f1020a, this.av.o, this.av.d > 0, this.av.k, 1));
                    z = true;
                    break;
                case 2131296690:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Call_later", null, null);
                    }
                    if (CompatUtils.isMarshmallowCompatible() && !Settings.canDrawOverlays(getActivity())) {
                        Log.d("ResultListFragment", "Need SYSTEM_ALERT_WINDOW permission");
                        startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getActivity().getPackageName())), 199);
                        z = true;
                        break;
                    } else {
                        h(this.av);
                        z = true;
                        break;
                    }
                case 2131296691:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Edit_number_before_call", null, null);
                    }
                    Intent intent2 = new Intent(getActivity(), DialtactsActivity.class);
                    intent2.setAction("android.intent.action.DIAL");
                    intent2.setData(q.a(a2));
                    boolean z3 = false;
                    if (getActivity() != null) {
                        z3 = false;
                        if (getActivity().getIntent() != null) {
                            z3 = false;
                            if (getActivity().getIntent().getBooleanExtra(MainDialtactsActivity.ADD_CALL_MODE_KEY, false)) {
                                z3 = true;
                            }
                        }
                    }
                    intent2.putExtra(MainDialtactsActivity.ADD_CALL_MODE_KEY, z3);
                    try {
                        ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), intent2);
                        z = true;
                        break;
                    } catch (Exception e2) {
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.DIAL", q.a(a2)));
                        z = true;
                        break;
                    }
                case 2131296694:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Tag_this_number", null, null);
                    }
                    Intent intent3 = new Intent();
                    intent3.setAction("android.intent.action.ASUS_END_CALL_TAG");
                    intent3.putExtra("number", this.av.h);
                    intent3.putExtra("isShowBlockCheck", true);
                    intent3.putExtra("markFrom", 2);
                    startActivityForResult(intent3, 149);
                    z = true;
                    break;
                case 2131296695:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Update_tag", null, null);
                    }
                    a(getActivity(), this.av.h);
                    z = true;
                    break;
                case 2131296696:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Delete_this_call_log", null, null);
                    }
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(17, getActivity(), "Deletion", "Delete methods", "Remove from dialer", null);
                    i(this.av);
                    z = true;
                    break;
                case 2131296697:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Send_text_message", null, null);
                    }
                    c(a2);
                    z = true;
                    break;
                case 2131296698:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- Remove_from_block_list", null, null);
                    }
                    boolean z4 = this.G != null && !this.G.e();
                    Intent intent4 = new Intent();
                    intent4.setAction(BlockAndTagNumberActivity.ACTION);
                    intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.av.h);
                    intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_DIALPAD_STATUS, z4);
                    intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_ID, this.av.f1020a);
                    intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_DISPLAYNAME, this.av.g);
                    intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_FLAG, false);
                    intent4.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_ONLY_BLOCK_NUMBER, true);
                    intent4.putExtra(BlockAndTagNumberActivity.BLOCK_FROM_DIALER, true);
                    startActivityForResult(intent4, 149);
                    z = true;
                    break;
                case 2131296699:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- View_call_log", null, null);
                    }
                    if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                        z = true;
                        if (this.G != null) {
                            this.G.a(this.av, 10);
                            z = true;
                            break;
                        }
                    } else {
                        long[] a3 = a(this.av.h, this.av.f1020a);
                        Activity activity = getActivity();
                        Intent intent5 = new Intent(activity, CallDetailActivity.class);
                        intent5.putExtra("EXTRA_CALL_LOG_IDS", a3);
                        ImplicitIntentsUtil.startActivityInApp(activity, intent5);
                        z = true;
                        break;
                    }
                    break;
                case 2131296700:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "SmartSearch_LongPress", "SmartSearch_LongPress- View_contact", null, null);
                    }
                    ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("android.intent.action.VIEW", ContactsContract.Contacts.getLookupUri(this.av.f1020a, this.av.i)));
                    z = true;
                    break;
            }
        } else if (this.aw != null) {
            switch (menuItem.getItemId()) {
                case 2131296501:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Add_to_contacts", null, null);
                    }
                    com.android.contacts.a.a(this.aw.e).show(getActivity().getFragmentManager(), "dialog");
                    z = true;
                    break;
                case 2131296502:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Add_to_block_list", null, null);
                    }
                    boolean z5 = this.G != null && !this.G.e();
                    Intent intent6 = new Intent();
                    intent6.setAction(BlockAndTagNumberActivity.ACTION);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.aw.e);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_TIMES, this.aw.p);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_DIALPAD_STATUS, z5);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_ID, this.aw.l);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_DISPLAYNAME, this.aw.f738b);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_FLAG, true);
                    intent6.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_ONLY_BLOCK_NUMBER, true);
                    intent6.putExtra(BlockAndTagNumberActivity.BLOCK_FROM_DIALER, false);
                    startActivityForResult(intent6, 149);
                    z = true;
                    break;
                case 2131296503:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Copy_number", null, null);
                    }
                    String str = this.aw.e;
                    z = true;
                    if (!TextUtils.isEmpty(str)) {
                        ClipboardUtils.copyText(getActivity(), " ", str, true);
                        z = true;
                        break;
                    }
                    break;
                case 2131296504:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Delete_all_calls_of_this_contact", null, null);
                    }
                    AlertDialog.Builder negativeButton2 = new AlertDialog.Builder(getActivity()).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.13
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            String str2;
                            int i3;
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(17, ResultListFragment.this.getActivity(), "Deletion", "Delete methods", "Remove all from call log", null);
                            if (ResultListFragment.this.aw.l == 0) {
                                str2 = PhoneCapabilityTester.IsAsusDevice() ? "PHONE_NUMBERS_EQUAL( number, ?, 0 ) AND (contact_id = 0) " : "PHONE_NUMBERS_EQUAL( number, ?, 0 )";
                                if (!CompatUtils.isNCompatible()) {
                                    i3 = 1;
                                } else if (!TextUtils.isEmpty(ResultListFragment.this.aw.s)) {
                                    str2 = str2 + " AND PHONE_NUMBERS_EQUAL( post_dial_digits, ?, 0 )";
                                    i3 = 2;
                                } else if (ResultListFragment.this.aw.s != null) {
                                    str2 = str2 + " AND (post_dial_digits IS NULL OR post_dial_digits = ?)";
                                    i3 = 2;
                                } else {
                                    str2 = str2 + " AND (post_dial_digits IS NULL OR post_dial_digits = '')";
                                    i3 = 1;
                                }
                            } else if (PhoneCapabilityTester.IsAsusDevice()) {
                                str2 = " block = " + String.valueOf(ResultListFragment.this.aw.l) + " AND (contact_id = 0) ";
                                i3 = 0;
                            } else {
                                str2 = "lookup_uri = '" + ResultListFragment.this.aw.f737a + "' ";
                                i3 = 0;
                            }
                            new j(ResultListFragment.this.getActivity().getContentResolver(), ResultListFragment.this.aw.e, ResultListFragment.this.aw.s, i3).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str2);
                        }
                    }).setNegativeButton(getActivity().getString(17039369), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.ResultListFragment.12
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            Log.d("AlertDialog", "Negative");
                        }
                    });
                    if (this.aw.l != 0) {
                        negativeButton2.setMessage(getActivity().getResources().getString(2131755518)).setTitle(getActivity().getResources().getString(2131755787));
                    } else {
                        negativeButton2.setMessage(getActivity().getResources().getString(2131755519)).setTitle(getActivity().getResources().getString(2131755788));
                    }
                    negativeButton2.show();
                    z = true;
                    break;
                case 2131296505:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Dial_from_sim1", null, null);
                    }
                    CallUtil.startDialActivity(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), this.aw.f738b, this.aw.e, this.aw.l, this.aw.d, this.aw.h > 0, this.aw.k, 0));
                    z = true;
                    break;
                case 2131296506:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Dial_from_sim2", null, null);
                    }
                    CallUtil.startDialActivity(getActivity(), PhoneCapabilityTester.newDialNumberIntent(getActivity(), this.aw.f738b, this.aw.e, this.aw.l, this.aw.d, this.aw.h > 0, this.aw.k, 1));
                    z = true;
                    break;
                case 2131296507:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Call_later", null, null);
                    }
                    if (CompatUtils.isMarshmallowCompatible() && !Settings.canDrawOverlays(getActivity())) {
                        Log.d("ResultListFragment", "Need SYSTEM_ALERT_WINDOW permission");
                        startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getActivity().getPackageName())), 199);
                        z = true;
                        break;
                    } else {
                        a(this.aw, this.M);
                        z = true;
                        break;
                    }
                case 2131296508:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Edit_number_before_calling", null, null);
                    }
                    Intent intent7 = new Intent(getActivity(), DialtactsActivity.class);
                    intent7.setAction("android.intent.action.DIAL");
                    intent7.setData(q.a(this.aw.e));
                    boolean z6 = false;
                    if (getActivity() != null) {
                        z6 = false;
                        if (getActivity().getIntent() != null) {
                            z6 = false;
                            if (getActivity().getIntent().getBooleanExtra(MainDialtactsActivity.ADD_CALL_MODE_KEY, false)) {
                                z6 = true;
                            }
                        }
                    }
                    intent7.putExtra(MainDialtactsActivity.ADD_CALL_MODE_KEY, z6);
                    try {
                        ImplicitIntentsUtil.startActivityInApp(getActivity(), intent7);
                        z = true;
                        break;
                    } catch (Exception e3) {
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.DIAL", q.a(this.aw.e)));
                        z = true;
                        break;
                    }
                case 2131296509:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Tag_this_number", null, null);
                    }
                    Intent intent8 = new Intent();
                    intent8.setAction("android.intent.action.ASUS_END_CALL_TAG");
                    intent8.putExtra("number", this.aw.e);
                    intent8.putExtra("isShowBlockCheck", true);
                    intent8.putExtra("markFrom", 2);
                    startActivityForResult(intent8, 149);
                    z = true;
                    break;
                case 2131296510:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Update_tag", null, null);
                    }
                    a(getActivity(), this.aw.e);
                    z = true;
                    break;
                case 2131296511:
                case 2131296803:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Delete_this_call_log", null, null);
                    }
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(17, getActivity(), "Deletion", "Delete methods", "Remove from call log", null);
                    i(this.au);
                    z = true;
                    break;
                case 2131296512:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Send_text_message", null, null);
                    }
                    c(this.aw);
                    z = true;
                    break;
                case 2131296513:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- Remove_from_block_list", null, null);
                    }
                    boolean z7 = this.G != null && !this.G.e();
                    Intent intent9 = new Intent();
                    intent9.setAction(BlockAndTagNumberActivity.ACTION);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.aw.e);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_TIMES, this.aw.p);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_DIALPAD_STATUS, z7);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_ID, this.aw.l);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_CONTACT_DISPLAYNAME, this.aw.f738b);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_FLAG, false);
                    intent9.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_ONLY_BLOCK_NUMBER, true);
                    intent9.putExtra(BlockAndTagNumberActivity.BLOCK_FROM_DIALER, false);
                    startActivityForResult(intent9, 149);
                    z = true;
                    break;
                case 2131296514:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- View_call_log", null, null);
                    }
                    ImplicitIntentsUtil.startActivityInAppIfPossible(getActivity(), this.q.c(this.au).a(getActivity()));
                    z = true;
                    break;
                case 2131296515:
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog_LongPress", "CallLog_LongPress- View_contact", null, null);
                    }
                    ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("android.intent.action.VIEW", this.aw.f737a));
                    z = true;
                    break;
                default:
                    if (this.G != null && this.G.g != null) {
                        Log.d("ResultListFragment", "switch to CallDetailFragment onContextItemSelected");
                        z = this.G.g.onContextItemSelected(menuItem);
                        break;
                    } else {
                        z = super.onContextItemSelected(menuItem);
                        break;
                    }
            }
        } else if (this.G == null || this.G.g == null) {
            z = false;
        } else {
            Log.d("ResultListFragment", "switch to CallDetailFragment onContextItemSelected");
            z = this.G.g.onContextItemSelected(menuItem);
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        Log.d("ResultListFragment", "onCreate()");
        super.onCreate(bundle);
        this.D = com.android.contacts.ezmode.h.a(getActivity());
        if (bundle != null) {
            this.r = bundle.getInt("CallTypeFilter");
            this.Z = bundle.getString("query");
            this.ak = this.r;
            this.s = bundle.getInt("SimTypeFilter");
            this.w = this.s;
            if (this.r == 4) {
                this.N = bundle.getString("vip_contact_selection");
            }
        }
        Activity activity = getActivity();
        if (com.android.contacts.j.h.b()) {
            if (PreferenceManager.getDefaultSharedPreferences(activity).getInt("keypad_mode", 0) != 1 || PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                Log.d("SmartDialUnbundle", "ResultListFragment init Unbundle SmartDial with SMART_SEARCH mode");
                com.android.contacts.j.h.a(0);
            } else {
                Log.d("SmartDialUnbundle", "ResultListFragment init Unbundle SmartDial with CONTACT_SEARCH mode");
                com.android.contacts.j.h.a(1);
            }
        }
        if (this.an == null) {
            activity.getContentResolver();
            this.an = new com.android.contacts.dialpad.j();
        }
        if (this.y == null) {
            this.y = new h(activity.getContentResolver());
        }
        if (this.p == null) {
            this.p = new com.android.contacts.dialpad.d(activity);
            this.p.o = this;
            this.p.l = this.y;
            this.p.q = this;
            com.android.contacts.dialpad.d dVar = this.p;
            dVar.r = this;
            dVar.k = this;
            if (this.z != null) {
                this.p.p = this.z;
                this.z = null;
            }
            setListAdapter(this.p);
        }
        if (this.q == null) {
            String a2 = q.a(getActivity());
            if (this.D) {
                this.q = new com.android.contacts.ezmode.a(getActivity(), this, new p(getActivity(), a2), this);
            } else {
                this.q = new com.android.contacts.calllog.e(getActivity(), this, new p(getActivity(), a2), this);
            }
            com.android.contacts.calllog.e eVar = this.q;
            eVar.v = this;
            eVar.u = this;
            this.q.h = this;
            this.q.r = this;
            boolean z = getResources().getConfiguration().orientation == 2;
            if (PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && z) {
                this.q.C = new e.j() { // from class: com.android.contacts.dialpad.ResultListFragment.1
                    @Override // com.android.contacts.calllog.e.j
                    public final void a(Intent intent) {
                        if (ResultListFragment.this.getFragmentManager() != null) {
                            AdditionalButtonFragment additionalButtonFragment = ResultListFragment.this.D ? (AdditionalButtonFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296802) : (AdditionalButtonFragment) ResultListFragment.this.getFragmentManager().findFragmentById(2131296320);
                            ResultListFragment.this.a(intent);
                            additionalButtonFragment.b();
                        }
                    }
                };
            }
        }
        this.Y = new m(getActivity(), getActivity().getContentResolver(), this);
        this.aj = (KeyguardManager) getActivity().getSystemService("keyguard");
        this.E = PreferenceManager.getDefaultSharedPreferences(getActivity());
        if (this.Y != null && this.r == 4) {
            if (this.N != null) {
                this.Y.f733a = this.N;
            } else {
                try {
                    new f(false).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Exception e2) {
                    Log.i("ResultListFragment", e2.toString());
                }
            }
        }
        this.at = true;
        if (com.android.contacts.skin.a.b()) {
            this.e = getResources().getColor(2131034153);
            getActivity();
            this.Q = com.android.contacts.skin.a.d();
        } else if (com.android.contacts.skin.a.c()) {
            this.e = com.android.contacts.skin.a.a(2);
            getActivity();
            this.Q = com.android.contacts.skin.a.d();
        }
        com.android.contacts.dialpad.g.a(this);
        if (getActivity() != null) {
            getActivity().getContentResolver().registerContentObserver(CallLog.CONTENT_URI, true, this.ao);
            getActivity().getContentResolver().registerContentObserver(ContactsContract.Contacts.CONTENT_URI, true, this.ap);
            getActivity().getContentResolver().registerContentObserver(SnapCallContentProvider.f3085b, true, this.aq);
            PreferenceManager.getDefaultSharedPreferences(getActivity()).registerOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        d.b bVar;
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        if (this.D) {
            MenuInflater menuInflater = getActivity().getMenuInflater();
            if (this.aw != null) {
                menuInflater.inflate(2131492887, contextMenu);
                if (this.aw.f738b != null) {
                    contextMenu.setHeaderTitle(this.aw.f738b);
                } else if (this.aw.e == null || this.aw.e.isEmpty()) {
                    contextMenu.setHeaderTitle(getResources().getString(2131755991));
                } else {
                    contextMenu.setHeaderTitle(this.aw.e);
                }
            }
        } else if (this.m == null || this.m.equals(BuildConfig.FLAVOR)) {
            MenuInflater menuInflater2 = getActivity().getMenuInflater();
            if (view == null || (view.getTag() != null && !(view.getTag() instanceof String))) {
                if (view == null) {
                    Log.d("ResultListFragment", "[CreateCallLogContextMenu] v is null");
                    return;
                } else if (view.getTag() != null && !(view.getTag() instanceof String)) {
                    Log.d("ResultListFragment", "[CreateCallLogContextMenu] ClassCastException");
                    return;
                }
            }
            if (this.aw == null) {
                Log.d("ResultListFragment", "[CreateCallLogContextMenu] mInfo is null");
                return;
            }
            menuInflater2.inflate(2131492879, contextMenu);
            MenuItem findItem = contextMenu.findItem(2131296514);
            MenuItem findItem2 = contextMenu.findItem(2131296515);
            MenuItem findItem3 = contextMenu.findItem(2131296501);
            MenuItem findItem4 = contextMenu.findItem(2131296504);
            MenuItem findItem5 = contextMenu.findItem(2131296505);
            MenuItem findItem6 = contextMenu.findItem(2131296506);
            MenuItem findItem7 = contextMenu.findItem(2131296507);
            MenuItem findItem8 = contextMenu.findItem(2131296502);
            MenuItem findItem9 = contextMenu.findItem(2131296513);
            MenuItem findItem10 = contextMenu.findItem(2131296509);
            MenuItem findItem11 = contextMenu.findItem(2131296510);
            if (!com.asus.a.c.e() || com.asus.a.c.a(this.aw.e) || this.aw.l > 0 || !this.i || !this.h) {
                findItem10.setVisible(false);
                findItem11.setVisible(false);
            }
            C();
            if (t.a((CharSequence) this.ax)) {
                if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
                    findItem.setVisible(false);
                }
                if (view.getTag() == null) {
                    findItem4.setTitle(getResources().getString(2131755788));
                    findItem2.setVisible(false);
                    contextMenu.setHeaderTitle(this.aw.e);
                } else {
                    findItem4.setTitle(getResources().getString(2131755787));
                    findItem3.setVisible(false);
                    contextMenu.setHeaderTitle(this.aw.f738b);
                }
                com.asus.blocklist.g.a(getActivity(), findItem8, findItem9, this.aw.e);
                findItem5.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
                findItem6.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
                if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2) || CallUtil.isUriNumber(this.ax)) {
                    findItem5.setVisible(false);
                    findItem6.setVisible(false);
                } else {
                    findItem5.setVisible(true);
                    findItem6.setVisible(true);
                    if (com.asus.prefersim.c.a(getActivity())) {
                        com.asus.prefersim.c.a(getActivity(), findItem5, findItem6, this.aw.e);
                    }
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                    findItem6.setVisible(false);
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                    findItem5.setVisible(false);
                }
                if (!C().b(this.ax)) {
                    contextMenu.findItem(2131296512).setVisible(false);
                }
                if (CallUtil.isUriNumber(this.ax)) {
                    contextMenu.findItem(2131296508).setVisible(false);
                }
                if (com.asus.b.a.a(getActivity())) {
                    findItem7.setVisible(true);
                } else {
                    findItem7.setVisible(false);
                }
                if (com.asus.a.a.h(getActivity(), this.ax)) {
                    findItem10.setVisible(false);
                } else {
                    findItem11.setVisible(false);
                }
            } else {
                findItem4.setTitle(getResources().getString(2131755788));
                findItem2.setVisible(false);
                findItem3.setVisible(false);
                findItem.setVisible(false);
                contextMenu.findItem(2131296512).setVisible(false);
                contextMenu.findItem(2131296508).setVisible(false);
                findItem8.setVisible(false);
                findItem9.setVisible(false);
                contextMenu.findItem(2131296503).setVisible(false);
                this.aw.e = this.ax;
                contextMenu.setHeaderTitle(C().a(this.ax, null));
                findItem5.setVisible(false);
                findItem6.setVisible(false);
                findItem10.setVisible(false);
                findItem11.setVisible(false);
                findItem7.setVisible(false);
            }
            findItem.setVisible(false);
            findItem3.setVisible(false);
        } else if (view != null && view.getTag() != null && (view.getTag() instanceof d.b) && (bVar = (d.b) view.getTag()) != null) {
            getActivity().getMenuInflater().inflate(2131492884, contextMenu);
            MenuItem findItem12 = contextMenu.findItem(2131296699);
            MenuItem findItem13 = contextMenu.findItem(2131296696);
            MenuItem findItem14 = contextMenu.findItem(2131296687);
            MenuItem findItem15 = contextMenu.findItem(2131296700);
            MenuItem findItem16 = contextMenu.findItem(2131296683);
            MenuItem findItem17 = contextMenu.findItem(2131296688);
            MenuItem findItem18 = contextMenu.findItem(2131296689);
            MenuItem findItem19 = contextMenu.findItem(2131296684);
            MenuItem findItem20 = contextMenu.findItem(2131296698);
            MenuItem findItem21 = contextMenu.findItem(2131296690);
            MenuItem findItem22 = contextMenu.findItem(2131296694);
            MenuItem findItem23 = contextMenu.findItem(2131296695);
            if (!com.asus.a.c.e() || com.asus.a.c.a(bVar.h) || !this.h || !this.i || bVar.f1020a > 0) {
                findItem22.setVisible(false);
                findItem23.setVisible(false);
            }
            C();
            if (!t.a((CharSequence) bVar.h) || CallUtil.isUriNumber(bVar.h)) {
                findItem13.setVisible(false);
                findItem14.setVisible(false);
                findItem12.setVisible(false);
                findItem15.setVisible(false);
                findItem16.setVisible(false);
                findItem19.setVisible(false);
                findItem20.setVisible(false);
                contextMenu.findItem(2131296697).setVisible(false);
                contextMenu.findItem(2131296691).setVisible(false);
                contextMenu.findItem(2131296686).setVisible(false);
                findItem22.setVisible(false);
                findItem23.setVisible(false);
            } else {
                findItem17.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
                findItem18.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
                if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2) || CallUtil.isUriNumber(bVar.h)) {
                    findItem17.setVisible(false);
                    findItem18.setVisible(false);
                } else {
                    findItem17.setVisible(true);
                    findItem18.setVisible(true);
                    if (com.asus.prefersim.c.a(getActivity())) {
                        com.asus.prefersim.c.a(getActivity(), findItem17, findItem18, bVar.h);
                    }
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
                    findItem18.setVisible(false);
                }
                if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
                    findItem17.setVisible(false);
                }
                if (bVar.e > 0) {
                    findItem14.setVisible(true);
                    findItem13.setVisible(true);
                    if (TextUtils.isEmpty(bVar.g)) {
                        findItem15.setVisible(false);
                        contextMenu.setHeaderTitle(bVar.h);
                        findItem14.setTitle(getResources().getString(2131755788));
                    } else {
                        findItem16.setVisible(false);
                        contextMenu.setHeaderTitle(bVar.g);
                        findItem14.setTitle(getResources().getString(2131755787));
                    }
                    com.asus.blocklist.g.a(getActivity(), findItem19, findItem20, bVar.h);
                } else {
                    com.asus.blocklist.g.a(getActivity(), findItem19, findItem20, this.av.f1020a);
                    findItem12.setVisible(false);
                    if (bVar.g == null) {
                        findItem15.setVisible(false);
                        contextMenu.setHeaderTitle(bVar.h);
                    } else {
                        findItem16.setVisible(false);
                        contextMenu.setHeaderTitle(bVar.g);
                    }
                    findItem14.setVisible(false);
                    findItem13.setVisible(false);
                }
                if (!C().b(bVar.h)) {
                    contextMenu.findItem(2131296697).setVisible(false);
                }
                if (CallUtil.isUriNumber(bVar.h)) {
                    contextMenu.findItem(2131296691).setVisible(false);
                }
                if (com.asus.a.a.h(getActivity(), this.ax)) {
                    findItem22.setVisible(false);
                } else {
                    findItem23.setVisible(false);
                }
                if (com.asus.b.a.a(getActivity())) {
                    findItem21.setVisible(true);
                } else {
                    findItem21.setVisible(false);
                }
            }
            findItem12.setVisible(false);
            findItem16.setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            menuInflater.inflate(2131492901, menu);
        }
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Log.d("ResultListFragment", "onCreateView()");
        if (this.W == null) {
            this.W = layoutInflater.inflate(2131427650, viewGroup, false);
            FrameLayout frameLayout = (FrameLayout) this.W.findViewById(2131297235);
            this.n = new SmartDialListView(getActivity());
            this.n.setId(16908298);
            this.n.setAnimationCacheEnabled(false);
            this.n.setScrollingCacheEnabled(false);
            if (!PhoneCapabilityTester.isUsingTwoPanes(getActivity()) && !this.D && !PhoneCapabilityTester.isHighendDevice(getActivity(), 1L)) {
                this.n.setLayoutParams(new FrameLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 189.0f, getResources().getDisplayMetrics())));
            }
            frameLayout.addView(this.n);
            this.n.setChoiceMode(1);
            this.n.setTextFilterEnabled(true);
            this.n.setDivider(null);
            this.n.setDividerHeight(0);
            this.n.setFastScrollEnabled(true);
            this.n.setEmptyView(this.W.findViewById(2131296787));
            this.n.setVerticalScrollBarEnabled(false);
            this.n.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.android.contacts.dialpad.ResultListFragment.14
                @Override // android.widget.AbsListView.OnScrollListener
                public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public final void onScrollStateChanged(AbsListView absListView, int i2) {
                    ResultListFragment.this.S = i2;
                    Handler handler = new Handler();
                    Runnable runnable = new Runnable() { // from class: com.android.contacts.dialpad.ResultListFragment.14.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (ResultListFragment.this.S == 0 && ResultListFragment.this.n != null) {
                                ResultListFragment.this.n.setFastScrollEnabled(false);
                            }
                        }
                    };
                    if (i2 == 0) {
                        if (PhoneCapabilityTester.IsAsusDevice() && ResultListFragment.this.n != null) {
                            handler.postDelayed(runnable, 1000L);
                        }
                        if (ResultListFragment.this.q != null) {
                            ResultListFragment.this.q.n = false;
                            com.android.contacts.calllog.e eVar = ResultListFragment.this.q;
                            if (eVar.o) {
                                eVar.notifyDataSetChanged();
                                eVar.o = false;
                            }
                        }
                        if (ResultListFragment.this.p != null) {
                            ResultListFragment.this.p.f = false;
                            com.android.contacts.dialpad.d dVar = ResultListFragment.this.p;
                            if (dVar.g) {
                                dVar.notifyDataSetChanged();
                                dVar.g = false;
                            }
                        }
                        if (com.android.contacts.j.h.b() && ResultListFragment.this.H != null) {
                            ResultListFragment.this.H.a(false);
                            return;
                        }
                        return;
                    }
                    if (PhoneCapabilityTester.IsAsusDevice() && ResultListFragment.this.n != null) {
                        ResultListFragment.this.n.setFastScrollEnabled(true);
                        handler.removeCallbacks(runnable);
                    }
                    ResultListFragment.this.q.n = true;
                    ResultListFragment.this.p.f = true;
                    if (com.android.contacts.j.h.b() && ResultListFragment.this.H != null) {
                        ResultListFragment.this.H.a(true);
                    }
                }
            });
            registerForContextMenu(this.n);
            this.af = new com.android.contacts.k.b();
            this.ag = (FrameLayout) this.W.findViewById(2131297542);
            FrameLayout frameLayout2 = (FrameLayout) this.W.findViewById(2131297235);
            if (com.android.contacts.skin.a.b()) {
                frameLayout2.setBackgroundResource(2131034127);
            } else if (com.android.contacts.skin.a.c()) {
                frameLayout2.setBackgroundColor(com.android.contacts.skin.a.a(3));
            }
            if (frameLayout2 != null) {
                com.asus.contacts.customize.a.a(getActivity(), frameLayout2, "customized_background_calllog", "customized_background_calllog_uri");
                Log.d("ResultListFragment", "set dialpad customized background");
            }
            this.o = this.W.findViewById(2131296356);
        }
        setHasOptionsMenu(true);
        return this.W;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        Log.d("ResultListFragment", "onDestroy()");
        super.onDestroy();
        if (this.p != null) {
            Cursor cursor = this.p.getCursor();
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
            this.p.changeCursor(null);
            com.android.contacts.dialpad.d dVar = this.p;
            dVar.o = null;
            dVar.q = null;
            dVar.r = null;
            this.p = null;
        }
        if (this.q != null) {
            this.q.c();
            this.q.b((Cursor) null);
            com.android.contacts.calllog.e eVar = this.q;
            eVar.C = null;
            eVar.h = null;
            eVar.v = null;
            eVar.r = null;
            this.q = null;
        }
        this.G = null;
        com.android.contacts.c.b.a(5);
        MemoryUtils.fixInputMethodManagerLeak(getActivity());
        if (this.y != null) {
            this.y.a();
            this.y = null;
        }
        if (com.android.contacts.j.h.b()) {
            if (com.android.contacts.j.h.c() == 0) {
                u();
            } else if (com.android.contacts.j.h.c() == 1) {
                v();
            } else {
                Log.w("SmartDialUnbundle", "releaseSmartDial error. Mode not supported");
            }
        }
        com.android.contacts.dialpad.g.b(this);
        if (getActivity() != null) {
            getActivity().getContentResolver().unregisterContentObserver(this.ao);
            getActivity().getContentResolver().unregisterContentObserver(this.ap);
            getActivity().getContentResolver().unregisterContentObserver(this.aq);
            PreferenceManager.getDefaultSharedPreferences(getActivity()).unregisterOnSharedPreferenceChangeListener(this);
        }
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public void onDestroyView() {
        Log.d("ResultListFragment", "onDestroyView()");
        this.P = null;
        super.onDestroyView();
        b(this.W);
        b(this.n);
        b(this.as);
        this.W = null;
        this.n = null;
        this.as = null;
    }

    @Override // android.app.Fragment
    public void onDetach() {
        Log.d("ResultListFragment", "onDetach()");
        super.onDetach();
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 2131296437:
                if (!RequestStoragePermissionsActivity.startPermissionActivity(getActivity())) {
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog", "CallLog- Call_log_backup", null, null);
                    } else {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(10, getActivity(), "CallLog", "CallLog- Call_log_backup", null, null);
                    }
                    com.android.contacts.calllog.a.a(false, true).show(getFragmentManager(), "back up dialog");
                    z = true;
                    break;
                } else {
                    z = false;
                    break;
                }
            case 2131296443:
                try {
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog", "CallLog- Call_duration", null, null);
                    } else {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(10, getActivity(), "CallLog", "CallLog- Call_duration", null, null);
                    }
                    if (com.android.contacts.simcardmanage.b.a(getActivity())) {
                        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
                        intent.setClassName("com.android.phone", "com.android.phone.TabPreferenceActivity");
                        intent.putExtra("preferenceKey", "button_call_duration_key");
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), intent, false);
                    } else {
                        Intent intent2 = new Intent();
                        intent2.setClassName("com.android.phone", "com.android.phone.CallDuration");
                        ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), intent2, false);
                    }
                } catch (ActivityNotFoundException e2) {
                    Log.w("ResultListFragment", e2.toString());
                    Toast.makeText(getActivity(), "ActivityNotFoundException: com.android.phone.CallDuration", 0).show();
                }
                z = true;
                break;
            case 2131296482:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "CallLog", "CallLog- Call_log_restore", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, getActivity(), "CallLog", "CallLog- Call_log_restore", null, null);
                }
                ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("com.android.contacts.calllog.RESTORE"));
                z = true;
                break;
            case 2131296483:
                if (!RequestStoragePermissionsActivity.startPermissionActivity(getActivity())) {
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(9, getActivity(), "CallLog", "CallLog- Call_log_send_backup", null, null);
                    } else {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(10, getActivity(), "CallLog", "CallLog- Call_log_send_backup", null, null);
                    }
                    com.android.contacts.calllog.a.a(true, B()).show(getFragmentManager(), "send out dialog");
                    z = true;
                    break;
                } else {
                    z = false;
                    break;
                }
            case 2131297096:
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(9, getActivity(), "CallLog", "CallLog- Delete_multiple_call_logs", null, null);
                } else {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, getActivity(), "CallLog", "CallLog- Delete_multiple_call_logs", null, null);
                }
                ImplicitIntentsUtil.startActivityInApp(getActivity(), new Intent("android.intent.action.CALL_LOG_MULTI_PICKER"));
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
        View currentFocus;
        Log.d("ResultListFragment", "onPause()");
        super.onPause();
        if (this.am && (currentFocus = getActivity().getCurrentFocus()) != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
            if (!(inputMethodManager == null || currentFocus == null)) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
            }
            currentFocus.clearFocus();
        }
        if (this.q != null) {
            this.q.c();
        }
        j();
        if (this.j) {
            A();
            this.j = false;
        }
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        if (PhoneCapabilityTester.isUsingTwoPanes(getActivity())) {
            MenuItem findItem = menu.findItem(2131296443);
            MenuItem findItem2 = menu.findItem(2131297096);
            MenuItem findItem3 = menu.findItem(2131296437);
            MenuItem findItem4 = menu.findItem(2131296482);
            MenuItem findItem5 = menu.findItem(2131296483);
            if (findItem2 == null || this.q == null || !this.T || (this.m != null && !this.m.equals(BuildConfig.FLAVOR))) {
                findItem2.setVisible(false);
                findItem.setVisible(false);
                findItem3.setVisible(false);
                findItem4.setVisible(false);
                findItem5.setVisible(false);
            } else {
                findItem2.setVisible(true);
                findItem4.setVisible(PhoneCapabilityTester.isRestoreFileExist());
                findItem3.setVisible(B());
                boolean z = true;
                if (!B()) {
                    z = PhoneCapabilityTester.isRestoreFileExist();
                }
                findItem5.setVisible(z);
                if (c(getActivity())) {
                    findItem.setVisible(PhoneCapabilityTester.isInOwnerMode(getActivity()));
                } else {
                    findItem.setVisible(false);
                }
            }
            AsusRedPointNotificationDualPanelHelper instance = AsusRedPointNotificationDualPanelHelper.getInstance();
            instance.addMenuItem(0, menu.findItem(2131297096));
            instance.addMenuItem(0, menu.findItem(2131296443));
            instance.addMenuItem(0, menu.findItem(2131296437));
            instance.addMenuItem(0, menu.findItem(2131296482));
            instance.addMenuItem(0, menu.findItem(2131296483));
            instance.spanningMenuItemList(getActivity(), 0);
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        Log.d("ResultListFragment", "onResume()");
        super.onResume();
        if (this.q != null) {
            com.android.contacts.calllog.e eVar = this.q;
            Resources resources = eVar.g.getResources();
            eVar.A = new com.android.contacts.calllog.g(new z(eVar.g, resources, new n(resources), eVar.B), eVar.B, resources);
            this.q.w = this.K.format(new Date());
            this.q.x = this.K.format(new Date(System.currentTimeMillis() - 86400000));
            com.android.contacts.calllog.e eVar2 = this.q;
            eVar2.p = eVar2.C != null;
            eVar2.q = PhoneCapabilityTester.isATTSku();
            if (eVar2.g != null) {
                eVar2.j = com.asus.a.a.h(eVar2.g);
                if (eVar2.j) {
                    com.asus.a.c c2 = com.asus.a.c.c();
                    Context context = eVar2.g;
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis - defaultSharedPreferences.getLong("callguardGA_last_time", 0L) > 86400000) {
                        new c.AsyncTaskC0063c(context).execute(new Void[0]);
                    }
                    defaultSharedPreferences.edit().putLong("callguardGA_last_time", currentTimeMillis).apply();
                }
                eVar2.i = com.asus.a.a.d(eVar2.g);
                eVar2.l = com.android.contacts.simcardmanage.b.a(eVar2.g);
                eVar2.k = com.android.contacts.ezmode.h.a(eVar2.g);
                if (DateFormat.is24HourFormat(eVar2.g)) {
                    eVar2.m = true;
                } else {
                    eVar2.m = false;
                }
                Log.d("CallLogAdapter", "setAdapterArgs: mIsDualPane:" + eVar2.p + ", mIsATTSku:" + eVar2.q + ", mIsMultiSimEnable:" + eVar2.l + ", mIsEngineOn:" + eVar2.i + ", mIsEZmodeEnable:" + eVar2.k);
            }
            eVar2.t = eVar2.s.getBoolean("swipe_to_do_action", false) && !eVar2.k;
        }
        this.g = this.E.getBoolean("swipe_to_do_action", false);
        boolean z = this.g && !this.D;
        if (this.p != null) {
            this.p.j = z;
        }
        if (!(!com.android.contacts.j.h.b() || this.H == null || this.H.l == null)) {
            this.H.l.p = z;
        }
        d(2);
        if (com.android.contacts.simcardmanage.b.a(getActivity())) {
            String g2 = com.android.contacts.simcardmanage.b.g(getActivity(), 0);
            String g3 = com.android.contacts.simcardmanage.b.g(getActivity(), 1);
            this.E.edit().putInt("sim1_imsi", com.android.contacts.simcardmanage.b.a(g2)).apply();
            this.E.edit().putInt("sim2_imsi", com.android.contacts.simcardmanage.b.a(g3)).apply();
        }
        boolean hasUserRestriction = ((UserManager) getActivity().getApplicationContext().getSystemService("user")).hasUserRestriction("no_outgoing_calls");
        if (this.p != null) {
            this.p.t = hasUserRestriction;
            this.p.s = this.h;
        }
        Looper.myQueue().addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.android.contacts.dialpad.ResultListFragment.15
            @Override // android.os.MessageQueue.IdleHandler
            public final boolean queueIdle() {
                if (ResultListFragment.this.n == null) {
                    return false;
                }
                ResultListFragment.this.n.setFastScrollEnabled(false);
                return false;
            }
        });
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        Log.d("ResultListFragment", "onSaveInstanceState()");
        super.onSaveInstanceState(bundle);
        bundle.putInt("CallTypeFilter", this.r);
        bundle.putString("query", this.Z);
        bundle.putInt("SimTypeFilter", this.s);
        if (this.r == 4) {
            bundle.putString("vip_contact_selection", this.N);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        String str2 = null;
        if (str.equals("callguard_number_to_refresh")) {
            String string = sharedPreferences.getString(str, null);
            if (!TextUtils.isEmpty(string)) {
                str2 = string.split(",")[0];
            }
            if (this.q != null) {
                this.q.notifyDataSetChanged();
                Log.d("ResultListFragment", "onSharedPreferenceChanged number:" + com.asus.a.a.c(str2));
            }
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        Log.d("ResultListFragment", "onStart()");
        super.onStart();
        this.h = com.asus.a.a.d(getActivity());
        this.i = com.asus.a.a.h(getActivity());
        if (this.h) {
            com.android.contacts.asuscallerid.d.a().a(this.q);
            com.android.contacts.asuscallerid.d.a().a(this.p);
            if (!(!com.android.contacts.j.h.b() || this.H == null || this.H.l == null)) {
                com.android.contacts.asuscallerid.d.a().a(this.H.l);
            }
        }
        if (this.D) {
            k.a(getActivity()).c();
            this.al = true;
            i();
        } else if (com.android.contacts.j.h.b()) {
            if (com.android.contacts.j.h.c() == 0) {
                if (TextUtils.isEmpty(this.m)) {
                    i();
                }
                a(getActivity());
            } else if (com.android.contacts.j.h.c() == 1) {
                b(getActivity());
            } else {
                Log.w("SmartDialUnbundle", "releaseSmartDial error. Mode not supported");
            }
        }
        com.android.contacts.c.b.a(6, this);
        if (this.n != null) {
            this.g = this.E.getBoolean("swipe_to_do_action", false);
            Log.d("ResultListFragment", "is ezmode? " + this.D);
            if (!this.g || this.D) {
                Log.d("ResultListFragment", "else case, set setOnTouchListener = null");
                this.n.setOnTouchListener(null);
                return;
            }
            if (this.f == null) {
                this.f = new ae(getActivity(), this.n);
            }
            this.n.setOnTouchListener(this.f);
        }
    }

    @Override // android.app.Fragment
    public void onStop() {
        Log.d("ResultListFragment", "onStop()");
        az = 0;
        super.onStop();
        if (this.h) {
            com.android.contacts.asuscallerid.d.a().b(this.q);
            com.android.contacts.asuscallerid.d.a().b(this.p);
        }
        com.android.contacts.c.b.a(6);
        if (this.p != null) {
            this.p.a();
            this.p.c.clear();
            com.android.contacts.dialpad.d dVar = this.p;
            dVar.h.clear();
            dVar.i.clear();
        }
        if (this.q != null) {
            this.q.d.clear();
            this.q.b();
            if (this.q.B != null) {
                t.a();
            }
            com.android.contacts.calllog.e.e();
        }
        if (this.ab != null) {
            this.ab.dismiss();
            this.ab = null;
        }
        if (this.ac != null) {
            this.ac.dismiss();
            this.ac = null;
        }
        if (this.ad != null) {
            this.ad.dismiss();
            this.ad = null;
        }
        if (!com.android.contacts.j.h.b()) {
            return;
        }
        if (com.android.contacts.j.h.c() == 0) {
            if (TextUtils.isEmpty(this.m)) {
                u();
            }
        } else if (com.android.contacts.j.h.c() == 1) {
            v();
        } else {
            Log.w("SmartDialUnbundle", "releaseSmartDial error. Mode not supported");
        }
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        Log.d("ResultListFragment", "onTrimMemory(), level = " + i2);
        super.onTrimMemory(i2);
    }

    @Override // android.app.ListFragment, android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    public final void p() {
        boolean z = getResources().getConfiguration().orientation == 2;
        if (this.G != null && this.G.g != null && z) {
            if (isAdded()) {
                this.n.setItemChecked(k, false);
            }
            ((CallDetailFragment) getFragmentManager().findFragmentById(2131296685)).a();
        }
    }

    public final void q() {
        if (this.q != null && this.q.c(k) != null) {
            boolean z = getResources().getConfiguration().orientation == 2;
            if (this.G != null && this.G.g != null && z) {
                if (isAdded()) {
                    this.n.setItemChecked(k, true);
                }
                ((CallDetailFragment) getFragmentManager().findFragmentById(2131296685)).b();
            }
        }
    }

    public final void t() {
        this.f901b = PhoneCapabilityTester.isSimActive(getActivity(), 1);
        this.c = PhoneCapabilityTester.isSimActive(getActivity(), 2);
        if (this.q != null) {
            com.android.contacts.calllog.e eVar = this.q;
            boolean z = this.f901b;
            boolean z2 = this.c;
            eVar.e = z;
            eVar.f = z2;
        }
        if (this.p != null) {
            com.android.contacts.dialpad.d dVar = this.p;
            boolean z3 = this.f901b;
            boolean z4 = this.c;
            dVar.d = z3;
            dVar.e = z4;
        }
        if (com.android.contacts.j.h.b() && com.android.contacts.j.h.c() == 0 && this.H != null && this.H.l != null) {
            com.android.contacts.j.g gVar = this.H.l;
            boolean z5 = this.f901b;
            boolean z6 = this.c;
            gVar.g = z5;
            gVar.h = z6;
        }
    }

    public final void u() {
        com.android.contacts.j.h.b(1);
        com.android.contacts.j.j.a().e();
        if (this.H != null) {
            this.H.l.d = null;
            this.H.l.f = null;
            this.H.l.a((g.d) null);
            this.H.l.a();
            this.H.l.b();
            if (this.h) {
                com.android.contacts.asuscallerid.d.a().b(this.H.l);
            }
            com.android.contacts.j.f fVar = this.H;
            Log.d("SmartDialUnbundle", "QueryResultList finish");
            fVar.j = null;
            fVar.h = true;
            if (fVar.f != null) {
                fVar.f.clear();
                fVar.f = null;
            }
            if (fVar.g != null) {
                synchronized (fVar.g) {
                    fVar.g.a();
                    fVar.g = null;
                }
                if (fVar.l != null) {
                    fVar.l.notifyDataSetChanged();
                }
            }
            if (fVar.l != null) {
                fVar.l.a();
                fVar.l.b();
                fVar.l = null;
            }
            if (fVar.f1524a != null) {
                fVar.f1524a.a();
                fVar.f1524a.b();
                fVar.f1524a = null;
            }
            if (fVar.f1525b != null) {
                fVar.f1525b.a();
                fVar.f1525b.b();
                fVar.f1525b = null;
            }
            if (fVar.c != null) {
                com.android.contacts.j.m mVar = fVar.c;
                Log.d("SmartDialUnbundle", "SmartDialWordingTask cancel");
                mVar.f1557a = true;
                fVar.c = null;
            }
            if (fVar.e != null) {
                com.android.contacts.j.d dVar = fVar.e;
                if (dVar.f1518a != null) {
                    dVar.f1518a.removeMessages(0);
                }
                dVar.quitSafely();
                fVar.e = null;
            }
            this.H = null;
        }
        this.aC = null;
    }

    public final void v() {
        if (this.aB != null) {
            this.aB.a();
            this.aB = null;
        }
        if (this.H != null) {
            this.H.l.a();
            this.H.l.b();
        }
    }

    public final void w() {
        if (!this.D) {
            if (com.android.contacts.j.h.c() == 0) {
                if (TextUtils.isEmpty(this.m)) {
                    this.x = true;
                    i();
                    if (this.H != null && this.H.d() < com.android.contacts.j.j.a().f1552b) {
                        this.H.a();
                    }
                }
                if (this.H != null) {
                    this.H.a(this.m, true);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(this.m)) {
                this.x = true;
                i();
                if (this.H != null && this.H.d() < com.android.contacts.j.j.a().f1552b) {
                    this.H.a();
                }
            }
            if (this.aB != null) {
                c cVar = this.aB;
                cVar.f960b = System.currentTimeMillis();
                cVar.a(0);
                if (ResultListFragment.this.m != null && !ResultListFragment.this.m.equals(BuildConfig.FLAVOR)) {
                    cVar.a(0, Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(ResultListFragment.this.m)), null, null, null);
                } else if (ResultListFragment.this.G != null) {
                    ResultListFragment.this.G.b(" ", true);
                }
            }
        }
    }
}
