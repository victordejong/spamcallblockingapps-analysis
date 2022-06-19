package p193e.p194a.p804h.p806b;

import android.view.View;
import android.widget.TextView;
import com.truecaller.C2752R;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.b.a$d */
/* loaded from: classes6-dex2jar.jar:e/a/h/b/a$d.class */
public final class a$d extends m implements a<TextView> {

    /* renamed from: b */
    public final /* synthetic */ int f41857b;

    /* renamed from: c */
    public final /* synthetic */ Object f41858c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a$d(int i, Object obj) {
        super(0);
        this.f41857b = i;
        this.f41858c = obj;
    }

    public final Object invoke() {
        int i = this.f41857b;
        if (i == 0) {
            View findViewById = a.b((a) this.f41858c).findViewById(C2752R.C2754id.call_list_empty_text);
            l.d(findViewById, "view.findViewById(R.id.call_list_empty_text)");
            return (TextView) findViewById;
        } else if (i != 1) {
            throw null;
        } else {
            View findViewById2 = a.b((a) this.f41858c).findViewById(C2752R.C2754id.call_list_empty_title);
            l.d(findViewById2, "view.findViewById(R.id.call_list_empty_title)");
            return (TextView) findViewById2;
        }
    }
}
