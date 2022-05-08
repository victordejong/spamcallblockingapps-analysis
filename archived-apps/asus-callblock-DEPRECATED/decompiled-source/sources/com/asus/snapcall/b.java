package com.asus.snapcall;

import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import com.asus.a.a;
/* loaded from: classes-dex2jar.jar:com/asus/snapcall/b.class */
public final class b extends AsyncTask<Void, Void, Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final int f3088a = -1;

    /* renamed from: b  reason: collision with root package name */
    private Context f3089b;
    private boolean c;
    private String d;

    public b(Context context, boolean z, String str) {
        this.f3089b = context;
        this.c = z;
        if (str != null) {
            this.d = c.a(context, str);
        } else {
            this.d = null;
        }
        Log.d("SnapCallLogAsyncTask", "[Monitor][constructor] isOutGoing = " + z + ", number = " + a.c(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.snapcall.b.a():int");
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Integer doInBackground(Void[] voidArr) {
        Log.d("SnapCallLogAsyncTask", "[Monitor][doInBackground] mIsOutGoing = " + this.c);
        return Integer.valueOf(a());
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(Integer num) {
        Integer num2 = num;
        Log.d("SnapCallLogAsyncTask", "[Monitor][onPostExecute] result = " + num2);
        c.a(num2.intValue());
    }
}
