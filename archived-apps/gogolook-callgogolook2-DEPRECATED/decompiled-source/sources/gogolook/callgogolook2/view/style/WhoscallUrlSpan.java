package gogolook.callgogolook2.view.style;

import android.text.TextPaint;
import android.text.style.URLSpan;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14167t;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/view/style/WhoscallUrlSpan;", "Landroid/text/style/URLSpan;", "url", "", "urlColor", "", "hasUnderline", "", "(Ljava/lang/String;IZ)V", "updateDrawState", "", "ds", "Landroid/text/TextPaint;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/style/WhoscallUrlSpan.class */
public final class WhoscallUrlSpan extends URLSpan {

    /* renamed from: a */
    public final int f13239a;

    /* renamed from: b */
    public final boolean f13240b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WhoscallUrlSpan(String str, int i, boolean z) {
        super(str);
        C15149k.m377b(str, "url");
        this.f13239a = i;
        this.f13240b = z;
    }

    public /* synthetic */ WhoscallUrlSpan(String str, int i, boolean z, int i2, C15145g gVar) {
        this(str, (i2 & 2) != 0 ? C14167t.m2310f() : i, (i2 & 4) != 0 ? false : z);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        C15149k.m377b(textPaint, "ds");
        super.updateDrawState(textPaint);
        textPaint.setColor(this.f13239a);
        textPaint.setUnderlineText(this.f13240b);
    }
}
