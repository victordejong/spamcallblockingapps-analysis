package com.aotter.net.trek.common;

import android.content.Context;
import android.os.AsyncTask;
import com.aotter.net.trek.common.GpsHelper;
import com.aotter.net.trek.common.factories.MethodBuilderFactory;
import com.aotter.net.trek.common.util.Reflection;
import com.aotter.net.trek.util.TrekLog;
import java.lang.ref.WeakReference;
/* renamed from: com.aotter.net.trek.common.i */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/i.class */
public class AsyncTaskC1749i extends AsyncTask<Void, Void, Void> {

    /* renamed from: a */
    public WeakReference<Context> f1526a;

    /* renamed from: b */
    public WeakReference<GpsHelper.GpsHelperListener> f1527b;

    public AsyncTaskC1749i(Context context, GpsHelper.GpsHelperListener gpsHelperListener) {
        this.f1526a = new WeakReference<>(context);
        this.f1527b = new WeakReference<>(gpsHelperListener);
    }

    /* renamed from: a */
    public Void doInBackground(Void... voidArr) {
        String str;
        try {
            Context context = this.f1526a.get();
            if (context == null) {
                return null;
            }
            Reflection.MethodBuilder create = MethodBuilderFactory.create(null, "getAdvertisingIdInfo");
            str = GpsHelper.f1501b;
            Object execute = create.setStatic(Class.forName(str)).addParam(Context.class, context).execute();
            if (execute == null) {
                return null;
            }
            GpsHelper.m36376a(context, execute);
            return null;
        } catch (Exception e) {
            TrekLog.m36319d("Unable to obtain Google AdvertisingIdClient.Info via reflection.");
            return null;
        }
    }

    /* renamed from: a */
    public void onPostExecute(Void r3) {
        GpsHelper.GpsHelperListener gpsHelperListener = this.f1527b.get();
        if (gpsHelperListener != null) {
            gpsHelperListener.onFetchAdInfoCompleted();
        }
    }
}
