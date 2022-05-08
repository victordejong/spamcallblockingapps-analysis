package p459j.p460a.p463b0.p464q;

import android.content.Context;
import androidx.lifecycle.LiveData;
import gogolook.callgogolook2.gson.CallLogContentFeedConfig;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.List;
import java.util.Set;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
/* renamed from: j.a.b0.q.n */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/n.class */
public interface AbstractC11179n {
    /* renamed from: a */
    LiveData<AdRequestState> mo10124a();

    /* renamed from: a */
    void mo10123a(Context context, AdUnit adUnit, Set<? extends EnumC6184a> set);

    /* renamed from: a */
    void mo10121a(int[] iArr);

    /* renamed from: a */
    boolean mo10122a(AdUnit adUnit);

    /* renamed from: b */
    LiveData<List<LogsGroupRealmObject>> mo10120b();

    /* renamed from: b */
    AbstractC6207d mo10119b(AdUnit adUnit);

    /* renamed from: c */
    CallLogContentFeedConfig mo10118c();

    /* renamed from: c */
    void mo10117c(AdUnit adUnit);
}
