package p459j.p460a.p582w0.p590x4;

import kotlin.Metadata;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001:\u0002\u0012\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\bX\u0086T¢\u0006\u0002\n��¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/FlexibleDialogEventHelper;", "", "()V", "GF_TABLE_NAME", "", "KEY_ACTION", "KEY_MESSAGE_NAME", "VALUE_ACTION_CLICK_IMG", "", "VALUE_ACTION_CLICK_NEGATIVE", "VALUE_ACTION_CLICK_NEWS_CENTER", "VALUE_ACTION_CLICK_NOTIFICATION", "VALUE_ACTION_CLICK_POSITIVE", "VALUE_ACTION_SHOW", "trackEvent", "", "action", "message", "Action", "FlexibleDialogEvent", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.l */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/l.class */
public final class C14287l {

    /* renamed from: j.a.w0.x4.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/l$a.class */
    public static final class C14288a extends AbstractC14272h {
        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: a */
        public void mo1618a(C14296p.C14297a.C14298a aVar) {
            C15149k.m377b(aVar, "builder");
            C14296p.m1830a("whoscall_flexible_dialog", aVar.m1811a());
        }

        @Override // p459j.p460a.p582w0.p590x4.AbstractC14272h
        /* renamed from: h */
        public String[] mo1617h() {
            return new String[]{"action", "message_name"};
        }
    }

    static {
        new C14287l();
    }

    /* renamed from: a */
    public static final void m1917a(int i, String str) {
        if (str == null) {
            str = "";
        }
        C14288a aVar = new C14288a();
        aVar.m1949a("action", Integer.valueOf(i));
        aVar.m1949a("message_name", str);
        aVar.m1945c();
        if (i == 1) {
            C14299q.m1664w(str);
            C14261f.m1981a(C14261f.EnumC14264c.a_Message_Dialog_View, str);
        } else if (i == 2) {
            C14299q.m1673t(str);
            C14261f.m1981a(C14261f.EnumC14264c.a_Message_Dialog_Click_Image, str);
        } else if (i == 3) {
            C14299q.m1667v(str);
            C14261f.m1981a(C14261f.EnumC14264c.a_Message_Dialog_Click_Positive, str);
        } else if (i == 4) {
            C14299q.m1670u(str);
            C14261f.m1981a(C14261f.EnumC14264c.a_Message_Dialog_Click_Negative, str);
        }
    }
}
