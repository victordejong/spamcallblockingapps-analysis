package com.criteo.utils;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes-dex2jar.jar:com/criteo/utils/PreferenceDataUtils.class */
public class PreferenceDataUtils {
    public static String CACHE_TIME_BANNER = "CACHE_TIME_BANNER";
    public static String CACHE_TIME_INTERSTITIAL = "CACHE_TIME_INTERSTITIAL";
    public static String CACHE_TIME_NATIVE = "CACHE_TIME_NATIVE";
    public static String CONFIG_EXPIRE = "CONFIG_EXPIRE";
    public static final String CONSENT_STRING = "IABConsent_ConsentString";
    public static String DISPLAY_AD_CREATIVE = "DISPLAY_AD_CREATIVE";
    public static String DISPLAY_AD_HEIGHT = "DISPLAY_AD_HEIGHT";
    public static String FIRST_GAID = "FIRST_GAID";
    public static String FIRST_RUN = "first_run";
    public static String GAID = "GAID";
    public static String GAID_BLOCK_TIME_INTERVEL = "GAID_BLOCK";
    public static String GAID_NATIVE = "GAID_NATIVE";
    public static String LMT = "LMT";
    public static final String STORE = "PREFERENCE_STORE";
    public static final String SUBJECT_TO_GDPR = "IABConsent_SubjectToGDPR";
    public static final String TAG = "criteo.Stories.PreferenceDataUtils";
    public static String TIMESTAMP_NATIVE = "TIMESTAMP_NATIVE";
    public static final String VENDORS = "IABConsent_ParsedVendorConsents";

    public static void clearStore(Context context) {
        Tracer.debug(TAG, "clearStore()");
        getShearedPreferenceEditor(context).clear().commit();
    }

    public static void clearStoreByKey(Context context, String str) {
        Tracer.debug(TAG, "clearStore()");
        getShearedPreferenceEditor(context).remove(str).commit();
    }

    public static long getCacheTimeBanner(Context context) {
        Tracer.debug(TAG, "getCacheTimeBanner: ");
        return getShearedPreference(context).getLong(CACHE_TIME_BANNER, 0L);
    }

    public static long getCacheTimeInterstitial(Context context) {
        Tracer.debug(TAG, "getCacheTimeInterstitial: ");
        return getShearedPreference(context).getLong(CACHE_TIME_INTERSTITIAL, 0L);
    }

    public static long getCacheTimeNative(Context context) {
        Tracer.debug(TAG, "getCacheTimeNative: ");
        return getShearedPreference(context).getLong(CACHE_TIME_NATIVE, 0L);
    }

    public static Long getConfigExipire(Context context) {
        Tracer.debug(TAG, "ConfigTime: ");
        return Long.valueOf(getShearedPreference(context).getLong(CONFIG_EXPIRE, 0L));
    }

    public static String getDisplayAdCreative(Context context) {
        Tracer.debug(TAG, "getGaidNative: ");
        return getShearedPreference(context).getString(DISPLAY_AD_CREATIVE, "");
    }

    public static int getDisplayAdHeight(Context context) {
        Tracer.debug(TAG, "getCacheTimeNative: ");
        return getShearedPreference(context).getInt(DISPLAY_AD_HEIGHT, 0);
    }

    public static String getFirstGaid(Context context) {
        Tracer.debug(TAG, "getFirstGaid: ");
        return getShearedPreference(context).getString(FIRST_GAID, "");
    }

    public static boolean getFirstRun(Context context) {
        Tracer.debug(TAG, "getFirstRun: ");
        return getShearedPreference(context).getBoolean(FIRST_RUN, false);
    }

    public static String getGAID(Context context) {
        Tracer.debug(TAG, "getGAID: ");
        return getShearedPreference(context).getString(GAID, "");
    }

    public static Long getGaidBlockTimeIntervel(Context context) {
        return Long.valueOf(getShearedPreference(context).getLong(GAID_BLOCK_TIME_INTERVEL, 0L));
    }

    public static String getGaidNative(Context context) {
        Tracer.debug(TAG, "getGaidNative: ");
        return getShearedPreference(context).getString(GAID_NATIVE, "");
    }

    public static String getLMT(Context context) {
        return getShearedPreference(context).getString(LMT, "");
    }

    public static SharedPreferences getShearedPreference(Context context) {
        return context.getSharedPreferences(STORE, 0);
    }

    public static SharedPreferences.Editor getShearedPreferenceEditor(Context context) {
        return getShearedPreference(context).edit();
    }

    public static String getTimestampNative(Context context) {
        Tracer.debug(TAG, "getTimestampNative: ");
        return getShearedPreference(context).getString(TIMESTAMP_NATIVE, "");
    }

    public static void setCacheTimeBanner(Context context, Long l) {
        Tracer.debug(TAG, "setCacheTimeBanner: " + l);
        getShearedPreferenceEditor(context).putLong(CACHE_TIME_BANNER, l.longValue()).commit();
    }

    public static void setCacheTimeInterstitial(Context context, Long l) {
        Tracer.debug(TAG, "setCacheTimeInterstitial: " + l);
        getShearedPreferenceEditor(context).putLong(CACHE_TIME_INTERSTITIAL, l.longValue()).commit();
    }

    public static void setCacheTimeNative(Context context, Long l) {
        Tracer.debug(TAG, "setCacheTimeNative: " + l);
        getShearedPreferenceEditor(context).putLong(CACHE_TIME_NATIVE, l.longValue()).commit();
    }

    public static void setConfigExipire(Context context, long j) {
        Tracer.debug(TAG, "configTime: " + j);
        getShearedPreferenceEditor(context).putLong(CONFIG_EXPIRE, j).commit();
    }

    public static void setDisplayAdCreative(Context context, String str) {
        Tracer.debug(TAG, "setDisplayAdCreative: " + str);
        getShearedPreferenceEditor(context).putString(DISPLAY_AD_CREATIVE, str).commit();
    }

    public static void setDisplayAdHeight(Context context, int i) {
        Tracer.debug(TAG, "setDisplayAdHeight: " + i);
        getShearedPreferenceEditor(context).putInt(DISPLAY_AD_HEIGHT, i).commit();
    }

    public static void setFirstGaid(Context context, String str) {
        Tracer.debug(TAG, "setDisplayAdCreative: " + str);
        getShearedPreferenceEditor(context).putString(FIRST_GAID, str).commit();
    }

    public static void setFirstRun(Context context, boolean z) {
        Tracer.debug(TAG, "firstrun: " + z);
        getShearedPreferenceEditor(context).putBoolean(FIRST_RUN, z).commit();
    }

    public static void setGAID(Context context, String str) {
        Tracer.debug(TAG, "setGAID: " + str);
        getShearedPreferenceEditor(context).putString(GAID, str).commit();
    }

    public static void setGaidBlockTimeIntervel(Context context, long j) {
        getShearedPreferenceEditor(context).putLong(GAID_BLOCK_TIME_INTERVEL, j).commit();
    }

    public static void setGaidNative(Context context, String str) {
        Tracer.debug(TAG, "setGaidNative: " + str);
        getShearedPreferenceEditor(context).putString(GAID_NATIVE, str).commit();
    }

    public static void setLMT(Context context, String str) {
        getShearedPreferenceEditor(context).putString(LMT, str).commit();
    }

    public static void setTimestampNative(Context context, String str) {
        Tracer.debug(TAG, "setTimestampNative: " + str);
        getShearedPreferenceEditor(context).putString(TIMESTAMP_NATIVE, str).commit();
    }
}
