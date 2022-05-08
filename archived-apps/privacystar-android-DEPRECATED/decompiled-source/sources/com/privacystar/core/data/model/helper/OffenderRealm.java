package com.privacystar.core.data.model.helper;

import android.support.annotation.NonNull;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.model.Offender;
import com.privacystar.core.data.model.OffenderCategory;
import com.privacystar.core.data.offender.BinaryOffenderParser;
import com.privacystar.core.data.offender.PhoneRecord;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.FeatureUtil;
import com.privacystar.core.util.FileUtil;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.OffenderUtil;
import hugo.weaving.DebugLog;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.io.FileNotFoundException;
import java.io.InputStream;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/OffenderRealm.class */
public class OffenderRealm {
    private static final long[] typeIdMap = {0, 128, 64, 1, 2};

    private OffenderRealm() {
    }

    public static void addOrUpdateOffender(@NonNull Realm realm, @NonNull final Offender offender) {
        realm.executeTransaction(new Realm.Transaction(offender) { // from class: com.privacystar.core.data.model.helper.OffenderRealm$$Lambda$5
            private final Offender arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = offender;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                OffenderRealm.lambda$addOrUpdateOffender$3$OffenderRealm(this.arg$1, realm2);
            }
        });
    }

    private static boolean appendCustomFilterToQuery(RealmQuery<Offender> realmQuery, FeatureUtil.CallBlockingLevel callBlockingLevel) {
        boolean z = true;
        boolean z2 = true;
        int i = (!PreferenceUtil.getProtectionScammersEnabled() || !(callBlockingLevel == FeatureUtil.CallBlockingLevel.SCAM || callBlockingLevel == FeatureUtil.CallBlockingLevel.ALL)) ? 0 : (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.SCAM, realmQuery) ? 1 : 0) + 0;
        if (callBlockingLevel != FeatureUtil.CallBlockingLevel.ALL) {
            if (i <= 0) {
                z2 = false;
            }
            return z2;
        }
        int i2 = i;
        if (PreferenceUtil.getProtectionTelemarketingEnabled()) {
            i2 = i + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.TELEMARKETING, realmQuery) ? 1 : 0);
        }
        int i3 = i2;
        if (PreferenceUtil.getProtectionDebtCollectionEnabled()) {
            i3 = i2 + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.ACCOUNT_SERVICES, realmQuery) ? 1 : 0);
        }
        int i4 = i3;
        if (PreferenceUtil.getProtectionPoliticalEnabled()) {
            i4 = i3 + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.POLITICAL, realmQuery) ? 1 : 0);
        }
        int i5 = i4;
        if (PreferenceUtil.getProtectionSurveyEnabled()) {
            i5 = i4 + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.SURVEY, realmQuery) ? 1 : 0);
        }
        int i6 = i5;
        if (PreferenceUtil.getProtectionCharityEnabled()) {
            i6 = i5 + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.CHARITY, realmQuery) ? 1 : 0);
        }
        int i7 = i6;
        if (PreferenceUtil.getProtectionNuisanceEnabled()) {
            i7 = i6 + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.NUISANCE, realmQuery) ? 1 : 0);
        }
        int i8 = i7;
        if (PreferenceUtil.getProtectionPrisonEnabled()) {
            i8 = i7 + (appendQueryBasedOnType(OffenderUtil.OffenderTypeUi.PRISON, realmQuery) ? 1 : 0);
        }
        if (i8 <= 0) {
            z = false;
        }
        return z;
    }

    private static boolean appendQueryBasedOnLevel(ProtectionLevel protectionLevel, RealmQuery<Offender> realmQuery) {
        boolean z = false;
        Timber.m28v("Offender: Using protection level %s", protectionLevel.name());
        for (OffenderUtil.OffenderTypeUi offenderTypeUi : protectionLevel.getMemberCategories()) {
            if (appendQueryBasedOnType(offenderTypeUi, realmQuery)) {
                z = true;
            }
        }
        return z;
    }

    private static boolean appendQueryBasedOnType(OffenderUtil.OffenderTypeUi offenderTypeUi, RealmQuery<Offender> realmQuery) {
        boolean z = false;
        int i = 0;
        for (OffenderUtil.EOffenderCategory eOffenderCategory : OffenderUtil.EOffenderCategory.getIdsForUiType(offenderTypeUi)) {
            Timber.m37d("Offender: Adding %s to offender list by id [%d]", offenderTypeUi.name(), Integer.valueOf(eOffenderCategory.getValue()));
            realmQuery.m260or().equalTo("categoryId", Integer.valueOf(eOffenderCategory.getValue()));
            i++;
        }
        if (i != 0) {
            z = true;
        }
        return z;
    }

    public static boolean appendTypeFilterToQuery(RealmQuery<Offender> realmQuery, ProtectionLevel protectionLevel, FeatureUtil.CallBlockingLevel callBlockingLevel) {
        boolean z;
        realmQuery.beginGroup();
        if (protectionLevel == ProtectionLevel.CUSTOM) {
            Timber.m31i("Offender: Using custom level of offender", new Object[0]);
            z = appendCustomFilterToQuery(realmQuery, callBlockingLevel);
        } else {
            ProtectionLevel protectionLevel2 = protectionLevel;
            if (protectionLevel != ProtectionLevel.BASIC) {
                protectionLevel2 = protectionLevel;
                if (callBlockingLevel != FeatureUtil.CallBlockingLevel.ALL) {
                    protectionLevel2 = ProtectionLevel.BASIC;
                }
            }
            z = appendQueryBasedOnLevel(protectionLevel2, realmQuery);
        }
        realmQuery.endGroup();
        return z;
    }

    public static void clearOffenderData(Realm realm) {
        Timber.m37d("Clearing existing Offender and OffenderCategory objects in preparation for loading from binary.", new Object[0]);
        realm.executeTransaction(OffenderRealm$$Lambda$1.$instance);
        realm.executeTransaction(OffenderRealm$$Lambda$2.$instance);
    }

    public static PhoneRecord findRealmRecord(Realm realm, long j) {
        PhoneRecord phoneRecord;
        Offender offender = (Offender) realm.where(Offender.class).equalTo("number", Long.valueOf(j)).findFirst();
        if (offender != null) {
            phoneRecord = new PhoneRecord();
            phoneRecord.phoneNumber = j;
            phoneRecord.recordType = PhoneRecord.PhoneRecordType.getById(mapTypeToEnum(offender.getCategoryId().intValue()));
        } else {
            Timber.m37d("Lookup of number %d failed to find a match", Long.valueOf(j));
            phoneRecord = null;
        }
        return phoneRecord;
    }

    public static Offender getOffender(Realm realm, long j) {
        return (Offender) realm.where(Offender.class).equalTo("number", Long.valueOf(j)).findFirst();
    }

    public static Offender getOffender(Realm realm, String str) {
        Long numericPhoneNumber = NumbersUtil.getNumericPhoneNumber(str);
        return numericPhoneNumber != null ? getOffender(realm, numericPhoneNumber.longValue()) : null;
    }

    public static int getOffenderId(Realm realm, Long l) {
        if (l == null) {
            return -1;
        }
        Integer num = null;
        Offender offender = (Offender) realm.where(Offender.class).equalTo("number", l).findFirst();
        if (offender != null) {
            num = offender.getCategoryId();
        }
        return num != null ? num.intValue() : 0;
    }

    public static RealmResults<Offender> getOffenders(Realm realm, Long[] lArr) {
        return realm.where(Offender.class).m265in("number", lArr).findAll();
    }

    private RealmResults<Offender> getOffendersSorted(Realm realm) {
        return realm.where(Offender.class).findAll().sort("number");
    }

    public static boolean goesToVoicemail(int i) {
        for (OffenderUtil.EOffenderCategory eOffenderCategory : OffenderUtil.getGoToVoiceMailTypes()) {
            if (i == eOffenderCategory.getValue()) {
                return true;
            }
        }
        return false;
    }

    public static boolean isOffenderDataLoaded(Realm realm) {
        return 0 < realm.where(Offender.class).count();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addOrUpdateOffender$3$OffenderRealm(Offender offender, Realm realm) {
        Offender offender2 = (Offender) realm.copyToRealmOrUpdate((Realm) offender, new ImportFlag[0]);
    }

    @DebugLog
    public static void loadOffenderDataFromBinary() {
        try {
            Realm defaultInstance = Realm.getDefaultInstance();
            clearOffenderData(defaultInstance);
            OffenderUtil.processTemporaryOffenderFile(FileUtil.unzipFromLocalZipFile(), true, null, null);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (FileNotFoundException e) {
            Timber.m23w(e, "Local binary offender file not found while attempting to process.", new Object[0]);
        } catch (Exception e2) {
            Timber.m23w(e2, "Error processing bundled offender data into Realm.", new Object[0]);
        }
    }

    @DebugLog
    private static void loadOffenderDataFromFileStream(Realm realm, InputStream inputStream) {
        processBinaryDataset(realm, BinaryOffenderParser.getInstance().parseOffenderDelta(inputStream));
    }

    @DebugLog
    private static void loadOffenderDataInFileStream(Realm realm, InputStream inputStream) {
        BinaryOffenderParser.getInstance().handleOffenderFullInitialization(realm, inputStream);
        Timber.m37d("Created %d offenders and %d offender categories from binary offenders list.", Long.valueOf(realm.where(Offender.class).count()), Long.valueOf(realm.where(OffenderCategory.class).count()));
        realm.executeTransaction(OffenderRealm$$Lambda$0.$instance);
    }

    private static int mapTypeToEnum(long j) {
        for (int i = 1; i < typeIdMap.length; i++) {
            if ((j & typeIdMap[i]) > 0) {
                return i;
            }
        }
        return 0;
    }

    public static void processBinaryDataset(Realm realm, final BinaryOffenderParser.BinaryDataset binaryDataset) {
        try {
            realm.executeTransaction(new Realm.Transaction(binaryDataset) { // from class: com.privacystar.core.data.model.helper.OffenderRealm$$Lambda$3
                private final BinaryOffenderParser.BinaryDataset arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = binaryDataset;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    OffenderRealm.processBinaryDatasetImpl(realm2, this.arg$1);
                }
            });
            realm.executeTransaction(OffenderRealm$$Lambda$4.$instance);
        } catch (Exception e) {
            Timber.m23w(e, "Problem processing binary dataset in a non-rewindable state. Full resync needed to correct local Offender table.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processBinaryDatasetImpl(Realm realm, BinaryOffenderParser.BinaryDataset binaryDataset) {
        if (!binaryDataset.datasetValid()) {
            Timber.m25w("Processed invalid BinaryDataset.", new Object[0]);
            return;
        }
        int numberOfAdditions = binaryDataset.getNumberOfAdditions();
        int numberOfRemovals = binaryDataset.getNumberOfRemovals();
        int numberOfNewCategories = binaryDataset.getNumberOfNewCategories();
        Timber.m37d("Processing new BinaryDataset with %d new entries, %d removals, and %d new categories", Integer.valueOf(numberOfAdditions), Integer.valueOf(numberOfRemovals), Integer.valueOf(numberOfNewCategories));
        for (int i = 0; i < numberOfRemovals; i++) {
            realm.where(Offender.class).equalTo("number", Long.valueOf(binaryDataset.removals[i])).findAll().deleteAllFromRealm();
        }
        if (!binaryDataset.fullSet) {
            for (int i2 = 0; i2 < numberOfAdditions; i2++) {
                realm.where(Offender.class).equalTo("number", Long.valueOf(binaryDataset.additions[i2])).findAll().deleteAllFromRealm();
            }
            for (int i3 = 0; i3 < numberOfNewCategories; i3++) {
                realm.where(OffenderCategory.class).equalTo("categoryId", Integer.valueOf(binaryDataset.newCategoryIds[i3])).findAll().deleteAllFromRealm();
            }
        }
        for (int i4 = 0; i4 < numberOfAdditions; i4++) {
            Offender offender = new Offender();
            offender.setNumber(Long.valueOf(binaryDataset.additions[i4]));
            offender.setCategoryId(Integer.valueOf(binaryDataset.addCategories[i4]));
            offender.setOffenderFlags(Integer.valueOf(binaryDataset.addFlags[i4]));
            offender.setSpamScore(Integer.valueOf(binaryDataset.addSpamScores[i4]));
            realm.insert(offender);
        }
        for (int i5 = 0; i5 < numberOfNewCategories; i5++) {
            OffenderCategory offenderCategory = new OffenderCategory();
            offenderCategory.setCategoryId(Integer.valueOf(binaryDataset.newCategoryIds[i5]));
            offenderCategory.setCategoryName(binaryDataset.newCategoryNames[i5]);
            realm.insert(offenderCategory);
        }
    }
}
