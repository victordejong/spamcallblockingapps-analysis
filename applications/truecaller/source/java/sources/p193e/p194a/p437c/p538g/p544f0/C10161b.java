package p193e.p194a.p437c.p538g.p544f0;

import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.d0.i;
import s1.d0.j;
import s1.f0.h;
import s1.f0.v;
import s1.u.s;
import s1.u.z;
import s1.z.c.l;
@Metadata(d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n��\n\u0002\u0010\b\n\u0002\b\u0003\u001a\f\u0010\u0004\u001a\u00020\u0005*\u00020\u0005H��\u001a\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007*\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH��\u001a\f\u0010\u000b\u001a\u00020\u0005*\u00020\u0005H��\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"REGEX_PUNCTUATIONS", "Lkotlin/text/Regex;", "REGEX_SPECIAL_CHARS_AND_DIGITS", "REGEX_TAGS", "cleanUpMessage", "", "generateKeywords", "", "minWordSize", "", "maxLen", "removePunctuation", "insights-categorizer"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.a.c.g.f0.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/f0/b.class */
public final class C10161b {

    /* renamed from: a */
    public static final h f30148a = new h("[,#<>\"!=&.@|\\[\\]':)(-;?]");

    static {
        new h("(\\d|\\W)+");
        new h("&lt;/?.*?&gt;");
    }

    /* renamed from: a */
    public static final List<String> m26649a(String str, int i, int i2) {
        l.e(str, "<this>");
        List U = v.U(str, new String[]{StringConstant.SPACE}, false, 0, 6);
        ArrayList arrayList = new ArrayList();
        Iterator it = U.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            String str2 = (String) next;
            Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.CharSequence");
            if (v.g0(str2).toString().length() <= i) {
                z = false;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        LinkedHashSet<List> linkedHashSet = new LinkedHashSet();
        z it2 = new i(1, i2).iterator();
        while (it2.hasNext()) {
            int a = it2.a();
            z it3 = j.j(0, (arrayList.size() - a) + 1).iterator();
            while (it3.hasNext()) {
                int a2 = it3.a();
                i iVar = new i(a2, (a2 + a) - 1);
                l.e(arrayList, "$this$slice");
                l.e(iVar, "indices");
                linkedHashSet.add(iVar.isEmpty() ? s.a : s1.u.i.S0(arrayList.subList(iVar.h().intValue(), iVar.g().intValue() + 1)));
            }
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(linkedHashSet, 10));
        for (List list : linkedHashSet) {
            arrayList2.add(s1.u.i.O(list, StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
        }
        return arrayList2;
    }
}
