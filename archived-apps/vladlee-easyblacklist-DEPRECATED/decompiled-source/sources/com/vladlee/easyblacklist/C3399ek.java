package com.vladlee.easyblacklist;

import android.content.Context;
import android.text.format.DateFormat;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.AbstractC1027o;
import androidx.preference.Preference;
import androidx.preference.SwitchPreferenceCompat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* renamed from: com.vladlee.easyblacklist.ek */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ek.class */
public final class C3399ek {
    /* renamed from: a */
    private static String m65a(Context context) {
        return !DateFormat.is24HourFormat(context) ? "hh:mm a" : "HH:mm";
    }

    /* renamed from: a */
    public static String m63a(AbstractC1027o oVar, int i) {
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(System.currentTimeMillis());
        instance.set(11, i / 60);
        instance.set(12, i % 60);
        return new SimpleDateFormat(m65a(oVar.getActivity()), oVar.getResources().getConfiguration().locale).format(new Date(instance.getTimeInMillis()));
    }

    /* renamed from: a */
    public static void m64a(AbstractC1027o oVar) {
        FragmentActivity activity = oVar.getActivity();
        C3392ee.m74b((Context) activity, "pref_schedule_by_day_of_week", false);
        FragmentActivity activity2 = oVar.getActivity();
        int a = C3392ee.m83a(activity2, "pref_schedule_enable_from");
        int a2 = C3392ee.m83a(activity2, "pref_schedule_enable_to");
        Preference a3 = oVar.mo7391a("pref_schedule_enable_from");
        a3.mo7473a((CharSequence) m63a(oVar, a));
        a3.m7479a((Preference.AbstractC0992c) new C3403eo(activity2, oVar));
        Preference a4 = oVar.mo7391a("pref_schedule_enable_to");
        a4.mo7473a((CharSequence) m63a(oVar, a2));
        a4.m7479a((Preference.AbstractC0992c) new C3405eq(activity2, oVar));
        m60a(oVar, C3392ee.m80a((Context) activity, "pref_schedule_enable", false));
        m61a(oVar, "by_day_of_week");
        m61a(oVar, "monday");
        m61a(oVar, "tuesday");
        m61a(oVar, "wednesday");
        m61a(oVar, "thursday");
        m61a(oVar, "friday");
        m61a(oVar, "saturday");
        m61a(oVar, "sunday");
        ((SwitchPreferenceCompat) oVar.mo7391a("pref_schedule_by_day_of_week")).m7479a((Preference.AbstractC0992c) new C3400el(activity, oVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m62a(AbstractC1027o oVar, int i, int i2) {
        int i3 = (i * 60) + i2;
        Preference a = oVar.mo7391a("pref_schedule_enable_from");
        C3392ee.m82a(oVar.getActivity(), "pref_schedule_enable_from", i3);
        a.mo7473a((CharSequence) m63a(oVar, i3));
    }

    /* renamed from: a */
    private static void m61a(AbstractC1027o oVar, String str) {
        oVar.mo7391a((CharSequence) "pref_schedule_".concat(String.valueOf(str))).m7480a((Preference.AbstractC0991b) new C3407es(oVar.getActivity(), str));
    }

    /* renamed from: a */
    public static void m60a(AbstractC1027o oVar, boolean z) {
        FragmentActivity activity = oVar.getActivity();
        if (activity != null) {
            boolean a = C3392ee.m80a((Context) activity, "pref_schedule_by_day_of_week", false);
            oVar.mo7391a("pref_schedule_enable_to").m7471a(z);
            oVar.mo7391a("pref_schedule_enable_from").m7471a(z);
            oVar.mo7391a("pref_schedule_by_day_of_week").m7471a(z);
            oVar.mo7391a("pref_schedule_monday").m7471a(z && a);
            oVar.mo7391a("pref_schedule_tuesday").m7471a(z && a);
            oVar.mo7391a("pref_schedule_wednesday").m7471a(z && a);
            oVar.mo7391a("pref_schedule_thursday").m7471a(z && a);
            oVar.mo7391a("pref_schedule_friday").m7471a(z && a);
            oVar.mo7391a("pref_schedule_saturday").m7471a(z && a);
            Preference a2 = oVar.mo7391a("pref_schedule_sunday");
            boolean z2 = false;
            if (z) {
                z2 = false;
                if (a) {
                    z2 = true;
                }
            }
            a2.m7471a(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m59b(AbstractC1027o oVar, int i, int i2) {
        int i3 = (i * 60) + i2;
        Preference a = oVar.mo7391a("pref_schedule_enable_to");
        C3392ee.m82a(oVar.getActivity(), "pref_schedule_enable_to", i3);
        a.mo7473a((CharSequence) m63a(oVar, i3));
    }
}
