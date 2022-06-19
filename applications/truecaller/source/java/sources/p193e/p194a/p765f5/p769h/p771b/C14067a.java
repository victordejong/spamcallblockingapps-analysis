package p193e.p194a.p765f5.p769h.p771b;

import android.view.View;
import android.widget.TextView;
import com.truecaller.swish.C4591R;
import s1.z.c.l;
/* renamed from: e.a.f5.h.b.a */
/* loaded from: classes14-dex2jar.jar:e/a/f5/h/b/a.class */
public final class C14067a {

    /* renamed from: a */
    public final TextView f40672a;

    /* renamed from: b */
    public final TextView f40673b;

    public C14067a(View view) {
        l.e(view, "itemView");
        View findViewById = view.findViewById(C4591R.C4593id.title);
        l.d(findViewById, "itemView.findViewById(R.id.title)");
        this.f40672a = (TextView) findViewById;
        View findViewById2 = view.findViewById(C4591R.C4593id.description);
        l.d(findViewById2, "itemView.findViewById(R.id.description)");
        this.f40673b = (TextView) findViewById2;
    }
}
