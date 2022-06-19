package p193e.p194a.p852i.p867c0.p868o;

import android.view.View;
import android.widget.AdapterView;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import s1.z.c.l;
/* renamed from: e.a.i.c0.o.b */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/o/b.class */
public final class C15065b implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final String f43008a;

    /* renamed from: b */
    public final AbstractC15068e f43009b;

    /* renamed from: c */
    public final List<String> f43010c;

    public C15065b(String str, AbstractC15068e abstractC15068e, List<String> list) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(abstractC15068e, "callback");
        l.e(list, "options");
        this.f43008a = str;
        this.f43009b = abstractC15068e;
        this.f43010c = list;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == 0) {
            this.f43009b.m19184S(this.f43008a, "");
        } else {
            this.f43009b.m19184S(this.f43008a, this.f43010c.get(i));
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
        this.f43009b.m19184S(this.f43008a, "");
    }
}
