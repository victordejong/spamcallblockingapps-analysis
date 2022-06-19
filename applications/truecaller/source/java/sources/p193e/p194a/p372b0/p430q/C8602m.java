package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.common.C3656R;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p372b0.p417k.C8492b;
import p193e.p194a.p372b0.p417k.C8502h;
/* renamed from: e.a.b0.q.m */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/m.class */
public class C8602m {

    /* renamed from: a */
    public static final long f26429a;

    /* renamed from: b */
    public static final long f26430b;

    /* renamed from: e */
    public static final StringBuilder f26433e;

    /* renamed from: f */
    public static final Formatter f26434f;

    /* renamed from: c */
    public static final long f26431c = TimeUnit.MINUTES.toSeconds(1);

    /* renamed from: d */
    public static final long f26432d = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: g */
    public static final SimpleDateFormat f26435g = new SimpleDateFormat("yyyy-MM-dd");

    /* renamed from: h */
    public static final SimpleDateFormat f26436h = new SimpleDateFormat("HH:mm");

    /* renamed from: i */
    public static final SimpleDateFormat f26437i = new SimpleDateFormat("dd/MM");

    /* renamed from: j */
    public static final SimpleDateFormat f26438j = new SimpleDateFormat("MM/dd");

    /* renamed from: k */
    public static final SimpleDateFormat f26439k = new SimpleDateFormat("MMM dd");

    /* renamed from: l */
    public static final SimpleDateFormat f26440l = new SimpleDateFormat("dd MMM");

    /* renamed from: m */
    public static final SimpleDateFormat f26441m = new SimpleDateFormat("dd/MM/yyyy");

    /* renamed from: n */
    public static final SimpleDateFormat f26442n = new SimpleDateFormat("MM/dd/yyyy");

    /* renamed from: o */
    public static DateFormat f26443o = null;

    /* renamed from: p */
    public static DateFormat f26444p = null;

    static {
        TimeUnit timeUnit = TimeUnit.DAYS;
        f26429a = timeUnit.toMillis(1L);
        f26430b = timeUnit.toHours(1L);
        StringBuilder sb = new StringBuilder(32);
        f26433e = sb;
        f26434f = new Formatter(sb, C8502h.f26287b);
    }

    @Deprecated
    /* renamed from: a */
    public static boolean m28257a(long j, long j2) {
        return System.currentTimeMillis() - j > j2;
    }

