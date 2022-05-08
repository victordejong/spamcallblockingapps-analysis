package p081h.p203i.p204a.p224e.p235d.p249s;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.HashMap;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.a.e.d.s.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/n.class */
public class C7082n {
    /* renamed from: a */
    public static void m21132a(StringBuilder sb, HashMap<String, String> hashMap) {
        sb.append(CssParser.BLOCK_START);
        boolean z = true;
        for (String str : hashMap.keySet()) {
            if (!z) {
                sb.append(",");
            } else {
                z = false;
            }
            String str2 = hashMap.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append(C14247d.f31851f);
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
        }
        sb.append(CssParser.BLOCK_END);
    }
}
