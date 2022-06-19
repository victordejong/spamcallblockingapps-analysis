package p193e.p194a.p619d.p643d.p644a.p645a.p649d;

import android.widget.TextView;
import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.a.d.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/d/b.class */
public final class C11656b extends AbstractC11655a {

    /* renamed from: b */
    public boolean f34210b;

    /* renamed from: c */
    public boolean f34211c = true;

    /* renamed from: d */
    public final String f34212d;

    @Inject
    public C11656b(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        String mo13768b = abstractC19223c0.mo13768b(C2752R.string.voip_contacts_adapter_header_frequently, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…dapter_header_frequently)");
        this.f34212d = mo13768b;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11655a
    /* renamed from: A */
    public void mo24313A(boolean z) {
        this.f34210b = z;
    }

    @Override // p193e.p194a.p619d.p643d.p644a.p645a.p649d.AbstractC11655a
    /* renamed from: B0 */
    public void mo24312B0() {
        this.f34211c = true;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        C11657c c11657c = (C11657c) obj;
        l.e(c11657c, "itemView");
        String str = this.f34212d;
        l.e(str, "text");
        TextView textView = (TextView) c11657c.f34214b.getValue();
        l.d(textView, "header");
        textView.setText(str);
        if (this.f34211c) {
            c11657c.f34216d.notifyDataSetChanged();
            this.f34211c = false;
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f34210b ? 1 : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return 1L;
    }
}
