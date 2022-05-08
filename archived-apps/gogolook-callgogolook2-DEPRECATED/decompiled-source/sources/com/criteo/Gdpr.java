package com.criteo;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.criteo.utils.PreferenceDataUtils;
/* loaded from: classes-dex2jar.jar:com/criteo/Gdpr.class */
public class Gdpr {
    public static String consentString;
    public static String subject_to_gdpr;
    public static String vendors;

    public void getGdprCompliance(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        consentString = defaultSharedPreferences.getString(PreferenceDataUtils.CONSENT_STRING, "");
        subject_to_gdpr = defaultSharedPreferences.getString(PreferenceDataUtils.SUBJECT_TO_GDPR, "");
        vendors = defaultSharedPreferences.getString(PreferenceDataUtils.VENDORS, "");
    }
}
