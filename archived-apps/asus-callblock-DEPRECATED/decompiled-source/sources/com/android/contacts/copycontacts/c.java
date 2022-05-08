package com.android.contacts.copycontacts;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.b;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/c.class */
public class c extends DialogFragment {

    /* renamed from: b  reason: collision with root package name */
    private static c f789b;
    private static ProgressDialog d;
    private static String e;
    private static String f;
    private static boolean l;
    private Context j;
    private boolean k = false;

    /* renamed from: a  reason: collision with root package name */
    private static final String f788a = c.class.getSimpleName();
    private static String c = "MaxProgress";
    private static boolean g = false;
    private static boolean h = false;
    private static int i = 0;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/copycontacts/c$a.class */
    final class a extends AsyncTask<Void, Integer, Integer> {

        /* renamed from: a  reason: collision with root package name */
        AccountWithDataSet f791a;

        /* renamed from: b  reason: collision with root package name */
        AccountWithDataSet f792b;
        ContentResolver e;
        long k;
        long l;
        int c = -1;
        int d = 0;
        final int f = 1;
        final int g = 2;
        final int h = 3;
        final int i = 25;
        int j = 0;
        ArrayList<ContentProviderOperation> m = new ArrayList<>();
        ArrayList<ContentProviderOperation> n = new ArrayList<>();

        a() {
        }

