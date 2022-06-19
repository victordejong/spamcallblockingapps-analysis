package com.hiya.stingray.util;
/* renamed from: com.hiya.stingray.util.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i.class */
public class C1823i {

    /* renamed from: com.hiya.stingray.util.i$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i$a.class */
    public enum EnumC1824a {
        INCOMING,
        OUTGOING,
        UNKNOWN
    }

    /* renamed from: com.hiya.stingray.util.i$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i$b.class */
    public enum EnumC1825b {
        MISSED,
        UNRECOGNIZED,
        REJECTED
    }

    /* renamed from: a */
    public static EnumC1824a m886a(int i) {
        return i == 2 ? EnumC1824a.OUTGOING : EnumC1824a.INCOMING;
    }

    /* renamed from: b */
    public static EnumC1825b m885b(int i) {
        return i == 3 ? EnumC1825b.MISSED : i == 5 ? EnumC1825b.REJECTED : EnumC1825b.UNRECOGNIZED;
    }
}
