package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.firebase.inappmessaging.display.internal.ResizableImageView;
import com.google.firebase.inappmessaging.display.internal.layout.FiamFrameLayout;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.C5540g;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5848c;
/* renamed from: c.d.e.q.p0.j.p.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/a.class */
public class C5577a extends AbstractC5579c {

    /* renamed from: d */
    public FiamFrameLayout f18576d;

    /* renamed from: e */
    public ViewGroup f18577e;

    /* renamed from: f */
    public TextView f18578f;

    /* renamed from: g */
    public ResizableImageView f18579g;

    /* renamed from: h */
    public TextView f18580h;

    /* renamed from: i */
    public View.OnClickListener f18581i;

    public C5577a(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        super(iVar, layoutInflater, iVar2);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: a */
    public ViewTreeObserver.OnGlobalLayoutListener mo23461a(Map<C5842a, View.OnClickListener> map, View.OnClickListener onClickListener) {
        View inflate = this.f18587c.inflate(C5540g.banner, (ViewGroup) null);
        this.f18576d = (FiamFrameLayout) inflate.findViewById(C5539f.banner_root);
        this.f18577e = (ViewGroup) inflate.findViewById(C5539f.banner_content_root);
        this.f18578f = (TextView) inflate.findViewById(C5539f.banner_body);
        this.f18579g = (ResizableImageView) inflate.findViewById(C5539f.banner_image);
        this.f18580h = (TextView) inflate.findViewById(C5539f.banner_title);
        if (!this.f18585a.m22862c().equals(MessageType.BANNER)) {
            return null;
        }
        C5848c cVar = (C5848c) this.f18585a;
        m23486a(cVar);
        m23487a(this.f18586b);
        m23485b(onClickListener);
        m23488a(map.get(cVar.m22908d()));
        return null;
    }

    /* renamed from: a */
    public final void m23488a(View.OnClickListener onClickListener) {
        this.f18577e.setOnClickListener(onClickListener);
    }

    /* renamed from: a */
    public final void m23487a(C5560i iVar) {
        int min = Math.min(iVar.m23537g().intValue(), iVar.m23539f().intValue());
        ViewGroup.LayoutParams layoutParams = this.f18576d.getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(-1, -2);
        }
        layoutParams2.width = min;
        this.f18576d.setLayoutParams(layoutParams2);
        this.f18579g.setMaxHeight(iVar.m23544d());
        this.f18579g.setMaxWidth(iVar.m23541e());
    }

    /* renamed from: a */
    public final void m23486a(C5848c cVar) {
        if (!TextUtils.isEmpty(cVar.m22907e())) {
            m23481a(this.f18577e, cVar.m22907e());
        }
        this.f18579g.setVisibility((cVar.mo22861b() == null || TextUtils.isEmpty(cVar.mo22861b().m22872a())) ? 8 : 0);
        if (cVar.m22905g() != null) {
            if (!TextUtils.isEmpty(cVar.m22905g().m22829b())) {
                this.f18580h.setText(cVar.m22905g().m22829b());
            }
            if (!TextUtils.isEmpty(cVar.m22905g().m22830a())) {
                this.f18580h.setTextColor(Color.parseColor(cVar.m22905g().m22830a()));
            }
        }
        if (cVar.m22906f() != null) {
            if (!TextUtils.isEmpty(cVar.m22906f().m22829b())) {
                this.f18578f.setText(cVar.m22906f().m22829b());
            }
            if (!TextUtils.isEmpty(cVar.m22906f().m22830a())) {
                this.f18578f.setTextColor(Color.parseColor(cVar.m22906f().m22830a()));
            }
        }
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: a */
    public boolean mo23482a() {
        return true;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: b */
    public C5560i mo23460b() {
        return this.f18586b;
    }

    /* renamed from: b */
    public final void m23485b(View.OnClickListener onClickListener) {
        this.f18581i = onClickListener;
        this.f18576d.setDismissListener(onClickListener);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: c */
    public View mo23459c() {
        return this.f18577e;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: d */
    public View.OnClickListener mo23471d() {
        return this.f18581i;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: e */
    public ImageView mo23458e() {
        return this.f18579g;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: f */
    public ViewGroup mo23457f() {
        return this.f18576d;
    }
}
