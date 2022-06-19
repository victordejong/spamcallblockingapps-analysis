package com.revenuecat.purchases.subscriberattributes;

import android.app.Application;
import android.provider.Settings;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.revenuecat.purchases.common.Dispatcher;
import com.revenuecat.purchases.common.LogUtilsKt;
import g.f.a.d.a.a.a;
import java.io.IOException;
import java.util.concurrent.TimeoutException;
import kotlin.r;
import kotlin.w.b.p;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/AttributionFetcher.class */
public final class AttributionFetcher {
    private final Dispatcher dispatcher;

    public AttributionFetcher(Dispatcher dispatcher) {
        k.f(dispatcher, "dispatcher");
        this.dispatcher = dispatcher;
    }

    public final String getAdvertisingID(Application application) {
        String str;
        a.a b;
        try {
            b = a.b(application);
            k.e(b, "adInfo");
        } catch (GooglePlayServicesNotAvailableException e) {
            LogUtilsKt.errorLog("GooglePlayServices is not installed. Couldn't get and advertising identifier. Message: " + e.getLocalizedMessage());
        } catch (IOException e2) {
            LogUtilsKt.errorLog("IOException when getting advertising identifier. Message: " + e2.getLocalizedMessage());
        } catch (TimeoutException e3) {
            LogUtilsKt.errorLog("TimeoutException when getting advertising identifier. Message: " + e3.getLocalizedMessage());
        } catch (GooglePlayServicesRepairableException e4) {
            LogUtilsKt.errorLog("GooglePlayServicesRepairableException when getting advertising identifier. Message: " + e4.getLocalizedMessage());
        }
        if (!b.b()) {
            str = b.a();
            return str;
        }
        str = null;
        return str;
    }

    public final String getAndroidID(Application application) {
        return Settings.Secure.getString(application.getContentResolver(), "android_id");
    }

    public final void getDeviceIdentifiers(final Application application, final p<? super String, ? super String, r> pVar) {
        k.f(application, "applicationContext");
        k.f(pVar, "completion");
        Dispatcher.enqueue$default(this.dispatcher, new Runnable() { // from class: com.revenuecat.purchases.subscriberattributes.AttributionFetcher$getDeviceIdentifiers$1
            @Override // java.lang.Runnable
            public final void run() {
                String advertisingID;
                String androidID;
                advertisingID = AttributionFetcher.this.getAdvertisingID(application);
                androidID = AttributionFetcher.this.getAndroidID(application);
                p pVar2 = pVar;
                k.e(androidID, "androidID");
                pVar2.invoke(advertisingID, androidID);
            }
        }, false, 2, null);
    }
}
