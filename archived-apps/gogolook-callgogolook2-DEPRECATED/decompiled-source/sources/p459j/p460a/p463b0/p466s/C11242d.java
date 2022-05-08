package p459j.p460a.p463b0.p466s;

import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import java.lang.Character;
import java.util.HashSet;
import java.util.Set;
/* renamed from: j.a.b0.s.d */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/d.class */
public class C11242d extends C11318w {

    /* renamed from: b */
    public static final Set<Character.UnicodeBlock> f25210b = new HashSet();

    /* renamed from: c */
    public static final char[] f25211c = {12549, 12550, 12551, 12552, 12553, 12554, 12555, 12556, 12557, 12558, 12559, 12560, 12561, 12562, 12563, 12564, 12565, 12566, 12567, 12568, 12569, 12570, 12571, 12572, 12573, 12574, 12575, 12576, 12577, 12578, 12579, 12580, 12581, 12582, 12583, 12584, 12585};

    /* renamed from: d */
    public static final char[] f25212d = {'1', '1', '1', '1', '2', '2', '2', '2', '3', '3', '3', '4', '4', '4', '5', '5', '5', '5', '6', '6', '6', '7', '7', '7', '7', '8', '8', '8', '8', '9', '9', '9', '9', '9', '0', '0', '0'};

    /* renamed from: e */
    public static final int[] f25213e = {R$string.bpmf_map_3105, R$string.bpmf_map_3106, R$string.bpmf_map_3107, R$string.bpmf_map_3108, R$string.bpmf_map_3109, R$string.bpmf_map_310a, R$string.bpmf_map_310b, R$string.bpmf_map_310c, R$string.bpmf_map_310d, R$string.bpmf_map_310e, R$string.bpmf_map_310f, R$string.bpmf_map_3110, R$string.bpmf_map_3111, R$string.bpmf_map_3112, R$string.bpmf_map_3113_, R$string.bpmf_map_3114, R$string.bpmf_map_3115, R$string.bpmf_map_3116, R$string.bpmf_map_3117, R$string.bpmf_map_3118, R$string.bpmf_map_3119, R$string.bpmf_map_311a, R$string.bpmf_map_311b, R$string.bpmf_map_311c, R$string.bpmf_map_311d, R$string.bpmf_map_311e, R$string.bpmf_map_311f, R$string.bpmf_map_3120, R$string.bpmf_map_3121, R$string.bpmf_map_3122, R$string.bpmf_map_3123, R$string.bpmf_map_3124, R$string.bpmf_map_3125, R$string.bpmf_map_3126, R$string.bpmf_map_3127, R$string.bpmf_map_3128, R$string.bpmf_map_3129};

    /* renamed from: f */
    public static final String[] f25214f = new String[f25213e.length];

    static {
        f25210b.add(Character.UnicodeBlock.CJK_COMPATIBILITY);
        f25210b.add(Character.UnicodeBlock.CJK_COMPATIBILITY_FORMS);
        f25210b.add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS);
        f25210b.add(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT);
        f25210b.add(Character.UnicodeBlock.CJK_RADICALS_SUPPLEMENT);
        f25210b.add(Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION);
        f25210b.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS);
        f25210b.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A);
        f25210b.add(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B);
        f25210b.add(Character.UnicodeBlock.KANGXI_RADICALS);
        f25210b.add(Character.UnicodeBlock.IDEOGRAPHIC_DESCRIPTION_CHARACTERS);
    }

    /* renamed from: h */
    public static final boolean m9963h(char c) {
        return f25210b.contains(Character.UnicodeBlock.of(c));
    }

    @Override // p459j.p460a.p463b0.p466s.C11318w, p459j.p460a.p463b0.p466s.AbstractC11316u
    /* renamed from: a */
    public char mo9795a(char c) {
        char a = super.mo9795a(c);
        if (super.m9790f(a)) {
            return a;
        }
        if (m9963h(c)) {
            int i = 0;
            while (true) {
                String[] strArr = f25214f;
                if (i >= strArr.length) {
                    break;
                }
                if (TextUtils.isEmpty(strArr[i])) {
                    f25214f[i] = MyApplication.m29013o().getResources().getString(f25213e[i]);
                }
                if (f25214f[i].indexOf(c) >= 0) {
                    return f25211c[i];
                }
                i++;
            }
        }
        return c;
    }

    @Override // p459j.p460a.p463b0.p466s.C11318w, p459j.p460a.p463b0.p466s.AbstractC11316u
    /* renamed from: b */
    public byte mo9794b(char c) {
        byte b = super.mo9794b(c);
        if (b != -1) {
            return b;
        }
        if (c < 12549 || c > 12585) {
            return (byte) -1;
        }
        return (byte) (f25212d[c - 12549] - '0');
    }

    @Override // p459j.p460a.p463b0.p466s.C11318w, p459j.p460a.p463b0.p466s.AbstractC11316u
    /* renamed from: d */
    public boolean mo9792d(char c) {
        return super.mo9792d(c) || mo9789g(c);
    }

    @Override // p459j.p460a.p463b0.p466s.C11318w
    /* renamed from: g */
    public final boolean mo9789g(char c) {
        return c >= 12549 && c <= 12585;
    }
}
