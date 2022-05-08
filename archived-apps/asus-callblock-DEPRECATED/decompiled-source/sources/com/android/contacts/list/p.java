package com.android.contacts.list;

import android.app.Activity;
import android.app.Fragment;
import android.app.LoaderManager;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Loader;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.a.b.a;
import com.android.contacts.ContactListEmptyView;
import com.android.contacts.fastscroll.AlphabetFastScroll;
import com.android.contacts.k;
import com.android.contacts.list.o;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.MemoryUtils;
import com.android.contacts.widget.b;
import com.android.vcard.VCardConfig;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/p.class */
public abstract class p<T extends o> extends Fragment implements LoaderManager.LoaderCallbacks<Cursor>, View.OnFocusChangeListener, View.OnTouchListener, AbsListView.OnScrollListener, AdapterView.OnItemClickListener {
    private k B;
    private ContactListEmptyView C;
    private ContactsPreferences D;
    private boolean E;
    private boolean F;
    private boolean H;
    private Context I;
    private LoaderManager J;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1869a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1870b;
    private boolean c;
    private View f;
    private AlphabetFastScroll g;
    private Parcelable j;
    private int k;
    private int l;
    protected boolean m;
    public boolean o;
    protected String p;
    public boolean r;
    public boolean s;
    public T t;
    protected ListView u;
    public b x;
    protected boolean y;
    public boolean n = true;
    private int d = 2;
    public int q = 0;
    private boolean e = true;
    private boolean h = false;
    private boolean i = false;
    boolean v = true;
    public int w = 20;
    private int G = 0;
    Set<Integer> z = new HashSet();
    Map<Integer, Integer> A = new HashMap();
    private Handler K = new Handler() { // from class: com.android.contacts.list.p.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                p.this.a(message.arg1, (am) message.obj);
            }
        }
    };
    private ContactsPreferences.ChangeListener L = new ContactsPreferences.ChangeListener() { // from class: com.android.contacts.list.p.2
        @Override // com.android.contacts.preference.ContactsPreferences.ChangeListener
        public final void onChange() {
            p.this.z();
            p.this.i_();
        }
    };

    private void d() {
        this.K.removeMessages(1);
    }

    private void e() {
        boolean z = true;
        boolean z2 = this.c && this.m;
        if (this.u != null) {
            this.u.setFastScrollEnabled(z2);
            this.u.setFastScrollAlwaysVisible(z2);
            this.u.setVerticalScrollbarPosition(this.d);
            this.u.setScrollBarStyle(VCardConfig.FLAG_REFRAIN_PHONE_NUMBER_FORMATTING);
            if (this.h) {
                this.u.setFastScrollEnabled(false);
                this.u.setFastScrollAlwaysVisible(false);
                this.u.setVerticalScrollbarPosition(this.d);
                this.u.setVerticalScrollBarEnabled(false);
            }
            if (this.g != null) {
                Log.i("ContactEntryListFragment", "mAlphabetFastScroll.setListView");
                AlphabetFastScroll alphabetFastScroll = this.g;
                ListView listView = this.u;
                int i = getActivity().getResources().getConfiguration().orientation;
                if (this.o) {
                    z = false;
                }
                alphabetFastScroll.setListView(listView, i, z);
            }
            this.u.setPadding(0, this.u.getPaddingTop(), this.i ? this.I.getResources().getDimensionPixelOffset(2131099789) : 0, this.u.getPaddingBottom());
        }
    }

    private void g() {
        if (this.f1869a && this.I != null) {
            if (this.B == null) {
                this.B = k.a(this.I);
            }
            if (this.u != null) {
                this.u.setOnScrollListener(this);
            }
            if (this.t != null) {
                this.t.t = this.B;
            }
        }
    }

    private void i() {
        ((InputMethodManager) this.I.getSystemService("input_method")).hideSoftInputFromWindow(this.u.getWindowToken(), 0);
    }

    public abstract View a(LayoutInflater layoutInflater);

    public abstract void a(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, Cursor cursor) {
        if (i < this.t.f408b.size()) {
            this.t.a(i, cursor);
            v();
            b(cursor);
            if (!f_() && this.j != null) {
                this.u.onRestoreInstanceState(this.j);
                this.j = null;
            }
        }
    }

    protected final void a(int i, am amVar) {
        Bundle bundle = new Bundle();
        bundle.putLong("directoryId", amVar.f);
        getLoaderManager().restartLoader(i, bundle, this);
    }

    /* renamed from: a */
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        int i = 0;
        if (this.e) {
            int id = loader.getId();
            if (id == -1) {
                this.G = 2;
                this.t.c(cursor);
                d_();
            } else {
                a(id, cursor);
                if (!this.o) {
                    this.G = 0;
                    getLoaderManager().destroyLoader(-1);
                } else if (this.q != 0) {
                    if (this.G == 0) {
                        this.G = 1;
                        getLoaderManager().initLoader(-1, null, this);
                    } else {
                        d_();
                    }
                }
            }
            if (id > 0) {
                if (this.z.contains(Integer.valueOf(id))) {
                    this.z.remove(Integer.valueOf(id));
                }
                if (cursor != null) {
                    i = cursor.getCount();
                }
                this.A.put(Integer.valueOf(id), Integer.valueOf(i));
            }
        }
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.m = bundle.getBoolean("sectionHeaderDisplayEnabled");
            this.f1869a = bundle.getBoolean("photoLoaderEnabled");
            this.n = bundle.getBoolean("quickContactEnabled");
            this.f1870b = bundle.getBoolean("includeProfile");
            this.o = bundle.getBoolean("searchMode");
            this.c = bundle.getBoolean("visibleScrollbarEnabled");
            this.d = bundle.getInt("scrollbarPosition");
            this.q = bundle.getInt("directorySearchMode");
            this.s = bundle.getBoolean("legacyCompatibility");
            this.p = bundle.getString("queryString");
            this.w = bundle.getInt("directoryResultLimit");
            this.F = bundle.getBoolean("darkTheme");
            this.j = bundle.getParcelable("liststate");
        }
    }

    public void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        this.f = a(layoutInflater);
        View findViewById = this.f.findViewById(16908298);
        if (findViewById instanceof ListView) {
            this.u = (ListView) findViewById;
        } else if (findViewById instanceof ViewStub) {
            this.u = (ListView) ((ViewStub) findViewById).inflate();
        }
        if (this.u == null) {
            throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
        }
        View findViewById2 = this.f.findViewById(16908292);
        if (findViewById2 != null) {
            this.u.setEmptyView(findViewById2);
            if (findViewById2 instanceof ContactListEmptyView) {
                this.C = (ContactListEmptyView) findViewById2;
            }
        }
        this.u.setOnItemClickListener(this);
        this.u.setOnFocusChangeListener(this);
        this.u.setOnTouchListener(this);
        try {
            this.u.setFastScrollEnabled(!this.o);
        } catch (Resources.NotFoundException e) {
            Log.d("ContactEntryListFragment", "e:" + e.toString());
        }
        this.u.setDividerHeight(0);
        this.u.setSaveEnabled(false);
        if (this.x != null) {
            this.u.setOnCreateContextMenuListener(this.x);
        }
        e();
        g();
    }

    public final void a(AlphabetFastScroll alphabetFastScroll) {
        this.g = alphabetFastScroll;
        if (this.g != null && this.u != null) {
            this.g.setListView(this.u, getActivity().getResources().getConfiguration().orientation, !this.o);
        }
    }

    public void a(String str, boolean z) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
            this.A.clear();
        }
        if (!TextUtils.equals(this.p, str2)) {
            this.p = str2;
            b_(!TextUtils.isEmpty(this.p));
            if (this.t != null) {
                this.t.a(str2);
                this.w = 20;
                i_();
            }
        }
    }

    protected void b(Cursor cursor) {
    }

    public final void b(String str) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        if (!TextUtils.equals(this.p, str2)) {
            this.p = str2;
            if (this.t != null) {
                this.t.a(str2);
                i_();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b_(boolean z) {
        ListView listView;
        boolean z2 = true;
        if (this.o != z) {
            this.o = z;
            f(!this.o);
            if (!z) {
                this.G = 0;
                getLoaderManager().destroyLoader(-1);
            }
            if (this.t != null) {
                this.t.Y = z;
                this.t.b(z);
                this.t.a();
                if (!z) {
                    T t = this.t;
                    for (int size = t.f408b.size() - 1; size >= 0; size--) {
                        a.C0018a c = t.c(size);
                        if ((c instanceof am) && ((am) c).f == 0) {
                            break;
                        }
                        t.a_(size);
                    }
                }
                this.t.a(z);
            }
            if (this.u != null) {
                if (this.g != null) {
                    this.g.setIsSearchMode(this.o);
                    listView = this.u;
                } else {
                    ListView listView2 = this.u;
                    listView = listView2;
                    if (!z) {
                        listView = listView2;
                        listView.setFastScrollEnabled(z2);
                    }
                }
                z2 = false;
                listView.setFastScrollEnabled(z2);
            }
        }
    }

    public abstract T c();

    public final void c(int i) {
        if (this.d != i) {
            this.d = i;
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d_() {
        if (this.t != null && this.v) {
            f();
            int size = this.t.f408b.size();
            for (int i = 0; i < size; i++) {
                a.C0018a c = this.t.c(i);
                if (c instanceof am) {
                    am amVar = (am) c;
                    if (amVar.i == 0 && (amVar.j || !this.H)) {
                        am amVar2 = (am) this.t.c(i);
                        amVar2.i = 1;
                        long j = amVar2.f;
                        if (!this.E) {
                            Bundle bundle = new Bundle();
                            bundle.putLong("directoryId", j);
                            try {
                                getLoaderManager().initLoader(i, bundle, this);
                            } catch (Exception e) {
                                try {
                                    AsyncTask.class.getMethod("setDefaultExecutor", Executor.class).invoke(null, AsyncTask.SERIAL_EXECUTOR);
                                    getLoaderManager().initLoader(i, bundle, this);
                                } catch (Exception e2) {
                                    Log.d("ContactEntryListFragment", "Fail to startLoadingDirectoryPartition, Exception : " + e2.toString());
                                }
                            }
                        } else if (j == 0) {
                            a(i, amVar2);
                        } else if (amVar2 == null || amVar2.g != null || !"RSProvider".equals(amVar2.h)) {
                            this.K.removeMessages(1, amVar2);
                            this.K.sendMessageDelayed(this.K.obtainMessage(1, i, 0, amVar2), 300L);
                            long j2 = amVar2.f;
                            if (!(j2 == 0 || j2 == 1)) {
                                this.z.add(Integer.valueOf(i));
                            }
                        }
                    }
                } else {
                    try {
                        getLoaderManager().initLoader(i, null, this);
                    } catch (Exception e3) {
                        Log.d("ContactEntryListFragment", "Fail to init loader, Exception : " + e3.toString());
                    }
                }
            }
            this.H = false;
        }
    }

    public final void e(boolean z) {
        if (this.e != z) {
            this.e = z;
            if (this.t == null) {
                return;
            }
            if (this.e) {
                i_();
            } else {
                this.t.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        if (this.t != null) {
            this.t.q = this.n;
            this.t.r = this.f1870b;
            this.t.a(this.p);
            this.t.x = this.q;
            this.t.Y = this.o;
            this.t.n = this.k;
            this.t.o = this.l;
            this.t.X = this.m;
            this.t.A = this.r;
            this.t.y = this.w;
            this.t.D = this.F;
        }
    }

    public final void f(boolean z) {
        if (this.m != z) {
            this.m = z;
            if (this.t != null) {
                this.t.X = z;
            }
            e();
        }
    }

    public boolean f_() {
        boolean z = true;
        if ((this.t == null || !this.t.e()) && !u()) {
            z = false;
        }
        return z;
    }

    public final void g(boolean z) {
        if (this.c != z) {
            this.c = z;
            e();
        }
    }

    @Override // android.app.Fragment
    public Context getContext() {
        return this.I;
    }

    @Override // android.app.Fragment
    public LoaderManager getLoaderManager() {
        return this.J;
    }

    @Override // android.app.Fragment
    public View getView() {
        return this.f;
    }

    public final void h(boolean z) {
        this.f1870b = z;
        if (this.t != null) {
            this.t.r = z;
        }
    }

    public void i_() {
        d();
        T t = this.t;
        int size = t.f408b.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            a.C0018a c = t.c(i);
            z = z;
            if (c instanceof am) {
                am amVar = (am) c;
                if (!amVar.a()) {
                    z = true;
                }
                amVar.i = 0;
            }
        }
        if (z) {
            t.notifyDataSetChanged();
        }
        this.H = true;
        this.E = true;
        d_();
        this.z.clear();
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.I = activity;
        g();
        this.J = super.getLoaderManager();
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.D = new ContactsPreferences(this.I);
        a(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        CursorLoader cursorLoader;
        if (i == -1) {
            al alVar = new al(this.I);
            alVar.f1780a = this.t.x;
            alVar.f1781b = false;
            cursorLoader = alVar;
        } else {
            CursorLoader t = t();
            this.t.a(t, (bundle == null || !bundle.containsKey("directoryId")) ? 0L : bundle.getLong("directoryId"));
            cursorLoader = t;
        }
        return cursorLoader;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        a(layoutInflater, viewGroup);
        this.t = c();
        boolean z = this.o;
        this.t.b(z);
        this.t.a(z);
        this.t.t = this.B;
        this.u.setAdapter((ListAdapter) this.t);
        if (!this.o) {
            this.u.setFocusableInTouchMode(true);
            this.u.requestFocus();
        } else if (this.g != null) {
            this.g.setVisibility(8);
        }
        return this.f;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MemoryUtils.fixInputMethodManagerLeak(this.I);
    }

    public void onFocusChange(View view, boolean z) {
        if (view == this.u && z) {
            i();
        }
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        i();
        int headerViewsCount = i - this.u.getHeaderViewsCount();
        if (headerViewsCount >= 0) {
            a(headerViewsCount);
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        d();
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("sectionHeaderDisplayEnabled", this.m);
        bundle.putBoolean("photoLoaderEnabled", this.f1869a);
        bundle.putBoolean("quickContactEnabled", this.n);
        bundle.putBoolean("includeProfile", this.f1870b);
        bundle.putBoolean("searchMode", this.o);
        bundle.putBoolean("visibleScrollbarEnabled", this.c);
        bundle.putInt("scrollbarPosition", this.d);
        bundle.putInt("directorySearchMode", this.q);
        bundle.putBoolean("selectionVisible", this.r);
        bundle.putBoolean("legacyCompatibility", this.s);
        bundle.putString("queryString", this.p);
        bundle.putInt("directoryResultLimit", this.w);
        bundle.putBoolean("darkTheme", this.F);
        if (this.u != null) {
            bundle.putParcelable("liststate", this.u.onSaveInstanceState());
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 2) {
            this.B.a();
        } else if (this.f1869a) {
            this.B.b();
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.D.registerChangeListener(this.L);
        this.E = z();
        this.G = 0;
        this.H = true;
        d_();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.D.unregisterChangeListener();
        this.t.a();
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view != this.u) {
            return false;
        }
        i();
        return false;
    }

    public final ListView s() {
        return this.u;
    }

    public CursorLoader t() {
        return new CursorLoader(this.I, null, null, null, null, null);
    }

    public final boolean u() {
        boolean z;
        if (this.o && this.q != 0) {
            z = true;
            if (this.G != 0) {
                if (this.G == 1) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    protected void v() {
        this.y = false;
    }

    public final void w() {
        if (!this.h) {
            Log.i("ContactEntryListFragment", "mVisibleAsusScrollbarEnabled:" + this.h);
            this.h = true;
            e();
        }
    }

    public final void x() {
        this.f1869a = true;
        g();
    }

    public final String y() {
        return this.p;
    }

    protected final boolean z() {
        boolean z = false;
        if (this.k != this.D.getDisplayOrder()) {
            int displayOrder = this.D.getDisplayOrder();
            this.k = displayOrder;
            if (this.t != null) {
                this.t.n = displayOrder;
            }
            z = true;
        }
        if (this.l != this.D.getSortOrder()) {
            int sortOrder = this.D.getSortOrder();
            this.l = sortOrder;
            z = true;
            if (this.t != null) {
                this.t.o = sortOrder;
                z = true;
            }
        }
        return z;
    }
}
