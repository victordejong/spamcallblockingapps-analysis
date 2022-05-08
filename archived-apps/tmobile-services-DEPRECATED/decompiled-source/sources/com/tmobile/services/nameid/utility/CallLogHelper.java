package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.Sort;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/CallLogHelper.class */
public class CallLogHelper {
    /* renamed from: a */
    public static Observable<List<ActivityItem>> m5842a() {
        long d = PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_DISPLAYED_DATE");
        LogUtil.m5643d("CallLogHelper#getCallLogItems", "Date saved in preferences is " + new Date(d));
        final Date date = d != 0 ? new Date(d) : new Date();
        LogUtil.m5643d("CallLogHelper#getCallLogItems", "Finding elements after date " + date.toString());
        return Observable.create(new ObservableOnSubscribe() { // from class: com.tmobile.services.nameid.utility.l
            @Override // io.reactivex.ObservableOnSubscribe
            /* renamed from: a */
            public final void mo2504a(ObservableEmitter observableEmitter) {
                CallLogHelper.m5837f(date, observableEmitter);
            }
        });
    }

    /* renamed from: b */
    public static void m5841b(Consumer<List<ActivityItem>> consumer) {
        m5842a().subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).subscribe(consumer, C1945i.f14539f);
    }

    /* renamed from: c */
    public static boolean m5840c(@Nullable Consumer<List<ApiUtils.ActivityFromCaller>> consumer, @Nullable Consumer<Throwable> consumer2) {
        long d = PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_RETRIEVED_DATE");
        Observable<List<ApiUtils.ActivityFromCaller>> l = ApiWrapper.m6767l(d == 0 ? new Date() : new Date(d), 50, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
        if (l == null) {
            return false;
        }
        Observable observeOn = l.observeOn(Schedulers.m3239b()).map(C1949j.f14544f).observeOn(AndroidSchedulers.m4448c());
        C1953k kVar = C1953k.f14553f;
        if (consumer != null && consumer2 != null) {
            observeOn.subscribe(consumer, consumer2);
        } else if (consumer != null) {
            observeOn.subscribe(consumer, kVar);
        } else {
            observeOn.subscribe(C1965n.f14570f, kVar);
        }
        LogUtil.m5632o("CallLogHelper#getNext", "Getting next page");
        return true;
    }

    /* renamed from: d */
    private static List<ActivityItem> m5839d(Date date) {
        LogUtil.m5643d("CallLogHelper#getRealmActivity", "date is " + date.toString());
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(ActivityItem.class);
            Q0.m2907P("date", date);
            AbstractCollection s = Q0.m2918E().m3089s("date", Sort.DESCENDING);
            ArrayList arrayList = new ArrayList();
            Iterator it = s.iterator();
            while (it.hasNext()) {
                arrayList.add(((ActivityItem) it.next()).copy());
            }
            if (G0 != null) {
                G0.close();
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ void m5837f(Date date, ObservableEmitter observableEmitter) throws Exception {
        LogUtil.m5643d("CallLogHelper#getCallLogItems", "getting realm objects");
        List<ActivityItem> d = m5839d(date);
        if (!d.isEmpty()) {
            Date date2 = d.get(d.size() - 1).getDate();
            if (date2.before(date)) {
                PreferenceUtils.m5384m("PREF_CALL_LOG_LAST_RETRIEVED_DATE", date2.getTime());
                LogUtil.m5643d("CallLogHelper#getCallLogItems", "Setting date in preferences to " + date2.toString());
            }
        }
        observableEmitter.onNext(d);
        ArrayList arrayList = new ArrayList();
        for (ActivityItem activityItem : d) {
            PhoneNumberHelper.m5412g(activityItem.getE164Number(), "");
            String d2 = PhoneNumberHelper.m5415d(activityItem.getE164Number());
            if (!arrayList.contains(d2)) {
                arrayList.add(d2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ List m5836g(List list) throws Exception {
        ApiUtils.m6863e0(list, true, true, 50, false);
        LogUtil.m5632o("CallLogHelper#getNext", "Next page saved in realm");
        return list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static /* synthetic */ void m5833j(boolean z, List list) throws Exception {
        LogUtil.m5632o("CallLogHelper#", "prefetched page containing " + list.size() + " items");
        Date date = ((ApiUtils.ActivityFromCaller) list.get(list.size() - 1)).m6819b().getDate();
        PreferenceUtils.m5384m("PREF_CALL_LOG_LAST_RETRIEVED_DATE", date.getTime());
        boolean z2 = false;
        boolean b = PreferenceUtils.m5395b("PREF_CALL_LOG_RETRIEVED_ALL_ITEMS", false);
        if (z) {
            Date date2 = new Date(System.currentTimeMillis() - 2678400000L);
            z2 = false;
            if (!b) {
                z2 = false;
                if (date.after(date2)) {
                    z2 = true;
                }
            }
            LogUtil.m5643d("CallLogHelper#", "Keep fetching based on date? " + z2);
        }
        ApiUtils.m6863e0(list, true, z2, 100, z);
        ApiUtils.m6867c0();
        if (list.size() < 100) {
            PreferenceUtils.m5386k("PREF_CALL_LOG_RETRIEVED_ALL_ITEMS", true);
        }
    }

    /* renamed from: l */
    public static void m5831l(Date date, final boolean z) {
        LogUtil.m5643d("CallLogHelper#", "prefetchPage: upToDate = " + date.toString() + " fetchOneMonth? " + z);
        Observable<List<ApiUtils.ActivityFromCaller>> l = ApiWrapper.m6767l(date, 100, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
        if (l != null) {
            l.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.utility.o
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    CallLogHelper.m5833j(z, (List) obj);
                }
            }, C1961m.f14566f);
        }
    }

    /* renamed from: m */
    public static List<ActivityItem> m5830m() {
        Realm G0 = Realm.m3064G0();
        try {
            long d = PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_DISPLAYED_DATE");
            Date date = new Date();
            if (d != 0) {
                date = new Date(d);
            }
            LogUtil.m5632o("CallLogHelper#", "Reloading items up to " + date.toString());
            RealmQuery Q0 = G0.m3053Q0(ActivityItem.class);
            Q0.m2912K("date", date);
            AbstractCollection s = Q0.m2918E().m3089s("date", Sort.DESCENDING);
            ArrayList arrayList = new ArrayList();
            Iterator it = s.iterator();
            while (it.hasNext()) {
                arrayList.add(((ActivityItem) it.next()).copy());
            }
            if (G0 != null) {
                G0.close();
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
