package p193e.p194a.p837h0.p838a;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.TintedImageView;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h0.a.a */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/a.class */
public final class C14745a extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final g f42239a;

    /* renamed from: b */
    public final g f42240b;

    /* renamed from: c */
    public final g f42241c;

    /* renamed from: d */
    public final g f42242d;

    /* renamed from: e */
    public final g f42243e;

    /* renamed from: f */
    public final g f42244f;

    /* renamed from: g */
    public final g f42245g;

    /* renamed from: e.a.h0.a.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/h0/a/a$a.class */
    public static final class C14746a extends m implements a<TextView> {

        /* renamed from: b */
        public final /* synthetic */ int f42246b;

        /* renamed from: c */
        public final /* synthetic */ Object f42247c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14746a(int i, Object obj) {
            super(0);
            this.f42246b = i;
            this.f42247c = obj;
        }

        public final Object invoke() {
            int i = this.f42246b;
            if (i != 0) {
                if (i == 1) {
                    return (TextView) ((View) this.f42247c).findViewById(C2752R.C2754id.itemEdit);
                }
                if (i == 2) {
                    return (TextView) ((View) this.f42247c).findViewById(C2752R.C2754id.itemLearnMore);
                }
                if (i != 3) {
                    throw null;
                }
                return (TextView) ((View) this.f42247c).findViewById(C2752R.C2754id.itemSwitchLabel);
            }
            return (TextView) ((View) this.f42247c).findViewById(C2752R.C2754id.itemDescription);
        }
    }

    /* renamed from: e.a.h0.a.a$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/a$b.class */
    public static final class C14747b extends m implements a<View> {

        /* renamed from: b */
        public final /* synthetic */ View f42248b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14747b(View view) {
            super(0);
            this.f42248b = view;
        }

        public Object invoke() {
            return this.f42248b.findViewById(C2752R.C2754id.itemDivider);
        }
    }

    /* renamed from: e.a.h0.a.a$c */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/a$c.class */
    public static final class C14748c extends m implements a<TintedImageView> {

        /* renamed from: b */
        public final /* synthetic */ View f42249b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14748c(View view) {
            super(0);
            this.f42249b = view;
        }

        public Object invoke() {
            return (TintedImageView) this.f42249b.findViewById(C2752R.C2754id.itemImage);
        }
    }

    /* renamed from: e.a.h0.a.a$d */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/a$d.class */
    public static final class C14749d extends m implements a<SwitchCompat> {

        /* renamed from: b */
        public final /* synthetic */ View f42250b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14749d(View view) {
            super(0);
            this.f42250b = view;
        }

        public Object invoke() {
            return (SwitchCompat) this.f42250b.findViewById(C2752R.C2754id.itemSwitch);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14745a(View view) {
        super(view);
        l.e(view, "itemView");
        this.f42239a = C25225a.m3978P1(new C14748c(view));
        this.f42240b = C25225a.m3978P1(new C14746a(3, view));
        this.f42241c = C25225a.m3978P1(new C14746a(0, view));
        this.f42242d = C25225a.m3978P1(new C14746a(1, view));
        this.f42243e = C25225a.m3978P1(new C14746a(2, view));
        this.f42244f = C25225a.m3978P1(new C14749d(view));
        this.f42245g = C25225a.m3978P1(new C14747b(view));
    }

    /* renamed from: N4 */
    public final TextView m19695N4() {
        return (TextView) this.f42242d.getValue();
    }

    /* renamed from: O4 */
    public final TintedImageView m19694O4() {
        return (TintedImageView) this.f42239a.getValue();
    }

    /* renamed from: P4 */
    public final TextView m19693P4() {
        return (TextView) this.f42243e.getValue();
    }

    /* renamed from: Q4 */
    public final SwitchCompat m19692Q4() {
        return (SwitchCompat) this.f42244f.getValue();
    }
}
