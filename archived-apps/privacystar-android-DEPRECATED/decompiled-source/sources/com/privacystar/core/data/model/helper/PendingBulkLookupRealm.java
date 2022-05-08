package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.PendingBulkLookup;
import com.privacystar.core.data.model.PendingBulkLookupFields;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/PendingBulkLookupRealm.class */
public class PendingBulkLookupRealm {
    public static void deletePendingBulkLookup(Realm realm, final String str) {
        realm.executeTransaction(new Realm.Transaction(str) { // from class: com.privacystar.core.data.model.helper.PendingBulkLookupRealm$$Lambda$1
            private final String arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                PendingBulkLookupRealm.lambda$deletePendingBulkLookup$1$PendingBulkLookupRealm(this.arg$1, realm2);
            }
        });
    }

    public static List<String> getPendingNumbers(Realm realm, String str) {
        PendingBulkLookup pendingBulkLookup = (PendingBulkLookup) realm.where(PendingBulkLookup.class).equalTo(PendingBulkLookupFields.STATUS_ID, str).findFirst();
        if (pendingBulkLookup != null && pendingBulkLookup.getQueriedNumbers() != null) {
            return PendingBulkLookupNumberRealm.getLookupStrings(pendingBulkLookup.getQueriedNumbers());
        }
        Timber.m37d("Couldn't find any stored numbers associated with status ID: %s", str);
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$deletePendingBulkLookup$1$PendingBulkLookupRealm(String str, Realm realm) {
        RealmResults findAll = realm.where(PendingBulkLookup.class).equalTo(PendingBulkLookupFields.STATUS_ID, str).findAll();
        Timber.m37d("Preparing to delete %d item%s.", Integer.valueOf(findAll.size()), findAll.size() == 1 ? "" : "s");
        ((PendingBulkLookup) findAll.first()).cascadeDelete();
    }

    public static void storePendingBulkLookup(Realm realm, final String str, final List<String> list) {
        if (realm.where(PendingBulkLookup.class).equalTo(PendingBulkLookupFields.STATUS_ID, str).count() > 0) {
            Timber.m37d("Bulk lookup status ID: %s already has been stored.", str);
        } else {
            realm.executeTransaction(new Realm.Transaction(str, list) { // from class: com.privacystar.core.data.model.helper.PendingBulkLookupRealm$$Lambda$0
                private final String arg$1;
                private final List arg$2;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = str;
                    this.arg$2 = list;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    ((PendingBulkLookup) realm2.createObject(PendingBulkLookup.class, this.arg$1)).setQueriedNumbers(PendingBulkLookupNumberRealm.makeListOfLookupNumbers(realm2, this.arg$2));
                }
            });
        }
    }
}
