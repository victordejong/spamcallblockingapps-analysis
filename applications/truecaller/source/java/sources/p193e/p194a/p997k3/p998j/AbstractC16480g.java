package p193e.p194a.p997k3.p998j;

import android.os.CancellationSignal;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.List;
import s1.k;
/* renamed from: e.a.k3.j.g */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/g.class */
public interface AbstractC16480g {

    /* renamed from: e.a.k3.j.g$a */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/g$a.class */
    public interface AbstractC16481a {
        /* renamed from: W0 */
        void mo10070W0(Throwable th);

        /* renamed from: i9 */
        void mo10060i9(List<? extends k<? extends Contact, String>> list);
    }

    /* renamed from: a */
    CancellationSignal mo17346a(String str, Integer num, AbstractC16481a abstractC16481a);

    /* renamed from: b */
    List<k<Contact, String>> mo17345b(String str, Integer num);

    /* renamed from: c */
    k<Contact, Number> mo17344c(String str);
}
