package com.squareup.picasso;

import android.net.NetworkInfo;
import com.squareup.picasso.C0240f0;
import com.squareup.picasso.Picasso;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.u */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/u.class */
public class C0256u extends ThreadPoolExecutor {

    /* renamed from: com.squareup.picasso.u$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/u$a.class */
    private static final class C0257a extends FutureTask<RunnableC0230c> implements Comparable<C0257a> {

        /* renamed from: f */
        private final RunnableC0230c f510f;

        C0257a(RunnableC0230c cVar) {
            super(cVar, null);
            this.f510f = cVar;
        }

        /* renamed from: d */
        public int compareTo(C0257a aVar) {
            Picasso.EnumC0222f r = this.f510f.m730r();
            Picasso.EnumC0222f r2 = aVar.f510f.m730r();
            return r == r2 ? this.f510f.f441f - aVar.f510f.f441f : r2.ordinal() - r.ordinal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0256u() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new C0240f0.ThreadFactoryC0243c());
    }

    /* renamed from: b */
    private void m652b(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public void m653a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            m652b(3);
            return;
        }
        int type = networkInfo.getType();
        if (type == 0) {
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
        } else if (type == 1 || type == 6 || type == 9) {
            m652b(4);
        } else {
            m652b(3);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        C0257a aVar = new C0257a((RunnableC0230c) runnable);
        execute(aVar);
        return aVar;
    }
}
