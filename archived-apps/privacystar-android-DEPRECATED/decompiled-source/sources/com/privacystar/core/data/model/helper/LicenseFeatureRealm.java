package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.LicenseFeature;
import com.privacystar.core.data.model.LicenseFeatureFields;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/LicenseFeatureRealm.class */
public class LicenseFeatureRealm {
    public static void clearAndSetFeatures(Realm realm, final String str) {
        final boolean z;
        if (Text.isBlank(str)) {
            Timber.m25w("featureList null, but this shouldn't have been the response. Clearing features.", new Object[0]);
        } else if (Text.isWhitespace(str)) {
            Timber.m25w("featureList empty. Clearing features, but no new ones are set.", new Object[0]);
        } else {
            z = true;
            Timber.m37d("Clearing features from license and setting to: %s", str);
            realm.executeTransaction(new Realm.Transaction(z, str) { // from class: com.privacystar.core.data.model.helper.LicenseFeatureRealm$$Lambda$0
                private final boolean arg$1;
                private final String arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = z;
                    this.arg$2 = str;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    LicenseFeatureRealm.lambda$clearAndSetFeatures$0$LicenseFeatureRealm(this.arg$1, this.arg$2, realm2);
                }
            });
        }
        z = false;
        Timber.m37d("Clearing features from license and setting to: %s", str);
        realm.executeTransaction(new Realm.Transaction(z, str) { // from class: com.privacystar.core.data.model.helper.LicenseFeatureRealm$$Lambda$0
            private final boolean arg$1;
            private final String arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = z;
                this.arg$2 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                LicenseFeatureRealm.lambda$clearAndSetFeatures$0$LicenseFeatureRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }

    public static List<Integer> getFeatureList(Realm realm) {
        ArrayList arrayList = new ArrayList();
        Iterator it = realm.where(LicenseFeature.class).findAll().iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((LicenseFeature) it.next()).getFeature()));
        }
        return arrayList;
    }

    public static boolean isFeatureAvailable(int i) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            boolean isFeatureAvailable = isFeatureAvailable(defaultInstance, Feature.getFeatureFromId(i));
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            return isFeatureAvailable;
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isFeatureAvailable(Feature feature) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            boolean isFeatureAvailable = isFeatureAvailable(defaultInstance, feature);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            return isFeatureAvailable;
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

    public static boolean isFeatureAvailable(Realm realm, int i) {
        return isFeatureAvailable(realm, Feature.getFeatureFromId(i));
    }

    public static boolean isFeatureAvailable(Realm realm, Feature feature) {
        boolean z = 0 < realm.where(LicenseFeature.class).equalTo(LicenseFeatureFields.FEATURE, Integer.valueOf(feature.getId())).count();
        Timber.m28v("License feature check for feature [%d][%s]:%s available.", Integer.valueOf(feature.getId()), feature.getName(), z ? "" : " not");
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$clearAndSetFeatures$0$LicenseFeatureRealm(boolean z, String str, Realm realm) {
        realm.delete(LicenseFeature.class);
        if (z) {
            try {
                String[] split = str.split(",");
                int length = split.length;
                int i = 0;
                boolean z2 = true;
                boolean z3 = true;
                while (i < length) {
                    int parseInt = Integer.parseInt(split[i]);
                    if (parseInt == Feature.CALL_BLOCKING.getId()) {
                        z2 = false;
                    } else {
                        z2 = z2;
                        if (parseInt == Feature.APPROVE_LIST.getId()) {
                            z3 = false;
                            z2 = z2;
                        }
                    }
                    ((LicenseFeature) realm.createObject(LicenseFeature.class)).setFeature(parseInt);
                    i++;
                }
                if (z2) {
                    ((LicenseFeature) realm.createObject(LicenseFeature.class)).setFeature(Feature.CALL_BLOCKING.getId());
                }
                if (z3) {
                    ((LicenseFeature) realm.createObject(LicenseFeature.class)).setFeature(Feature.APPROVE_LIST.getId());
                }
            } catch (NumberFormatException e) {
                Timber.m29i(e, "Could not parse numeral out of feature string [%s].", str);
            }
        }
    }
}
