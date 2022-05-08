package com.asus.blocklist;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.a.b;
import com.asus.a.c;
import com.asus.updatesdk.BuildConfig;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f2510a = null;

    /* renamed from: b  reason: collision with root package name */
    private final String f2511b = d.class.getSimpleName();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/blocklist/d$a.class */
    public final class a extends AsyncTask<Void, Void, Integer> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2513b;
        private String c;
        private String d;
        private int e = 2;

        public a(Context context, String str, String str2) {
            Log.d(d.this.f2511b, "GetBlockDataTask");
            this.f2513b = context;
            this.c = str;
            this.d = str2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
            return Integer.valueOf(d.this.a(this.f2513b, this.c, this.e, this.d));
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Integer num) {
            super.onPostExecute(num);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(Context context, String str, int i, String str2) {
        String str3;
        int i2;
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean z = c.k(context) != 0;
        if (!isEmpty || !z) {
            long j = g.j(context, str);
            if (j > 0) {
                str3 = new String(BuildConfig.FLAVOR);
            } else {
                str3 = null;
                if (com.asus.a.a.d()) {
                    str3 = null;
                    try {
                        if (c.h(context) == 0) {
                            str3 = null;
                            if (com.asus.a.a.b(context) > 0) {
                                str3 = com.asus.a.a.a(context, str, str2).c;
                            }
                        }
                    } catch (Exception e) {
                        str3 = new String(BuildConfig.FLAVOR);
                        Log.e(this.f2511b, "Fail to get CallerInfo. Exception:" + e.toString());
                    }
                }
            }
            Bundle bundle = new Bundle();
            bundle.putString("number", str);
            bundle.putInt(ContactDetailCallogActivity.EXTRA_CONTACT_ID, (int) j);
            bundle.putString("tag_type", str3);
            bundle.putInt("caller", i);
            i2 = context.getContentResolver().call(b.AbstractC0062b.f2367a, "getBlockLabel", (String) null, bundle).getInt("result");
            Log.d(this.f2511b, "<BlockListManager>[getBlockLabel] Number:" + g.b(str) + ", is private number:" + isEmpty + ", tagType:" + str3 + ", cid:" + j + ", block label:" + i2 + ", isBlockPrivateNumber:" + z + ", isBlock:" + (i2 != 0));
        } else {
            Log.d(this.f2511b, "<BlockListManager>[getBlockLabel] Number:" + g.b(str) + ", is private number:" + isEmpty + ", tagType:" + ((String) null) + ", cid:0, block label:16, isBlockPrivateNumber:true, isBlock:true");
            i2 = 16;
        }
        return i2;
    }

    public static d a() {
        if (f2510a == null) {
            synchronized (d.class) {
                try {
                    if (f2510a == null) {
                        f2510a = new d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2510a;
    }

    public final int a(Context context, String str) {
        int i = 0;
        boolean z = Looper.myLooper() == Looper.getMainLooper();
        try {
            String str2 = com.android.contacts.asuscallerid.c.e == 2 ? "1" : "0";
            i = z ? new a(context, str, str2).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]).get(3000L, TimeUnit.MILLISECONDS).intValue() : a(context, str, 2, str2);
        } catch (InterruptedException e) {
            e = e;
            Log.e(this.f2511b, "Fail to get CallerInfo due:" + e.toString());
        } catch (ExecutionException e2) {
            e = e2;
            Log.e(this.f2511b, "Fail to get CallerInfo due:" + e.toString());
        } catch (TimeoutException e3) {
            Log.d(this.f2511b, "Fail to get CallerInfo due to timeout, isUIThread:" + z + ", mInfo is null?true");
        }
        return i;
    }
}
