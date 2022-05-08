package p459j.p460a.p474c0.p475c.p476w;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import javax.annotation.Nullable;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12143b;
import p459j.p460a.p474c0.p499h.C12204q0;
import p459j.p460a.p582w0.C14080m2;
/* renamed from: j.a.c0.c.w.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/d.class */
public class C11577d {

    /* renamed from: j.a.c0.c.w.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/d$a.class */
    public static final class RunnableC11578a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f25879a;

        public RunnableC11578a(int i) {
            this.f25879a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(C11577d.m9074b(), C11577d.m9074b().getString(this.f25879a), 1).show();
        }
    }

    /* renamed from: j.a.c0.c.w.d$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/d$b.class */
    public static final class RunnableC11579b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f25880a;

        public RunnableC11579b(String str) {
            this.f25880a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toast.makeText(C11577d.m9074b(), this.f25880a, 1).show();
        }
    }

    /* renamed from: a */
    public static void m9078a(int i) {
        C12204q0.m6814a().post(new RunnableC11578a(i));
    }

    /* renamed from: a */
    public static void m9077a(String str) {
        C12204q0.m6814a().post(new RunnableC11579b(str));
    }

    /* renamed from: a */
    public static void m9076a(String str, @Nullable ParticipantData participantData, @Nullable MessageData messageData) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (C12143b.m7032a(a) && AbstractC11528g.m9259k().m9263b(str)) {
            Resources resources = a.getResources();
            m9077a(resources.getString(R$string.incoming_message_announcement, participantData == null ? resources.getString(R$string.unknown_sender) : participantData.m27537a(false), messageData == null ? "" : messageData.m27588x()));
        }
    }

    /* renamed from: a */
    public static void m9075a(String str, boolean z, int i, boolean z2, int i2, boolean z3) {
        C14080m2.m2616a("BugleActionToasts onSendMessageOrManualDownloadActionCompleted, conversationId=" + str + ", success=" + z + ", status=" + i + ", isSms=" + z2 + ", subId=" + i2 + ", isSend=" + z3);
        if (!z && i == 2) {
            AbstractC12181l0 b = AbstractC12181l0.m6895b(i2);
            if (b.m6892k()) {
                if (z3) {
                    m9078a((int) R$string.send_message_failure_airplane_mode);
                    return;
                } else {
                    m9078a((int) R$string.download_message_failure_airplane_mode);
                    return;
                }
            } else if (!z2 && !b.mo6869n()) {
                if (z3) {
                    m9078a((int) R$string.send_message_failure_no_data);
                    return;
                } else {
                    m9078a((int) R$string.download_message_failure_no_data);
                    return;
                }
            }
        }
        if (!C12143b.m7032a(AbstractC11516a.m9413n().mo9412a())) {
            return;
        }
        if (AbstractC11528g.m9259k().m9263b(str) && z) {
            m9078a(z3 ? R$string.send_message_success : R$string.download_message_success);
        } else if (AbstractC11528g.m9259k().m9262c(str) && !z) {
            m9078a(z3 ? R$string.send_message_failure : R$string.download_message_failure);
        }
    }

    /* renamed from: b */
    public static Context m9074b() {
        return AbstractC11516a.m9413n().mo9412a();
    }
}
