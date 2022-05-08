package com.android.contacts.list;

import android.accounts.Account;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.LoaderManager;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.detail.DetailDialogFragment;
import com.android.contacts.list.g;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/h.class */
public class h extends p<g> {
    private g D;

    /* renamed from: a  reason: collision with root package name */
    protected long f1828a;

    /* renamed from: b  reason: collision with root package name */
    protected com.android.contacts.model.a f1829b;
    public CheckedTextView c;
    public Account f;
    public Context g;
    protected ProgressDialog h;
    protected c j;
    protected static boolean e = false;
    private static boolean C = false;
    private final String B = "AsusDeleteAllFragment";
    protected int d = -1;
    protected boolean i = false;
    public Bundle k = null;
    boolean l = true;
    private final LoaderManager.LoaderCallbacks<Cursor> E = new LoaderManager.LoaderCallbacks<Cursor>() { // from class: com.android.contacts.list.h.1
        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
            CursorLoader cursorLoader;
            switch (i) {
                case p.POSITION_NONE /* -2 */:
                    cursorLoader = new CursorLoader(h.this.getActivity(), ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, h.this.f1828a), new String[]{"display_name"}, null, null, null);
                    break;
                case p.POSITION_UNCHANGED /* -1 */:
                case 0:
                default:
                    throw new IllegalArgumentException("No loader for ID=" + i);
                case 1:
                    cursorLoader = new CursorLoader(h.this.getActivity());
                    g gVar = (g) h.this.t;
                    if (gVar != null) {
                        gVar.a(cursorLoader, 0L);
                        break;
                    }
                    break;
            }
            return cursorLoader;
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
            Cursor cursor2 = cursor;
            switch (loader.getId()) {
                case p.POSITION_NONE /* -2 */:
                    if (cursor2 != null && cursor2.moveToFirst()) {
                        h.a(h.this, cursor2.getString(0));
                        return;
                    }
                    return;
                case p.POSITION_UNCHANGED /* -1 */:
                case 0:
                default:
                    return;
                case 1:
                    h.this.a(cursor2);
                    h.this.j();
                    h.this.g();
                    return;
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<Cursor> loader) {
        }
    };
    private g.a F = new g.a() { // from class: com.android.contacts.list.h.3
        @Override // com.android.contacts.list.g.a
        public final void a(View view) {
            try {
                int positionForView = h.this.u.getPositionForView(view);
                if (!h.this.l) {
                    h.this.a(positionForView);
                } else if (positionForView >= 0) {
                    Uri m = ((g) h.this.t).m(positionForView);
                    Uri uri = m;
                    if (!m.getPath().startsWith(ContactsContract.Contacts.CONTENT_LOOKUP_URI.getPath())) {
                        uri = ContactsContract.Contacts.getLookupUri(h.this.getActivity().getContentResolver(), m);
                    }
                    if (uri != null) {
                        DetailDialogFragment.newInstance(uri).show(h.this.getFragmentManager(), "AsusDeleteAllFragment");
                    }
                }
            } catch (Exception e2) {
                Log.d("AsusDeleteAllFragment", e2.toString());
            }
        }

        @Override // com.android.contacts.list.g.a
        public final void b(View view) {
            try {
                h.this.a(h.this.u.getPositionForView(view));
            } catch (Exception e2) {
                Log.d("AsusDeleteAllFragment", e2.toString());
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/h$a.class */
    public final class a extends AsyncTask<Void, Void, Boolean> {
        a() {
        }

        private Boolean a() {
            g gVar = (g) h.this.t;
            int count = gVar.getCount();
            int i = 0;
            for (int i2 = 0; i2 < count; i2++) {
                try {
                    Uri m = gVar.m(i2);
                    i = i;
                    if (m != null) {
                        i = i;
                        if (gVar.e.contains(m)) {
                            i++;
                        }
                    }
                } catch (Exception e) {
                    Log.i("AsusDeleteAllFragment", e.toString());
                    i = i;
                }
            }
            return Boolean.valueOf(i == count - 1);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue()) {
                if (h.this.c != null) {
                    h.this.c.setChecked(true);
                }
                h.e = true;
                return;
            }
            if (h.this.c != null) {
                h.this.c.setChecked(false);
            }
            h.e = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/h$b.class */
    public final class b extends AsyncTask<ArrayList<Uri>, Integer, Integer> {
        ContentResolver d;
        long f;
        long g;

        /* renamed from: a  reason: collision with root package name */
        final int f1834a = 0;

        /* renamed from: b  reason: collision with root package name */
        final int f1835b = 1;
        final int c = 2;
        int e = 0;
        long h = 0;
        long i = 0;

        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x014a, code lost:
            android.util.Log.i("AsusDeleteAllFragment", r0 + " : Always fail, need to check resason");
         */
        /* JADX WARN: Finally extract failed */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Integer doInBackground(java.util.ArrayList<android.net.Uri>... r8) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.h.b.doInBackground(java.util.ArrayList[]):java.lang.Integer");
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x011d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean a(android.database.Cursor r7, int r8) {
            /*
                Method dump skipped, instructions count: 592
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.h.b.a(android.database.Cursor, int):boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            boolean unused = h.C = false;
            this.d = null;
            if (h.this.h != null) {
                h.this.h.cancel();
                h.this.h.dismiss();
                h.this.h = null;
            }
            if (com.android.contacts.b.f607a.booleanValue()) {
                Log.d("AsusDeleteAllFragment", "Delete number: " + this.e);
                if (num2.intValue() == 0) {
                    Log.d("AsusDeleteAllFragment", "no contact to delete");
                } else if (num2.intValue() == 1) {
                    Log.d("AsusDeleteAllFragment", "delete success");
                } else if (num2.intValue() == 2) {
                    Log.d("AsusDeleteAllFragment", "delete fail");
                }
                this.g = System.currentTimeMillis();
                Log.d("AsusDeleteAllFragment", "(Total)Delete time is " + (this.g - this.f) + "(msec)");
                Log.d("AsusDeleteAllFragment", "(SIM)Delete time is " + this.h + "(msec)");
                Log.d("AsusDeleteAllFragment", "(Database)Delete time is " + this.i + "(msec)");
            }
            if (h.this.getActivity() != null) {
                h.this.getActivity().finish();
            } else if (h.this.g != null && (h.this.g instanceof Activity)) {
                ((Activity) h.this.g).finish();
            }
            h.this.g = null;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            this.e = 0;
            this.h = 0L;
            this.i = 0L;
            this.f = System.currentTimeMillis();
            boolean unused = h.C = true;
            this.d = h.this.g.getContentResolver();
            h.this.d();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/h$c.class */
    public interface c {
        void a(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/h$d.class */
    final class d extends AsyncTask<Void, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        long f1836a = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d() {
        }

        private Void a() {
            g gVar = (g) h.this.t;
            int count = gVar.getCount();
            if (gVar.f.size() > 0) {
                for (Uri uri : gVar.f) {
                    if (!gVar.e.contains(uri)) {
                        gVar.e.add(uri);
                    }
                }
                return null;
            }
            for (int i = 0; i < count; i++) {
                try {
                    Uri m = gVar.m(i);
                    if (m != null) {
                        if (!gVar.e.contains(m)) {
                            gVar.e.add(m);
                        }
                        gVar.f.add(m);
                    }
                } catch (Exception e) {
                    Log.i("AsusDeleteAllFragment", e.toString());
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r8) {
            Void r0 = r8;
            if (h.this.h != null) {
                h.this.h.cancel();
                h.this.h.dismiss();
                h.this.h = null;
            }
            super.onPostExecute(r0);
            ((g) h.this.t).notifyDataSetChanged();
            h.this.j.a(true);
            h.this.c.setChecked(true);
            Log.d("AsusDeleteAllFragment", "SelectAllTask spend time = " + (System.currentTimeMillis() - this.f1836a));
            h.this.i = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            h.this.i = true;
            super.onPreExecute();
            this.f1836a = System.currentTimeMillis();
        }
    }

    public h() {
        x();
        f(true);
        g(false);
        this.n = false;
    }

    static /* synthetic */ void a(h hVar, String str) {
        Activity activity = hVar.getActivity();
        ((TextView) activity.findViewById(2131296978)).setText(activity.getString(2131755226, new Object[]{str}));
    }

    public static boolean i() {
        return C;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427394, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        g gVar = (g) this.t;
        int g = gVar.g(i);
        Uri m = gVar.m(i);
        if (g == 0) {
            if (gVar.g.get(m) == null || gVar.g.get(m).intValue() == 0) {
                gVar.g.put(m, 1);
            } else if (gVar.g.get(Long.valueOf(gVar.n(i))).intValue() == 1) {
                gVar.g.put(m, 0);
            }
        } else if (g == 1) {
            if (gVar.e.contains(m)) {
                gVar.e.remove(m);
            } else {
                gVar.e.add(m);
            }
            g();
        }
        gVar.notifyDataSetChanged();
    }

    public final void a(ProgressDialog progressDialog) {
        this.h = progressDialog;
    }

    protected final void a(Cursor cursor) {
        g(true);
        a(1, cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        this.c = (CheckedTextView) getView().findViewById(2131297270);
        this.c.setText(getResources().getString(2131755839));
        this.c.setVisibility(0);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.c.setPadding(getResources().getDimensionPixelOffset(2131099769), 0, getResources().getDimensionPixelOffset(2131099782), 0);
        }
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.list.h.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g gVar = (g) h.this.t;
                if (h.this.i) {
                    return;
                }
                if (h.e) {
                    gVar.c();
                    h.e = false;
                    h.this.j.a(false);
                    h.this.c.setChecked(false);
                    gVar.notifyDataSetChanged();
                    return;
                }
                h.e = true;
                h.this.i = true;
                DialogFragment a2 = com.android.contacts.interactions.a.a();
                a2.show(h.this.getFragmentManager(), (String) null);
                a2.setCancelable(false);
                new d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        });
    }

    @Override // com.android.contacts.list.p
    public void a(String str, boolean z) {
        super.b(str);
        ((g) this.t).a(str);
        f();
        getLoaderManager().restartLoader(1, null, this.E);
    }

    public void d() {
        if (getLoaderManager() != null) {
            ((g) this.t).a((Cursor) null);
            getLoaderManager().destroyLoader(-2);
            getLoaderManager().destroyLoader(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public void d_() {
        f();
        getLoaderManager().initLoader(-2, null, this.E);
        getLoaderManager().initLoader(1, null, this.E);
    }

    /* renamed from: e */
    public g c() {
        this.D = new g(getActivity());
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            this.D.p = true;
        }
        return this.D;
    }

    public final void e_() {
        g gVar = (g) this.t;
        if (gVar.e.size() > 0) {
            Iterator<Uri> it = gVar.e.iterator();
            StringBuilder sb = new StringBuilder();
            sb.append("ASUS");
            while (it.hasNext()) {
                sb.append(it.next().getLastPathSegment());
                if (it.hasNext()) {
                    sb.append("%3A");
                }
            }
            Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_MULTI_VCARD_URI, sb.toString());
            Log.d("AsusDeleteAllFragment", "shareUri length: " + withAppendedPath.toString().length() + ", count: " + gVar.e.size());
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/x-vcard");
            intent.putExtra("android.intent.extra.STREAM", withAppendedPath);
            try {
                ImplicitIntentsUtil.startActivityOutsideApp(getActivity(), Intent.createChooser(intent, getString(2131756121)));
                getActivity().finish();
            } catch (ActivityNotFoundException e2) {
                Toast.makeText(getActivity().getApplicationContext(), 2131756119, 0).show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void f() {
        super.f();
        g gVar = (g) this.t;
        gVar.j = this.f;
        gVar.k = this.F;
        this.f1829b = com.android.contacts.model.a.a(getActivity());
        gVar.i = this.f1829b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        g gVar = (g) this.t;
        int count = gVar.getCount();
        int size = gVar.e.size();
        if (size >= count - 1) {
            try {
                new a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e2) {
                Log.e("AsusDeleteAllFragment", e2.toString());
            }
        } else {
            this.c.setChecked(false);
            e = false;
        }
        if (size == 0) {
            this.j.a(false);
        } else {
            this.j.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void j() {
        if (this.t != 0 && ((g) this.t).f.size() > 0) {
            ((g) this.t).f.clear();
        }
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.k != null) {
            g gVar = (g) this.t;
            ArrayList<String> stringArrayList = this.k.getStringArrayList("mapSuggestAsusDeleteAll");
            if (!(gVar == null || stringArrayList == null)) {
                for (int i = 0; i < stringArrayList.size(); i++) {
                    gVar.g.put(Uri.parse(stringArrayList.get(i)), 1);
                }
                gVar.notifyDataSetChanged();
            }
            ArrayList<String> stringArrayList2 = this.k.getStringArrayList("mapAllAsusDeleteAll");
            if (!(gVar == null || stringArrayList2 == null)) {
                for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                    gVar.e.add(Uri.parse(stringArrayList2.get(i2)));
                }
                gVar.notifyDataSetChanged();
            }
        }
    }

    @Override // com.android.contacts.list.p, android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.g = activity.getApplicationContext();
        this.j = (c) activity;
    }
}
