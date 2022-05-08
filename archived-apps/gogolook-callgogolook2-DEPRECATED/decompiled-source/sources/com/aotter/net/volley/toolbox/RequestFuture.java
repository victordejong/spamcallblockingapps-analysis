package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.Request;
import com.aotter.net.volley.Response;
import com.aotter.net.volley.VolleyError;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/RequestFuture.class */
public class RequestFuture<T> implements Response.ErrorListener, Response.Listener<T>, Future<T> {
    public VolleyError mException;
    public Request<?> mRequest;
    public T mResult;
    public boolean mResultReceived = false;

    /* JADX WARN: Removed duplicated region for block: B:20:0x003f A[Catch: all -> 0x0075, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:8:0x0010, B:14:0x001f, B:15:0x0027, B:17:0x0030, B:18:0x0038, B:20:0x003f, B:22:0x0046, B:26:0x004f, B:27:0x0058, B:28:0x0059, B:28:0x0059, B:29:0x005c, B:30:0x0066, B:31:0x0067, B:31:0x0067, B:32:0x006a, B:33:0x0074), top: B:38:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0059 A[Catch: all -> 0x0075, all -> 0x0075, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0009, B:8:0x0010, B:14:0x001f, B:15:0x0027, B:17:0x0030, B:18:0x0038, B:20:0x003f, B:22:0x0046, B:26:0x004f, B:27:0x0058, B:28:0x0059, B:28:0x0059, B:29:0x005c, B:30:0x0066, B:31:0x0067, B:31:0x0067, B:32:0x006a, B:33:0x0074), top: B:38:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private T doGet(java.lang.Long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            com.aotter.net.volley.VolleyError r0 = r0.mException     // Catch: all -> 0x0075
            if (r0 != 0) goto L_0x0067
            r0 = r5
            boolean r0 = r0.mResultReceived     // Catch: all -> 0x0075
            if (r0 == 0) goto L_0x0019
            r0 = r5
            T r0 = r0.mResult     // Catch: all -> 0x0075
            r6 = r0
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            return r0
        L_0x0019:
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0027
        L_0x001f:
            r0 = r5
            r1 = r7
            r0.wait(r1)     // Catch: all -> 0x0075
            goto L_0x0038
        L_0x0027:
            r0 = r6
            long r0 = r0.longValue()     // Catch: all -> 0x0075
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0038
            r0 = r6
            long r0 = r0.longValue()     // Catch: all -> 0x0075
            r7 = r0
            goto L_0x001f
        L_0x0038:
            r0 = r5
            com.aotter.net.volley.VolleyError r0 = r0.mException     // Catch: all -> 0x0075
            if (r0 != 0) goto L_0x0059
            r0 = r5
            boolean r0 = r0.mResultReceived     // Catch: all -> 0x0075
            if (r0 == 0) goto L_0x004f
            r0 = r5
            T r0 = r0.mResult     // Catch: all -> 0x0075
            r6 = r0
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            return r0
        L_0x004f:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException     // Catch: all -> 0x0075
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: all -> 0x0075
            r0 = r6
            throw r0     // Catch: all -> 0x0075
        L_0x0059:
            java.util.concurrent.ExecutionException r0 = new java.util.concurrent.ExecutionException     // Catch: all -> 0x0075, all -> 0x0075
            r6 = r0
            r0 = r6
            r1 = r5
            com.aotter.net.volley.VolleyError r1 = r1.mException     // Catch: all -> 0x0075
            r0.<init>(r1)     // Catch: all -> 0x0075
            r0 = r6
            throw r0     // Catch: all -> 0x0075
        L_0x0067:
            java.util.concurrent.ExecutionException r0 = new java.util.concurrent.ExecutionException     // Catch: all -> 0x0075, all -> 0x0075
            r6 = r0
            r0 = r6
            r1 = r5
            com.aotter.net.volley.VolleyError r1 = r1.mException     // Catch: all -> 0x0075
            r0.<init>(r1)     // Catch: all -> 0x0075
            r0 = r6
            throw r0     // Catch: all -> 0x0075
        L_0x0075:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.volley.toolbox.RequestFuture.doGet(java.lang.Long):java.lang.Object");
    }

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        synchronized (this) {
            if (this.mRequest == null) {
                return false;
            }
            if (isDone()) {
                return false;
            }
            this.mRequest.cancel();
            return true;
        }
    }

    @Override // java.util.concurrent.Future
    public T get() {
        try {
            return doGet(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return doGet(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.mRequest;
        if (request == null) {
            return false;
        }
        return request.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean z;
        synchronized (this) {
            if (!this.mResultReceived && this.mException == null) {
                if (!isCancelled()) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    @Override // com.aotter.net.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        synchronized (this) {
            this.mException = volleyError;
            notifyAll();
        }
    }

    @Override // com.aotter.net.volley.Response.Listener
    public void onResponse(T t) {
        synchronized (this) {
            this.mResultReceived = true;
            this.mResult = t;
            notifyAll();
        }
    }

    public void setRequest(Request<?> request) {
        this.mRequest = request;
    }
}
