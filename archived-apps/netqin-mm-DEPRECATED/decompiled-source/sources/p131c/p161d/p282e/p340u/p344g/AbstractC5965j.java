package p131c.p161d.p282e.p340u.p344g;

import android.content.Context;
import com.google.firebase.perf.util.Constants$CounterNames;
import com.google.firebase.perf.util.Constants$TraceNames;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.C6035s;
/* renamed from: c.d.e.u.g.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/j.class */
public abstract class AbstractC5965j {
    /* renamed from: a */
    public static String m22502a(String str) {
        if (str == null) {
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        }
        if (!str.startsWith("_")) {
            return null;
        }
        for (Constants$CounterNames constants$CounterNames : Constants$CounterNames.values()) {
            if (constants$CounterNames.toString().equals(str)) {
                return null;
            }
        }
        return "Metric name must not start with '_'";
    }

    /* renamed from: a */
    public static String m22501a(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        String value = entry.getValue();
        if (key == null) {
            return "Attribute key must not be null";
        }
        if (value == null) {
            return "Attribute value must not be null";
        }
        if (key.length() > 40) {
            return String.format(Locale.US, "Attribute key length must not exceed %d characters", 40);
        }
        if (value.length() > 100) {
            return String.format(Locale.US, "Attribute value length must not exceed %d characters", 100);
        }
        if (!key.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            return "Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_";
        }
        return null;
    }

    /* renamed from: a */
    public static List<AbstractC5965j> m22503a(C6035s sVar, Context context) {
        ArrayList arrayList = new ArrayList();
        if (sVar.mo22239j()) {
            arrayList.add(new C5961f(sVar.mo22238k()));
        }
        if (sVar.mo22237m()) {
            arrayList.add(new C5960e(sVar.mo22236n(), context));
        }
        if (sVar.m22247w()) {
            arrayList.add(new C5958c(sVar.m22248v()));
        }
        if (sVar.mo22240e()) {
            arrayList.add(new C5959d(sVar.mo22235p()));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static String m22499b(String str) {
        if (str == null) {
            return "Trace name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        }
        if (!str.startsWith("_")) {
            return null;
        }
        for (Constants$TraceNames constants$TraceNames : Constants$TraceNames.values()) {
            if (constants$TraceNames.toString().equals(str)) {
                return null;
            }
        }
        if (str.startsWith("_st_")) {
            return null;
        }
        return "Trace name must not start with '_'";
    }

    /* renamed from: b */
    public static boolean m22500b(C6035s sVar, Context context) {
        List<AbstractC5965j> a = m22503a(sVar, context);
        if (a.isEmpty()) {
            C5969a.m22496a().m22495a("No validators found for PerfMetric.", new Object[0]);
            return false;
        }
        for (AbstractC5965j jVar : a) {
            if (!jVar.mo22504a()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public abstract boolean mo22504a();
}
