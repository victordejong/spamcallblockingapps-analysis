package com.privacystar.core.service.analytics.anchor;

import com.mixpanel.android.mpmetrics.MPConfig;
import com.mixpanel.android.mpmetrics.MixpanelAPI;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.AFAnalyticConfiguration;
import com.privacystar.core.service.googleplay.util.Base64;
import io.realm.Realm;
import io.realm.RealmList;
import java.lang.ref.SoftReference;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u000e\u0018\u00010\fH\u0002J\b\u0010\u000f\u001a\u00020\nH\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0002J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\rJ\u0016\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0017R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0018"}, m254d2 = {"Lcom/privacystar/core/service/analytics/anchor/AnchorAnalyticService;", "", "()V", "eventQueue", "Ljava/util/Queue;", "Lcom/privacystar/core/service/analytics/anchor/AnchorAnalyticEvent;", "registered", "", "tracker", "Ljava/lang/ref/SoftReference;", "Lcom/mixpanel/android/mpmetrics/MixpanelAPI;", "getEventsEndpointsFromRealm", "Lkotlin/Pair;", "", "", "getTracker", "register", "", "setupSuperProperties", "setupTracker", "track", "eventName", "eventParams", "Lorg/json/JSONObject;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/anchor/AnchorAnalyticService.class */
public final class AnchorAnalyticService {
    public static final AnchorAnalyticService INSTANCE = new AnchorAnalyticService();
    private static Queue<AnchorAnalyticEvent> eventQueue = new LinkedList();
    private static boolean registered;
    private static SoftReference<MixpanelAPI> tracker;

    private AnchorAnalyticService() {
    }

