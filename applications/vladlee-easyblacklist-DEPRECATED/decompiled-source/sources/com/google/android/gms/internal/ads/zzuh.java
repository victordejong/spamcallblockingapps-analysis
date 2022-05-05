package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuh.class */
public final class zzuh {
    public static final zzuh zzccn = new zzuh();

    protected zzuh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ int m3003a(String str, String str2) {
        return RequestConfiguration.zzabs.indexOf(str) - RequestConfiguration.zzabs.indexOf(str2);
    }

    public static zzaru zza(Context context, zzxj zzxjVar, String str) {
        return new zzaru(zza(context, zzxjVar), str);
    }

    public static zzug zza(Context context, zzxj zzxjVar) {
        zzua zzuaVar;
        String str;
        Date birthday = zzxjVar.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1L;
        String contentUrl = zzxjVar.getContentUrl();
        int gender = zzxjVar.getGender();
        Set<String> keywords = zzxjVar.getKeywords();
        List unmodifiableList = !keywords.isEmpty() ? Collections.unmodifiableList(new ArrayList(keywords)) : null;
        boolean isTestDevice = zzxjVar.isTestDevice(context);
        Location location = zzxjVar.getLocation();
        Bundle networkExtrasBundle = zzxjVar.getNetworkExtrasBundle(AdMobAdapter.class);
        if (zzxjVar.zzpu() != null) {
            zzuaVar = new zzua(zzxjVar.zzpu().getAdString(), zzve.zzpc().containsKey(zzxjVar.zzpu().getQueryData()) ? zzve.zzpc().get(zzxjVar.zzpu().getQueryData()) : "");
        } else {
            zzuaVar = null;
        }
        boolean manualImpressionsEnabled = zzxjVar.getManualImpressionsEnabled();
        String publisherProvidedId = zzxjVar.getPublisherProvidedId();
        SearchAdRequest zzpp = zzxjVar.zzpp();
        zzys zzysVar = zzpp != null ? new zzys(zzpp) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzve.zzou();
            str = zzayk.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean isDesignedForFamilies = zzxjVar.isDesignedForFamilies();
        RequestConfiguration requestConfiguration = zzxq.zzpw().getRequestConfiguration();
        return new zzug(8, time, networkExtrasBundle, gender, unmodifiableList, isTestDevice, Math.max(zzxjVar.zzps(), requestConfiguration.getTagForChildDirectedTreatment()), manualImpressionsEnabled, publisherProvidedId, zzysVar, location, contentUrl, zzxjVar.zzpr(), zzxjVar.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzxjVar.zzpt())), zzxjVar.zzpo(), str, isDesignedForFamilies, zzuaVar, Math.max(zzxjVar.zzpv(), requestConfiguration.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(zzxjVar.getMaxAdContentRating(), requestConfiguration.getMaxAdContentRating()), arj.f8197a), zzxjVar.zzpn());
    }
}
