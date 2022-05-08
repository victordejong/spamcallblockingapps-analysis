package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.AnalyticsEvent;
import com.privacystar.core.data.model.AnalyticsEventFields;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticsEvent;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticsSettings;
import io.realm.Realm;
import io.realm.RealmResults;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/AnalyticsRealm.class */
public class AnalyticsRealm {
    private static int autoIntKey = -1;

    public static void beginEventProcessing(Realm realm, final int i) {
        realm.executeTransaction(new Realm.Transaction(i) { // from class: com.privacystar.core.data.model.helper.AnalyticsRealm$$Lambda$2
            private final int arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = i;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                AnalyticsRealm.lambda$beginEventProcessing$2$AnalyticsRealm(this.arg$1, realm2);
            }
        });
    }

    public static void clearAnalyticsQueue(Realm realm) {
        realm.executeTransaction(AnalyticsRealm$$Lambda$3.$instance);
    }

    public static int getNextKey(Realm realm) {
        int i;
        synchronized (AnalyticsRealm.class) {
            try {
                if (autoIntKey == -1) {
                    Number max = realm.where(AnalyticsEvent.class).max("id");
                    if (max == null) {
                        autoIntKey = 0;
                    } else {
                        autoIntKey = max.intValue() + 1;
                    }
                } else {
                    autoIntKey++;
                }
                i = autoIntKey;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$beginEventProcessing$2$AnalyticsRealm(int i, Realm realm) {
        RealmResults sort = realm.where(AnalyticsEvent.class).equalTo("status", AnalyticsEvent.Status.WAITING.getSimpleName()).findAll().sort(AnalyticsEventFields.f254TS);
        for (AnalyticsEvent analyticsEvent : sort.subList(0, Math.min(i, sort.size()))) {
            analyticsEvent.setStatus(AnalyticsEvent.Status.PROCESSING);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$resetAnalyticsQueue$4$AnalyticsRealm(Realm realm) {
        Iterator it = realm.where(AnalyticsEvent.class).equalTo("status", AnalyticsEvent.Status.PROCESSING.getSimpleName()).findAll().iterator();
        while (it.hasNext()) {
            ((AnalyticsEvent) it.next()).setStatus(AnalyticsEvent.Status.WAITING);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$trackEvent$0$AnalyticsRealm(int i, String str, Realm realm) {
        AnalyticsEvent analyticsEvent = (AnalyticsEvent) realm.createObject(AnalyticsEvent.class, Integer.valueOf(getNextKey(realm)));
        analyticsEvent.setEventType(i);
        analyticsEvent.setEventBody(str);
        analyticsEvent.setTs(new Date());
        analyticsEvent.setStatus(AnalyticsEvent.Status.WAITING);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$trackEventBulk$1$AnalyticsRealm(List list, AnalyticsEvent.Status status, Realm realm) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            FOAnalyticsEvent fOAnalyticsEvent = (FOAnalyticsEvent) it.next();
            if (FOAnalyticsSettings.isEnabled(fOAnalyticsEvent.getEventType())) {
                AnalyticsEvent analyticsEvent = (AnalyticsEvent) realm.createObject(AnalyticsEvent.class, Integer.valueOf(getNextKey(realm)));
                analyticsEvent.setEventType(fOAnalyticsEvent.getEventType());
                analyticsEvent.setEventBody(fOAnalyticsEvent.getEventValue());
                analyticsEvent.setTs(new Date(fOAnalyticsEvent.getEventTs()));
                analyticsEvent.setStatus(status);
            }
        }
    }

    public static void resetAnalyticsQueue(Realm realm) {
        realm.executeTransaction(AnalyticsRealm$$Lambda$4.$instance);
    }

    public static List<AnalyticsEvent> selectEventsForDispatching(Realm realm, int i) {
        realm.beginTransaction();
        RealmResults sort = realm.where(AnalyticsEvent.class).equalTo("status", AnalyticsEvent.Status.PROCESSING.getSimpleName()).findAll().sort(AnalyticsEventFields.f254TS);
        realm.commitTransaction();
        int min = Math.min(i, sort.size());
        Timber.m37d("Selected %d event%s for dispatching.", Integer.valueOf(sort.size()), sort.size() == 1 ? "" : "s");
        return realm.copyFromRealm(sort.subList(0, min));
    }

    public static void trackEvent(Realm realm, final int i, final String str) {
        realm.executeTransaction(new Realm.Transaction(i, str) { // from class: com.privacystar.core.data.model.helper.AnalyticsRealm$$Lambda$0
            private final int arg$1;
            private final String arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = i;
                this.arg$2 = str;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                AnalyticsRealm.lambda$trackEvent$0$AnalyticsRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }

    public static void trackEventBulk(Realm realm, final List<FOAnalyticsEvent> list) {
        final AnalyticsEvent.Status status = AnalyticsEvent.Status.WAITING;
        realm.executeTransaction(new Realm.Transaction(list, status) { // from class: com.privacystar.core.data.model.helper.AnalyticsRealm$$Lambda$1
            private final List arg$1;
            private final AnalyticsEvent.Status arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = list;
                this.arg$2 = status;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                AnalyticsRealm.lambda$trackEventBulk$1$AnalyticsRealm(this.arg$1, this.arg$2, realm2);
            }
        });
    }
}
