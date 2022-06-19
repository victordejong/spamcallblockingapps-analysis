package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.C1908f0;
import com.squareup.picasso.Picasso;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.squareup.picasso.u */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/u.class */
public class C1924u extends ThreadPoolExecutor {

    /* renamed from: com.squareup.picasso.u$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/u$a.class */
    private static final class C1925a extends FutureTask<RunnableC1898c> implements Comparable<C1925a> {

        /* renamed from: f */
        private final RunnableC1898c f5189f;

        C1925a(RunnableC1898c runnableC1898c) {
            super(runnableC1898c, null);
            this.f5189f = runnableC1898c;
        }

        /* renamed from: d */
        public int compareTo(C1925a c1925a) {
            Picasso.EnumC1890f m730r = this.f5189f.m730r();
            Picasso.EnumC1890f m730r2 = c1925a.f5189f.m730r();
            return m730r == m730r2 ? this.f5189f.f5120f - c1925a.f5189f.f5120f : m730r2.ordinal() - m730r.ordinal();
        }
    }

    public C1924u() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C1908f0.ThreadFactoryC1911c());
    }

    /* renamed from: b */
    private void m652b(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public void m653a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            m652b(3);
            return;
        }
        int type = networkInfo.getType();
        if (type != 0) {
            if (type == 1 || type == 6 || type == 9) {
                m652b(4);
                return;
            } else {
                m652b(3);
                return;
            }
        }
        int subtype = networkInfo.getSubtype();
        switch (subtype) {
            case 1:
            case 2:
                m652b(1);
                return;
            case 3:
            case 4:
            case 5:
            case 6:
                break;
            default:
                switch (subtype) {
                    case 12:
                        break;
                    case 13:
                    case 14:
                    case 15:
                        m652b(3);
                        return;
                    default:
                        m652b(3);
                        return;
                }
        }
        m652b(2);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        C1925a c1925a = new C1925a((RunnableC1898c) runnable);
        execute(c1925a);
        return c1925a;
    }
}
