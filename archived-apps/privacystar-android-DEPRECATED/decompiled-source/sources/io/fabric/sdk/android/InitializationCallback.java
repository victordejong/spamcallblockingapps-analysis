package io.fabric.sdk.android;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/InitializationCallback.class */
public interface InitializationCallback<T> {
    public static final InitializationCallback EMPTY = new Empty();

    /* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/InitializationCallback$Empty.class */
    public static class Empty implements InitializationCallback<Object> {
        private Empty() {
        }

        @Override // io.fabric.sdk.android.InitializationCallback
        public void failure(Exception exc) {
        }

        @Override // io.fabric.sdk.android.InitializationCallback
        public void success(Object obj) {
        }
    }

    void failure(Exception exc);

    void success(T t);
}
