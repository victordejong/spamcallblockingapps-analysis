package com.android.contacts.dialpad;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.ab;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.calllog.n;
import com.android.contacts.calllog.o;
import com.android.contacts.calllog.p;
import com.android.contacts.calllog.t;
import com.android.contacts.g;
import com.android.contacts.k.a;
import com.android.contacts.q;
import com.android.contacts.util.AsyncTaskExecutor;
import com.android.contacts.util.AsyncTaskExecutors;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.ClipboardUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.y;
import com.android.contacts.z;
import com.android.vcard.VCardConfig;
import com.asus.a.a;
import com.asus.updatesdk.BuildConfig;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment.class */
public class CallDetailFragment extends Fragment {
    static final String[] h = {"date", "duration", "number", "type", "countryiso", "geocoded_location", "_id", "presentation", "block", "sim_index", "city_id"};
    static final String[] i = {"date", "duration", "number", "type", "countryiso", "geocoded_location", "_id", "presentation", "subscription_component_name", "subscription_id"};
    private String A;
    private com.android.contacts.dialpad.c B;
    private com.android.contacts.k.a C;
    private View D;
    private TextView E;
    private TextView F;
    private boolean G;
    private boolean H;
    private boolean I;
    private ab K;
    private TextView N;
    private ImageView O;
    private String Q;
    private String[] S;
    private final View.OnClickListener T;
    private final View.OnClickListener U;

    /* renamed from: b  reason: collision with root package name */
    AsyncTaskExecutor f846b;
    LayoutInflater d;
    Resources e;
    private boolean j;
    private boolean k;
    private n l;
    private t m;
    private z n;
    private TextView o;
    private View p;
    private ImageView q;
    private CharSequence r;
    private Context v;
    private p w;
    private boolean s = false;

    /* renamed from: a  reason: collision with root package name */
    com.android.contacts.calllog.d f845a = null;
    private String t = BuildConfig.FLAVOR;
    private boolean u = false;
    private String x = BuildConfig.FLAVOR;
    private String y = null;
    private Uri z = null;
    public Uri[] c = null;
    private boolean J = false;
    private final g L = new g(this, (byte) 0);
    public e f = null;
    f g = null;
    private boolean M = false;
    private boolean P = false;
    private boolean R = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$a.class */
    public final class a extends AsyncTask<Void, Void, y> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri[] f865a;
        private Activity c = null;
        private View d = null;

        a(Uri[] uriArr) {
            this.f865a = uriArr;
        }

