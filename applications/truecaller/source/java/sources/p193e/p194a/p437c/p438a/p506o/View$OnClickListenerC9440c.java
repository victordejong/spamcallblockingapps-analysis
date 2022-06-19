package p193e.p194a.p437c.p438a.p506o;

import android.view.View;
import com.truecaller.messaging.data.types.Message;
import p193e.p194a.p437c.p610y.AbstractC10876i;
/* renamed from: e.a.c.a.o.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/o/c.class */
public final class View$OnClickListenerC9440c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AbstractC10876i f28648a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC9439b f28649b;

    /* renamed from: c */
    public final /* synthetic */ Message f28650c;

    /* renamed from: d */
    public final /* synthetic */ String f28651d;

    /* renamed from: e */
    public final /* synthetic */ boolean f28652e;

    public View$OnClickListenerC9440c(AbstractC10876i abstractC10876i, AbstractC9439b abstractC9439b, Message message, String str, boolean z) {
        this.f28648a = abstractC10876i;
        this.f28649b = abstractC9439b;
        this.f28650c = message;
        this.f28651d = str;
        this.f28652e = z;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f28648a instanceof AbstractC10876i.C10882f) {
            this.f28649b.mo27565a3(this.f28650c, this.f28651d, this.f28652e);
        }
    }
}
