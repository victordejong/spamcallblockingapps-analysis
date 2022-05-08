package com.appsflyer.oaid;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bun.miitmdid.core.JLibrary;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.supplier.IIdentifierListener;
import com.bun.supplier.IdSupplier;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/appsflyer/oaid/OaidClient.class */
public class OaidClient {
    public final Context context;
    public final Logger logger;
    public final long timeout;
    public final TimeUnit unit;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/oaid/OaidClient$Info.class */
    public static class Info {

        /* renamed from: id */
        public final String f1929id;
        public final Boolean lat;

        @VisibleForTesting
        public Info(String str) {
            this(str, null);
        }

        @VisibleForTesting
        public Info(String str, Boolean bool) {
            this.f1929id = str;
            this.lat = bool;
        }

        public String getId() {
            return this.f1929id;
        }

        @Nullable
        public Boolean getLat() {
            return this.lat;
        }
    }

    public OaidClient(Context context) {
        this(context, 1L, TimeUnit.SECONDS);
    }

    public OaidClient(Context context, long j, TimeUnit timeUnit) {
        this.logger = Logger.getLogger("AppsFlyerOaid5.4.0");
        this.context = context;
        this.timeout = j;
        this.unit = timeUnit;
        this.logger.setLevel(Level.OFF);
    }

    @Nullable
    private Info fetchHuawei() {
        try {
            if (!AdvertisingIdClient.isAdvertisingIdAvailable(this.context)) {
                return null;
            }
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.context);
            return new Info(advertisingIdInfo.getId(), Boolean.valueOf(advertisingIdInfo.isLimitAdTrackingEnabled()));
        } catch (Throwable th) {
            this.logger.log(Level.INFO, "Huawei", th);
            return null;
        }
    }

    @Nullable
    private Info fetchMsa() throws Exception {
        String str;
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        JLibrary.InitEntry(this.context);
        int InitSdk = MdidSdkHelper.InitSdk(this.context, this.logger.getLevel() == null, new IIdentifierListener() { // from class: com.appsflyer.oaid.OaidClient.1
            public void OnSupport(boolean z, IdSupplier idSupplier) {
                try {
                    linkedBlockingQueue.offer(idSupplier == null ? "" : idSupplier.getOAID());
                } catch (Throwable th) {
                    OaidClient.this.logger.log(Level.INFO, "IIdentifierListener", th);
                }
            }
        });
        if (InitSdk != 0) {
            switch (InitSdk) {
                case 1008611:
                    str = "Unsupported manufacturer";
                    break;
                case 1008612:
                    str = "Unsupported device";
                    break;
                case 1008613:
                    str = "Error loading configuration file";
                    break;
                case 1008614:
                    str = "Callback will be executed in a different thread";
                    break;
                case 1008615:
                    str = "Reflection call error";
                    break;
                default:
                    str = String.valueOf(InitSdk);
                    break;
            }
            this.logger.warning(str);
        }
        String str2 = (String) linkedBlockingQueue.poll(this.timeout, this.unit);
        return TextUtils.isEmpty(str2) ? null : new Info(str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
        if (((java.lang.Integer) java.lang.Class.forName("com.huawei.android.os.BuildEx$VERSION").getDeclaredField("EMUI_SDK_INT").get(null)).intValue() > 0) goto L_0x0028;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isHuawei() {
        /*
            r0 = 0
            r3 = r0
            java.lang.String r0 = android.os.Build.BRAND     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            java.lang.String r1 = "huawei"
            boolean r0 = r0.equalsIgnoreCase(r1)     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0028
            java.lang.String r0 = "com.huawei.android.os.BuildEx$VERSION"
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            java.lang.String r1 = "EMUI_SDK_INT"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r1)     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            r1 = 0
            java.lang.Object r0 = r0.get(r1)     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            int r0 = r0.intValue()     // Catch: ClassNotFoundException | NoSuchFieldException | IllegalAccessException -> 0x002c
            r5 = r0
            r0 = r5
            if (r0 <= 0) goto L_0x002a
        L_0x0028:
            r0 = 1
            r3 = r0
        L_0x002a:
            r0 = r3
            return r0
        L_0x002c:
            r6 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.oaid.OaidClient.isHuawei():boolean");
    }

    @Nullable
    public Info fetch() {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            Info fetchHuawei = isHuawei() ? fetchHuawei() : fetchMsa();
            Logger logger = this.logger;
            logger.info("Fetch " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
            return fetchHuawei;
        } catch (Throwable th) {
            this.logger.log(Level.INFO, "Fetch", th);
            return null;
        }
    }

    public void setLogging(boolean z) {
        this.logger.setLevel(z ? null : Level.OFF);
    }
}
