package p193e.p194a.p852i.p908w;

import com.truecaller.ads.campaigns.AdCampaigns;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: e.a.i.w.f$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/w/f$b.class */
public class f$b implements Future<AdCampaigns[]> {

    /* renamed from: a */
    public final String f43403a;

    /* renamed from: b */
    public final AdCampaigns[] f43404b;

    /* renamed from: c */
    public int f43405c = 0;

    /* renamed from: d */
    public volatile AdCampaigns[] f43406d = null;

    /* renamed from: e */
    public final Lock f43407e;

    /* renamed from: f */
    public final Condition f43408f;

    /* renamed from: g */
    public Set<String> f43409g;

    public f$b(String str, int i) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f43407e = reentrantLock;
        this.f43408f = reentrantLock.newCondition();
        this.f43403a = str;
        this.f43404b = new AdCampaigns[i];
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public AdCampaigns[] get() throws ExecutionException, InterruptedException {
        AdCampaigns[] adCampaignsArr = this.f43406d;
        AdCampaigns[] adCampaignsArr2 = adCampaignsArr;
        if (adCampaignsArr == null) {
            this.f43407e.lock();
            try {
                AdCampaigns[] adCampaignsArr3 = this.f43406d;
                adCampaignsArr2 = adCampaignsArr3;
                if (adCampaignsArr3 == null) {
                    this.f43408f.await();
                    adCampaignsArr2 = this.f43406d;
                }
            } finally {
                this.f43407e.unlock();
            }
        }
        return adCampaignsArr2;
    }

    @Override // java.util.concurrent.Future
    public AdCampaigns[] get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        AdCampaigns[] adCampaignsArr = this.f43406d;
        AdCampaigns[] adCampaignsArr2 = adCampaignsArr;
        if (adCampaignsArr == null) {
            this.f43407e.lock();
            try {
                AdCampaigns[] adCampaignsArr3 = this.f43406d;
                adCampaignsArr2 = adCampaignsArr3;
                if (adCampaignsArr3 == null) {
                    if (!this.f43408f.await(j, timeUnit)) {
                        throw new TimeoutException();
                    }
                    adCampaignsArr2 = this.f43406d;
                }
            } finally {
                this.f43407e.unlock();
            }
        }
        return adCampaignsArr2;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f43406d != null;
    }
}
