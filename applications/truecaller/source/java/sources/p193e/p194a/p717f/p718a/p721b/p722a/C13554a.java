package p193e.p194a.p717f.p718a.p721b.p722a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.incallui.C4013R;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p717f.p732x.C13749h;
import p193e.p194a.p717f.p733y.C13768f;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.f.a.b.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/a.class */
public final class C13554a extends RecyclerView.AbstractC0317g<C13555a> {

    /* renamed from: a */
    public AbstractC13558b f39309a;

    /* renamed from: b */
    public final List<C13768f> f39310b = new ArrayList();

    /* renamed from: c */
    public final AbstractC19223c0 f39311c;

    /* renamed from: e.a.f.a.b.a.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/a$a.class */
    public final class C13555a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final g f39312a;

        /* renamed from: b */
        public final /* synthetic */ C13554a f39313b;

        /* renamed from: e.a.f.a.b.a.a$a$a */
        /* loaded from: classes3-dex2jar.jar:e/a/f/a/b/a/a$a$a.class */
        public static final class View$OnClickListenerC13556a implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ int f39314a;

            /* renamed from: b */
            public final /* synthetic */ Object f39315b;

            public View$OnClickListenerC13556a(int i, Object obj) {
                this.f39314a = i;
                this.f39315b = obj;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = this.f39314a;
                if (i == 0) {
                    C13555a c13555a = (C13555a) this.f39315b;
                    AbstractC13558b abstractC13558b = c13555a.f39313b.f39309a;
                    if (abstractC13558b == null) {
                        return;
                    }
                    abstractC13558b.mo21626hj(c13555a.getAdapterPosition());
                } else if (i != 1) {
                    throw null;
                } else {
                    C13555a c13555a2 = (C13555a) this.f39315b;
                    AbstractC13558b abstractC13558b2 = c13555a2.f39313b.f39309a;
                    if (abstractC13558b2 == null) {
                        return;
                    }
                    abstractC13558b2.mo21625t9(c13555a2.getAdapterPosition());
                }
            }
        }

        /* renamed from: e.a.f.a.b.a.a$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/a$a$b.class */
        public static final class C13557b extends m implements a<C13749h> {

            /* renamed from: b */
            public final /* synthetic */ View f39316b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13557b(View view) {
                super(0);
                this.f39316b = view;
            }

            public Object invoke() {
                View view = this.f39316b;
                int i = C4013R.C4015id.button_end_call;
                ImageButton imageButton = (ImageButton) view.findViewById(i);
                if (imageButton != null) {
                    i = C4013R.C4015id.button_split_call;
                    ImageButton imageButton2 = (ImageButton) view.findViewById(i);
                    if (imageButton2 != null) {
                        i = C4013R.C4015id.image_profile_picture;
                        AvatarXView avatarXView = (AvatarXView) view.findViewById(i);
                        if (avatarXView != null) {
                            i = C4013R.C4015id.text_phone_number;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                i = C4013R.C4015id.text_profile_name;
                                TextView textView2 = (TextView) view.findViewById(i);
                                if (textView2 != null) {
                                    return new C13749h((ConstraintLayout) view, imageButton, imageButton2, avatarXView, textView, textView2);
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13555a(C13554a c13554a, View view) {
            super(view);
            l.e(view, "itemView");
            this.f39313b = c13554a;
            this.f39312a = C25225a.m3978P1(new C13557b(view));
            C13749h m21630N4 = m21630N4();
            m21630N4.f39871b.setOnClickListener(new View$OnClickListenerC13556a(0, this));
            m21630N4.f39870a.setOnClickListener(new View$OnClickListenerC13556a(1, this));
        }

        /* renamed from: N4 */
        public final C13749h m21630N4() {
            return (C13749h) this.f39312a.getValue();
        }
    }

    @Inject
    public C13554a(AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC19223c0, "resourceProvider");
        this.f39311c = abstractC19223c0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f39310b.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ce  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(p193e.p194a.p717f.p718a.p721b.p722a.C13554a.C13555a r22, int r23) {
        /*
            Method dump skipped, instructions count: 557
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.p722a.C13554a.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C13555a onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4013R.layout.item_incallui_conference_call, viewGroup, false);
        l.d(inflate, "LayoutInflater.from(pare…ence_call, parent, false)");
        return new C13555a(this, inflate);
    }
}
