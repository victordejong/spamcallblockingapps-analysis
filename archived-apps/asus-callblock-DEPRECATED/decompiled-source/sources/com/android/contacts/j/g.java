package com.android.contacts.j;

import android.content.ContentUris;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.ae;
import com.android.contacts.asuscallerid.d;
import com.android.contacts.calllog.t;
import com.android.contacts.dialpad.AsusQuickContactBadge;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.dialpad.d;
import com.android.contacts.j.b;
import com.android.contacts.k;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/g.class */
public final class g extends BaseAdapter implements d.a {
    private int A;
    private int B;
    private Drawable D;
    private Drawable E;
    private Drawable F;
    private Drawable G;
    private Drawable H;
    private final k I;
    private SharedPreferences M;
    private final LinkedList<a> N;
    private HashMap<String, d.b> O;
    private final t P;
    private h Q;
    private Handler R;

    /* renamed from: a  reason: collision with root package name */
    public Context f1526a;
    public boolean g;
    public boolean h;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    protected int r;
    protected int s;
    protected boolean t;
    public ae.c u;
    private LayoutInflater x;
    private com.android.contacts.j.f y;
    private int z;
    private final String v = "SmartDialUnbundle";
    private final boolean w = false;

    /* renamed from: b  reason: collision with root package name */
    public String f1527b = null;
    public String c = null;
    public b d = null;
    public ResultListFragment.e e = null;
    public c f = null;
    private d C = null;
    private LongSparseArray<Boolean> J = new LongSparseArray<>();
    public boolean i = false;
    private boolean K = false;
    private Map<String, Bitmap> L = new HashMap();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$a.class */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        d.b f1530a;

