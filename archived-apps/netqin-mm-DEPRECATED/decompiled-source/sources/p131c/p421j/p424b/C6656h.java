package p131c.p421j.p424b;

import android.text.TextUtils;
import android.util.Pair;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventRewardedAd;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: c.j.b.h */
/* loaded from: classes2-dex2jar.jar:c/j/b/h.class */
public class C6656h {

    /* renamed from: a */
    public final Map<String, CustomEventRewardedAd> f20551a = new TreeMap();

    /* renamed from: b */
    public final Map<String, MoPubReward> f20552b = new TreeMap();

    /* renamed from: c */
    public final Map<String, Set<MoPubReward>> f20553c = new TreeMap();

    /* renamed from: d */
    public final Map<String, String> f20554d = new TreeMap();

    /* renamed from: e */
    public final Map<String, String> f20555e = new TreeMap();

    /* renamed from: f */
    public final Map<Class<? extends CustomEventRewardedAd>, MoPubReward> f20556f = new HashMap();

    /* renamed from: g */
    public final Map<C6657a, Set<String>> f20557g = new HashMap();

    /* renamed from: h */
    public String f20558h;

    /* renamed from: i */
    public String f20559i;

    /* renamed from: c.j.b.h$a */
    /* loaded from: classes2-dex2jar.jar:c/j/b/h$a.class */
    public static class C6657a extends Pair<Class<? extends CustomEventRewardedAd>, String> {

        /* renamed from: a */
        public final Class<? extends CustomEventRewardedAd> f20560a;

        public C6657a(Class<? extends CustomEventRewardedAd> cls, String str) {
            super(cls, str);
            this.f20560a = cls;
        }
    }

    /* renamed from: a */
    public MoPubReward m20182a(Class<? extends CustomEventRewardedAd> cls) {
        return this.f20556f.get(cls);
    }

    /* renamed from: a */
    public String m20183a() {
        return this.f20558h;
    }

    /* renamed from: a */
    public Set<String> m20180a(Class<? extends CustomEventRewardedAd> cls, String str) {
        if (str == null) {
            HashSet hashSet = new HashSet();
            for (Map.Entry<C6657a, Set<String>> entry : this.f20557g.entrySet()) {
                if (cls == entry.getKey().f20560a) {
                    hashSet.addAll(entry.getValue());
                }
            }
            return hashSet;
        }
        C6657a aVar = new C6657a(cls, str);
        return this.f20557g.containsKey(aVar) ? this.f20557g.get(aVar) : Collections.emptySet();
    }

    /* renamed from: a */
    public Set<MoPubReward> m20178a(String str) {
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = this.f20553c.get(str);
        Set<MoPubReward> set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        return set2;
    }

    /* renamed from: a */
    public void m20181a(Class<? extends CustomEventRewardedAd> cls, MoPubReward moPubReward) {
        Preconditions.checkNotNull(cls);
        this.f20556f.put(cls, moPubReward);
    }

    /* renamed from: a */
    public void m20179a(Class<? extends CustomEventRewardedAd> cls, String str, String str2) {
        C6657a aVar = new C6657a(cls, str);
        Iterator<Map.Entry<C6657a, Set<String>>> it = this.f20557g.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<C6657a, Set<String>> next = it.next();
            if (!next.getKey().equals(aVar) && next.getValue().contains(str2)) {
                next.getValue().remove(str2);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        Set<String> set = this.f20557g.get(aVar);
        Set<String> set2 = set;
        if (set == null) {
            set2 = new HashSet<>();
            this.f20557g.put(aVar, set2);
        }
        set2.add(str2);
    }

    /* renamed from: a */
    public void m20177a(String str, MoPubReward moPubReward) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubReward);
        Set<MoPubReward> set = this.f20553c.get(str);
        if (set == null || set.isEmpty()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "AdUnit %s does not have any rewards.", str));
        } else if (!set.contains(moPubReward)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Selected reward is invalid for AdUnit %s.", str));
        } else {
            m20170b(str, moPubReward.getLabel(), Integer.toString(moPubReward.getAmount()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m20176a(String str, CustomEventRewardedAd customEventRewardedAd, String str2) {
        this.f20551a.put(str, customEventRewardedAd);
        m20179a((Class<? extends CustomEventRewardedAd>) customEventRewardedAd.getClass(), str2, str);
    }

    /* renamed from: a */
    public void m20175a(String str, String str2) {
        Preconditions.NoThrow.checkNotNull(str);
        this.f20555e.put(str, str2);
    }

    /* renamed from: a */
    public void m20174a(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency name and amount cannot be null: name = %s, amount = %s", str2, str3));
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt < 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
            } else if (this.f20553c.containsKey(str)) {
                this.f20553c.get(str).add(MoPubReward.success(str2, parseInt));
            } else {
                HashSet hashSet = new HashSet();
                hashSet.add(MoPubReward.success(str2, parseInt));
                this.f20553c.put(str, hashSet);
            }
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
        }
    }

    /* renamed from: b */
    public String m20173b() {
        return this.f20559i;
    }

    /* renamed from: b */
    public String m20172b(String str) {
        return this.f20555e.get(str);
    }

    /* renamed from: b */
    public void m20171b(String str, String str2) {
        Preconditions.checkNotNull(str);
        this.f20554d.put(str, str2);
    }

    /* renamed from: b */
    public void m20170b(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            this.f20552b.remove(str);
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt < 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
            } else {
                this.f20552b.put(str, MoPubReward.success(str2, parseInt));
            }
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
        }
    }

    /* renamed from: c */
    public CustomEventRewardedAd m20169c(String str) {
        return this.f20551a.get(str);
    }

    /* renamed from: d */
    public MoPubReward m20168d(String str) {
        return this.f20552b.get(str);
    }

    /* renamed from: e */
    public String m20167e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f20554d.get(str);
    }

    /* renamed from: f */
    public void m20166f(String str) {
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = this.f20553c.get(str);
        if (set != null && !set.isEmpty()) {
            set.clear();
        }
    }

    /* renamed from: g */
    public void m20165g(String str) {
        Preconditions.checkNotNull(str);
        m20170b(str, null, null);
    }

    /* renamed from: h */
    public void m20164h(String str) {
        this.f20558h = str;
    }

    /* renamed from: i */
    public void m20163i(String str) {
        this.f20559i = str;
    }
}
