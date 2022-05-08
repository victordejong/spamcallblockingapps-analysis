package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.icu.text.DateFormat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.C1027R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/material/datepicker/UtcDates.class */
class UtcDates {

    /* renamed from: a */
    static AtomicReference<TimeSource> f10628a = new AtomicReference<>();

    private UtcDates() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static long m9853a(long j) {
        Calendar r = m9836r();
        r.setTimeInMillis(j);
        return m9848f(r).getTimeInMillis();
    }

    /* renamed from: b */
    private static int m9852b(@NonNull String str, @NonNull String str2, int i, int i2) {
        while (i2 >= 0 && i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            int i3 = i2;
            if (str.charAt(i2) == '\'') {
                do {
                    i2 += i;
                    i3 = i2;
                    if (i2 >= 0) {
                        i3 = i2;
                        if (i2 < str.length()) {
                            i3 = i2;
                        }
                    }
                } while (str.charAt(i2) != '\'');
            }
            i2 = i3 + i;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    /* renamed from: c */
    public static DateFormat m9851c(Locale locale) {
        return m9849e("MMMd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    /* renamed from: d */
    public static DateFormat m9850d(Locale locale) {
        return m9849e("MMMEd", locale);
    }

    @TargetApi(24)
    /* renamed from: e */
    private static DateFormat m9849e(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(m9837q());
        return instanceForSkeleton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static Calendar m9848f(Calendar calendar) {
        Calendar s = m9835s(calendar);
        Calendar r = m9836r();
        r.set(s.get(1), s.get(2), s.get(5));
        return r;
    }

    /* renamed from: g */
    private static java.text.DateFormat m9847g(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(m9839o());
        return dateInstance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static java.text.DateFormat m9846h(Locale locale) {
        return m9847g(0, locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static java.text.DateFormat m9845i(Locale locale) {
        return m9847g(2, locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static java.text.DateFormat m9844j(Locale locale) {
        SimpleDateFormat simpleDateFormat = (SimpleDateFormat) m9845i(locale);
        simpleDateFormat.applyPattern(m9830x(simpleDateFormat.toPattern()));
        return simpleDateFormat;
    }

    /* renamed from: k */
    private static SimpleDateFormat m9843k(String str, Locale locale) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, locale);
        simpleDateFormat.setTimeZone(m9839o());
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static SimpleDateFormat m9842l() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(((SimpleDateFormat) java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
        simpleDateFormat.setTimeZone(m9839o());
        simpleDateFormat.setLenient(false);
        return simpleDateFormat;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static String m9841m(Resources resources, SimpleDateFormat simpleDateFormat) {
        String localizedPattern = simpleDateFormat.toLocalizedPattern();
        return localizedPattern.replaceAll("d", resources.getString(C1027R.string.mtrl_picker_text_input_day_abbr)).replaceAll("M", resources.getString(C1027R.string.mtrl_picker_text_input_month_abbr)).replaceAll("y", resources.getString(C1027R.string.mtrl_picker_text_input_year_abbr));
    }

    /* renamed from: n */
    static TimeSource m9840n() {
        TimeSource timeSource = f10628a.get();
        TimeSource timeSource2 = timeSource;
        if (timeSource == null) {
            timeSource2 = TimeSource.m9854c();
        }
        return timeSource2;
    }

    /* renamed from: o */
    private static TimeZone m9839o() {
        return TimeZone.getTimeZone("UTC");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static Calendar m9838p() {
        Calendar a = m9840n().m9856a();
        a.set(11, 0);
        a.set(12, 0);
        a.set(13, 0);
        a.set(14, 0);
        a.setTimeZone(m9839o());
        return a;
    }

    @TargetApi(24)
    /* renamed from: q */
    private static android.icu.util.TimeZone m9837q() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static Calendar m9836r() {
        return m9835s(null);
    }

    /* renamed from: s */
    static Calendar m9835s(@Nullable Calendar calendar) {
        Calendar instance = Calendar.getInstance(m9839o());
        if (calendar == null) {
            instance.clear();
        } else {
            instance.setTimeInMillis(calendar.getTimeInMillis());
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    /* renamed from: t */
    public static DateFormat m9834t(Locale locale) {
        return m9849e("yMMMd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(24)
    /* renamed from: u */
    public static DateFormat m9833u(Locale locale) {
        return m9849e("yMMMEd", locale);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public static SimpleDateFormat m9832v() {
        return m9831w(Locale.getDefault());
    }

    /* renamed from: w */
    private static SimpleDateFormat m9831w(Locale locale) {
        return m9843k("LLLL, yyyy", locale);
    }

    @NonNull
    /* renamed from: x */
    private static String m9830x(@NonNull String str) {
        int b = m9852b(str, "yY", 1, 0);
        if (b >= str.length()) {
            return str;
        }
        String str2 = "EMd";
        int b2 = m9852b(str, "EMd", 1, b);
        if (b2 < str.length()) {
            str2 = "EMd,";
        }
        return str.replace(str.substring(m9852b(str, str2, -1, b) + 1, b2), " ").trim();
    }
}