        private Integer a() {
            int i;
            Cursor cursor;
            Throwable th;
            int i2;
            if (c.e == null || c.f == null) {
                if (b.f607a.booleanValue()) {
                    Log.d(c.f788a, "mAccountFrom == null || mAccountTo == null");
                }
                i = 2;
            } else {
                Iterator<AccountWithDataSet> it = com.android.contacts.model.a.a(c.this.j).a(true).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AccountWithDataSet next = it.next();
                    if (!c.g) {
                        if (next.name.equals(c.e)) {
                            this.f791a = next;
                        }
                        if (next.name.equals(c.f)) {
                            this.f792b = next;
                        }
                    } else if (b.f607a.booleanValue()) {
                        Log.d(c.f788a, "isCancel = true 1");
                    }
                }
                if (this.f791a == null || this.f792b == null) {
                    if (b.f607a.booleanValue()) {
                        Log.d(c.f788a, "accountFrom == null || accountTo == null");
                    }
                    i = 2;
                } else if (c.this.j == null) {
                    Log.w(c.f788a, "mContext is null");
                    i = 2;
                } else {
                    this.e = c.this.j.getContentResolver();
                    try {
                        cursor = this.e.query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id", "deleted"}, "account_name = '" + this.f791a.name + "'", null, null);
                        try {
                            if (cursor.moveToFirst()) {
                                while (true) {
                                    if (!c.g) {
                                        boolean unused = c.h = true;
                                        long j = cursor.getLong(0);
                                        if (j > 0 && !c.g) {
                                            if (cursor.getInt(cursor.getColumnIndex("deleted")) == 0) {
                                                a(j);
                                                if (!c.l) {
                                                    this.n.add(ContentProviderOperation.newDelete(ContactsContract.RawContacts.CONTENT_URI).withSelection("_id = " + j, null).build());
                                                }
                                                c.k();
                                                this.j++;
                                            }
                                            if (this.j == 25) {
                                                try {
                                                    try {
                                                        ContentProviderResult[] applyBatch = this.e.applyBatch("com.android.contacts", this.m);
                                                        if (!c.l) {
                                                            ContentProviderResult[] applyBatch2 = this.e.applyBatch("com.android.contacts", this.n);
                                                            this.n.clear();
                                                            Log.d(c.f788a, "deleteResults length = " + applyBatch2.length);
                                                        }
                                                        if (applyBatch == null || applyBatch.length == 0 || applyBatch[0] == null) {
                                                            break;
                                                        }
                                                        publishProgress(Integer.valueOf(c.i));
                                                        this.m.clear();
                                                        this.c = -1;
                                                        this.d = 0;
                                                        this.j = 0;
                                                    } catch (RemoteException e) {
                                                        Log.e(c.f788a, String.format("%s: %s", e.toString(), e.getMessage()));
                                                        i = 2;
                                                        if (cursor != null) {
                                                            cursor.close();
                                                            i = 2;
                                                        }
                                                    }
                                                } catch (OperationApplicationException e2) {
                                                    Log.e(c.f788a, String.format("%s: %s", e2.toString(), e2.getMessage()));
                                                    i = 2;
                                                    if (cursor != null) {
                                                        cursor.close();
                                                        i = 2;
                                                    }
                                                }
                                            }
                                        }
                                        if (!cursor.moveToNext()) {
                                            break;
                                        }
                                    } else if (b.f607a.booleanValue()) {
                                        Log.d(c.f788a, "isCancel = true 2");
                                    }
                                }
                                if (b.f607a.booleanValue()) {
                                    Log.d(c.f788a, "results == null || results.length == 0 || results[0] == null");
                                }
                                i = 2;
                                if (cursor != null) {
                                    cursor.close();
                                    i = 2;
                                }
                            }
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (c.g) {
                                i = 3;
                            } else if (c.g) {
                                i = 3;
                            } else if (this.m.size() > 0) {
                                try {
                                    boolean unused2 = c.h = true;
                                    ContentProviderResult[] applyBatch3 = this.e.applyBatch("com.android.contacts", this.m);
                                    publishProgress(Integer.valueOf(c.i));
                                    if (b.f607a.booleanValue()) {
                                        Log.d(c.f788a, "results is null ? " + (applyBatch3 == null));
                                        if (applyBatch3 != null) {
                                            Log.d(c.f788a, "results length ? " + applyBatch3.length);
                                        }
                                    }
                                    if (!c.l && this.n.size() > 0) {
                                        ContentProviderResult[] applyBatch4 = this.e.applyBatch("com.android.contacts", this.n);
                                        this.n.clear();
                                        Log.d(c.f788a, "deleteResults length = " + applyBatch4.length);
                                    }
                                    if (applyBatch3 != null) {
                                        if (!(applyBatch3.length == 0 || applyBatch3[0] == null)) {
                                            i2 = 1;
                                            i = Integer.valueOf(i2);
                                        }
                                    }
                                    i2 = 2;
                                    i = Integer.valueOf(i2);
                                } catch (OperationApplicationException e3) {
                                    Log.e(c.f788a, String.format("%s: %s", e3.toString(), e3.getMessage()));
                                    i = 2;
                                } catch (RemoteException e4) {
                                    Log.e(c.f788a, String.format("%s: %s", e4.toString(), e4.getMessage()));
                                    i = 2;
                                }
                            } else {
                                i = 1;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = null;
                    }
                }
            }
            return i;
        }

        /* JADX WARN: Removed duplicated region for block: B:78:0x03aa  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.util.ArrayList<android.content.ContentProviderOperation> a(long r8) {
            /*
                Method dump skipped, instructions count: 972
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.copycontacts.c.a.a(long):java.util.ArrayList");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Integer num) {
            Integer num2 = num;
            if (c.d != null) {
                c.d.dismiss();
            }
            if (c.this.getActivity() != null) {
                if (num2.intValue() == 1) {
                    Toast.makeText(c.this.getActivity(), c.this.getActivity().getResources().getString(2131755079), 1).show();
                } else if (num2.intValue() == 2) {
                    if (c.this.k) {
                        b.a(0).show(c.this.getFragmentManager(), (String) null);
                    }
                } else if (num2.intValue() == 3) {
                    Toast.makeText(c.this.getActivity(), c.this.getActivity().getResources().getString(17039360), 1).show();
                }
            }
            if (c.this.j != null) {
                ((Activity) c.this.j).getIntent().removeExtra("accountData");
            }
            if (b.f607a.booleanValue()) {
                this.l = System.currentTimeMillis();
                Log.d(c.f788a, "Total copy time: " + (this.l - this.k) + " (msec)");
                Log.d(c.f788a, "Actually total copy count: " + c.i);
            }
            boolean unused = c.h = false;
            this.m.clear();
            this.c = -1;
            this.d = 0;
            this.j = 0;
            int unused2 = c.i = 0;
            c.this.j = null;
            boolean unused3 = c.g = false;
            super.onPostExecute(num2);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            if (c.d != null && b.f607a.booleanValue()) {
                this.k = System.currentTimeMillis();
                Log.d(c.f788a, "Total copy count: " + c.d.getMax());
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onProgressUpdate(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            if (c.d != null && numArr2[0].intValue() <= c.d.getMax()) {
                c.d.setProgress(numArr2[0].intValue());
            }
        }
    }

    public static DialogFragment a(String str, String str2, int i2, boolean z) {
        if (f789b == null) {
            f789b = new c();
        }
        Bundle bundle = new Bundle();
        e = str;
        f = str2;
        l = z;
        bundle.putInt(c, i2);
        f789b.setArguments(bundle);
        return f789b;
    }

    public static boolean a() {
        return h;
    }

    public static ProgressDialog b() {
        return d;
    }

    static /* synthetic */ int k() {
        int i2 = i;
        i = i2 + 1;
        return i2;
    }

    @Override // android.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        String string;
        this.j = getActivity();
        int i2 = getArguments().getInt(c);
        d = new ProgressDialog(this.j);
        String string2 = getString(2131755075);
        AccountWithDataSet accountWithDataSet = null;
        AccountWithDataSet accountWithDataSet2 = null;
        for (AccountWithDataSet accountWithDataSet3 : com.android.contacts.model.a.a(this.j).a(true)) {
            if (accountWithDataSet3.name.equals(e)) {
                accountWithDataSet2 = accountWithDataSet3;
            }
            if (accountWithDataSet3.name.equals(f)) {
                accountWithDataSet = accountWithDataSet3;
            }
        }
        if (accountWithDataSet2 == null || accountWithDataSet == null) {
            string = getString(2131755078, new Object[]{e, f});
        } else {
            com.android.contacts.model.a a2 = com.android.contacts.model.a.a(this.j);
            com.android.contacts.model.account.a a3 = a2.a(accountWithDataSet2.type, accountWithDataSet2.f1998a);
            com.android.contacts.model.account.a a4 = a2.a(accountWithDataSet.type, accountWithDataSet.f1998a);
            string = getString(2131755078, new Object[]{a3.g ? (String) a3.a(this.j) : ((Object) a3.a(this.j)) + "(" + accountWithDataSet2.name + ")", a4.g ? (String) a4.a(this.j) : ((Object) a4.a(this.j)) + "(" + accountWithDataSet.name + ")"});
        }
        d.setTitle(string2);
        d.setMessage(string);
        d.setProgressStyle(1);
        d.setMax(i2);
        d.setProgress(i);
        d.setCancelable(false);
        d.setButton(-1, this.j.getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.android.contacts.copycontacts.c.1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                boolean unused = c.g = true;
                c.d.cancel();
            }
        });
        return d;
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        f789b = null;
        d = null;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        this.k = true;
        if (!h) {
            new a().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            h = true;
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStop() {
        super.onStop();
        this.k = false;
    }
}
