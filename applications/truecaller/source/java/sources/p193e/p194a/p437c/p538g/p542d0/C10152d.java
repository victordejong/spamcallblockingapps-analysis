package p193e.p194a.p437c.p538g.p542d0;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p194a.p437c.p538g.p542d0.AbstractC10153e;
import s1.f0.w;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\b��\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J+\u0010\u0006\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028��H\u0002¢\u0006\u0002\u0010\u000bJ\u001b\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028��¢\u0006\u0002\u0010\fJ&\u0010\r\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u000e2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\b\u001a\u00020\tH\u0002J\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u000e2\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/truecaller/insights/categorizer/seed/MetaTrie;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "()V", "root", "Lcom/truecaller/insights/categorizer/seed/TrieNode;", "add", "", "input", "", "probability", "(Lcom/truecaller/insights/categorizer/seed/TrieNode;Ljava/lang/String;Ljava/lang/Object;)V", "(Ljava/lang/String;Ljava/lang/Object;)V", "get", "Lcom/truecaller/insights/categorizer/seed/TrieNode$EndNode;", "insights-categorizer"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.d0.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/d0/d.class */
public final class C10152d<T> {

    /* renamed from: a */
    public final AbstractC10153e<T> f30137a = new AbstractC10153e.C10155b(new LinkedHashMap());

    /* renamed from: a */
    public final void m26655a(AbstractC10153e<T> abstractC10153e, String str, T t) {
        if (str.length() == 0) {
            return;
        }
        Map<Character, AbstractC10153e<T>> map = abstractC10153e.f30138a;
        AbstractC10153e<T> abstractC10153e2 = map.get(Character.valueOf(w.k0(str)));
        if (abstractC10153e2 != null) {
            if (str.length() == 1) {
                map.put(Character.valueOf(w.k0(str)), new AbstractC10153e.C10154a(abstractC10153e2.f30138a, t));
                return;
            }
            String substring = str.substring(1, str.length());
            l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            m26655a(abstractC10153e2, substring, t);
        } else if (str.length() <= 1) {
            map.put(Character.valueOf(w.k0(str)), new AbstractC10153e.C10154a(new LinkedHashMap(), t));
        } else {
            map.put(Character.valueOf(w.k0(str)), new AbstractC10153e.C10155b(new LinkedHashMap()));
            AbstractC10153e<T> abstractC10153e3 = map.get(Character.valueOf(w.k0(str)));
            l.c(abstractC10153e3);
            AbstractC10153e<T> abstractC10153e4 = abstractC10153e3;
            String substring2 = str.substring(1, str.length());
            l.d(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            m26655a(abstractC10153e4, substring2, t);
        }
    }

    /* renamed from: b */
    public final void m26654b(String str, T t) {
        l.e(str, "input");
        m26655a(this.f30137a, str, t);
    }

    /* renamed from: c */
    public final AbstractC10153e.C10154a<T> m26653c(AbstractC10153e<T> abstractC10153e, String str) {
        AbstractC10153e.C10154a<T> c10154a;
        AbstractC10153e<T> abstractC10153e2 = abstractC10153e.f30138a.get(Character.valueOf(w.k0(str)));
        if (abstractC10153e2 != null) {
            if (str.length() != 1) {
                String substring = str.substring(1, str.length());
                l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                c10154a = m26653c(abstractC10153e2, substring);
            } else if (abstractC10153e2 instanceof AbstractC10153e.C10154a) {
                c10154a = (AbstractC10153e.C10154a) abstractC10153e2;
            }
            return c10154a;
        }
        c10154a = null;
        return c10154a;
    }

    /* renamed from: d */
    public final AbstractC10153e.C10154a<T> m26652d(String str) {
        l.e(str, "input");
        return m26653c(this.f30137a, str);
    }
}
