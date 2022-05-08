package com.b.a;

import com.b.a.a.f;
import com.b.a.a.h;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/b/a/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static final j f3323a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3324b;
    private final long c;
    private final LinkedList<i> d = new LinkedList<>();
    private Executor e = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), h.b("OkHttp ConnectionPool"));
    private final Runnable f = new Runnable() { // from class: com.b.a.j.1
        @Override // java.lang.Runnable
        public final void run() {
            j.a(j.this);
        }
    };

    static {
        String property = System.getProperty("http.keepAlive");
        String property2 = System.getProperty("http.keepAliveDuration");
        String property3 = System.getProperty("http.maxConnections");
        long parseLong = property2 != null ? Long.parseLong(property2) : 300000L;
        if (property != null && !Boolean.parseBoolean(property)) {
            f3323a = new j(0, parseLong);
        } else if (property3 != null) {
            f3323a = new j(Integer.parseInt(property3), parseLong);
        } else {
            f3323a = new j(5, parseLong);
        }
    }

    private j(int i, long j) {
        this.f3324b = i;
        this.c = j * 1000 * 1000;
    }

    public static j a() {
        return f3323a;
    }

    static /* synthetic */ void a(j jVar) {
        do {
        } while (jVar.b());
    }

    private boolean b() {
        boolean z;
        synchronized (this) {
            if (this.d.isEmpty()) {
                z = false;
            } else {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                long nanoTime = System.nanoTime();
                long j = this.c;
                ListIterator<i> listIterator = this.d.listIterator(this.d.size());
                while (listIterator.hasPrevious()) {
                    i previous = listIterator.previous();
                    long d = (previous.d() + this.c) - nanoTime;
                    if (d <= 0 || !previous.b()) {
                        listIterator.remove();
                        arrayList.add(previous);
                    } else if (previous.c()) {
                        i++;
                        j = Math.min(j, d);
                    }
                }
                ListIterator<i> listIterator2 = this.d.listIterator(this.d.size());
                while (listIterator2.hasPrevious() && i > this.f3324b) {
                    i previous2 = listIterator2.previous();
                    if (previous2.c()) {
                        arrayList.add(previous2);
                        listIterator2.remove();
                        i--;
                    }
                }
                if (arrayList.isEmpty()) {
                    try {
                        long j2 = j / 1000000;
                        wait(j2, (int) (j - (1000000 * j2)));
                        z = true;
                    } catch (InterruptedException e) {
                    }
                }
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    h.a(((i) arrayList.get(i2)).c);
                }
                z = true;
            }
        }
        return z;
    }

    public final i a(a aVar) {
        i iVar;
        synchronized (this) {
            ListIterator<i> listIterator = this.d.listIterator(this.d.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    iVar = null;
                    break;
                }
                i previous = listIterator.previous();
                if (previous.f3322b.f3354a.equals(aVar) && previous.b() && System.nanoTime() - previous.d() < this.c) {
                    listIterator.remove();
                    iVar = previous;
                    if (previous.e()) {
                        break;
                    }
                    try {
                        f.a().a(previous.c);
                        iVar = previous;
                        break;
                    } catch (SocketException e) {
                        h.a(previous.c);
                        f.a();
                        f.a("Unable to tagSocket(): " + e);
                    }
                }
            }
            if (iVar != null && iVar.e()) {
                this.d.addFirst(iVar);
            }
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(i iVar) {
        boolean isEmpty = this.d.isEmpty();
        this.d.addFirst(iVar);
        if (isEmpty) {
            this.e.execute(this.f);
        } else {
            notifyAll();
        }
    }
}
