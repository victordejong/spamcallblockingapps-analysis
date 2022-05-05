package com.google.android.gms.common.api.internal;

import androidx.p026b.C0529a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaj.class */
public final class zaj {

    /* renamed from: d */
    private int f6540d;

    /* renamed from: b */
    private final C0529a<ApiKey<?>, String> f6538b = new C0529a<>();

    /* renamed from: c */
    private final TaskCompletionSource<Map<ApiKey<?>, String>> f6539c = new TaskCompletionSource<>();

    /* renamed from: e */
    private boolean f6541e = false;

    /* renamed from: a */
    private final C0529a<ApiKey<?>, ConnectionResult> f6537a = new C0529a<>();

    public zaj(Iterable<? extends HasApiKey<?>> iterable) {
        Iterator<? extends HasApiKey<?>> it = iterable.iterator();
        while (it.hasNext()) {
            this.f6537a.put(((HasApiKey) it.next()).getApiKey(), null);
        }
        this.f6540d = this.f6537a.keySet().size();
    }

    public final Task<Map<ApiKey<?>, String>> getTask() {
        return this.f6539c.getTask();
    }

    public final void zaa(ApiKey<?> apiKey, ConnectionResult connectionResult, String str) {
        this.f6537a.put(apiKey, connectionResult);
        this.f6538b.put(apiKey, str);
        this.f6540d--;
        if (!connectionResult.isSuccess()) {
            this.f6541e = true;
        }
        if (this.f6540d != 0) {
            return;
        }
        if (this.f6541e) {
            this.f6539c.setException(new AvailabilityException(this.f6537a));
            return;
        }
        this.f6539c.setResult(this.f6538b);
    }

    public final Set<ApiKey<?>> zan() {
        return this.f6537a.keySet();
    }
}
