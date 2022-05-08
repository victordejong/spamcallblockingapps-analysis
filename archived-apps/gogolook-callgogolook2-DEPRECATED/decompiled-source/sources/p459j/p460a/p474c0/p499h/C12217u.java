package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import gogolook.callgogolook2.R$string;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.u */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/u.class */
public class C12217u {

    /* renamed from: a */
    public static Time f27384a;

    /* renamed from: a */
    public static long m6745a(long j, long j2) {
        long abs;
        synchronized (C12217u.class) {
            try {
                if (f27384a == null) {
                    f27384a = new Time();
                }
                f27384a.set(j);
                int julianDay = Time.getJulianDay(j, f27384a.gmtoff);
                f27384a.set(j2);
                abs = Math.abs(Time.getJulianDay(j2, f27384a.gmtoff) - julianDay);
            } catch (Throwable th) {
                throw th;
            }
        }
        return abs;
    }

    /* renamed from: a */
    public static Context m6749a() {
        return AbstractC11516a.m9413n().mo9412a();
    }

    /* renamed from: a */
    public static CharSequence m6748a(long j) {
        Context a = m6749a();
        return m6743a(j, a.getResources().getConfiguration().locale, false, DateFormat.is24HourFormat(a) ? 128 : 64);
    }

    /* renamed from: a */
    public static CharSequence m6747a(long j, int i) {
        int i2 = (int) (j / 60000);
        return String.format(m6749a().getResources().getString(i2 > 1 ? R$string.num_minutes_ago_other : R$string.num_minutes_ago_one), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static CharSequence m6746a(long j, int i, String str, String str2) {
        return ((i & 128) == 128 ? new SimpleDateFormat(str) : new SimpleDateFormat(str2)).format(new Date(j));
    }

    /* renamed from: a */
    public static CharSequence m6744a(long j, long j2, boolean z, Locale locale, int i, boolean z2) {
        long j3 = j2 - j;
        if (!z2 && j3 < 60000) {
            return m6741a(z);
        }
        if (!z2 && j3 < 3600000) {
            return m6747a(j3, i);
        }
        if (m6745a(j, j2) == 0) {
            return m6739b(j, i);
        }
        if (j3 < 604800000) {
            return m6738b(j, locale, z, i);
        }
        if (j3 < 31449600000L && new Date(j2).getYear() == new Date(j).getYear()) {
            return m6738b(j, locale, z, i);
        }
        return m6743a(j, locale, z, i);
    }

    /* renamed from: a */
    public static CharSequence m6743a(long j, Locale locale, boolean z, int i) {
        m6749a();
        return z ? m6746a(j, i, "yyyy/M/d", "yyyy/M/d") : m6746a(j, i, "yyyy/M/d, HH:mm", "yyyy/M/d, HH:mm");
    }

    /* renamed from: a */
    public static CharSequence m6742a(long j, boolean z, boolean z2) {
        Context a = m6749a();
        return m6744a(j, System.currentTimeMillis(), z, a.getResources().getConfiguration().locale, DateFormat.is24HourFormat(a) ? 128 : 64, z2);
    }

    /* renamed from: a */
    public static CharSequence m6741a(boolean z) {
        return m6749a().getResources().getText(z ? R$string.posted_just_now : R$string.posted_now);
    }

    /* renamed from: b */
    public static CharSequence m6740b(long j) {
        return m6742a(j, false, false);
    }

    /* renamed from: b */
    public static CharSequence m6739b(long j, int i) {
        return DateUtils.formatDateTime(m6749a(), j, i | 1);
    }

    /* renamed from: b */
    public static CharSequence m6738b(long j, Locale locale, boolean z, int i) {
        m6749a();
        return z ? m6746a(j, i, "M/d", "M/d") : m6746a(j, i, "M/d, HH:mm", "M/d, HH:mm");
    }
}