        public a(d.b bVar) {
            this.f1530a = bVar;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$b.class */
    public interface b {
        void g(d.b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$c.class */
    public interface c {
        int c(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$d.class */
    public interface d {
        boolean f(int i, View view, d.b bVar);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$e.class */
    private final class e implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private com.android.contacts.j.i f1532b;
        private d.b c;

        e(com.android.contacts.j.i iVar, d.b bVar) {
            this.f1532b = iVar;
            this.c = bVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Integer num = (Integer) view.getTag();
            if (g.this.e == null || num == null) {
                Log.w("SmartDialUnbundle", "OnActionClickListener unhandle case");
                return;
            }
            long[] jArr = new long[this.f1532b.f.size()];
            for (int i = 0; i < this.f1532b.f.size(); i++) {
                jArr[i] = this.f1532b.f.get(i).f1548b;
            }
            g.this.e.a(this.c, num.intValue(), jArr);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$f.class */
    private final class f implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f1534b;
        private View c;
        private d.b d;
        private i e;

        f(int i, d.b bVar, View view, i iVar) {
            this.f1534b = i;
            this.d = bVar;
            this.c = view;
            this.e = iVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Integer num = (Integer) view.getTag();
            if (num == null) {
                if (this.c instanceof AbsListView) {
                    ((AbsListView) this.c).setItemChecked(this.f1534b, true);
                    g.this.f.c(this.f1534b);
                }
                if (g.this.d != null) {
                    g.this.d.g(this.d);
                }
            } else if (g.this.e != null && num != null) {
                g.this.e.a(this.d, num.intValue());
            }
        }
    }

    /* renamed from: com.android.contacts.j.g$g  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$g.class */
    private final class View$OnLongClickListenerC0044g implements View.OnLongClickListener {

        /* renamed from: b  reason: collision with root package name */
        private int f1536b;
        private View c;
        private d.b d;

        View$OnLongClickListenerC0044g(int i, View view, d.b bVar) {
            this.f1536b = i;
            this.c = view;
            this.d = bVar;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            g.this.C.f(this.f1536b, this.c, this.d);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$h.class */
    public final class h extends Thread {

        /* renamed from: a  reason: collision with root package name */
        volatile boolean f1537a = false;

        public h() {
            super("CallLogAdapter.QueryThread");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            boolean z;
            while (!this.f1537a) {
                a aVar = null;
                synchronized (g.this.N) {
                    if (!g.this.N.isEmpty()) {
                        aVar = (a) g.this.N.removeFirst();
                    }
                }
                if (aVar != null) {
                    z = g.a(g.this, aVar.f1530a);
                } else {
                    try {
                        synchronized (g.this.N) {
                            g.this.N.wait(1000L);
                        }
                        z = false;
                    } catch (InterruptedException e) {
                        z = false;
                    }
                }
                if (z) {
                    g.this.R.sendEmptyMessage(1);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$i.class */
    public static final class i {
        TextView A;
        ImageView B;
        ImageView C;
        View D;
        public ImageView E;
        public ViewStub F;
        public ViewStub G;
        public View H;

        /* renamed from: a  reason: collision with root package name */
        public View f1539a;

        /* renamed from: b  reason: collision with root package name */
        TextView f1540b;
        TextView c;
        TextView d;
        AsusQuickContactBadge e;
        ImageView f;
        ImageView g;
        ImageButton h;
        ImageView i;
        ImageView j;
        TextView k;
        ImageView l;
        TextView m;
        TextView n;
        ViewStub o;
        ViewStub p;
        ViewStub q;
        ViewStub r;
        ViewStub s;
        ViewStub t;
        ViewStub u;
        FrameLayout v;
        ViewStub w;
        TextView x;
        TextView y;
        View z;
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/j/g$j.class */
    private final class j extends AsyncTask<a.c, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private i f1542b;
        private a.c c;

        j(i iVar) {
            this.f1542b = iVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(a.c[] cVarArr) {
            Bitmap bitmap;
            a.c[] cVarArr2 = cVarArr;
            if (g.this.f1526a != null) {
                this.c = cVarArr2[0];
                bitmap = com.asus.a.a.a(g.this.f1526a, this.c);
            } else {
                bitmap = null;
            }
            return bitmap;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap2 != null) {
                super.onPostExecute(bitmap2);
                if (this.f1542b != null) {
                    g.this.L.put(this.c.f2355a, bitmap2);
                    this.f1542b.e.setImageBitmap(bitmap2);
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public g(Context context, com.android.contacts.j.f fVar) {
        this.t = com.android.contacts.skin.a.b() || com.android.contacts.skin.a.c();
        this.O = new HashMap<>();
        this.R = new Handler() { // from class: com.android.contacts.j.g.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        g.this.notifyDataSetChanged();
                        return;
                    case 2:
                        g.this.c();
                        return;
                    default:
                        return;
                }
            }
        };
        this.u = null;
        this.f1526a = context;
        this.x = LayoutInflater.from(this.f1526a);
        this.y = fVar;
        this.B = this.f1526a.getResources().getColor(2131034193);
        this.I = k.a(context);
        this.N = new LinkedList<>();
        this.P = new t(this.f1526a);
        this.M = PreferenceManager.getDefaultSharedPreferences(this.f1526a);
        this.p = this.M.getBoolean("swipe_to_do_action", false);
        if (com.android.contacts.skin.a.b()) {
            this.r = context.getResources().getColor(2131034161);
            this.s = context.getResources().getColor(2131034197);
            this.z = context.getResources().getColor(2131034159);
            this.A = this.f1526a.getResources().getColor(2131034194);
        } else if (com.android.contacts.skin.a.c()) {
            this.r = com.android.contacts.skin.a.a(2);
            this.s = com.android.contacts.skin.a.a(2);
            this.z = com.android.contacts.skin.a.a(2);
            this.A = com.android.contacts.skin.a.a(1);
        } else {
            this.z = context.getResources().getColor(2131034203);
            this.A = this.f1526a.getResources().getColor(2131034194);
        }
        this.D = context.getResources().getDrawable(2131165323);
        this.E = context.getResources().getDrawable(2131165325);
        this.F = context.getResources().getDrawable(2131165324);
        this.H = context.getResources().getDrawable(2131165323);
    }

    private SpannableString a(com.android.contacts.j.a aVar, String str) {
        SpannableString spannableString;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        String str2 = aVar.f1508a.f1546b[aVar.f1509b];
        String a2 = com.android.contacts.j.h.a(str2);
        int i7 = 0;
        int i8 = 0;
        boolean z2 = false;
        boolean z3 = false;
        if (str2 == null) {
            Log.w("SmartDialUnbundle", "[handleSpannableString] " + str + ", raw_values is null");
            spannableString = new SpannableString(BuildConfig.FLAVOR);
        } else {
            spannableString = new SpannableString(str2);
        }
        int i9 = 0;
        while (i9 < aVar.c.length) {
            try {
                if (z2 || !aVar.c[i9]) {
                    i2 = i8;
                    i3 = i7;
                    if (z2) {
                        i2 = i8;
                        i3 = i7;
                        if (!aVar.c[i9]) {
                            i2 = i9;
                            i3 = i7;
                        }
                    }
                } else {
                    i3 = i9;
                    i2 = i8;
                }
                int i10 = i2;
                if (aVar.c[i9]) {
                    i10 = i2;
                    if (i9 == aVar.c.length - 1) {
                        i10 = i9 + 1;
                    }
                }
                z3 = z3;
                i8 = i10;
                i7 = i3;
                if (i3 >= 0) {
                    z3 = z3;
                    i8 = i10;
                    i7 = i3;
                    if (i10 > 0) {
                        z3 = z3;
                        i8 = i10;
                        i7 = i3;
                        if (i10 > i3) {
                            if (aVar.f1509b > 0) {
                                int i11 = 0;
                                boolean z4 = false;
                                boolean z5 = false;
                                int i12 = 0;
                                int i13 = i3;
                                int i14 = i10;
                                while (true) {
                                    int i15 = i12 + 1;
                                    char charAt = str2.charAt(i12);
                                    if (charAt < '0' || charAt > '9') {
                                        i12 = i15;
                                    } else {
                                        while (true) {
                                            i5 = i11 + 1;
                                            char charAt2 = a2.charAt(i11);
                                            i11 = i5;
                                            if (charAt2 >= '0') {
                                                i11 = i5;
                                                if (charAt2 <= '9') {
                                                    break;
                                                }
                                            }
                                        }
                                        i4 = i13;
                                        boolean z6 = z4;
                                        if (i13 == i5 - 1) {
                                            i4 = i13;
                                            z6 = z4;
                                            if (!z4) {
                                                i4 = i15 - 1;
                                                z6 = true;
                                            }
                                        }
                                        if (i14 != i5 || z5) {
                                            z = z5;
                                            i6 = i14;
                                        } else {
                                            z = true;
                                            i6 = i15;
                                        }
                                        if ((!z6 || !z) && str2.length() > i15 && a2.length() > i5) {
                                            i13 = i4;
                                            i14 = i6;
                                            z5 = z;
                                            z4 = z6;
                                            i11 = i5;
                                            i12 = i15;
                                        }
                                    }
                                }
                                i10 = i6;
                            } else {
                                i4 = i3;
                            }
                            int i16 = (!aVar.d || i4 != 1) ? i4 : 0;
                            z3 = true;
                            spannableString.setSpan(new ForegroundColorSpan(this.A), i16, i10, 0);
                            spannableString.setSpan(new BackgroundColorSpan(this.B), i16, i10, 0);
                            i7 = 0;
                            i8 = 0;
                        }
                    }
                }
                z2 = aVar.c[i9];
                i9++;
            } catch (Exception e2) {
                Log.e("SmartDialUnbundle", "handleSpannableString error! Error Message: " + e2.toString());
                Log.e("SmartDialUnbundle", "span str=" + a2);
                Log.e("SmartDialUnbundle", "span raw str=" + Arrays.toString(aVar.c));
                e2.printStackTrace();
            }
        }
        if (!z3 && aVar.d) {
            spannableString.setSpan(new ForegroundColorSpan(this.A), 0, 1, 0);
            spannableString.setSpan(new BackgroundColorSpan(this.B), 0, 1, 0);
        }
        return spannableString;
    }

    private d.b a(int i2, com.android.contacts.j.i iVar) {
        String str;
        String str2;
        int i3 = 0;
        d.b bVar = new d.b();
        bVar.k = Integer.parseInt(iVar.e[3]);
        bVar.f1021b = iVar.h ? iVar.f.get(iVar.f.size() - 1).f1548b : 0;
        bVar.e = iVar.h ? iVar.f.get(iVar.f.size() - 1).f1547a : 0L;
        bVar.f1020a = (int) iVar.f1545a;
        bVar.i = iVar.d;
        b.a a2 = this.y.a(i2);
        if (a2 == null) {
            str = new String(BuildConfig.FLAVOR);
        } else {
            str = new String(BuildConfig.FLAVOR);
            if (a2.c && a2.d) {
                str = a2.e.f1508a.f1546b[a2.e.f1509b];
            } else if (a2.c) {
                str = a2.e.f1508a.f1546b[a2.e.f1509b];
            } else if (a2.d) {
                str = a2.f.f1508a.g == 0 ? BuildConfig.FLAVOR : a2.f.f1508a.f1546b[0];
            }
        }
        bVar.g = str;
        b.a a3 = this.y.a(i2);
        if (a3 == null) {
            str2 = new String(BuildConfig.FLAVOR);
        } else {
            str2 = new String(BuildConfig.FLAVOR);
            if (a3.c && a3.d) {
                str2 = a3.f.f1508a.f1546b[a3.f.f1509b];
            } else if (a3.c) {
                str2 = a3.e.f1508a.f1546b.length > a3.g ? a3.e.f1508a.f1546b[a3.g] : BuildConfig.FLAVOR;
            } else if (a3.d) {
                str2 = a3.f.f1508a.f1546b[a3.f.f1509b];
            }
        }
        bVar.h = str2;
        bVar.d = Integer.parseInt(iVar.e[1]);
        bVar.j = Integer.parseInt(iVar.e[2]);
        bVar.c = iVar.h ? iVar.f.get(iVar.f.size() - 1).f : 0;
        bVar.p = iVar.h ? iVar.f.get(iVar.f.size() - 1).h : "0";
        bVar.l = iVar.h ? iVar.f.get(iVar.f.size() - 1).e : 0;
        if (iVar.h) {
            i3 = iVar.f.get(iVar.f.size() - 1).g;
        }
        bVar.n = i3;
        bVar.q = iVar.h ? iVar.f.get(iVar.f.size() - 1).i : "0";
        bVar.r = iVar.h ? iVar.f.get(iVar.f.size() - 1).j : "0";
        try {
            if (iVar.e[5] == null || Long.parseLong(iVar.e[5]) != 1) {
                bVar.t = 0L;
            } else {
                bVar.t = 1L;
            }
        } catch (NumberFormatException e2) {
            Log.e("SmartDialUnbundle", "parse long failed: " + e2.getMessage());
            bVar.t = 0L;
        }
        return bVar;
    }

    static /* synthetic */ boolean a(g gVar, d.b bVar) {
        boolean z;
        if (!TextUtils.isEmpty(bVar.h) && gVar.O.containsKey(bVar.h)) {
            z = false;
        } else if (bVar != null) {
            if (!CallUtil.isUriNumber(bVar.h)) {
                bVar.v = gVar.P.c(bVar.h);
            }
            bVar.u = PhoneCapabilityTester.isSimActive(gVar.f1526a, 1) ? com.android.contacts.simcardmanage.b.a(1, bVar.h) : PhoneCapabilityTester.isSimActive(gVar.f1526a, 2) ? com.android.contacts.simcardmanage.b.a(2, bVar.h) : PhoneNumberUtils.isEmergencyNumber(bVar.h);
            gVar.O.put(bVar.h, bVar);
            z = bVar.u || bVar.v;
        } else {
            Log.d("SmartDialUnbundle", "Info is null");
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this) {
            if (this.Q == null) {
                this.Q = new h();
                this.Q.setPriority(1);
                this.Q.start();
            }
        }
    }

    public final void a() {
        synchronized (this) {
            this.R.removeMessages(2);
            if (this.Q != null) {
                this.Q.f1537a = true;
                this.Q.interrupt();
                this.Q = null;
            }
        }
    }

    @Override // com.android.contacts.asuscallerid.d.a
    public final void a(d.c cVar) {
        if ("4".equals(cVar.d) && cVar.a() != null && ((Integer) cVar.a().getTag(2131296500)).intValue() == cVar.f606b) {
            if (!this.i) {
                notifyDataSetChanged();
            } else {
                this.K = true;
            }
        }
    }

    public final void a(d dVar) {
        this.C = dVar;
        this.u = (ae.c) dVar;
    }

    public final void b() {
        this.L.clear();
        this.O.clear();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.y.c();
    }

    @Override // android.widget.Adapter
    public final /* synthetic */ Object getItem(int i2) {
        return this.y.a(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        i iVar;
        View view2;
        boolean z;
        SpannableString spannableString;
        int i3;
        System.currentTimeMillis();
        if (view == null) {
            view2 = this.x.inflate(2131427663, viewGroup, false);
            iVar = new i();
            iVar.f1539a = view2.findViewById(2131297188);
            iVar.h = (ImageButton) view2.findViewById(2131296279);
            iVar.e = (AsusQuickContactBadge) view2.findViewById(2131297202);
            iVar.f = (ImageView) view2.findViewById(2131297295);
            iVar.g = (ImageView) view2.findViewById(2131296445);
            iVar.f1540b = (TextView) view2.findViewById(2131297104);
            iVar.c = (TextView) view2.findViewById(2131297152);
            iVar.d = (TextView) view2.findViewById(2131297399);
            iVar.i = (ImageView) view2.findViewById(2131296997);
            iVar.r = (ViewStub) view2.findViewById(2131296379);
            iVar.k = (TextView) view2.findViewById(2131296638);
            iVar.p = (ViewStub) view2.findViewById(2131296538);
            iVar.q = (ViewStub) view2.findViewById(2131296540);
            iVar.o = (ViewStub) view2.findViewById(2131296539);
            iVar.w = (ViewStub) view2.findViewById(2131297313);
            iVar.x = (TextView) view2.findViewById(2131297315);
            iVar.y = (TextView) view2.findViewById(2131297314);
            iVar.z = view2.findViewById(2131297316);
            iVar.G = (ViewStub) view2.findViewById(2131297320);
            iVar.u = (ViewStub) view2.findViewById(2131296444);
            iVar.s = (ViewStub) view2.findViewById(2131296498);
            iVar.t = (ViewStub) view2.findViewById(2131297321);
            iVar.D = view2.findViewById(2131296974);
            iVar.F = (ViewStub) view2.findViewById(2131297549);
            view2.setTag(iVar);
        } else {
            iVar = (i) view.getTag();
            view2 = view;
        }
        b.a a2 = i2 <= 0 ? null : this.y.a(i2 - 1);
        b.a a3 = this.y.a(i2);
        b.a a4 = i2 >= this.y.c() - 1 ? null : this.y.a(i2 + 1);
        if (a3 != null) {
            com.android.contacts.j.i iVar2 = a2 == null ? null : a2.c ? a2.e.f1508a : a2.f.f1508a;
            com.android.contacts.j.i iVar3 = a3.c ? a3.e.f1508a : a3.f.f1508a;
            com.android.contacts.j.i iVar4 = a4 == null ? null : a4.c ? a4.e.f1508a : a4.f.f1508a;
            d.b a5 = a(i2, iVar3);
            a aVar = new a(a5);
            synchronized (this.N) {
                if (!this.N.contains(aVar)) {
                    this.N.add(aVar);
                    this.N.notifyAll();
                }
            }
            c();
            if (i2 == 0) {
                if (iVar.v == null && iVar.w != null) {
                    iVar.v = (FrameLayout) iVar.w.inflate();
                }
                if (iVar.v != null) {
                    iVar.v.setVisibility(0);
                    iVar.x = (TextView) iVar.v.findViewById(2131297315);
                    iVar.y = (TextView) iVar.v.findViewById(2131297314);
                    iVar.z = iVar.v.findViewById(2131297316);
                }
                if (!iVar3.h) {
                    if (com.android.contacts.skin.a.b()) {
                        iVar.x.setTextColor(this.s);
                        iVar.z.setBackgroundColor(this.s);
                    } else if (com.android.contacts.skin.a.c()) {
                        iVar.x.setTextColor(this.s);
                        iVar.z.setBackgroundColor(this.s);
                    }
                    iVar.x.setText(2131755780);
                    iVar.y.setText(BuildConfig.FLAVOR);
                } else {
                    if (com.android.contacts.skin.a.b()) {
                        iVar.x.setTextColor(this.s);
                        iVar.z.setBackgroundColor(this.s);
                    } else if (com.android.contacts.skin.a.c()) {
                        iVar.x.setTextColor(this.s);
                        iVar.z.setBackgroundColor(this.s);
                    }
                    iVar.x.setText(2131756053);
                    iVar.y.setText(BuildConfig.FLAVOR);
                }
                iVar.v.setVisibility(0);
            } else if (!iVar3.h && iVar2.h) {
                if (iVar.v == null && iVar.w != null) {
                    iVar.v = (FrameLayout) iVar.w.inflate();
                }
                if (iVar.v != null) {
                    iVar.v.setVisibility(0);
                    iVar.x = (TextView) iVar.v.findViewById(2131297315);
                    iVar.y = (TextView) iVar.v.findViewById(2131297314);
                    iVar.z = iVar.v.findViewById(2131297316);
                }
                if (com.android.contacts.skin.a.b()) {
                    iVar.x.setTextColor(this.s);
                    iVar.z.setBackgroundColor(this.s);
                } else if (com.android.contacts.skin.a.c()) {
                    iVar.x.setTextColor(this.s);
                    iVar.z.setBackgroundColor(this.s);
                }
                iVar.x.setText(2131755780);
                iVar.y.setText(BuildConfig.FLAVOR);
                iVar.v.setVisibility(0);
            } else if (iVar.v != null) {
                iVar.v.setVisibility(8);
            }
            Uri uri = null;
            Uri uri2 = null;
            if (a5.d > 0) {
                uri = Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, a5.f1020a), "photo");
            }
            if (!TextUtils.isEmpty(a5.i)) {
                uri2 = ContactsContract.Contacts.getLookupUri(a5.f1020a, a5.i);
            }
            if (uri2 != null) {
                iVar.e.a(uri2);
                if (i2 % 2 == 0) {
                    iVar.e.setTag(0);
                } else {
                    iVar.e.setTag(1);
                }
            } else {
                iVar.e.a(a5.h);
                iVar.e.setTag(2);
            }
            int i4 = a5.k;
            if (a5.j == 1) {
                this.I.a(iVar.e, -1L, this.t, (k.d) null);
            } else if (a5.j == 2) {
                this.I.a(iVar.e, -2L, this.t, (k.d) null);
            } else {
                k.d dVar = null;
                if (uri == null) {
                    dVar = new k.d(a5.g, a5.i, true);
                }
                this.I.a((ImageView) iVar.e, uri, iVar.e.getWidth(), this.t, true, dVar);
            }
            if (i4 >= 0 && a5.i != null) {
                if (iVar.j == null && iVar.r != null) {
                    iVar.j = (ImageView) iVar.r.inflate();
                }
                if (iVar.j != null) {
                    ImageView imageView = iVar.j;
                    char c2 = 65535;
                    if (i4 == 0) {
                        c2 = 'x';
                    }
                    if (c2 != 65535) {
                        imageView.setBackgroundResource(2131165304);
                    }
                    iVar.j.setVisibility(0);
                }
            } else if (iVar.j != null) {
                iVar.j.setVisibility(8);
            }
            ((MainDialtactsActivity) this.f1526a).getIntent().getAction();
            com.android.contacts.c.b.a(5, a5.f1020a, i4);
            if (!(a5.e > 0)) {
                if (iVar.k != null) {
                    iVar.k.setVisibility(8);
                    iVar.f.setVisibility(8);
                    iVar.g.setVisibility(8);
                    iVar.d.setText((CharSequence) null);
                }
                if (iVar.h != null) {
                    iVar.h.setVisibility(0);
                }
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) iVar.c.getLayoutParams();
                if (iVar.E != null) {
                    iVar.E.setVisibility(8);
                    layoutParams.removeRule(17);
                    layoutParams.addRule(18, 2131297104);
                    iVar.c.setLayoutParams(layoutParams);
                }
            } else {
                if (iVar.k != null) {
                    iVar.k.setVisibility(0);
                }
                if (!this.j || !this.g || !this.h) {
                    iVar.f.setVisibility(8);
                } else {
                    int callLogSimIndexAsInt = PhoneCapabilityTester.IsAsusDevice() ? PhoneCapabilityTester.getCallLogSimIndexAsInt(this.f1526a, a5.l) : com.android.contacts.simcardmanage.a.a(a5.q, a5.r);
                    if (callLogSimIndexAsInt == 1) {
                        iVar.f.setImageResource(2131165281);
                        iVar.f.setVisibility(0);
                    } else if (callLogSimIndexAsInt == 2) {
                        iVar.f.setImageResource(2131165283);
                        iVar.f.setVisibility(0);
                    } else {
                        iVar.f.setVisibility(8);
                    }
                }
                iVar.g.setVisibility(0);
                if (iVar.h != null) {
                    iVar.h.setVisibility(0);
                }
                String callLogTime = PhoneCapabilityTester.getCallLogTime(this.f1526a, a5.e);
                String format = d.C0033d.f().format(new Date(a5.e));
                iVar.d.setVisibility(0);
                iVar.d.setText(callLogTime);
                if (com.android.contacts.skin.a.b()) {
                    iVar.d.setTextColor(this.r);
                    iVar.k.setTextColor(this.r);
                } else if (com.android.contacts.skin.a.c()) {
                    iVar.d.setTextColor(this.r);
                    iVar.k.setTextColor(this.r);
                } else {
                    iVar.d.setTextColor(-11579569);
                    iVar.k.setTextColor(-11579569);
                }
                int i5 = a5.c;
                iVar.g.setImageDrawable(3 == i5 ? this.F : 2 == i5 ? this.E : 1 == i5 ? this.D : i5 == 0 ? this.G : this.H);
                if (TextUtils.equals(format, this.f1527b)) {
                    iVar.k.setText(2131755113);
                } else if (TextUtils.equals(format, this.c)) {
                    iVar.k.setText(2131755115);
                } else {
                    iVar.k.setText(format);
                }
                if (this.l) {
                    if (iVar.m == null && iVar.p != null) {
                        iVar.m = (TextView) iVar.p.inflate();
                    }
                    if (iVar.n == null && iVar.q != null) {
                        iVar.n = (TextView) iVar.q.inflate();
                    }
                    if (iVar.l == null && iVar.o != null) {
                        iVar.l = (ImageView) iVar.o.inflate();
                    }
                    if (iVar.m != null) {
                        iVar.m.setVisibility(0);
                        iVar.n.setVisibility(0);
                        if (a5.p == null || a5.p.length() == 0) {
                            iVar.m.setText(BuildConfig.FLAVOR);
                            iVar.n.setText(BuildConfig.FLAVOR);
                            if (iVar.l != null) {
                                iVar.l.setVisibility(4);
                            }
                        } else {
                            if (a5.p.contains(",")) {
                                int lastIndexOf = TextUtils.lastIndexOf(a5.p, ',');
                                String substring = TextUtils.substring(a5.p, 0, lastIndexOf);
                                iVar.n.setText(TextUtils.substring(a5.p, lastIndexOf, a5.p.length()));
                                iVar.n.setTextColor(this.f1526a.getResources().getColor(2131034199));
                                iVar.m.setText(substring);
                                iVar.m.setTextColor(this.f1526a.getResources().getColor(2131034199));
                            } else {
                                iVar.m.setText(a5.p);
                                iVar.m.setTextColor(this.f1526a.getResources().getColor(2131034199));
                                iVar.n.setText(BuildConfig.FLAVOR);
                                iVar.n.setTextColor(this.f1526a.getResources().getColor(2131034199));
                            }
                            if (iVar.l != null) {
                                iVar.l.setVisibility(0);
                            }
                        }
                    }
                }
                if (a5.t == 1) {
                    if (iVar.E == null) {
                        iVar.E = (ImageView) iVar.F.inflate();
                    } else {
                        iVar.E.setVisibility(0);
                    }
                    if (iVar.E != null) {
                        if (com.android.contacts.skin.a.b()) {
                            com.android.contacts.skin.a.a(iVar.E, this.f1526a.getResources().getColor(2131034163));
                        } else if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(iVar.E, com.android.contacts.skin.a.a(2));
                        } else {
                            com.android.contacts.skin.a.a(iVar.E, this.f1526a.getResources().getColor(2131034180));
                        }
                    }
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) iVar.c.getLayoutParams();
                    layoutParams2.removeRule(18);
                    layoutParams2.addRule(17, 2131297549);
                    iVar.c.setLayoutParams(layoutParams2);
                } else {
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) iVar.c.getLayoutParams();
                    if (iVar.E != null) {
                        iVar.E.setVisibility(8);
                        layoutParams3.removeRule(17);
                        layoutParams3.addRule(18, 2131297104);
                        iVar.c.setLayoutParams(layoutParams3);
                    }
                }
                ArrayList<Integer> e2 = com.asus.snapcall.c.e(this.f1526a);
                if (e2 != null && e2.contains(Integer.valueOf(a5.f1021b))) {
                    Log.d("SearchResultAdapter", "id " + a5.f1021b + " found, visible!!!");
                    if (iVar.C == null && iVar.t != null) {
                        iVar.C = (ImageView) iVar.t.inflate();
                    }
                    if (iVar.C != null) {
                        iVar.C.setVisibility(0);
                        if (com.android.contacts.skin.a.b()) {
                            com.android.contacts.skin.a.a(iVar.C, this.r);
                        } else if (com.android.contacts.skin.a.c()) {
                            com.android.contacts.skin.a.a(iVar.C, this.r);
                        }
                    }
                } else if (iVar.C != null) {
                    iVar.C.setVisibility(8);
                }
            }
            iVar.f1540b.setTextColor(-16777216);
            if (!iVar3.h || iVar3.f.get(iVar3.f.size() - 1).f != 3) {
                iVar.f1540b.setTextColor(this.z);
            } else {
                iVar.f1540b.setTextColor(-1299649);
            }
            if (com.android.contacts.skin.a.b()) {
                iVar.c.setTextColor(this.r);
            } else if (com.android.contacts.skin.a.c()) {
                iVar.c.setTextColor(this.r);
            } else {
                iVar.c.setTextColor(-11579569);
            }
            SpannableString spannableString2 = new SpannableString(BuildConfig.FLAVOR);
            SpannableString spannableString3 = new SpannableString(BuildConfig.FLAVOR);
            String str = new String(BuildConfig.FLAVOR);
            String str2 = new String(BuildConfig.FLAVOR);
            d.b bVar = this.O.get(a5.h);
            boolean z2 = false;
            if (bVar != null) {
                z = bVar.u;
                z2 = bVar.v;
            } else {
                z = false;
            }
            if (a3.c && a3.d) {
                spannableString2 = a(a3.e, "Both match case for name");
                str = a3.e.f1508a.f1546b[a3.e.f1509b];
                spannableString = a(a3.f, "Both match case for number");
                str2 = a3.f.f1508a.f1546b[a3.f.f1509b];
                if (a3.e.f1508a.h) {
                }
            } else if (a3.c) {
                spannableString2 = a(a3.e, "Match name case");
                str = a3.e.f1508a.f1546b[a3.e.f1509b];
                if (a3.e.f1508a.f1546b.length > a3.g) {
                    String str3 = a3.e.f1508a.f1546b[a3.g];
                    if (str3 == null) {
                        Log.w("SmartDialUnbundle", "[fillMainInfo] matchName case, raw_values is null");
                        spannableString3 = new SpannableString(BuildConfig.FLAVOR);
                    } else {
                        spannableString3 = new SpannableString(str3);
                    }
                }
                String str4 = a3.e.f1508a.f1546b.length > a3.g ? a3.e.f1508a.f1546b[a3.g] : BuildConfig.FLAVOR;
                if (a3.e.f1508a.h) {
                    str2 = str4;
                    spannableString = spannableString3;
                } else {
                    spannableString = spannableString3;
                    str2 = str4;
                }
            } else if (!a3.d) {
                spannableString = spannableString3;
            } else if (a3.f.f1508a.g == 0) {
                spannableString2 = new SpannableString(this.f1526a.getResources().getString(2131756348));
                str = this.f1526a.getResources().getString(2131756348);
                spannableString = a(a3.f, "Match number call log case");
                str2 = a3.f.f1508a.f1546b[a3.f.f1509b];
            } else {
                String str5 = a3.f.f1508a.f1546b[0];
                if (str5 == null) {
                    Log.w("SmartDialUnbundle", "[fillMainInfo] matchNumber case, raw_values is null");
                    spannableString2 = new SpannableString(BuildConfig.FLAVOR);
                } else {
                    spannableString2 = new SpannableString(str5);
                }
                str = a3.f.f1508a.f1546b[0];
                spannableString = a(a3.f, "Match number contact case");
                str2 = a3.f.f1508a.f1546b[a3.f.f1509b];
            }
            if (str2 != null && z) {
                spannableString2 = new SpannableString(this.f1526a.getResources().getString(Resources.getSystem().getIdentifier("emergency_call_dialog_number_for_display", "string", "android")));
                str = this.f1526a.getResources().getString(Resources.getSystem().getIdentifier("emergency_call_dialog_number_for_display", "string", "android"));
            }
            String str6 = str;
            SpannableString spannableString4 = spannableString2;
            if (str2 != null) {
                str6 = str;
                spannableString4 = spannableString2;
                if (z2) {
                    str6 = this.f1526a.getResources().getString(2131756459);
                    spannableString4 = new SpannableString(str6);
                }
            }
            if (TextUtils.equals(str6, this.f1526a.getResources().getString(2131756348))) {
                iVar.f1540b.setText(spannableString);
                iVar.c.setText(spannableString4);
            } else {
                iVar.f1540b.setText(spannableString4);
                iVar.c.setText(spannableString);
            }
            if (!this.m || a5.f1020a > 0) {
                if (iVar.B != null) {
                    iVar.B.setVisibility(8);
                }
                if (iVar.A != null) {
                    iVar.c.setVisibility(0);
                    iVar.A.setVisibility(8);
                }
            } else {
                a.c a6 = com.android.contacts.asuscallerid.d.a().a(this.f1526a, a5.h, "4", i2, view2);
                if (a6 != null) {
                    if (a6.d != null || a6.f2356b != null) {
                        SpannableString a7 = a(a3.f, "call guard case");
                        if (this.q) {
                            int i6 = 0;
                            if (a6.l == 0) {
                                i6 = 2131165777;
                                i3 = -1;
                            } else if (a6.l == 1) {
                                i6 = 2131165778;
                                i3 = -1;
                            } else if (a6.l == 6) {
                                i6 = 2131165776;
                                i3 = -1;
                            } else {
                                i3 = 0;
                            }
                            if (a6.d == null || a6.l == 4 || a6.l == 6) {
                                iVar.c.setVisibility(0);
                                if (iVar.A != null) {
                                    iVar.A.setVisibility(8);
                                }
                                iVar.f1540b.setText(a6.f2356b);
                                iVar.c.setText(a7);
                            } else {
                                iVar.f1540b.setText(a7);
                                iVar.c.setVisibility(8);
                                if (iVar.A == null && iVar.u != null) {
                                    iVar.A = (TextView) iVar.u.inflate();
                                }
                                if (iVar.A != null) {
                                    iVar.A.setVisibility(0);
                                    iVar.A.setTextColor(i3);
                                    iVar.A.setBackgroundResource(i6);
                                    iVar.A.setText(a6.d);
                                }
                            }
                        } else {
                            if (a6.l == 0) {
                                iVar.c.setTextColor(-1299649);
                            } else if (a6.l == 1) {
                                iVar.c.setTextColor(-30208);
                            }
                            if (a6.d == null || a6.l == 4) {
                                iVar.f1540b.setText(a6.f2356b);
                                iVar.c.setText(a7);
                            } else {
                                iVar.f1540b.setText(a7);
                                iVar.c.setText(a6.d);
                            }
                        }
                    } else if (iVar.A != null) {
                        iVar.c.setVisibility(0);
                        iVar.A.setVisibility(8);
                    }
                    if (!(a6.f2356b == null && a6.d == null)) {
                        if (a6.l == 4 || a6.l == 6) {
                            if (this.L.get(a6.f2355a) != null) {
                                iVar.e.setImageBitmap(this.L.get(a6.f2355a));
                            } else {
                                iVar.e.setTag(5);
                                this.I.a((ImageView) iVar.e, (Uri) null, iVar.e.getWidth(), this.t, true, (k.d) null);
                                try {
                                    new j(iVar).execute(a6);
                                } catch (Exception e3) {
                                    Log.d("SmartDialUnbundle", "Fail to query company logo Exception = " + e3.toString());
                                }
                            }
                            if (a6.l == 6) {
                                if (iVar.B == null && iVar.s != null) {
                                    iVar.B = (ImageView) iVar.s.inflate();
                                }
                                if (iVar.B != null) {
                                    iVar.B.setVisibility(0);
                                }
                            } else if (iVar.B != null) {
                                iVar.B.setVisibility(8);
                            }
                        } else if (this.q) {
                            iVar.e.setTag(6);
                            this.I.a((ImageView) iVar.e, (Uri) null, iVar.e.getWidth(), this.t, true, (k.d) null);
                        }
                        iVar.e.d = a6;
                    }
                } else {
                    try {
                        view2.setTag(2131296500, Integer.valueOf(i2));
                        if (iVar.B != null) {
                            iVar.B.setVisibility(8);
                        }
                        if (iVar.A != null) {
                            iVar.A.setVisibility(8);
                            iVar.c.setVisibility(0);
                        }
                    } catch (Exception e4) {
                        Log.d("SmartDialUnbundle", "Fail to get CallerId result Exception = " + e4.toString());
                    }
                }
            }
            if (com.android.contacts.skin.a.b()) {
                iVar.h.setImageResource(2131165306);
            } else if (com.android.contacts.skin.a.c()) {
                ImageButton imageButton = iVar.h;
                com.android.contacts.skin.a.d();
                imageButton.setImageDrawable(com.android.contacts.skin.a.a(this.f1526a, 2131165305, com.android.contacts.skin.a.a(2)));
            } else {
                iVar.h.setImageResource(2131165305);
            }
            if (a5.e > 0) {
                iVar.h.setTag(10);
            } else {
                iVar.h.setTag(11);
            }
            iVar.h.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.contacts.j.g.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view3) {
                    return true;
                }
            });
            if (iVar4 == null) {
                iVar.D.setVisibility(8);
            } else if (!iVar3.h || iVar4.h) {
                iVar.D.setVisibility(0);
                if (com.android.contacts.skin.a.b()) {
                    iVar.D.setBackground(this.f1526a.getResources().getDrawable(2131165191));
                }
            } else {
                iVar.D.setVisibility(8);
            }
            if (this.p) {
                view2.setTag(2131297317, a5);
                iVar.f1539a.setOnClickListener(null);
                iVar.f1539a.setClickable(false);
                iVar.f1539a.setOnLongClickListener(null);
                iVar.f1539a.setLongClickable(false);
            } else {
                iVar.f1539a.setOnClickListener(new f(i2, a5, viewGroup, iVar));
                iVar.f1539a.setOnLongClickListener(new View$OnLongClickListenerC0044g(i2, viewGroup, a5));
            }
            iVar.h.setOnClickListener(new e(iVar3, a5));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        if (this.i) {
            this.K = true;
            return;
        }
        this.K = false;
        super.notifyDataSetChanged();
    }
}
