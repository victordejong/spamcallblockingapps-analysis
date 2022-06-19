package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.p183ui.view.TintedImageView;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p682e.C13279m0;
import p193e.p194a.p682e.p698c.C13105k2;
/* renamed from: e.a.e.c2.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/h0.class */
public abstract class AbstractC13195h0 extends RelativeLayout {

    /* renamed from: a */
    public final C8243a f38319a;

    /* renamed from: b */
    public final AvatarXView f38320b;

    public AbstractC13195h0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C13105k2 c13105k2 = (C13105k2) this;
        c13105k2.f38033r = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        RelativeLayout.inflate(context, C2752R.layout.view_details_header_legacy, c13105k2);
        c13105k2.f38018c = (ImageView) c13105k2.findViewById(2131363000);
        c13105k2.f38019d = (TextView) c13105k2.findViewById(C2752R.C2754id.name_or_number);
        c13105k2.f38020e = (TextView) c13105k2.findViewById(C2752R.C2754id.spam_count);
        c13105k2.f38021f = (TextView) c13105k2.findViewById(C2752R.C2754id.availability_indicator);
        c13105k2.f38022g = (ViewGroup) c13105k2.findViewById(C2752R.C2754id.add_name_container);
        c13105k2.f38023h = (ViewGroup) c13105k2.findViewById(C2752R.C2754id.tag_container);
        c13105k2.f38027l = (ImageButton) c13105k2.findViewById(C2752R.C2754id.suggest_name_button);
        c13105k2.f38026k = c13105k2.findViewById(C2752R.C2754id.private_info);
        c13105k2.f38028m = (TextView) c13105k2.findViewById(2131364372);
        c13105k2.f38029n = (TintedImageView) c13105k2.findViewById(C2752R.C2754id.ic_lock);
        c13105k2.f38024i = (AvatarXView) c13105k2.findViewById(2131362231);
        c13105k2.f38025j = c13105k2.findViewById(2131362249);
        c13105k2.f38024i.setVisibility(8);
        c13105k2.f38019d.setSelected(true);
        C13279m0.C13281b c13281b = new C13279m0.C13281b(context);
        c13281b.f38593b = true;
        c13281b.f38594c = false;
        c13281b.f38596e = 6;
        c13281b.f38597f = 16;
        c13281b.f38595d = true;
        c13105k2.f38030o = c13281b.m21961a();
        C13279m0.C13281b c13281b2 = new C13279m0.C13281b(context);
        c13281b2.f38593b = false;
        c13281b2.f38594c = false;
        c13281b2.f38596e = 6;
        c13281b2.f38597f = 16;
        c13281b2.f38595d = true;
        c13105k2.f38031p = c13281b2.m21961a();
        AvatarXView avatarXView = (AvatarXView) findViewById(2131362231);
        this.f38320b = avatarXView;
        C8243a c8243a = new C8243a(new C19235i0(context));
        this.f38319a = c8243a;
        avatarXView.setPresenter(c8243a);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02a2  */
    /* renamed from: D1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21999D1(com.truecaller.data.entity.Contact r9, boolean r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 834
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p699c2.AbstractC13195h0.m21999D1(com.truecaller.data.entity.Contact, boolean, boolean, boolean):void");
    }

    /* renamed from: f */
    public void m21998f(boolean z) {
        this.f38319a.m28738pk(z);
    }
}
