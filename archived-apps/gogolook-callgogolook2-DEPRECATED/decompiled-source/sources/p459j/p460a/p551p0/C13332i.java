package p459j.p460a.p551p0;

import android.text.TextUtils;
import android.util.Pair;
/* renamed from: j.a.p0.i */
/* loaded from: classes3-dex2jar.jar:j/a/p0/i.class */
public class C13332i {

    /* renamed from: a */
    public Pair<String, Integer> f30014a;

    public C13332i(String str, Integer num) {
        this.f30014a = new Pair<>(str, num);
    }

    /* renamed from: a */
    public String m4206a() {
        String str = (String) this.f30014a.first;
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        return str;
    }

    /* renamed from: b */
    public Integer m4205b() {
        return (Integer) this.f30014a.second;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C13332i.class != obj.getClass()) {
            return false;
        }
        C13332i iVar = (C13332i) obj;
        return !TextUtils.isEmpty((CharSequence) this.f30014a.first) ? ((String) this.f30014a.first).equals(iVar.f30014a.first) : TextUtils.isEmpty((CharSequence) iVar.f30014a.first);
    }

    public int hashCode() {
        return !TextUtils.isEmpty((CharSequence) this.f30014a.first) ? ((String) this.f30014a.first).hashCode() : 0;
    }
}