    /* renamed from: b */
    public static String m28256b(Context context, long j) {
        String format;
        synchronized (C8602m.class) {
            try {
                try {
                    if (f26443o == null) {
                        f26443o = android.text.format.DateFormat.getDateFormat(context);
                    }
                    format = f26443o.format(new Date(j));
                } catch (Exception e) {
                    try {
                        return f26435g.format(new Date(j));
                    } catch (Exception e2) {
                        return "";
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return format;
    }

    /* renamed from: c */
    public static String m28255c(Context context, long j) {
        char[] dateFormatOrder;
        char c = 'M';
        try {
            for (char c2 : android.text.format.DateFormat.getDateFormatOrder(context)) {
                if (c2 == 'd' || c2 == 'M') {
                    c = c2;
                    break;
                }
            }
            c = 'd';
        } catch (IllegalArgumentException e) {
        }
        return (c == 'd' ? f26437i : f26438j).format(new Date(j));
    }

    /* renamed from: d */
    public static String m28254d(Context context, long j) {
        char[] dateFormatOrder;
        boolean z = false;
        char c = 'M';
        try {
            for (char c2 : android.text.format.DateFormat.getDateFormatOrder(context)) {
                if (c2 == 'd' || c2 == 'M') {
                    c = c2;
                    break;
                }
            }
            c = 'd';
        } catch (IllegalArgumentException e) {
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar2.setTime(new Date(j));
        if (calendar.get(1) == calendar2.get(1)) {
            z = true;
        }
        return (!z ? c == 'd' ? f26441m : f26442n : c == 'd' ? f26440l : f26439k).format(new Date(j));
    }

    /* renamed from: e */
    public static String m28253e(Context context, long j) {
        if (j < 0) {
            return "";
        }
        long j2 = f26431c;
        if (j < j2) {
            return context.getString(C3656R.string.duration_s, Long.valueOf(j));
        }
        long j3 = f26432d;
        if (j < j3) {
            return context.getString(C3656R.string.duration_ms, Long.valueOf(j / j2), Long.valueOf(j % j2));
        }
        return context.getString(C3656R.string.duration_hms, Long.valueOf((j / j3) % f26430b), Long.valueOf((j / j2) % j2), Long.valueOf(j % j2));
    }

    /* renamed from: f */
    public static String m28252f(Context context, long j) {
        String format;
        synchronized (C8602m.class) {
            try {
                try {
                    if (f26444p == null) {
                        f26444p = android.text.format.DateFormat.getTimeFormat(context);
                    }
                    format = f26444p.format(new Date(j));
                } catch (Exception e) {
                    try {
                        return f26436h.format(new Date(j));
                    } catch (Exception e2) {
                        return "";
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return format;
    }

    /* renamed from: g */
    public static int m28251g() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(12) + (calendar.get(11) * 60);
    }

    /* renamed from: h */
    public static CharSequence m28250h(Context context, long j) {
        synchronized (C8602m.class) {
            try {
                f26433e.setLength(0);
                long currentTimeMillis = System.currentTimeMillis();
                long offset = TimeZone.getDefault().getOffset(currentTimeMillis);
                long j2 = f26429a;
                long j3 = (currentTimeMillis + offset) / j2;
                long j4 = (offset + j) / j2;
                if (j3 == j4) {
                    return m28252f(context, j);
                }
                long j5 = j3 - j4;
                return j5 == 1 ? C19231g0.m13816A(context.getResources().getString(C3656R.string.yesterday), C8502h.f26287b).concat(StringConstant.SPACE).concat(m28252f(context, j)) : j5 >= 7 ? m28256b(context, j).concat(StringConstant.SPACE).concat(m28252f(context, j)) : DateUtils.formatDateRange(context, f26434f, j, j, 32770).toString().concat(StringConstant.SPACE).concat(m28252f(context, j));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: i */
    public static CharSequence m28249i(Context context, long j, boolean z) {
        synchronized (C8602m.class) {
            try {
                f26433e.setLength(0);
                long currentTimeMillis = System.currentTimeMillis();
                long offset = TimeZone.getDefault().getOffset(currentTimeMillis);
                long j2 = f26429a;
                long j3 = (currentTimeMillis + offset) / j2;
                long j4 = (offset + j) / j2;
                if (j3 == j4) {
                    return m28252f(context, j);
                }
                String m28256b = (z || j3 - j4 != 1) ? j3 - j4 >= 7 ? m28256b(context, j) : DateUtils.formatDateRange(context, f26434f, j, j, 32770).toString() : C19231g0.m13816A(context.getResources().getString(C3656R.string.yesterday), C8502h.f26287b);
                String str = m28256b;
                if (z) {
                    str = String.format("%s, %s", m28252f(context, j), m28256b);
                }
                return str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: j */
    public static String m28248j(Context context, long j, TimeUnit timeUnit) {
        String str;
        Calendar calendar = Calendar.getInstance(C8502h.f26287b);
        long convert = TimeUnit.MILLISECONDS.convert(j, timeUnit);
        calendar.setTimeInMillis(convert);
        long currentTimeMillis = (System.currentTimeMillis() - convert) / 1000;
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
        if (currentTimeMillis < timeUnit2.toSeconds(1L)) {
            str = context.getResources().getString(C3656R.string.now);
        } else if (currentTimeMillis < timeUnit2.toSeconds(10L)) {
            str = context.getResources().getString(C3656R.string.n_minutes_ago, Long.valueOf(TimeUnit.SECONDS.toMinutes(currentTimeMillis)));
        } else {
            Calendar calendar2 = Calendar.getInstance(C8502h.f26287b);
            Calendar calendar3 = Calendar.getInstance(C8502h.f26287b);
            calendar3.add(6, -1);
            Calendar calendar4 = Calendar.getInstance(C8502h.f26287b);
            calendar4.add(6, -7);
            Locale locale = C8502h.f26287b;
            boolean z = locale != null && TextUtils.equals("fa", locale.getLanguage());
            if (calendar.get(1) == calendar2.get(1) && calendar.get(6) == calendar2.get(6)) {
                DateFormat timeFormat = android.text.format.DateFormat.getTimeFormat(context);
                DateFormat dateFormat = timeFormat;
                if (timeFormat == null) {
                    dateFormat = DateFormat.getTimeInstance(3, C8502h.f26287b);
                }
                str = dateFormat.format(calendar.getTime());
            } else if (calendar.get(6) == calendar3.get(6)) {
                str = context.getResources().getString(C3656R.string.yesterday);
            } else if (calendar.after(calendar4)) {
                str = new SimpleDateFormat("EEEE", C8502h.f26287b).format(calendar.getTime());
            } else if (calendar.get(1) == calendar2.get(1)) {
                if (z) {
                    C8492b.C8493a m28450a = C8492b.m28450a(new C8492b.C8493a(calendar.get(1), calendar.get(2), calendar.get(5)));
                    str = String.format("%d %s", Integer.valueOf(m28450a.f26265c), m28450a.m28449a());
                } else {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd MMM", C8502h.f26287b);
                    simpleDateFormat.setCalendar(calendar);
                    str = simpleDateFormat.format(calendar.getTime());
                }
            } else if (z) {
                C8492b.C8493a m28450a2 = C8492b.m28450a(new C8492b.C8493a(calendar.get(1), calendar.get(2), calendar.get(5)));
                str = String.format("%d %s %d", Integer.valueOf(m28450a2.f26265c), m28450a2.m28449a(), Integer.valueOf(m28450a2.f26263a));
            } else {
                DateFormat dateInstance = DateFormat.getDateInstance(2, C8502h.f26287b);
                dateInstance.setCalendar(calendar);
                str = dateInstance.format(calendar.getTime());
            }
        }
        return str;
    }

    /* renamed from: k */
    public static CharSequence m28247k(Context context, long j) {
        synchronized (C8602m.class) {
            try {
                f26433e.setLength(0);
                long abs = Math.abs(System.currentTimeMillis() - j) / DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL;
                if (abs == 0) {
                    return context.getString(C3656R.string.now);
                } else if (abs <= 10) {
                    return DateUtils.getRelativeTimeSpanString(j, System.currentTimeMillis(), DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, 524288);
                } else {
                    return DateUtils.formatDateRange(context, f26434f, j, j, 524289).toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
