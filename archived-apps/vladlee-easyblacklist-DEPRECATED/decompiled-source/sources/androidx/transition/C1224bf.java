package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.transition.bf */
/* loaded from: classes-dex2jar.jar:androidx/transition/bf.class */
public final class C1224bf {

    /* renamed from: b */
    public View f5246b;

    /* renamed from: a */
    public final Map<String, Object> f5245a = new HashMap();

    /* renamed from: c */
    final ArrayList<Transition> f5247c = new ArrayList<>();

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1224bf)) {
            return false;
        }
        C1224bf bfVar = (C1224bf) obj;
        return this.f5246b == bfVar.f5246b && this.f5245a.equals(bfVar.f5245a);
    }

    public final int hashCode() {
        return (this.f5246b.hashCode() * 31) + this.f5245a.hashCode();
    }

    public final String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f5246b + "\n") + "    values:";
        for (String str2 : this.f5245a.keySet()) {
            str = str + "    " + str2 + ": " + this.f5245a.get(str2) + "\n";
        }
        return str;
    }
}
