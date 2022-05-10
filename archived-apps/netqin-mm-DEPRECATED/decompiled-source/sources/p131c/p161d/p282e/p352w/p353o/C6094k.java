package p131c.p161d.p282e.p352w.p353o;

import android.text.format.DateUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigServerException;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p282e.p335s.AbstractC5902k;
import p131c.p161d.p282e.p352w.p353o.C6098n;
/* renamed from: c.d.e.w.o.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/k.class */
public class C6094k {

    /* renamed from: j */
    public static final long f19571j = TimeUnit.HOURS.toSeconds(12);

    /* renamed from: k */
    public static final int[] f19572k = {2, 4, 8, 16, 32, 64, 128, 256};

    /* renamed from: a */
    public final AbstractC5898g f19573a;

    /* renamed from: b */
    public final AbstractC5143a f19574b;

    /* renamed from: c */
    public final Executor f19575c;

    /* renamed from: d */
    public final Clock f19576d;

    /* renamed from: e */
    public final Random f19577e;

    /* renamed from: f */
    public final C6084e f19578f;

    /* renamed from: g */
    public final ConfigFetchHttpClient f19579g;

    /* renamed from: h */
    public final C6098n f19580h;

    /* renamed from: i */
    public final Map<String, String> f19581i;

    /* renamed from: c.d.e.w.o.k$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/w/o/k$a.class */
    public static class C6095a {

        /* renamed from: a */
        public final int f19582a;

        /* renamed from: b */
        public final C6087f f19583b;

        /* renamed from: c */
        public final String f19584c;

        public C6095a(Date date, int i, C6087f fVar, String str) {
            this.f19582a = i;
            this.f19583b = fVar;
            this.f19584c = str;
        }

        /* renamed from: a */
        public static C6095a m22055a(C6087f fVar, String str) {
            return new C6095a(fVar.m22090c(), 0, fVar, str);
        }

        /* renamed from: a */
        public static C6095a m22054a(Date date) {
            return new C6095a(date, 1, null, null);
        }

        /* renamed from: b */
        public static C6095a m22052b(Date date) {
            return new C6095a(date, 2, null, null);
        }

        /* renamed from: a */
        public C6087f m22056a() {
            return this.f19583b;
        }

        /* renamed from: b */
        public String m22053b() {
            return this.f19584c;
        }

        /* renamed from: c */
        public int m22051c() {
            return this.f19582a;
        }
    }

    public C6094k(AbstractC5898g gVar, AbstractC5143a aVar, Executor executor, Clock clock, Random random, C6084e eVar, ConfigFetchHttpClient configFetchHttpClient, C6098n nVar, Map<String, String> map) {
        this.f19573a = gVar;
        this.f19574b = aVar;
        this.f19575c = executor;
        this.f19576d = clock;
        this.f19577e = random;
        this.f19578f = eVar;
        this.f19579g = configFetchHttpClient;
        this.f19580h = nVar;
        this.f19581i = map;
    }

    /* renamed from: a */
    public static /* synthetic */ Task m22069a(C6094k kVar, Task task, Task task2, Date date, Task task3) throws Exception {
        return !task.mo8601e() ? Tasks.m8592a((Exception) new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", task.mo8617a())) : !task2.mo8601e() ? Tasks.m8592a((Exception) new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task2.mo8617a())) : kVar.m22058b((String) task.mo8606b(), ((AbstractC5902k) task2.mo8606b()).mo22781a(), date);
    }

    /* renamed from: a */
    public final long m22075a(int i) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        int[] iArr = f19572k;
        long millis = timeUnit.toMillis(iArr[Math.min(i, iArr.length) - 1]);
        return (millis / 2) + this.f19577e.nextInt((int) millis);
    }

    /* renamed from: a */
    public final C6095a m22063a(String str, String str2, Date date) throws FirebaseRemoteConfigException {
        try {
            C6095a fetch = this.f19579g.fetch(this.f19579g.m7145a(), str, str2, m22061b(), this.f19580h.m22031d(), this.f19581i, date);
            if (fetch.m22053b() != null) {
                this.f19580h.m22035a(fetch.m22053b());
            }
            this.f19580h.m22028g();
            return fetch;
        } catch (FirebaseRemoteConfigServerException e) {
            C6098n.C6099a a = m22074a(e.getHttpStatusCode(), date);
            if (m22067a(a, e.getHttpStatusCode())) {
                throw new FirebaseRemoteConfigFetchThrottledException(a.m22025a().getTime());
            }
            throw m22064a(e);
        }
    }

    /* renamed from: a */
    public final C6098n.C6099a m22074a(int i, Date date) {
        if (m22060b(i)) {
            m22057b(date);
        }
        return this.f19580h.m22038a();
    }

    /* renamed from: a */
    public Task<C6095a> m22076a() {
        return m22059b(this.f19580h.m22029f());
    }

