package p193e.p194a.p947k.p948a.p959g.p960n0;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.videocallerid.C4718R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.g.n0.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/n0/d.class */
public final class C15745d extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final g f44387a = C25225a.m3982O1(h.c, new C15746a());

    /* renamed from: b */
    public final Context f44388b;

    /* renamed from: e.a.k.a.g.n0.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/n0/d$a.class */
    public static final class C15746a extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15746a() {
            super(0);
            C15745d.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(C15745d.this.f44388b.getResources().getDimensionPixelSize(C4718R.dimen.vid_recording_item_offset));
        }
    }

    public C15745d(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f44388b = context;
    }

    /* renamed from: d */
    public final int m18425d() {
        return ((Number) this.f44387a.getValue()).intValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        super.getItemOffsets(rect, view, recyclerView, c0347z);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (c0347z.m42710b() <= 0) {
            return;
        }
        if (childAdapterPosition == 0) {
            if (C8502h.m28437a()) {
                rect.right = m18425d();
            } else {
                rect.left = m18425d();
            }
        }
        if (C8502h.m28437a()) {
            rect.left = m18425d();
        } else {
            rect.right = m18425d();
        }
    }
}
