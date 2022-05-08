package com.bumptech.glide.request;

import android.support.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/ErrorRequestCoordinator.class */
public final class ErrorRequestCoordinator implements RequestCoordinator, Request {
    private Request error;
    @Nullable
    private final RequestCoordinator parent;
    private Request primary;

    public ErrorRequestCoordinator(@Nullable RequestCoordinator requestCoordinator) {
        this.parent = requestCoordinator;
    }

    private boolean isValidRequest(Request request) {
        return request.equals(this.primary) || (this.primary.isFailed() && request.equals(this.error));
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
        if (!this.primary.isRunning()) {
            this.primary.begin();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyCleared(Request request) {
        return parentCanNotifyCleared() && isValidRequest(request);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canNotifyStatusChanged(Request request) {
        return parentCanNotifyStatusChanged() && isValidRequest(request);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean canSetImage(Request request) {
        return parentCanSetImage() && isValidRequest(request);
    }

    @Override // com.bumptech.glide.request.Request
    public void clear() {
        this.primary.clear();
        if (this.error.isRunning()) {
            this.error.clear();
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public boolean isAnyResourceSet() {
        return parentIsAnyResourceSet() || isResourceSet();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isCleared() {
        return (this.primary.isFailed() ? this.error : this.primary).isCleared();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isComplete() {
        return (this.primary.isFailed() ? this.error : this.primary).isComplete();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isEquivalentTo(Request request) {
        if (!(request instanceof ErrorRequestCoordinator)) {
            return false;
        }
        ErrorRequestCoordinator errorRequestCoordinator = (ErrorRequestCoordinator) request;
        boolean z = false;
        if (this.primary.isEquivalentTo(errorRequestCoordinator.primary)) {
            z = false;
            if (this.error.isEquivalentTo(errorRequestCoordinator.error)) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isFailed() {
        return this.primary.isFailed() && this.error.isFailed();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isResourceSet() {
        return (this.primary.isFailed() ? this.error : this.primary).isResourceSet();
    }

    @Override // com.bumptech.glide.request.Request
    public boolean isRunning() {
        return (this.primary.isFailed() ? this.error : this.primary).isRunning();
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestFailed(Request request) {
        if (!request.equals(this.error)) {
            if (!this.error.isRunning()) {
                this.error.begin();
            }
        } else if (this.parent != null) {
            this.parent.onRequestFailed(this);
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    public void onRequestSuccess(Request request) {
        if (this.parent != null) {
            this.parent.onRequestSuccess(this);
        }
    }

    @Override // com.bumptech.glide.request.Request
    public void recycle() {
        this.primary.recycle();
        this.error.recycle();
    }

    public void setRequests(Request request, Request request2) {
        this.primary = request;
        this.error = request2;
    }
}
