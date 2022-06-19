package p193e.p194a.p947k.p968b;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.truecaller.videocallerid.C4718R;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.p972m.C16138l;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.k.b.m */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/m.class */
public final class C15939m extends RecyclerView.AbstractC0317g<C15940a> {

    /* renamed from: a */
    public final List<C15941n> f44939a;

    /* renamed from: b */
    public final l<C15941n, s> f44940b;

    /* renamed from: c */
    public final l<C15941n, s> f44941c;

    /* renamed from: e.a.k.b.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/m$a.class */
    public final class C15940a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final C16138l f44942a;

        /* renamed from: b */
        public final /* synthetic */ C15939m f44943b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15940a(C15939m c15939m, C16138l c16138l) {
            super(c16138l.f45515a);
            s1.z.c.l.e(c16138l, "binding");
            this.f44943b = c15939m;
            this.f44942a = c16138l;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C15939m(List<C15941n> list, l<? super C15941n, s> lVar, l<? super C15941n, s> lVar2) {
        s1.z.c.l.e(list, "items");
        s1.z.c.l.e(lVar, "openUrlClickListener");
        s1.z.c.l.e(lVar2, "deleteClickListener");
        this.f44939a = list;
        this.f44940b = lVar;
        this.f44941c = lVar2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f44939a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C15940a c15940a, int i) {
        C15940a c15940a2 = c15940a;
        s1.z.c.l.e(c15940a2, "holder");
        C15941n c15941n = this.f44939a.get(i);
        s1.z.c.l.e(c15941n, "item");
        C16138l c16138l = c15940a2.f44942a;
        String m8562v = C22128a.m8562v(new Object[]{Float.valueOf((((float) c15941n.f44945b.f45069c) / 1024.0f) / 1024.0f)}, 1, "%.2f MB", "java.lang.String.format(format, *args)");
        TextView textView = c16138l.f45518d;
        StringBuilder m8732B = C22128a.m8732B(textView, "numberTextView", "Number: ");
        String str = c15941n.f44944a;
        if (str == null) {
            str = "Unknown";
        }
        m8732B.append(str);
        textView.setText(m8732B.toString());
        TextView textView2 = c16138l.f45521g;
        s1.z.c.l.d(textView2, "sizeTextView");
        textView2.setText("Full Size: " + m8562v);
        TextView textView3 = c16138l.f45520f;
        StringBuilder m8732B2 = C22128a.m8732B(textView3, "percentageTextView", "Downloaded: ");
        m8732B2.append(c15941n.f44945b.m18039a());
        m8732B2.append('%');
        textView3.setText(m8732B2.toString());
        MaterialButton materialButton = c16138l.f45519e;
        s1.z.c.l.d(materialButton, "openUrlButton");
        materialButton.setText(c15941n.f44946c ? "Open File" : "Open Url");
        c16138l.f45519e.setOnClickListener(new v0(0, c15940a2, c15941n));
        c16138l.f45516b.setOnClickListener(new v0(1, c15940a2, c15941n));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C15940a onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C4718R.layout.item_video_caller_id_debug_cached_video, viewGroup, false);
        int i2 = C4718R.C4720id.deleteButton;
        MaterialButton findViewById = inflate.findViewById(i2);
        if (findViewById != null) {
            i2 = C4718R.C4720id.divider;
            View findViewById2 = inflate.findViewById(i2);
            if (findViewById2 != null) {
                i2 = C4718R.C4720id.numberTextView;
                TextView textView = (TextView) inflate.findViewById(i2);
                if (textView != null) {
                    i2 = C4718R.C4720id.openUrlButton;
                    MaterialButton findViewById3 = inflate.findViewById(i2);
                    if (findViewById3 != null) {
                        i2 = C4718R.C4720id.percentageTextView;
                        TextView textView2 = (TextView) inflate.findViewById(i2);
                        if (textView2 != null) {
                            i2 = C4718R.C4720id.sizeTextView;
                            TextView textView3 = (TextView) inflate.findViewById(i2);
                            if (textView3 != null) {
                                C16138l c16138l = new C16138l((ConstraintLayout) inflate, findViewById, findViewById2, textView, findViewById3, textView2, textView3);
                                s1.z.c.l.d(c16138l, "binding");
                                return new C15940a(this, c16138l);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
