package com.tmobile.services.nameid.utility;

import com.tmobile.services.nameid.utility.IamWrapper;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SitStateCheck.class */
public class SitStateCheck {

    /* renamed from: a */
    private boolean f14439a = false;
    @Nullable

    /* renamed from: b */
    private IamWrapper.IamResponse f14440b = null;

    /* renamed from: c */
    private CopyOnWriteArrayList<SitStateListener> f14441c = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public void m5345a(SitStateListener sitStateListener) {
        this.f14441c.add(sitStateListener);
    }

    @Nullable
    /* renamed from: b */
    public IamWrapper.IamResponse m5344b() {
        IamWrapper.IamResponse iamResponse;
        synchronized (this) {
            iamResponse = this.f14440b;
        }
        return iamResponse;
    }

    /* renamed from: c */
    public boolean m5343c() {
        boolean z;
        synchronized (this) {
            z = this.f14439a;
        }
        return z;
    }

    /* renamed from: d */
    public void m5342d(SitStateListener sitStateListener) {
        this.f14441c.remove(sitStateListener);
    }

    /* renamed from: e */
    public void m5341e(boolean z, @Nullable IamWrapper.IamResponse iamResponse) {
        synchronized (this) {
            this.f14439a = z;
            this.f14440b = iamResponse;
            Iterator<SitStateListener> it = this.f14441c.iterator();
            while (it.hasNext()) {
                it.next().mo5340a(z);
            }
        }
    }
}
