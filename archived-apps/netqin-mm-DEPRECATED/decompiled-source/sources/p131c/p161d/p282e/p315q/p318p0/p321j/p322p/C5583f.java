package p131c.p161d.p282e.p315q.p318p0.p321j.p322p;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import com.google.firebase.inappmessaging.display.internal.layout.FiamFrameLayout;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.C5540g;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5860h;
/* renamed from: c.d.e.q.p0.j.p.f */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/p/f.class */
public class C5583f extends AbstractC5579c {

    /* renamed from: d */
    public FiamFrameLayout f18603d;

    /* renamed from: e */
    public ViewGroup f18604e;

    /* renamed from: f */
    public ImageView f18605f;

    /* renamed from: g */
    public Button f18606g;

    public C5583f(C5560i iVar, LayoutInflater layoutInflater, AbstractC5863i iVar2) {
        super(iVar, layoutInflater, iVar2);
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: a */
    public ViewTreeObserver.OnGlobalLayoutListener mo23461a(Map<C5842a, View.OnClickListener> map, View.OnClickListener onClickListener) {
        View inflate = this.f18587c.inflate(C5540g.image, (ViewGroup) null);
        this.f18603d = (FiamFrameLayout) inflate.findViewById(C5539f.image_root);
        this.f18604e = (ViewGroup) inflate.findViewById(C5539f.image_content_root);
        this.f18605f = (ImageView) inflate.findViewById(C5539f.image_view);
        this.f18606g = (Button) inflate.findViewById(C5539f.collapse_button);
        this.f18605f.setMaxHeight(this.f18586b.m23544d());
        this.f18605f.setMaxWidth(this.f18586b.m23541e());
        if (this.f18585a.m22862c().equals(MessageType.IMAGE_ONLY)) {
            C5860h hVar = (C5860h) this.f18585a;
            this.f18605f.setVisibility((hVar.mo22861b() == null || TextUtils.isEmpty(hVar.mo22861b().m22872a())) ? 8 : 0);
            this.f18605f.setOnClickListener(map.get(hVar.m22868d()));
        }
        this.f18603d.setDismissListener(onClickListener);
        this.f18606g.setOnClickListener(onClickListener);
        return null;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: c */
    public View mo23459c() {
        return this.f18604e;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: e */
    public ImageView mo23458e() {
        return this.f18605f;
    }

    @Override // p131c.p161d.p282e.p315q.p318p0.p321j.p322p.AbstractC5579c
    /* renamed from: f */
    public ViewGroup mo23457f() {
        return this.f18603d;
    }
}
