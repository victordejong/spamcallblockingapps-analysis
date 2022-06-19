package com.appsflyer.internal;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.appsflyer.internal.g */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g.class */
public final class C0671g {

    /* renamed from: com.appsflyer.internal.g$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$b.class */
    enum EnumC0672b {
        NONE,
        FIRST,
        ALL
    }

    /* renamed from: com.appsflyer.internal.g$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$c.class */
    enum EnumC0673c {
        UNKNOWN("uk"),
        ACCELEROMETER("am"),
        MAGNETOMETER("mm"),
        RESERVED("rs"),
        GYROSCOPE("gs");
        

        /* renamed from: ι */
        String f3050;

        EnumC0673c(String str) {
            this.f3050 = str;
        }
    }

    /* renamed from: com.appsflyer.internal.g$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/g$e.class */
    enum EnumC0674e {
        UNKNOWN,
        ACCELEROMETER,
        MAGNETOMETER,
        RESERVED,
        GYROSCOPE
    }

    C0671g() {
    }

    /* renamed from: ɩ */
    private static List<BigDecimal> m4037(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        Float f = (Float) arrayList.get(0);
        Float f2 = (Float) arrayList.get(1);
        Float f3 = (Float) arrayList.get(2);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(BigDecimal.valueOf(Double.parseDouble(f.toString())));
        arrayList2.add(BigDecimal.valueOf(Double.parseDouble(f2.toString())));
        arrayList2.add(BigDecimal.valueOf(Double.parseDouble(f3.toString())));
        return arrayList2;
    }

