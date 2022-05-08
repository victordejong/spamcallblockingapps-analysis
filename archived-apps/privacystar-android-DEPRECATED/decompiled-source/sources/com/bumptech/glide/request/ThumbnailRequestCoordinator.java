package com.bumptech.glide.request;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/ThumbnailRequestCoordinator.class */
public class ThumbnailRequestCoordinator implements RequestCoordinator, Request {
    private Request full;
    private boolean isRunning;
    @Nullable
    private final RequestCoordinator parent;
    private Request thumb;

    @VisibleForTesting
    ThumbnailRequestCoordinator() {
        this(null);
    }

    public ThumbnailRequestCoordinator(@Nullable RequestCoordinator requestCoordinator) {
        this.parent = requestCoordinator;
    }

    private boolean parentCanNotifyCleared() {
        return this.parent == null || this.parent.canNotifyCleared(this);
    }

    private boolean parentCanNotifyStatusChanged() {
        return this.parent == null || this.parent.canNotifyStatusChanged(this);
    }

    private boolean parentCanSetImage() {
        return this.parent == null || this.parent.canSetImage(this);
    }

    private boolean parentIsAnyResourceSet() {
        return this.parent != null && this.parent.isAnyResourceSet();
    }

    @Override // com.bumptech.glide.request.Request
    public void begin() {
        this.isRunning = true;
        if (!this.full.isComplete() && !this.thumb.isRunning()) {
            this.thumb.begin();
        }
        if (this.isRunning && !this.full.isRunning()) {
            this.full.begin();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyCleared(Request request) {
        return parentCanNotifyCleared() && request.equals(this.full);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyStatusChanged(Request request) {
        return parentCanNotifyStatusChanged() && request.equals(this.full) && !isAnyResourceSet();
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canSetImage(Request request) {
        return parentCanSetImage() && (request.equals(this.full) || !this.full.isResourceSet());
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        this.isRunning = false;
        this.thumb.clear();
        this.full.clear();
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean isAnyResourceSet() {
        return parentIsAnyResourceSet() || isResourceSet();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        return this.full.isCleared();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        return this.full.isComplete() || this.thumb.isComplete();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r3.thumb != null) goto L_0x0048;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003c, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
        if (r0.thumb != null) goto L_0x005c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
        if (r3.thumb.isEquivalentTo(r0.thumb) == false) goto L_0x005c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r0.full == null) goto L_0x0035;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (r3.full.isEquivalentTo(r0.full) != false) goto L_0x0035;
     */
    @Override // com.bumptech.glide.request.Request
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isEquivalentTo(com.bumptech.glide.request.Request r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof com.bumptech.glide.request.ThumbnailRequestCoordinator
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x005e
            r0 = r4
            com.bumptech.glide.request.ThumbnailRequestCoordinator r0 = (com.bumptech.glide.request.ThumbnailRequestCoordinator) r0
            r4 = r0
            r0 = r3
            com.bumptech.glide.request.Request r0 = r0.full
            if (r0 != 0) goto L_0x0023
            r0 = r6
            r5 = r0
            r0 = r4
            com.bumptech.glide.request.Request r0 = r0.full
            if (r0 != 0) goto L_0x005c
            goto L_0x0035
        L_0x0023:
            r0 = r6
            r5 = r0
            r0 = r3
            com.bumptech.glide.request.Request r0 = r0.full
            r1 = r4
            com.bumptech.glide.request.Request r1 = r1.full
            boolean r0 = r0.isEquivalentTo(r1)
            if (r0 == 0) goto L_0x005c
        L_0x0035:
            r0 = r3
            com.bumptech.glide.request.Request r0 = r0.thumb
            if (r0 != 0) goto L_0x0048
            r0 = r6
            r5 = r0
            r0 = r4
            com.bumptech.glide.request.Request r0 = r0.thumb
            if (r0 != 0) goto L_0x005c
            goto L_0x005a
        L_0x0048:
            r0 = r6
            r5 = r0
            r0 = r3
            com.bumptech.glide.request.Request r0 = r0.thumb
            r1 = r4
            com.bumptech.glide.request.Request r1 = r1.thumb
            boolean r0 = r0.isEquivalentTo(r1)
            if (r0 == 0) goto L_0x005c
        L_0x005a:
            r0 = 1
            r5 = r0
        L_0x005c:
            r0 = r5
            return r0
        L_0x005e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.ThumbnailRequestCoordinator.isEquivalentTo(com.bumptech.glide.request.Request):boolean");
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isFailed() {
        return this.full.isFailed();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isResourceSet() {
        return this.full.isResourceSet() || this.thumb.isResourceSet();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        return this.full.isRunning();
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestFailed(Request request) {
        if (request.equals(this.full) && this.parent != null) {
            this.parent.onRequestFailed(this);
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestSuccess(Request request) {
        if (!request.equals(this.thumb)) {
            if (this.parent != null) {
                this.parent.onRequestSuccess(this);
            }
            if (!this.thumb.isComplete()) {
                this.thumb.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void recycle() {
        this.full.recycle();
        this.thumb.recycle();
    }

    public void setRequests(Request request, Request request2) {
        this.full = request;
        this.thumb = request2;
    }
}