    /* renamed from: a */
    public final Task<C6095a> m22066a(Task<C6087f> task, long j) {
        Task task2;
        Date date = new Date(this.f19576d.mo17091b());
        if (task.mo8601e() && m22072a(j, date)) {
            return Tasks.m8591a(C6095a.m22052b(date));
        }
        Date a = m22062a(date);
        if (a != null) {
            task2 = Tasks.m8592a((Exception) new FirebaseRemoteConfigFetchThrottledException(m22073a(a.getTime() - date.getTime()), a.getTime()));
        } else {
            Task<String> id = this.f19573a.getId();
            Task<AbstractC5902k> a2 = this.f19573a.mo22783a(false);
            task2 = Tasks.m8586b(id, a2).mo8604b(this.f19575c, C6091h.m22079a(this, id, a2, date));
        }
        return task2.mo8604b(this.f19575c, C6092i.m22078a(this, date));
    }

    /* renamed from: a */
    public final FirebaseRemoteConfigServerException m22064a(FirebaseRemoteConfigServerException firebaseRemoteConfigServerException) throws FirebaseRemoteConfigClientException {
        String str;
        int httpStatusCode = firebaseRemoteConfigServerException.getHttpStatusCode();
        if (httpStatusCode == 401) {
            str = "The request did not have the required credentials. Please make sure your google-services.json is valid.";
        } else if (httpStatusCode == 403) {
            str = "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project.";
        } else if (httpStatusCode == 429) {
            throw new FirebaseRemoteConfigClientException("The throttled response from the server was not handled correctly by the FRC SDK.");
        } else if (httpStatusCode != 500) {
            switch (httpStatusCode) {
                case 502:
                case 503:
                case 504:
                    str = "The server is unavailable. Please try again later.";
                    break;
                default:
                    str = "The server returned an unexpected error.";
                    break;
            }
        } else {
            str = "There was an internal server error.";
        }
        int httpStatusCode2 = firebaseRemoteConfigServerException.getHttpStatusCode();
        return new FirebaseRemoteConfigServerException(httpStatusCode2, "Fetch failed: " + str, firebaseRemoteConfigServerException);
    }

    /* renamed from: a */
    public final String m22073a(long j) {
        return String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(j)));
    }

    /* renamed from: a */
    public final Date m22062a(Date date) {
        Date a = this.f19580h.m22038a().m22025a();
        if (date.before(a)) {
            return a;
        }
        return null;
    }

    /* renamed from: a */
    public final void m22065a(Task<C6095a> task, Date date) {
        if (task.mo8601e()) {
            this.f19580h.m22034a(date);
            return;
        }
        Exception a = task.mo8617a();
        if (a != null) {
            if (a instanceof FirebaseRemoteConfigFetchThrottledException) {
                this.f19580h.m22026i();
            } else {
                this.f19580h.m22027h();
            }
        }
    }

    /* renamed from: a */
    public final boolean m22072a(long j, Date date) {
        Date e = this.f19580h.m22030e();
        if (e.equals(C6098n.f19594d)) {
            return false;
        }
        return date.before(new Date(e.getTime() + TimeUnit.SECONDS.toMillis(j)));
    }

    /* renamed from: a */
    public final boolean m22067a(C6098n.C6099a aVar, int i) {
        boolean z = true;
        if (aVar.m22024b() <= 1) {
            z = i == 429;
        }
        return z;
    }

    /* renamed from: b */
    public Task<C6095a> m22059b(long j) {
        return this.f19578f.m22097b().mo8604b(this.f19575c, C6090g.m22080a(this, j));
    }

    /* renamed from: b */
    public final Task<C6095a> m22058b(String str, String str2, Date date) {
        try {
            C6095a a = m22063a(str, str2, date);
            return a.m22051c() != 0 ? Tasks.m8591a(a) : this.f19578f.m22101a(a.m22056a()).mo8607a(this.f19575c, C6093j.m22077a(a));
        } catch (FirebaseRemoteConfigException e) {
            return Tasks.m8592a((Exception) e);
        }
    }

    /* renamed from: b */
    public final Map<String, String> m22061b() {
        HashMap hashMap = new HashMap();
        AbstractC5143a aVar = this.f19574b;
        if (aVar == null) {
            return hashMap;
        }
        for (Map.Entry<String, Object> entry : aVar.mo23139a(false).entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue().toString());
        }
        return hashMap;
    }

    /* renamed from: b */
    public final void m22057b(Date date) {
        int b = this.f19580h.m22038a().m22024b() + 1;
        this.f19580h.m22037a(b, new Date(date.getTime() + m22075a(b)));
    }

    /* renamed from: b */
    public final boolean m22060b(int i) {
        return i == 429 || i == 502 || i == 503 || i == 504;
    }
}