        private y a() {
            y yVar;
            try {
                yVar = CallDetailFragment.this.a(this.f865a[0]);
            } catch (IllegalArgumentException e) {
                Log.w("CallDetailFragment", "invalid URI starting call details", e);
                yVar = null;
            }
            return yVar;
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ y doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(y yVar) {
            final Intent intent;
            int i;
            boolean z = true;
            y yVar2 = yVar;
            if (yVar2 == null) {
                Log.d("CallDetailFragment", "Call details == null");
                return;
            }
            this.d = CallDetailFragment.this.getView();
            this.c = CallDetailFragment.this.getActivity();
            if (!(this.d == null || this.c == null)) {
                if (yVar2.h != null) {
                    CallDetailFragment.this.x = yVar2.h.toString();
                }
                if (yVar2 == null || yVar2.f2214a == null) {
                    CallDetailFragment.this.y = BuildConfig.FLAVOR;
                } else {
                    CallDetailFragment.this.y = yVar2.f2214a.toString();
                }
                CallDetailFragment.this.z = yVar2.k;
                Uri uri = yVar2.k;
                if (!CallDetailFragment.this.R) {
                    CallDetailFragment.this.n.a(CallDetailFragment.this.o, yVar2);
                }
                t unused = CallDetailFragment.this.m;
                Uri a2 = t.a(CallDetailFragment.this.y);
                t unused2 = CallDetailFragment.this.m;
                boolean a3 = t.a((CharSequence) CallDetailFragment.this.y);
                boolean c = CallDetailFragment.this.m.c(CallDetailFragment.this.y);
                t unused3 = CallDetailFragment.this.m;
                boolean d = t.d(CallDetailFragment.this.y);
                CharSequence a4 = !TextUtils.isEmpty(yVar2.h) ? yVar2.h : TextUtils.isEmpty(yVar2.f2214a) ? CallDetailFragment.this.m.a(yVar2.f2214a, yVar2.f2215b, yVar2.p) : yVar2.f2214a;
                CallDetailFragment.this.r = a4;
                CallDetailFragment.this.s = false;
                if (uri != null) {
                    CallDetailFragment.this.s = true;
                    intent = new Intent("android.intent.action.VIEW", uri);
                    i = 2131165335;
                } else if (a3 || c || d) {
                    intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                    intent.setType("vnd.android.cursor.item/contact");
                    intent.putExtra("phone", CallDetailFragment.this.y);
                    i = 2131165462;
                } else {
                    i = 0;
                    intent = null;
                }
                if (intent == null) {
                    CallDetailFragment.this.q.setVisibility(4);
                } else {
                    CallDetailFragment.this.q.setVisibility(0);
                    CallDetailFragment.this.q.setImageResource(i);
                    CallDetailFragment.this.q.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.a.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str = null;
                            if (intent != null) {
                                str = null;
                                if (intent.getExtras() != null) {
                                    str = intent.getExtras().getString("ShowDialog");
                                }
                            }
                            if (str != null) {
                                com.android.contacts.a.a(intent.getExtras().getString("phone")).show(CallDetailFragment.this.getFragmentManager(), "dialog");
                            } else {
                                ImplicitIntentsUtil.startActivityInApp(CallDetailFragment.this.getActivity(), intent);
                            }
                        }
                    });
                    CallDetailFragment.this.o.setVisibility(0);
                    CallDetailFragment.this.p.setVisibility(0);
                }
                CallDetailFragment.this.P = !CallDetailFragment.this.s && !d && !c && com.asus.a.c.e();
                if (!TextUtils.isEmpty(CallDetailFragment.this.y) && CallDetailFragment.this.M) {
                    new j(yVar2).execute(CallDetailFragment.this.y);
                    if (CallDetailFragment.this.P) {
                        CallDetailFragment.this.Q = CallDetailFragment.this.y;
                        CallDetailFragment.this.O.setVisibility(0);
                        CallDetailFragment.this.O.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.a.2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                CallDetailFragment.this.d();
                            }
                        });
                    }
                }
                if (a3) {
                    i iVar = new i(String.valueOf(CallDetailFragment.this.m.a(yVar2.f2214a, yVar2.f2215b)), new Intent("android.intent.action.CALL", a2), this.c.getString(2131755526, new Object[]{a4}));
                    if (!TextUtils.isEmpty(yVar2.h) && !TextUtils.isEmpty(yVar2.f2214a) && !CallUtil.isUriNumber(yVar2.f2214a.toString())) {
                        iVar.d = ContactsContract.CommonDataKinds.Phone.getTypeLabel(CallDetailFragment.this.e, yVar2.i, yVar2.j);
                    }
                    if (CallDetailFragment.this.m.b(CallDetailFragment.this.y)) {
                        iVar.a(new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", CallDetailFragment.this.y, null)), this.c.getString(2131755547, new Object[]{a4}));
                    }
                    iVar.h = CallDetailFragment.this.t;
                    CallDetailFragment.a(CallDetailFragment.this, iVar);
                } else {
                    CallDetailFragment.a(CallDetailFragment.this, yVar2);
                }
                CallDetailFragment.this.G = a3 && !d && !c;
                CallDetailFragment.this.H = CallDetailFragment.j(CallDetailFragment.this);
                CallDetailFragment callDetailFragment = CallDetailFragment.this;
                if (CallDetailFragment.j(CallDetailFragment.this)) {
                    z = false;
                }
                callDetailFragment.I = z;
                this.c.getFragmentManager().invalidateOptionsMenu();
                this.d.setVisibility(0);
            }
            try {
                CallDetailFragment.this.f846b.submit(h.UPDATE_PHONE_CALL_DETAILS, new d(this.f865a), new Void[0]);
            } catch (Exception e) {
                Log.d("CallDetailFragment", "fail to submit task due to: " + e.toString());
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$b.class */
    final class b extends AsyncTask<Void, Void, y[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri[] f870a;
        private Context c;
        private View d = null;
        private StringBuilder e;
        private Intent f;

        public b(Context context, Intent intent, Uri[] uriArr) {
            this.f870a = uriArr;
            this.c = null;
            this.c = context;
            this.f = intent;
        }

        private y[] a() {
            y[] yVarArr;
            StringBuilder sb;
            int i;
            y[] yVarArr2;
            Cursor cursor;
            Log.d("CallDetailFragment", "[updateData] callUris: " + Arrays.toString(this.f870a));
            try {
                this.e = new StringBuilder();
                Uri[] e = CallDetailFragment.this.e();
                if (e != null) {
                    for (Uri uri : e) {
                        if (this.e.length() != 0) {
                            this.e.append(",");
                        }
                        this.e.append(ContentUris.parseId(uri));
                    }
                }
                sb = new StringBuilder();
                try {
                    String stringExtra = this.f.getStringExtra("CALL_LOG_NUMBER");
                    if (TextUtils.isEmpty(stringExtra)) {
                        sb.append((CharSequence) this.e);
                        i = 1;
                    } else {
                        long[] callIds = PhoneCapabilityTester.getCallIds(CallDetailFragment.this.getActivity(), stringExtra);
                        for (long j : callIds) {
                            if (sb.length() != 0) {
                                sb.append(",");
                            }
                            sb.append(j);
                        }
                        i = callIds.length;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    i = 0;
                }
                yVarArr2 = new y[i];
            } catch (Exception e3) {
                Log.d("CallDetailFragment", "Fail to load callLog detail history, Exception : " + e3.toString());
                yVarArr = null;
            }
            try {
                Cursor query = this.c.getContentResolver().query(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, CallDetailFragment.this.S, "_id IN (" + ((Object) sb) + ")", null, "_id DESC");
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            int i2 = 0;
                            do {
                                try {
                                    yVarArr2[i2] = CallDetailFragment.this.b(query);
                                    i2++;
                                } catch (Exception e4) {
                                    Log.d("CallDetailFragment", e4.toString());
                                }
                            } while (query.moveToNext());
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
                yVarArr = yVarArr2;
                return yVarArr;
            } catch (Throwable th2) {
                th = th2;
                cursor = null;
            }
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ y[] doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(y[] yVarArr) {
            y[] yVarArr2 = yVarArr;
            if (yVarArr2 == null) {
                Log.d("CallDetailFragment", "Call details == null");
                return;
            }
            y yVar = null;
            if (yVarArr2.length > 0) {
                yVar = yVarArr2[0];
            }
            if (yVar != null && yVar.f2214a != null) {
                CallDetailFragment.this.y = yVar.f2214a.toString();
                t unused = CallDetailFragment.this.m;
                boolean a2 = t.a((CharSequence) CallDetailFragment.this.y);
                this.d = CallDetailFragment.this.getView();
                if (this.d != null && this.c != null) {
                    ListView listView = (ListView) this.d.findViewById(2131296936);
                    CallDetailFragment.this.f845a = new com.android.contacts.calllog.d(this.c, CallDetailFragment.this.d, CallDetailFragment.this.l, yVarArr2, CallDetailFragment.j(CallDetailFragment.this), a2, this.d.findViewById(2131296607), this.e.toString());
                    listView.setDividerHeight(1);
                    listView.setAdapter((ListAdapter) CallDetailFragment.this.f845a);
                    if (com.android.contacts.simcardmanage.b.a(this.c)) {
                        CallDetailFragment.this.c();
                    }
                    CallDetailFragment.this.registerForContextMenu(listView);
                    com.android.contacts.g.a(new g.a() { // from class: com.android.contacts.dialpad.CallDetailFragment.b.1

                        /* renamed from: b  reason: collision with root package name */
                        private View f873b;
                        private View c;
                        private View d;
                        private View e;

                        {
                            this.f873b = b.this.d.findViewById(2131296607);
                            this.c = b.this.d.findViewById(2131296553);
                            this.d = b.this.d.findViewById(2131297161);
                            this.e = b.this.d.findViewById(2131296400);
                        }

                        @Override // com.android.contacts.g.a
                        public final int a() {
                            return this.d.getVisibility() == 0 ? this.c.getHeight() : this.c.getHeight() + this.e.getHeight();
                        }

                        @Override // com.android.contacts.g.a
                        public final void a(int i) {
                            this.f873b.setY(-i);
                        }
                    }, listView);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$c.class */
    public final class c extends AsyncTask<Void, Void, y> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri[] f874a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Intent f875b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Uri[] uriArr, Intent intent) {
            this.f874a = uriArr;
            this.f875b = intent;
        }

        private y a() {
            y yVar;
            try {
                yVar = CallDetailFragment.this.a(this.f874a[0]);
            } catch (IllegalArgumentException e) {
                Log.w("CallDetailFragment", "invalid URI starting call details", e);
                yVar = null;
            }
            return yVar;
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ y doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(y yVar) {
            final Intent intent;
            int i;
            boolean z = true;
            y yVar2 = yVar;
            if (yVar2 == null) {
                Log.d("CallDetailFragment", "Call details == null");
            } else if (CallDetailFragment.this.getActivity() != null) {
                if (yVar2.h != null) {
                    CallDetailFragment.this.x = yVar2.h.toString();
                }
                if (yVar2 == null || yVar2.f2214a == null) {
                    CallDetailFragment.this.y = BuildConfig.FLAVOR;
                } else {
                    CallDetailFragment.this.y = yVar2.f2214a.toString();
                }
                CallDetailFragment.this.z = yVar2.k;
                Uri uri = yVar2.k;
                if (!CallDetailFragment.this.R) {
                    CallDetailFragment.this.n.a(CallDetailFragment.this.o, yVar2);
                }
                t unused = CallDetailFragment.this.m;
                Uri a2 = t.a(CallDetailFragment.this.y);
                t unused2 = CallDetailFragment.this.m;
                boolean a3 = t.a((CharSequence) CallDetailFragment.this.y);
                boolean c = CallDetailFragment.this.m.c(CallDetailFragment.this.y);
                t unused3 = CallDetailFragment.this.m;
                boolean d = t.d(CallDetailFragment.this.y);
                CharSequence a4 = !TextUtils.isEmpty(yVar2.h) ? yVar2.h : TextUtils.isEmpty(yVar2.f2214a) ? CallDetailFragment.this.m.a(yVar2.f2214a, yVar2.f2215b, yVar2.p) : yVar2.f2214a;
                CallDetailFragment.this.r = a4;
                CallDetailFragment.this.s = false;
                if (uri != null) {
                    CallDetailFragment.this.s = true;
                    intent = new Intent("android.intent.action.VIEW", uri);
                    i = 2131165335;
                } else if (a3 || c || d) {
                    intent = new Intent("android.intent.action.INSERT_OR_EDIT");
                    intent.setType("vnd.android.cursor.item/contact");
                    intent.putExtra("phone", CallDetailFragment.this.y);
                    intent.putExtra("ShowDialog", "ShowAddToContactsDialog");
                    i = 2131165462;
                } else {
                    i = 0;
                    intent = null;
                }
                if (intent == null) {
                    CallDetailFragment.this.q.setVisibility(4);
                } else {
                    CallDetailFragment.this.q.setVisibility(0);
                    CallDetailFragment.this.q.setImageResource(i);
                    CallDetailFragment.this.q.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.c.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            String str = null;
                            if (intent != null) {
                                str = null;
                                if (intent.getExtras() != null) {
                                    str = intent.getExtras().getString("ShowDialog");
                                }
                            }
                            if (str != null) {
                                com.android.contacts.a.a(intent.getExtras().getString("phone")).show(CallDetailFragment.this.getFragmentManager(), "dialog");
                            } else {
                                ImplicitIntentsUtil.startActivityInApp(CallDetailFragment.this.getActivity(), intent);
                            }
                        }
                    });
                    CallDetailFragment.this.o.setVisibility(0);
                    CallDetailFragment.this.p.setVisibility(0);
                }
                if (a3) {
                    i iVar = new i(String.valueOf(CallDetailFragment.this.m.a(yVar2.f2214a, yVar2.f2215b)), new Intent("android.intent.action.CALL", a2), CallDetailFragment.this.getString(2131755526, a4));
                    if (!TextUtils.isEmpty(yVar2.h) && !TextUtils.isEmpty(yVar2.f2214a) && !CallUtil.isUriNumber(yVar2.f2214a.toString())) {
                        iVar.d = ContactsContract.CommonDataKinds.Phone.getTypeLabel(CallDetailFragment.this.e, yVar2.i, yVar2.j);
                    }
                    if (CallDetailFragment.this.m.b(CallDetailFragment.this.y) && PhoneCapabilityTester.isSmsIntentRegistered(CallDetailFragment.this.getActivity())) {
                        iVar.a(new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", CallDetailFragment.this.y, null)), CallDetailFragment.this.getString(2131755547, a4));
                    }
                    iVar.h = CallDetailFragment.this.t;
                    CallDetailFragment.a(CallDetailFragment.this, iVar);
                } else {
                    CallDetailFragment.a(CallDetailFragment.this, yVar2);
                }
                CallDetailFragment.this.P = !CallDetailFragment.this.s && !d && !c && com.asus.a.c.e();
                if (!TextUtils.isEmpty(CallDetailFragment.this.y) && CallDetailFragment.this.M) {
                    new j(yVar2).execute(CallDetailFragment.this.y);
                    if (CallDetailFragment.this.P) {
                        CallDetailFragment.this.Q = CallDetailFragment.this.y;
                        CallDetailFragment.this.O.setVisibility(0);
                        CallDetailFragment.this.O.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.c.2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                CallDetailFragment.this.d();
                            }
                        });
                    }
                }
                CallDetailFragment.this.G = a3 && !d && !c;
                CallDetailFragment.this.H = CallDetailFragment.j(CallDetailFragment.this);
                CallDetailFragment callDetailFragment = CallDetailFragment.this;
                if (CallDetailFragment.j(CallDetailFragment.this)) {
                    z = false;
                }
                callDetailFragment.I = z;
                if (CallDetailFragment.this.f846b != null) {
                    try {
                        CallDetailFragment.this.f846b.submit(h.UPDATE_PHONE_CALL_DETAILS, new b(CallDetailFragment.this.getActivity(), this.f875b, this.f874a), new Void[0]);
                    } catch (Exception e) {
                        Log.d("CallDetailFragment", "fail to submit task due to: " + e.toString());
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$d.class */
    final class d extends AsyncTask<Void, Void, y[]> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri[] f879a;
        private Activity c = null;
        private View d = null;

        d(Uri[] uriArr) {
            this.f879a = uriArr;
        }

        private y[] a() {
            y[] yVarArr;
            Cursor cursor;
            Activity activity = CallDetailFragment.this.getActivity();
            if (activity == null) {
                yVarArr = null;
            } else {
                y[] yVarArr2 = new y[this.f879a.length];
                try {
                    StringBuilder sb = new StringBuilder();
                    Uri[] e = CallDetailFragment.this.e();
                    if (e != null) {
                        for (Uri uri : e) {
                            if (sb.length() != 0) {
                                sb.append(",");
                            }
                            sb.append(ContentUris.parseId(uri));
                        }
                    }
                    try {
                        Cursor query = activity.getContentResolver().query(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, CallDetailFragment.this.S, "_id IN (" + ((Object) sb) + ")", null, "_id DESC");
                        if (query != null) {
                            try {
                                if (query.moveToFirst()) {
                                    int i = 0;
                                    do {
                                        try {
                                            yVarArr2[i] = CallDetailFragment.this.b(query);
                                            i++;
                                        } catch (Exception e2) {
                                            Log.d("CallDetailFragment", e2.toString());
                                        }
                                    } while (query.moveToNext());
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor = query;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        }
                        if (query != null) {
                            query.close();
                        }
                        yVarArr = yVarArr2;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = null;
                    }
                } catch (IllegalArgumentException e3) {
                    Log.w("CallDetailFragment", "invalid URI starting call details", e3);
                    yVarArr = null;
                }
            }
            return yVarArr;
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ y[] doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        public final /* synthetic */ void onPostExecute(y[] yVarArr) {
            y[] yVarArr2 = yVarArr;
            if (yVarArr2 == null) {
                Log.d("CallDetailFragment", "Call details == null");
                return;
            }
            y yVar = yVarArr2[0];
            if (yVar != null && yVar.f2214a != null) {
                CallDetailFragment.this.y = yVar.f2214a.toString();
                t unused = CallDetailFragment.this.m;
                boolean a2 = t.a((CharSequence) CallDetailFragment.this.y);
                this.d = CallDetailFragment.this.getView();
                this.c = CallDetailFragment.this.getActivity();
                if (this.d != null && this.c != null) {
                    ListView listView = (ListView) this.d.findViewById(2131296936);
                    CallDetailFragment.this.f845a = new com.android.contacts.calllog.d(this.c, CallDetailFragment.this.d, CallDetailFragment.this.l, yVarArr2, CallDetailFragment.j(CallDetailFragment.this), a2, this.d.findViewById(2131296607));
                    listView.setDividerHeight(1);
                    listView.setAdapter((ListAdapter) CallDetailFragment.this.f845a);
                    if (com.android.contacts.simcardmanage.b.a(this.c)) {
                        CallDetailFragment.this.c();
                    }
                    CallDetailFragment.this.registerForContextMenu(listView);
                    com.android.contacts.g.a(new g.a() { // from class: com.android.contacts.dialpad.CallDetailFragment.d.1

                        /* renamed from: b  reason: collision with root package name */
                        private View f882b;
                        private View c;
                        private View d;
                        private View e;

                        {
                            this.f882b = d.this.d.findViewById(2131296607);
                            this.c = d.this.d.findViewById(2131296553);
                            this.d = d.this.d.findViewById(2131297161);
                            this.e = d.this.d.findViewById(2131296400);
                        }

                        @Override // com.android.contacts.g.a
                        public final int a() {
                            return this.d.getVisibility() == 0 ? this.c.getHeight() : this.c.getHeight() + this.e.getHeight();
                        }

                        @Override // com.android.contacts.g.a
                        public final void a(int i) {
                            this.f882b.setY(-i);
                        }
                    }, listView);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$e.class */
    public interface e {
        void a_();

        void b_();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$f.class */
    public interface f {
        void a(String str);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$g.class */
    private final class g implements ab.a {

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f884b;
        private final Runnable c;

        private g() {
            this.f884b = new Runnable() { // from class: com.android.contacts.dialpad.CallDetailFragment.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    CallDetailFragment.this.getView().findViewById(2131296380).setVisibility(0);
                    CallDetailFragment.this.getActivity().getActionBar().hide();
                }
            };
            this.c = new Runnable() { // from class: com.android.contacts.dialpad.CallDetailFragment.g.2
                @Override // java.lang.Runnable
                public final void run() {
                    CallDetailFragment.this.getView().findViewById(2131296380).setVisibility(8);
                    CallDetailFragment.this.getActivity().getActionBar().show();
                }
            };
        }

        /* synthetic */ g(CallDetailFragment callDetailFragment, byte b2) {
            this();
        }

        private void a(Runnable runnable, long j) {
            synchronized (this) {
                CallDetailFragment.this.getView().findViewById(2131296380).postDelayed(runnable, j);
            }
        }

        @Override // com.android.contacts.ab.a
        public final void a() {
            synchronized (this) {
                c();
                a(this.f884b, 100L);
            }
        }

        @Override // com.android.contacts.ab.a
        public final void b() {
            synchronized (this) {
                c();
                a(this.c, 500L);
            }
        }

        public final void c() {
            synchronized (this) {
                View findViewById = CallDetailFragment.this.getView().findViewById(2131296380);
                findViewById.removeCallbacks(this.f884b);
                findViewById.removeCallbacks(this.c);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$h.class */
    public enum h {
        MARK_VOICEMAIL_READ,
        DELETE_VOICEMAIL_AND_FINISH,
        REMOVE_FROM_CALL_LOG_AND_FINISH,
        UPDATE_PHONE_CALL_DETAILS
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$i.class */
    public static final class i {

        /* renamed from: a  reason: collision with root package name */
        public final String f889a;

        /* renamed from: b  reason: collision with root package name */
        public final Intent f890b;
        public final String c;
        public CharSequence d = null;
        public int e = 0;
        public Intent f = null;
        public String g = null;
        public String h = null;

        public i(String str, Intent intent, String str2) {
            this.f889a = str;
            this.f890b = intent;
            this.c = str2;
        }

        public final void a(Intent intent, String str) {
            this.e = 2131165345;
            this.f = intent;
            this.g = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/CallDetailFragment$j.class */
    final class j extends AsyncTask<String, Void, a.c> {

        /* renamed from: a  reason: collision with root package name */
        y f891a;

        j(y yVar) {
            this.f891a = yVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ a.c doInBackground(String[] strArr) {
            a.c cVar;
            String[] strArr2 = strArr;
            if (CallDetailFragment.this.v == null || TextUtils.isEmpty(strArr2[0])) {
                cVar = null;
            } else {
                Log.d("CallDetailFragment", "in queryTouchapdTask number:" + com.asus.a.a.c(strArr2[0]));
                cVar = com.asus.a.a.a(CallDetailFragment.this.v, strArr2[0], "12");
            }
            return cVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(a.c cVar) {
            int i;
            int i2;
            a.c cVar2 = cVar;
            if (cVar2 != null) {
                Log.d("CallDetailFragment", "tagName:" + cVar2.d + ", _name:" + cVar2.f2356b + ", number:" + com.asus.a.a.c(cVar2.f2355a) + ", tagStatus:" + cVar2.l);
                if (cVar2.d != null) {
                    if (cVar2.l == 0) {
                        i2 = 2131165777;
                        i = -1;
                    } else if (cVar2.l == 1) {
                        i2 = 2131165778;
                        i = -1;
                    } else if (cVar2.l == 6) {
                        i2 = 2131165776;
                        i = -1;
                    } else {
                        i = 0;
                        i2 = 0;
                    }
                    if (!TextUtils.isEmpty(cVar2.f2356b)) {
                        CallDetailFragment.this.o.setText(cVar2.f2356b);
                        CallDetailFragment.this.R = true;
                    } else {
                        CallDetailFragment.this.R = false;
                    }
                    if (cVar2.l != 4) {
                        CallDetailFragment.this.N.setVisibility(0);
                        CallDetailFragment.this.N.setBackgroundResource(i2);
                        CallDetailFragment.this.N.setTextColor(i);
                        CallDetailFragment.this.N.setText(cVar2.d);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, (int) CallDetailFragment.this.v.getResources().getDimension(2131099751));
                        layoutParams.setMargins(0, 0, 0, 0);
                        CallDetailFragment.this.o.setLayoutParams(layoutParams);
                    }
                } else {
                    CallDetailFragment.this.R = false;
                    CallDetailFragment.this.N.setVisibility(8);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, (int) CallDetailFragment.this.v.getResources().getDimension(2131099751));
                    layoutParams2.setMargins((int) CallDetailFragment.this.v.getResources().getDimension(2131099965), 0, (int) CallDetailFragment.this.v.getResources().getDimension(2131099942), 0);
                    CallDetailFragment.this.o.setLayoutParams(layoutParams2);
                }
                if (!CallDetailFragment.this.R) {
                    CallDetailFragment.this.n.a(CallDetailFragment.this.o, this.f891a);
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public CallDetailFragment() {
        this.S = PhoneCapabilityTester.IsAsusDevice() ? h : i;
        this.T = new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImplicitIntentsUtil.startActivityOutsideApp(CallDetailFragment.this.getActivity(), ((i) view.getTag()).f890b);
                CallDetailFragment.this.f.a_();
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(5, CallDetailFragment.this.getActivity(), "Dialer", "Call Log Detail", "Call Log Detail: press phone number", null);
                com.android.contacts.a.b.a();
                com.android.contacts.a.b.a(18, CallDetailFragment.this.getActivity(), "Make a Call", true);
            }
        };
        this.U = new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImplicitIntentsUtil.startActivityOutsideApp(CallDetailFragment.this.getActivity(), ((i) view.getTag()).f);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y a(Uri uri) {
        int i2;
        int a2;
        CharSequence charSequence;
        int i3;
        String str;
        Uri uri2;
        long j2;
        Uri uri3;
        String str2;
        y yVar;
        if (getActivity() == null) {
            yVar = null;
        } else {
            Cursor query = getActivity().getContentResolver().query(uri, this.S, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(2);
                        long j3 = query.getLong(0);
                        long j4 = query.getLong(1);
                        int i4 = query.getInt(3);
                        String string2 = query.getString(4);
                        String string3 = query.getString(5);
                        int i5 = query.getInt(7);
                        this.t = BuildConfig.FLAVOR;
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            i2 = query.getInt(query.getColumnIndex("block"));
                            a2 = PhoneCapabilityTester.getCallLogSimIndexAsInt(getActivity(), query.getInt(query.getColumnIndex("sim_index")));
                            this.t = query.getString(query.getColumnIndex("city_id"));
                        } else {
                            i2 = 0;
                            a2 = com.android.contacts.simcardmanage.a.a(query);
                        }
                        int i6 = query.getInt(6);
                        String str3 = string2;
                        if (TextUtils.isEmpty(string2)) {
                            str3 = this.A;
                        }
                        o a3 = (!t.a((CharSequence) string) || this.m.c(string)) ? null : this.w.a(string, str3, i2);
                        if (a3 == null) {
                            charSequence = this.m.a(string, null);
                            str2 = BuildConfig.FLAVOR;
                            i3 = 0;
                            str = BuildConfig.FLAVOR;
                            uri2 = null;
                            j2 = 0;
                            uri3 = null;
                        } else {
                            charSequence = a3.f;
                            str2 = a3.f738b;
                            i3 = a3.c;
                            str = a3.d;
                            uri2 = a3.i;
                            j2 = a3.h;
                            uri3 = a3.f737a;
                        }
                        y yVar2 = new y(string, i5, charSequence, str3, string3, new int[]{i4}, j3, j4, str2, i3, str, uri3, uri2, a2, i6, j2);
                        yVar = yVar2;
                        if (query != null) {
                            query.close();
                            yVar = yVar2;
                        }
                    }
                } catch (Throwable th) {
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException("Cannot find content: " + uri);
        }
        return yVar;
    }

    static /* synthetic */ void a(CallDetailFragment callDetailFragment, i iVar) {
        View findViewById = callDetailFragment.getView().findViewById(2131296428);
        findViewById.setVisibility(0);
        ImageView imageView = (ImageView) findViewById.findViewById(2131296431);
        TextView textView = (TextView) findViewById.findViewById(2131296434);
        View findViewById2 = findViewById.findViewById(2131296433);
        findViewById2.setOnClickListener(callDetailFragment.T);
        findViewById2.setTag(iVar);
        findViewById2.setContentDescription(iVar.c);
        if (iVar.f != null) {
            imageView.setOnClickListener(callDetailFragment.U);
            imageView.setImageResource(iVar.e);
            imageView.setVisibility(0);
            imageView.setTag(iVar);
            imageView.setContentDescription(iVar.g);
        } else {
            imageView.setVisibility(8);
        }
        textView.setText(iVar.f889a);
        TextView textView2 = (TextView) findViewById.findViewById(2131296432);
        ImageView imageView2 = (ImageView) findViewById.findViewById(2131296372);
        if (!PhoneCapabilityTester.isATTSku()) {
            imageView2.setVisibility(8);
            if (TextUtils.isEmpty(iVar.d)) {
                textView2.setVisibility(8);
                return;
            }
            textView2.setText(iVar.d);
            textView2.setVisibility(0);
        } else if (iVar.h == null || iVar.h.length() == 0) {
            imageView2.setVisibility(0);
            textView2.setText(BuildConfig.FLAVOR);
            if (imageView2 != null) {
                imageView2.setVisibility(8);
            }
        } else {
            textView2.setText(iVar.h);
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
        }
    }

    static /* synthetic */ void a(CallDetailFragment callDetailFragment, y yVar) {
        CharSequence a2 = callDetailFragment.m.a(yVar.f2214a, yVar.f2215b, yVar.p);
        View findViewById = callDetailFragment.getView().findViewById(2131296428);
        findViewById.setVisibility(0);
        ((ImageView) findViewById.findViewById(2131296431)).setVisibility(8);
        ((TextView) findViewById.findViewById(2131296434)).setText(a2);
        ((TextView) findViewById.findViewById(2131296432)).setVisibility(8);
        View findViewById2 = findViewById.findViewById(2131296433);
        findViewById2.setFocusable(false);
        findViewById2.setOnClickListener(null);
        findViewById2.setTag(null);
        findViewById2.setContentDescription(a2);
    }

    private boolean a(Uri[] uriArr) {
        boolean z = false;
        if (uriArr != null) {
            try {
                this.f846b.submit(h.UPDATE_PHONE_CALL_DETAILS, new a(uriArr), new Void[0]);
            } catch (Exception e2) {
                Log.d("CallDetailFragment", "fail to submit task due to: " + e2.toString());
            }
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    public int b(Uri uri) {
        int i2;
        ContentResolver contentResolver = getActivity().getContentResolver();
        Cursor query = contentResolver.query(ContactsContract.Contacts.getLookupUri(contentResolver, uri), new String[]{"_id"}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    int i3 = query.getInt(0);
                    i2 = i3;
                    if (query != null) {
                        query.close();
                        i2 = i3;
                    }
                    return i2;
                }
            } catch (Throwable th) {
                if (query != null) {
                    query.close();
                }
                throw th;
            }
        }
        if (query != null) {
            query.close();
        }
        i2 = 0;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public y b(Cursor cursor) {
        y yVar;
        int i2;
        int a2;
        CharSequence charSequence;
        String str;
        int i3;
        String str2;
        Uri uri;
        long j2;
        Uri uri2;
        try {
            String string = cursor.getString(2);
            long j3 = cursor.getLong(0);
            long j4 = cursor.getLong(1);
            int i4 = cursor.getInt(3);
            String string2 = cursor.getString(4);
            String string3 = cursor.getString(5);
            int i5 = cursor.getInt(7);
            this.t = BuildConfig.FLAVOR;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                i2 = cursor.getInt(cursor.getColumnIndex("block"));
                a2 = PhoneCapabilityTester.getCallLogSimIndexAsInt(getActivity(), cursor.getInt(cursor.getColumnIndex("sim_index")));
                this.t = cursor.getString(cursor.getColumnIndex("city_id"));
            } else {
                i2 = 0;
                a2 = com.android.contacts.simcardmanage.a.a(cursor);
            }
            int i6 = cursor.getInt(6);
            String str3 = string2;
            if (TextUtils.isEmpty(string2)) {
                str3 = this.A;
            }
            o a3 = (!t.a((CharSequence) string) || this.m.c(string)) ? null : this.w.a(string, str3, i2);
            if (a3 == null) {
                charSequence = this.m.a(string, null);
                str = BuildConfig.FLAVOR;
                i3 = 0;
                str2 = BuildConfig.FLAVOR;
                uri = null;
                j2 = 0;
                uri2 = null;
            } else {
                charSequence = a3.f;
                str = a3.f738b;
                i3 = a3.c;
                str2 = a3.d;
                uri = a3.i;
                j2 = a3.h;
                uri2 = a3.f737a;
            }
            yVar = new y(string, i5, charSequence, str3, string3, new int[]{i4}, j3, j4, str, i3, str2, uri2, uri, a2, i6, j2);
        } catch (Exception e2) {
            Log.d("CallDetailFragment", e2.toString());
            yVar = null;
        }
        return yVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri[] e() {
        Uri[] uriArr;
        if (this.c != null) {
            uriArr = this.c;
        } else {
            uriArr = null;
            if (getActivity() != null) {
                uriArr = null;
                if (getActivity().getIntent() != null) {
                    Uri data = getActivity().getIntent().getData();
                    if (data != null) {
                        uriArr = new Uri[]{data};
                    } else {
                        long[] longArrayExtra = getActivity().getIntent().getLongArrayExtra("EXTRA_CALL_LOG_IDS");
                        uriArr = null;
                        if (longArrayExtra != null) {
                            Uri[] uriArr2 = new Uri[longArrayExtra.length];
                            Uri uri = PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL;
                            for (int i2 = 0; i2 < longArrayExtra.length; i2++) {
                                uriArr2[i2] = ContentUris.withAppendedId(uri, longArrayExtra[i2]);
                            }
                            uriArr = uriArr2;
                        }
                    }
                }
            }
        }
        return uriArr;
    }

    private Uri f() {
        return (Uri) getActivity().getIntent().getParcelableExtra("EXTRA_VOICEMAIL_URI");
    }

    static /* synthetic */ boolean j(CallDetailFragment callDetailFragment) {
        return callDetailFragment.f() != null;
    }

    public final void a() {
        if (getView() != null) {
            getView().setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Cursor cursor) {
        final a.C0045a aVar;
        if (cursor == null) {
            this.D.setVisibility(8);
            return;
        }
        List<a.C0045a> a2 = this.C.a(cursor);
        if (a2.size() == 0) {
            aVar = null;
        } else {
            if (a2.size() > 1) {
                Log.w("CallDetailFragment", String.format("Expected 1, found (%d) num of status messages. Will use the first one.", Integer.valueOf(a2.size())));
            }
            aVar = a2.get(0);
        }
        if (aVar == null || !aVar.b()) {
            this.D.setVisibility(8);
            return;
        }
        this.D.setVisibility(0);
        this.E.setText(aVar.c);
        if (aVar.d != -1) {
            this.F.setText(aVar.d);
        }
        if (aVar.e != null) {
            this.F.setClickable(true);
            this.F.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ImplicitIntentsUtil.startActivityOutsideApp(CallDetailFragment.this.v, new Intent("android.intent.action.VIEW", aVar.e));
                }
            });
            return;
        }
        this.F.setClickable(false);
    }

    public final void a(boolean z) {
        if (this.J != z) {
            this.J = z;
            setHasOptionsMenu(true);
            getFragmentManager().invalidateOptionsMenu();
        }
    }

    public final void b() {
        if (getView() != null) {
            getView().setVisibility(0);
        }
    }

    public final void c() {
        this.j = PhoneCapabilityTester.isSimActive(getActivity(), 1);
        this.k = PhoneCapabilityTester.isSimActive(getActivity(), 2);
        if (this.f845a != null) {
            this.f845a.a(this.j, this.k);
        }
    }

    public final void d() {
        final String str = this.Q;
        if (com.asus.a.a.h(getActivity(), str)) {
            com.asus.a.c.a(getActivity(), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    switch (i2) {
                        case 0:
                            Intent intent = new Intent();
                            intent.setAction("android.intent.action.ASUS_END_CALL_TAG");
                            intent.putExtra("doNotTag", true);
                            intent.putExtra("number", str);
                            intent.putExtra("markFrom", 3);
                            CallDetailFragment.this.startActivityForResult(intent, 1);
                            return;
                        case 1:
                            Intent intent2 = new Intent();
                            intent2.setAction("android.intent.action.ASUS_END_CALL_TAG");
                            intent2.putExtra("doNotTag", false);
                            intent2.putExtra("number", str);
                            intent2.putExtra("isShowBlockCheck", true);
                            intent2.putExtra("markFrom", 3);
                            CallDetailFragment.this.startActivityForResult(intent2, 1);
                            return;
                        default:
                            return;
                    }
                }
            });
            return;
        }
        Intent intent = new Intent("android.intent.action.ASUS_END_CALL_TAG");
        intent.putExtra("doNotTag", false);
        intent.putExtra("number", str);
        intent.putExtra("isShowBlockCheck", true);
        intent.putExtra("markFrom", 3);
        startActivityForResult(intent, 1);
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        Activity activity = getActivity();
        this.f846b = AsyncTaskExecutors.createThreadPoolExecutor();
        this.e = getResources();
        this.l = new n(this.e);
        this.m = new t(getActivity());
        this.n = new z(activity, this.e, this.l, this.m);
        this.C = new com.android.contacts.k.b();
        this.B = new com.android.contacts.dialpad.c(this);
        this.A = q.a(activity);
        this.K = new ab(activity, this.L);
        this.w = new p(activity, this.A);
        this.M = com.asus.a.a.d(getActivity()) && com.asus.a.a.h(getActivity());
    }

    @Override // android.app.Fragment
    public boolean onContextItemSelected(final MenuItem menuItem) {
        boolean z;
        long j2 = -1;
        switch (menuItem.getItemId()) {
            case 2131296298:
                com.android.contacts.a.a(this.y).show(getFragmentManager(), "dialog");
                z = true;
                break;
            case 2131296494:
                if (this.z != null) {
                    j2 = Long.valueOf(this.z.getLastPathSegment()).longValue();
                }
                ImplicitIntentsUtil.startActivityOutsideApp(this.v, PhoneCapabilityTester.newDialNumberIntent(this.v, this.x, this.y, j2, BuildConfig.FLAVOR, false, -1, 0));
                z = true;
                break;
            case 2131296495:
                if (this.z != null) {
                    j2 = Long.valueOf(this.z.getLastPathSegment()).longValue();
                }
                ImplicitIntentsUtil.startActivityOutsideApp(this.v, PhoneCapabilityTester.newDialNumberIntent(this.v, this.x, this.y, j2, BuildConfig.FLAVOR, false, -1, 1));
                z = true;
                break;
            case 2131296610:
                String str = this.y;
                z = true;
                if (!TextUtils.isEmpty(str)) {
                    ClipboardUtils.copyText(this.v, " ", str, true);
                    z = true;
                    break;
                }
                break;
            case 2131297036:
                onMenuBlockCaller(menuItem);
                z = true;
                break;
            case 2131297053:
                onMenuEditNumberBeforeCall(menuItem);
                z = true;
                break;
            case 2131297062:
                new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755790)).setMessage(getActivity().getResources().getString(2131755524)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        CallDetailFragment.this.onMenuRemoveThisCallLog(menuItem);
                        CallDetailFragment.this.a();
                        CallDetailFragment.this.f.b_();
                    }
                }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                z = true;
                break;
            case 2131297080:
                onMenuTrashVoicemail(menuItem);
                z = true;
                break;
            case 2131297081:
                onMenuUnBlockCaller(menuItem);
                z = true;
                break;
            case 2131297272:
                onMenuSendMessage(menuItem);
                z = true;
                break;
            case 2131297529:
                Intent intent = new Intent("android.intent.action.VIEW", this.z);
                intent.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                ImplicitIntentsUtil.startActivityInApp(this.v, intent);
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        String[] stringArray;
        super.onCreate(bundle);
        if (bundle != null && (stringArray = bundle.getStringArray("selectedcalllog")) != null) {
            Log.d("CallDetailFragment", "onCreate: savedInstanceState");
            this.c = new Uri[stringArray.length];
            int length = stringArray.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                this.c[i3] = Uri.parse(stringArray[i2]);
                i2++;
                i3++;
            }
        }
    }

    @Override // android.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        getActivity().getMenuInflater().inflate(2131492874, contextMenu);
        boolean a2 = t.a((CharSequence) this.y);
        boolean b2 = this.m.b(this.y);
        boolean isEmpty = TextUtils.isEmpty(this.y);
        contextMenu.findItem(2131297062).setVisible(this.I);
        contextMenu.findItem(2131297080).setVisible(this.H);
        com.asus.blocklist.g.a(getActivity(), contextMenu.findItem(2131297036), contextMenu.findItem(2131297081), this.y);
        contextMenu.findItem(2131296298).setVisible(!this.s && !isEmpty);
        contextMenu.findItem(2131297529).setVisible(this.s);
        MenuItem findItem = contextMenu.findItem(2131296494);
        MenuItem findItem2 = contextMenu.findItem(2131296495);
        findItem.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 1)));
        findItem2.setTitle(getResources().getString(2131755767, PhoneCapabilityTester.getSimSlotName(getActivity(), 2)));
        if (!com.android.contacts.simcardmanage.b.a(getActivity()) || !PhoneCapabilityTester.isSimActive(getActivity(), 1) || !PhoneCapabilityTester.isSimActive(getActivity(), 2) || CallUtil.isUriNumber(this.y) || !a2) {
            findItem.setVisible(false);
            findItem2.setVisible(false);
        } else {
            findItem.setVisible(true);
            findItem2.setVisible(true);
        }
        if (com.android.contacts.simcardmanage.b.e(getActivity(), 1)) {
            findItem2.setVisible(false);
        }
        if (com.android.contacts.simcardmanage.b.e(getActivity(), 2)) {
            findItem.setVisible(false);
        }
        contextMenu.setHeaderTitle(this.r);
        if (!b2) {
            contextMenu.findItem(2131297272).setVisible(false);
        }
        if (!a2 || CallUtil.isUriNumber(this.y)) {
            contextMenu.findItem(2131297053).setVisible(false);
        }
        if (isEmpty) {
            contextMenu.findItem(2131296610).setVisible(false);
        }
    }

    @Override // android.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        Boolean bool = false;
        if (this.v != null) {
            bool = Boolean.valueOf(PhoneCapabilityTester.isUsingTwoPanes(this.v));
        }
        if (bool.booleanValue()) {
            menuInflater.inflate(2131492872, menu);
        }
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131427415, viewGroup, false);
        this.d = layoutInflater;
        this.o = (TextView) inflate.findViewById(2131296930);
        this.p = inflate.findViewById(2131297161);
        this.D = inflate.findViewById(2131297542);
        this.E = (TextView) inflate.findViewById(2131297544);
        this.F = (TextView) inflate.findViewById(2131297543);
        this.q = (ImageView) inflate.findViewById(2131297011);
        this.N = (TextView) inflate.findViewById(2131296497);
        this.O = (ImageView) inflate.findViewById(2131297020);
        this.v = getActivity().getApplicationContext();
        this.D.setVisibility(8);
        inflate.findViewById(2131297541).setVisibility(8);
        return inflate;
    }

    public void onMenuBlockCaller(MenuItem menuItem) {
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(getActivity()).setTitle(getResources().getString(2131755783)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                if (CallDetailFragment.this.z != null) {
                    if (com.asus.blocklist.g.h(CallDetailFragment.this.v)) {
                        com.asus.blocklist.backwardcompatible.a.b(CallDetailFragment.this.v, CallDetailFragment.this.b(CallDetailFragment.this.z));
                    } else {
                        com.asus.blocklist.g.a(CallDetailFragment.this.v, CallDetailFragment.this.b(CallDetailFragment.this.z));
                    }
                } else if (CallDetailFragment.this.y != null) {
                    if (com.asus.blocklist.g.h(CallDetailFragment.this.v)) {
                        com.asus.blocklist.backwardcompatible.a.c(CallDetailFragment.this.v, CallDetailFragment.this.y);
                    } else {
                        com.asus.blocklist.g.e(CallDetailFragment.this.v, CallDetailFragment.this.y);
                    }
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(19, CallDetailFragment.this.v, "Behavior - Block", "Block by call detail", null, null);
                }
            }
        }).setNegativeButton(getString(17039369), (DialogInterface.OnClickListener) null);
        if (this.z != null) {
            if (com.asus.blocklist.a.b(this.v)) {
                negativeButton.setMessage(getResources().getString(2131755202));
            } else {
                negativeButton.setMessage(getResources().getString(2131755203));
            }
        } else if (this.y != null) {
            if (com.asus.blocklist.a.b(this.v)) {
                negativeButton.setMessage(getResources().getString(2131755212));
            } else {
                negativeButton.setMessage(getResources().getString(2131755213));
            }
        }
        negativeButton.show();
    }

    public void onMenuEditNumberBeforeCall(MenuItem menuItem) {
        this.g.a(this.y);
        getActivity().getActionBar().selectTab(getActivity().getActionBar().getTabAt(MainDialtactsActivity.TAB_INDEX_DIALER));
    }

    public void onMenuRemoveFromCallLog(MenuItem menuItem) {
        final StringBuilder sb = new StringBuilder();
        Uri[] e2 = e();
        if (e2 != null) {
            for (Uri uri : e2) {
                if (sb.length() != 0) {
                    sb.append(",");
                }
                sb.append(ContentUris.parseId(uri));
            }
            try {
                this.f846b.submit(h.REMOVE_FROM_CALL_LOG_AND_FINISH, new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.dialpad.CallDetailFragment.8
                    @Override // android.os.AsyncTask
                    public final /* synthetic */ Void doInBackground(Void[] voidArr) {
                        CallDetailFragment.this.getActivity().getContentResolver().delete(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, "_id IN (" + ((Object) sb) + ")", null);
                        return null;
                    }

                    @Override // android.os.AsyncTask
                    public final /* synthetic */ void onPostExecute(Void r3) {
                        CallDetailFragment.this.c = null;
                    }
                }, new Void[0]);
            } catch (Exception e3) {
                Log.d("CallDetailFragment", "fail to submit task due to: " + e3.toString());
            }
        }
    }

    public void onMenuRemoveThisCallLog(MenuItem menuItem) {
        Uri[] uriArr;
        int i2 = this.f845a.c;
        if (this.f845a != null) {
            y[] yVarArr = this.f845a.d;
            Uri[] uriArr2 = new Uri[yVarArr.length];
            Uri uri = PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL;
            for (int i3 = 0; i3 < yVarArr.length; i3++) {
                uriArr2[i3] = ContentUris.withAppendedId(uri, yVarArr[i3].o);
            }
            uriArr = uriArr2;
        } else {
            uriArr = new Uri[0];
        }
        if (uriArr.length > 0) {
            final long parseId = ContentUris.parseId(uriArr[i2 - 1]);
            try {
                this.f846b.submit(h.REMOVE_FROM_CALL_LOG_AND_FINISH, new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.dialpad.CallDetailFragment.9
                    @Override // android.os.AsyncTask
                    public final /* synthetic */ Void doInBackground(Void[] voidArr) {
                        CallDetailFragment.this.getActivity().getContentResolver().delete(PhoneCapabilityTester.IsUnbundled() ? CallLog.Calls.CONTENT_URI : CallLog.Calls.CONTENT_URI_WITH_VOICEMAIL, "_id IN (" + parseId + ")", null);
                        return null;
                    }

                    @Override // android.os.AsyncTask
                    public final /* synthetic */ void onPostExecute(Void r3) {
                        CallDetailFragment.this.c = null;
                    }
                }, new Void[0]);
            } catch (Exception e2) {
                Log.d("CallDetailFragment", "fail to submit task due to: " + e2.toString());
            }
        }
    }

    public void onMenuSendMessage(MenuItem menuItem) {
        if (isAdded() && new t(getResources()).b(this.y)) {
            ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", this.y, null)));
        }
    }

    public void onMenuTrashVoicemail(MenuItem menuItem) {
        final Uri f2 = f();
        try {
            this.f846b.submit(h.DELETE_VOICEMAIL_AND_FINISH, new AsyncTask<Void, Void, Void>() { // from class: com.android.contacts.dialpad.CallDetailFragment.10
                @Override // android.os.AsyncTask
                public final /* synthetic */ Void doInBackground(Void[] voidArr) {
                    CallDetailFragment.this.getActivity().getContentResolver().delete(f2, null, null);
                    return null;
                }

                @Override // android.os.AsyncTask
                public final /* bridge */ /* synthetic */ void onPostExecute(Void r2) {
                }
            }, new Void[0]);
        } catch (Exception e2) {
            Log.d("CallDetailFragment", "fail to submit task due to: " + e2.toString());
        }
    }

    public void onMenuUnBlockCaller(MenuItem menuItem) {
        new AlertDialog.Builder(getActivity()).setTitle(getResources().getString(2131755798)).setMessage(getResources().getString(2131755015)).setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                if (CallDetailFragment.this.z != null) {
                    if (com.asus.blocklist.g.h(CallDetailFragment.this.v)) {
                        com.asus.blocklist.backwardcompatible.a.c(CallDetailFragment.this.v, CallDetailFragment.this.b(CallDetailFragment.this.z));
                    } else {
                        com.asus.blocklist.g.b(CallDetailFragment.this.v, CallDetailFragment.this.b(CallDetailFragment.this.z));
                    }
                } else if (CallDetailFragment.this.y != null) {
                    if (com.asus.blocklist.g.h(CallDetailFragment.this.v)) {
                        com.asus.blocklist.backwardcompatible.a.d(CallDetailFragment.this.v, CallDetailFragment.this.y);
                    } else {
                        com.asus.blocklist.g.f(CallDetailFragment.this.v, CallDetailFragment.this.y);
                    }
                }
                if (PhoneCapabilityTester.IsSystemApp()) {
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(19, CallDetailFragment.this.v, "Behavior - UnBlock", "Unblock by call detail", null, null);
                }
            }
        }).setNegativeButton(getResources().getString(17039369), (DialogInterface.OnClickListener) null).show();
    }

    @Override // android.app.Fragment
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 2131297053:
                onMenuEditNumberBeforeCall(menuItem);
                break;
            case 2131297062:
                new AlertDialog.Builder(getActivity()).setTitle(getActivity().getResources().getString(2131755790)).setMessage(getActivity().getResources().getString(2131755524)).setPositiveButton(getActivity().getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.android.contacts.dialpad.CallDetailFragment.11
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        CallDetailFragment.this.onMenuRemoveFromCallLog(menuItem);
                        CallDetailFragment.this.a();
                        CallDetailFragment.this.f.b_();
                    }
                }).setNegativeButton(getActivity().getString(17039369), (DialogInterface.OnClickListener) null).show();
                break;
            case 2131297080:
                onMenuTrashVoicemail(menuItem);
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Fragment
    public void onPause() {
        this.K.a();
        this.L.c();
        if (this.n != null) {
            this.n.a();
        }
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z;
        ResultListFragment resultListFragment;
        boolean z2 = true;
        if (getFragmentManager() == null || (resultListFragment = (ResultListFragment) getFragmentManager().findFragmentById(2131297236)) == null) {
            z = false;
        } else {
            z = (resultListFragment.m == null || resultListFragment.m.equals(BuildConfig.FLAVOR)) & (resultListFragment.G != null && !resultListFragment.G.e());
        }
        if (menu != null) {
            MenuItem findItem = menu.findItem(2131297062);
            if (findItem != null) {
                findItem.setVisible(this.I && this.J && z);
            }
            MenuItem findItem2 = menu.findItem(2131297053);
            if (findItem2 != null) {
                findItem2.setVisible(this.G && this.J && z);
            }
            MenuItem findItem3 = menu.findItem(2131297080);
            if (findItem3 != null) {
                if (!this.H || !this.J || !z) {
                    z2 = false;
                }
                findItem3.setVisible(z2);
            }
        }
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.u && this.c != null) {
            if (a(this.c) && !this.J) {
                a(true);
            }
            Log.d("CallDetailFragment", "Rotate");
        } else if (!this.u && this.c != null) {
            a(this.c);
            Log.d("CallDetailFragment", "DDS from CallDetailActivity");
        } else if (!this.u && this.c == null) {
            a((Uri[]) null);
            a();
            Log.d("CallDetailFragment", "DDS from CallLog");
        }
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.c != null) {
            String[] strArr = new String[this.c.length];
            int length = this.c.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                strArr[i3] = String.valueOf(this.c[i3]);
                i2++;
                i3++;
            }
            bundle.putStringArray("selectedcalllog", strArr);
        } else {
            bundle.putStringArray("selectedcalllog", null);
        }
        this.c = null;
    }

    @Override // android.app.Fragment, android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        Log.d("CallDetailFragment", "onTrimMemory(), level = " + i2);
        super.onTrimMemory(i2);
    }
}
