package p459j.p460a.p521j0.p522u.p523d.p524e1;

import android.content.Context;
import android.view.View;
import androidx.annotation.ColorInt;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.RowInfo;
import kotlin.Metadata;
import p459j.p460a.p521j0.p522u.p523d.C12640p0;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l;
import p459j.p460a.p533l.HandlerC12947l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\b\u0010\f\u001a\u00020\rH'J\b\u0010\u000e\u001a\u00020\u0003H&J\"\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\b\u0010\u0010\u001a\u00020\u0003H&¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/data/ICommonQuestion;", "Lgogolook/callgogolook2/phone/call/dialog/data/IQuestion;", "cta1", "", "cta1CLickListener", "Landroid/view/View$OnClickListener;", "context", "Landroid/content/Context;", "callViewWrapperCallback", "Lgogolook/callgogolook2/phone/call/dialog/CallEndAdapter$CallViewWrapperCallback;", "dialogActivityListener", "Lgogolook/callgogolook2/block/DialogActivityListener;", "cta1Color", "", "cta2", "cta2CLickListener", "secondary", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.e1.k */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/k.class */
public interface AbstractC12571k extends AbstractC12573l {

    /* renamed from: j.a.j0.u.d.e1.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/e1/k$a.class */
    public static final class C12572a {
        /* renamed from: a */
        public static DataUserReport m5888a(AbstractC12571k kVar, RowInfo rowInfo, String str) {
            C15149k.m377b(rowInfo, "rowInfo");
            C15149k.m377b(str, "number");
            return AbstractC12573l.C12574a.m5887a(kVar, rowInfo, str);
        }
    }

    /* renamed from: a */
    View.OnClickListener mo5845a(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2);

    /* renamed from: b */
    View.OnClickListener mo5840b(Context context, C12640p0.AbstractC12652l lVar, HandlerC12947l lVar2);

    /* renamed from: b */
    String mo5841b();

    @ColorInt
    /* renamed from: c */
    int mo5839c();

    /* renamed from: d */
    String mo5838d();

    /* renamed from: e */
    String mo5837e();
}