    /* renamed from: ι */
    public static Map m4036(List<Map<String, Object>> list) {
        HashMap hashMap;
        ArrayList arrayList;
        HashMap hashMap2 = new HashMap();
        Iterator<Map<String, Object>> it = list.iterator();
        while (true) {
            hashMap = hashMap2;
            if (!it.hasNext()) {
                break;
            }
            Map<String, Object> next = it.next();
            HashMap hashMap3 = new HashMap();
            boolean z = next.get("sVS") != null;
            EnumC0672b enumC0672b = (!z || !(next.get("sVE") != null)) ? z ? EnumC0672b.FIRST : EnumC0672b.NONE : EnumC0672b.ALL;
            if (enumC0672b == EnumC0672b.NONE) {
                hashMap = new HashMap();
                hashMap.put("er", "na");
                break;
            }
            Integer num = (Integer) next.get("sT");
            String str = (String) next.get("sN");
            if (str != null) {
                hashMap3.put("n", str);
            } else {
                hashMap3.put("n", "uk");
            }
            EnumC0674e enumC0674e = EnumC0674e.values()[num.intValue()];
            ArrayList arrayList2 = new ArrayList(m4037(next.get("sVS")));
            if (enumC0672b == EnumC0672b.ALL) {
                arrayList2.addAll(m4037(next.get("sVE")));
            }
            if (enumC0674e == EnumC0674e.MAGNETOMETER) {
                ArrayList arrayList3 = new ArrayList();
                BigDecimal valueOf = BigDecimal.valueOf(Math.atan2(((BigDecimal) arrayList2.get(1)).doubleValue(), ((BigDecimal) arrayList2.get(0)).doubleValue()) * 57.29577951308232d);
                DecimalFormat decimalFormat = new DecimalFormat("##.#");
                decimalFormat.setRoundingMode(RoundingMode.DOWN);
                arrayList3.add(Double.valueOf(Double.parseDouble(decimalFormat.format(valueOf))));
                BigDecimal bigDecimal = (BigDecimal) arrayList2.get(2);
                DecimalFormat decimalFormat2 = new DecimalFormat("##.#");
                decimalFormat2.setRoundingMode(RoundingMode.DOWN);
                arrayList3.add(Double.valueOf(Double.parseDouble(decimalFormat2.format(bigDecimal))));
                ArrayList arrayList4 = new ArrayList();
                if (arrayList2.size() > 5) {
                    BigDecimal subtract = BigDecimal.valueOf(Math.atan2(((BigDecimal) arrayList2.get(4)).doubleValue(), ((BigDecimal) arrayList2.get(3)).doubleValue()) * 57.29577951308232d).subtract(valueOf);
                    DecimalFormat decimalFormat3 = new DecimalFormat("##.#");
                    decimalFormat3.setRoundingMode(RoundingMode.DOWN);
                    arrayList4.add(Double.valueOf(Double.parseDouble(decimalFormat3.format(subtract))));
                    BigDecimal subtract2 = ((BigDecimal) arrayList2.get(5)).subtract((BigDecimal) arrayList2.get(2));
                    DecimalFormat decimalFormat4 = new DecimalFormat("##.#");
                    decimalFormat4.setRoundingMode(RoundingMode.DOWN);
                    arrayList4.add(Double.valueOf(Double.parseDouble(decimalFormat4.format(subtract2))));
                }
                arrayList = new ArrayList();
                arrayList.add(arrayList3);
                arrayList.add(arrayList4);
            } else {
                ArrayList arrayList5 = new ArrayList();
                if (arrayList2.size() > 5) {
                    BigDecimal subtract3 = ((BigDecimal) arrayList2.get(3)).subtract((BigDecimal) arrayList2.get(0));
                    DecimalFormat decimalFormat5 = new DecimalFormat("##.#");
                    decimalFormat5.setRoundingMode(RoundingMode.DOWN);
                    arrayList5.add(Double.valueOf(Double.parseDouble(decimalFormat5.format(subtract3))));
                    BigDecimal subtract4 = ((BigDecimal) arrayList2.get(4)).subtract((BigDecimal) arrayList2.get(1));
                    DecimalFormat decimalFormat6 = new DecimalFormat("##.#");
                    decimalFormat6.setRoundingMode(RoundingMode.DOWN);
                    arrayList5.add(Double.valueOf(Double.parseDouble(decimalFormat6.format(subtract4))));
                    BigDecimal subtract5 = ((BigDecimal) arrayList2.get(5)).subtract((BigDecimal) arrayList2.get(2));
                    DecimalFormat decimalFormat7 = new DecimalFormat("##.#");
                    decimalFormat7.setRoundingMode(RoundingMode.DOWN);
                    arrayList5.add(Double.valueOf(Double.parseDouble(decimalFormat7.format(subtract5))));
                }
                ArrayList arrayList6 = new ArrayList();
                BigDecimal bigDecimal2 = (BigDecimal) arrayList2.get(0);
                DecimalFormat decimalFormat8 = new DecimalFormat("##.#");
                decimalFormat8.setRoundingMode(RoundingMode.DOWN);
                arrayList6.add(Double.valueOf(Double.parseDouble(decimalFormat8.format(bigDecimal2))));
                BigDecimal bigDecimal3 = (BigDecimal) arrayList2.get(1);
                DecimalFormat decimalFormat9 = new DecimalFormat("##.#");
                decimalFormat9.setRoundingMode(RoundingMode.DOWN);
                arrayList6.add(Double.valueOf(Double.parseDouble(decimalFormat9.format(bigDecimal3))));
                BigDecimal bigDecimal4 = (BigDecimal) arrayList2.get(2);
                DecimalFormat decimalFormat10 = new DecimalFormat("##.#");
                decimalFormat10.setRoundingMode(RoundingMode.DOWN);
                arrayList6.add(Double.valueOf(Double.parseDouble(decimalFormat10.format(bigDecimal4))));
                arrayList = new ArrayList();
                arrayList.add(arrayList6);
                arrayList.add(arrayList5);
            }
            hashMap3.put("v", arrayList);
            hashMap2.put(EnumC0673c.values()[num.intValue()].f3050, hashMap3);
            if (enumC0672b == EnumC0672b.FIRST) {
                hashMap2.put("er", "no_svs");
            }
        }
        return hashMap;
    }
}
