package p081h.p203i.p402h.p405k;

import androidx.media2.exoplayer.external.C0463C;
import java.util.HashMap;
import java.util.Map;
/* renamed from: h.i.h.k.c */
/* loaded from: classes2-dex2jar.jar:h/i/h/k/c.class */
public enum EnumC10550c {
    Cp437(new int[]{0, 2}, new String[0]),
    ISO8859_1(new int[]{1, 3}, "ISO-8859-1"),
    ISO8859_2(4, "ISO-8859-2"),
    ISO8859_3(5, "ISO-8859-3"),
    ISO8859_4(6, "ISO-8859-4"),
    ISO8859_5(7, "ISO-8859-5"),
    ISO8859_6(8, "ISO-8859-6"),
    ISO8859_7(9, "ISO-8859-7"),
    ISO8859_8(10, "ISO-8859-8"),
    ISO8859_9(11, "ISO-8859-9"),
    ISO8859_10(12, "ISO-8859-10"),
    ISO8859_11(13, "ISO-8859-11"),
    ISO8859_13(15, "ISO-8859-13"),
    ISO8859_14(16, "ISO-8859-14"),
    ISO8859_15(17, "ISO-8859-15"),
    ISO8859_16(18, "ISO-8859-16"),
    SJIS(20, "Shift_JIS"),
    Cp1250(21, "windows-1250"),
    Cp1251(22, "windows-1251"),
    Cp1252(23, "windows-1252"),
    Cp1256(24, "windows-1256"),
    UnicodeBigUnmarked(25, "UTF-16BE", "UnicodeBig"),
    UTF8(26, "UTF-8"),
    ASCII(new int[]{27, 170}, C0463C.ASCII_NAME),
    Big5(28),
    GB18030(29, "GB2312", "EUC_CN", "GBK"),
    EUC_KR(30, "EUC-KR");
    

    /* renamed from: D */
    public static final Map<Integer, EnumC10550c> f23987D = new HashMap();

    /* renamed from: E */
    public static final Map<String, EnumC10550c> f23988E = new HashMap();

    /* renamed from: a */
    public final int[] f24014a;

    /* renamed from: b */
    public final String[] f24015b;

    static {
        EnumC10550c[] values;
        for (EnumC10550c cVar : values()) {
            for (int i : cVar.f24014a) {
                f23987D.put(Integer.valueOf(i), cVar);
            }
            f23988E.put(cVar.name(), cVar);
            for (String str : cVar.f24015b) {
                f23988E.put(str, cVar);
            }
        }
    }

    EnumC10550c(int i) {
        this(new int[]{i}, new String[0]);
    }

    EnumC10550c(int i, String... strArr) {
        this.f24014a = new int[]{i};
        this.f24015b = strArr;
    }

    EnumC10550c(int[] iArr, String... strArr) {
        this.f24014a = iArr;
        this.f24015b = strArr;
    }

    /* renamed from: a */
    public static EnumC10550c m11439a(String str) {
        return f23988E.get(str);
    }

    /* renamed from: a */
    public int m11440a() {
        return this.f24014a[0];
    }
}
