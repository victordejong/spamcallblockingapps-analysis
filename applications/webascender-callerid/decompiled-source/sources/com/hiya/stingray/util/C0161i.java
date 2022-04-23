package com.hiya.stingray.util;
/* renamed from: com.hiya.stingray.util.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i.class */
public class C0161i {

    /* renamed from: com.hiya.stingray.util.i$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i$a.class */
    public enum EnumC0162a {
        INCOMING,
        OUTGOING,
        UNKNOWN
    }

    /* renamed from: com.hiya.stingray.util.i$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i$b.class */
    public enum EnumC0163b {
        MISSED,
        UNRECOGNIZED,
        REJECTED
    }

    /* renamed from: a */
    public static EnumC0162a m886a(int i) {
        return i == 2 ? EnumC0162a.OUTGOING : EnumC0162a.INCOMING;
    }

    /* renamed from: b */
    public static EnumC0163b m885b(int i) {
        return i == 3 ? EnumC0163b.MISSED : i == 5 ? EnumC0163b.REJECTED : EnumC0163b.UNRECOGNIZED;
    }
}