    private final Pair<String, List<String>> getEventsEndpointsFromRealm() {
        ArrayList arrayList;
        AFAnalyticConfiguration aFAnalyticConfiguration = (AFAnalyticConfiguration) Realm.getDefaultInstance().where(AFAnalyticConfiguration.class).findFirst();
        if (aFAnalyticConfiguration == null) {
            return null;
        }
        Intrinsics.checkExpressionValueIsNotNull(aFAnalyticConfiguration, "Realm.getDefaultInstance…           ?: return null");
        Timber.m37d("config instance: " + aFAnalyticConfiguration, new Object[0]);
        String str = "";
        ArrayList arrayList2 = new ArrayList();
        RealmList<String> primaryUrls = aFAnalyticConfiguration.getPrimaryUrls();
        if (primaryUrls == null) {
            return null;
        }
        if (primaryUrls.size() != 0) {
            String str2 = primaryUrls.get(0);
            if (str2 == null) {
                str2 = "";
            }
            Intrinsics.checkExpressionValueIsNotNull(str2, "it[0] ?: \"\"");
            byte[] decode = Base64.decode(str2);
            Intrinsics.checkExpressionValueIsNotNull(decode, "Base64.decode(primaryUrl)");
            Charset forName = Charset.forName("UTF-8");
            Intrinsics.checkExpressionValueIsNotNull(forName, "Charset.forName(\"UTF-8\")");
            str = new String(decode, forName);
        }
        if (aFAnalyticConfiguration.getBackupUrls() != null) {
            RealmList<String> backupUrls = aFAnalyticConfiguration.getBackupUrls();
            arrayList = arrayList2;
            if (backupUrls != null) {
                Iterator<String> it = backupUrls.iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    byte[] decode2 = Base64.decode(it.next());
                    Intrinsics.checkExpressionValueIsNotNull(decode2, "Base64.decode(it)");
                    Charset forName2 = Charset.forName("UTF-8");
                    Intrinsics.checkExpressionValueIsNotNull(forName2, "Charset.forName(\"UTF-8\")");
                    arrayList2.add(new String(decode2, forName2));
                }
            }
        } else {
            arrayList = CollectionsKt.arrayListOf("");
        }
        return new Pair<>(str, arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r0 != null ? r0.get() : null) == null) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.mixpanel.android.mpmetrics.MixpanelAPI getTracker() {
        /*
            r2 = this;
            java.lang.ref.SoftReference<com.mixpanel.android.mpmetrics.MixpanelAPI> r0 = com.privacystar.core.service.analytics.anchor.AnchorAnalyticService.tracker
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0023
            java.lang.ref.SoftReference<com.mixpanel.android.mpmetrics.MixpanelAPI> r0 = com.privacystar.core.service.analytics.anchor.AnchorAnalyticService.tracker
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x001d
            r0 = r3
            java.lang.Object r0 = r0.get()
            com.mixpanel.android.mpmetrics.MixpanelAPI r0 = (com.mixpanel.android.mpmetrics.MixpanelAPI) r0
            r3 = r0
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r3 = r0
        L_0x001f:
            r0 = r3
            if (r0 != 0) goto L_0x0027
        L_0x0023:
            r0 = r2
            r0.setupTracker()
        L_0x0027:
            java.lang.ref.SoftReference<com.mixpanel.android.mpmetrics.MixpanelAPI> r0 = com.privacystar.core.service.analytics.anchor.AnchorAnalyticService.tracker
            r5 = r0
            r0 = r4
            r3 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0039
            r0 = r5
            java.lang.Object r0 = r0.get()
            com.mixpanel.android.mpmetrics.MixpanelAPI r0 = (com.mixpanel.android.mpmetrics.MixpanelAPI) r0
            r3 = r0
        L_0x0039:
            r0 = r3
            if (r0 != 0) goto L_0x0040
            kotlin.jvm.internal.Intrinsics.throwNpe()
        L_0x0040:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.analytics.anchor.AnchorAnalyticService.getTracker():com.mixpanel.android.mpmetrics.MixpanelAPI");
    }

    private final void setupSuperProperties() {
        HashMap hashMap = new HashMap();
        hashMap.put(AnchorAnalyticConstants.SUPER_PROPERTY_EPOCH, Long.valueOf(System.currentTimeMillis()));
        hashMap.put(AnchorAnalyticConstants.SUPER_PROPERTY_APP_NAME, "com.privacystar.android.spg");
        hashMap.put(AnchorAnalyticConstants.SUPER_PROPERTY_FLAVOR, BuildConfig.FLAVOR);
        getTracker().registerSuperPropertiesMap(hashMap);
    }

    private final void setupTracker() {
        MPConfig mpConfig = MPConfig.getInstance(PSApplication.context());
        Pair<String, List<String>> eventsEndpointsFromRealm = getEventsEndpointsFromRealm();
        if (eventsEndpointsFromRealm == null) {
            Timber.m34e("Analytics Configuration not found in Realm", new Object[0]);
        } else {
            Timber.m28v("Primary EndPoint: [" + eventsEndpointsFromRealm.getFirst() + ']', new Object[0]);
            Timber.m28v("Backup EndPoints:", new Object[0]);
            for (String str : eventsEndpointsFromRealm.getSecond()) {
                Timber.m28v("Backup endPoint: [" + str + ']', new Object[0]);
            }
        }
        Intrinsics.checkExpressionValueIsNotNull(mpConfig, "mpConfig");
        List<String> list = null;
        mpConfig.setEventsEndpoint(eventsEndpointsFromRealm != null ? eventsEndpointsFromRealm.getFirst() : null);
        if (eventsEndpointsFromRealm != null) {
            list = eventsEndpointsFromRealm.getSecond();
        }
        mpConfig.setEventsFallbackEndpoints(list);
        tracker = new SoftReference<>(MixpanelAPI.getInstance(PSApplication.context(), "com.privacystar.android.spg"));
    }

    public final void register() {
        registered = true;
        setupTracker();
        setupSuperProperties();
        for (AnchorAnalyticEvent anchorAnalyticEvent : eventQueue) {
            anchorAnalyticEvent.track();
        }
    }

    public final void track(@NotNull String eventName) {
        Intrinsics.checkParameterIsNotNull(eventName, "eventName");
        if (registered) {
            Timber.m28v("Logging event " + eventName, new Object[0]);
            getTracker().track(eventName);
            return;
        }
        Timber.m28v("Adding " + eventName + " to event queue", new Object[0]);
        eventQueue.add(new AnchorAnalyticEvent(eventName));
    }

    public final void track(@NotNull String eventName, @NotNull JSONObject eventParams) {
        Intrinsics.checkParameterIsNotNull(eventName, "eventName");
        Intrinsics.checkParameterIsNotNull(eventParams, "eventParams");
        if (registered) {
            Timber.m28v("Logging event " + eventName, new Object[0]);
            getTracker().track(eventName, eventParams);
            return;
        }
        Timber.m28v("Adding " + eventName + " to event queue", new Object[0]);
        eventQueue.add(new AnchorAnalyticEvent(eventName, eventParams));
    }
}
