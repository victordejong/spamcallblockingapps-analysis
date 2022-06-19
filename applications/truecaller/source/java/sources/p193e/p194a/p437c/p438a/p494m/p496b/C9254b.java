package p193e.p194a.p437c.p438a.p494m.p496b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.models.pdo.SmsBackupMessage;
import com.truecaller.insights.p168ui.C4078R;
import n3.z.w1;
import p193e.p194a.p437c.p438a.p477g.C9076u1;
import s1.z.c.l;
/* renamed from: e.a.c.a.m.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/b.class */
public final class C9254b extends w1<SmsBackupMessage, C9260d> {
    public C9254b() {
        super(new C9252a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0048, code lost:
        if (r5 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0027, code lost:
        if (r5 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 r5, int r6) {
        /*
            r4 = this;
            r0 = r5
            e.a.c.a.m.b.d r0 = (p193e.p194a.p437c.p438a.p494m.p496b.C9260d) r0
            r7 = r0
            r0 = r7
            java.lang.String r1 = "holder"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            r1 = r6
            java.lang.Object r0 = r0.getItem(r1)
            com.truecaller.insights.models.pdo.SmsBackupMessage r0 = (com.truecaller.insights.models.pdo.SmsBackupMessage) r0
            r8 = r0
            r0 = r7
            android.widget.TextView r0 = r0.f28186a
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L2d
            r0 = r8
            java.lang.String r0 = r0.getAddress()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2d
            goto L30
        L2d:
            java.lang.String r0 = "No Addresss"
            r5 = r0
        L30:
            r0 = r9
            r1 = r5
            r0.setText(r1)
            r0 = r7
            android.widget.TextView r0 = r0.f28187b
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L4e
            r0 = r8
            java.lang.String r0 = r0.getMessage()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L4e
            goto L51
        L4e:
            java.lang.String r0 = "Empty Message"
            r5 = r0
        L51:
            r0 = r9
            r1 = r5
            r0.setText(r1)
            r0 = r7
            android.widget.TextView r0 = r0.f28188c
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L6a
            r0 = r8
            java.util.Date r0 = r0.getDate()
            r5 = r0
            goto L6c
        L6a:
            r0 = 0
            r5 = r0
        L6c:
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            r1 = r0
            java.lang.String r2 = "dd MMM YY"
            r1.<init>(r2)
            r1 = r5
            java.lang.String r0 = r0.format(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L81
            goto L84
        L81:
            java.lang.String r0 = "Empty Date"
            r5 = r0
        L84:
            r0 = r7
            r1 = r5
            r0.setText(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p494m.p496b.C9254b.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4078R.layout.qa_fts_search_result, viewGroup, false);
        int i2 = C4078R.C4080id.address;
        TextView textView = (TextView) inflate.findViewById(i2);
        if (textView != null) {
            i2 = C4078R.C4080id.body;
            TextView textView2 = (TextView) inflate.findViewById(i2);
            if (textView2 != null) {
                i2 = C4078R.C4080id.date;
                TextView textView3 = (TextView) inflate.findViewById(i2);
                if (textView3 != null) {
                    C9076u1 c9076u1 = new C9076u1((ConstraintLayout) inflate, textView, textView2, textView3);
                    l.d(c9076u1, "QaFtsSearchResultBinding….context), parent, false)");
                    return new C9260d(c9076u1);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
