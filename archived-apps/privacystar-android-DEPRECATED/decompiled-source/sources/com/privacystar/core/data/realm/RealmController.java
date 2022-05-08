package com.privacystar.core.data.realm;

import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.BlockingOptionRealm;
import com.privacystar.core.data.model.helper.DeviceExclusionRealm;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.service.PreferenceUtil;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/realm/RealmController.class */
public class RealmController {
    public static final int REALM_DATA_VERSION = 5;

    private RealmController() {
    }

    public static void compactRealm() {
        Timber.m37d("Preparing to compact Realm.", new Object[0]);
        try {
            if (Realm.compactRealm(PSApplication.getInstance().getRealmConfiguration())) {
                Timber.m37d("Successfully compacted Realm.", new Object[0]);
            } else {
                Timber.m37d("Failed to compact Realm due to Realm processing error.", new Object[0]);
            }
        } catch (Exception e) {
            Timber.m23w(e, "Error trying to compact Realm.", new Object[0]);
        }
    }

    public static int getGlobalInstanceCount() {
        int globalInstanceCount = Realm.getGlobalInstanceCount(PSApplication.getInstance().getRealmConfiguration());
        Timber.m37d("Total realm instances: [%d]", Integer.valueOf(globalInstanceCount));
        return globalInstanceCount;
    }

    private static void initializeBlockingOptions(Realm realm) {
        BlockingOptionRealm.initializeBlockingOptions(realm);
    }

    private static void initializeDebugMessages(Realm realm) {
        MessageRealm.initializeDebugMessages(realm);
    }

    private static void initializeDebugSubscription(Realm realm) {
        SubscriptionRealm.initializeDebugSubscription(realm);
    }

    private static void initializeDeviceExclusions(Realm realm) {
        DeviceExclusionRealm.initializeDeviceExclusions(realm);
    }

    public static void initializeRealmData() {
        if (realmInitializationNeeded()) {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                PreferenceUtil.putRealmDataVersion(5);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (defaultInstance != null) {
                        if (th != null) {
                            try {
                                defaultInstance.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        } else {
                            defaultInstance.close();
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    private static boolean realmInitializationNeeded() {
        return PreferenceUtil.getRealmDataVersion() != 5;
    }
}
