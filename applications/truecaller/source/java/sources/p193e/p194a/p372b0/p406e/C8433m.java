package p193e.p194a.p372b0.p406e;

import com.truecaller.account.network.AccountPhoneNumberDto;
import java.util.Comparator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.b0.e.m */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/m.class */
public final class C8433m<T> implements Comparator<T> {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return C25225a.m4000K(Integer.valueOf(((AccountPhoneNumberDto) t).getPriority()), Integer.valueOf(((AccountPhoneNumberDto) t2).getPriority()));
    }
}
