package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest;
import java.util.Date;
import java.util.Set;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/MediationAdRequest.class */
public class MediationAdRequest {

    /* renamed from: a */
    private final Date f5795a;

    /* renamed from: b */
    private final AdRequest.Gender f5796b;

    /* renamed from: c */
    private final Set<String> f5797c;

    /* renamed from: d */
    private final boolean f5798d;

    /* renamed from: e */
    private final Location f5799e;

    public MediationAdRequest(Date date, AdRequest.Gender gender, Set<String> set, boolean z, Location location) {
        this.f5795a = date;
        this.f5796b = gender;
        this.f5797c = set;
        this.f5798d = z;
        this.f5799e = location;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
        if (r0.get(5) < r0.get(5)) goto L_0x0053;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Integer getAgeInYears() {
        /*
            r4 = this;
            r0 = r4
            java.util.Date r0 = r0.f5795a
            if (r0 == 0) goto L_0x0061
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            r5 = r0
            java.util.Calendar r0 = java.util.Calendar.getInstance()
            r6 = r0
            r0 = r5
            r1 = r4
            java.util.Date r1 = r1.f5795a
            r0.setTime(r1)
            r0 = r6
            r1 = 1
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 1
            int r1 = r1.get(r2)
            int r0 = r0 - r1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r7 = r0
            r0 = r6
            r1 = 2
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 2
            int r1 = r1.get(r2)
            if (r0 < r1) goto L_0x0053
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 2
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 2
            int r1 = r1.get(r2)
            if (r0 != r1) goto L_0x005e
            r0 = r7
            r8 = r0
            r0 = r6
            r1 = 5
            int r0 = r0.get(r1)
            r1 = r5
            r2 = 5
            int r1 = r1.get(r2)
            if (r0 >= r1) goto L_0x005e
        L_0x0053:
            r0 = r7
            int r0 = r0.intValue()
            r1 = 1
            int r0 = r0 - r1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r8 = r0
        L_0x005e:
            r0 = r8
            return r0
        L_0x0061:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.mediation.MediationAdRequest.getAgeInYears():java.lang.Integer");
    }

    public Date getBirthday() {
        return this.f5795a;
    }

    public AdRequest.Gender getGender() {
        return this.f5796b;
    }

    public Set<String> getKeywords() {
        return this.f5797c;
    }

    public Location getLocation() {
        return this.f5799e;
    }

    public boolean isTesting() {
        return this.f5798d;
    }
}
