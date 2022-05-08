package androidx.media2.session;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.RemoteException;
import android.support.p001v4.media.session.MediaControllerCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media.MediaBrowserServiceCompat;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.concurrent.Executor;
@SuppressLint({"ObsoleteSdkInt"})
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken.class */
public final class SessionToken implements VersionedParcelable {
    public static final int MSG_SEND_TOKEN2_FOR_LEGACY_SESSION = 1000;
    public static final String TAG = "SessionToken";
    public static final int TYPE_BROWSER_SERVICE_LEGACY = 101;
    public static final int TYPE_LIBRARY_SERVICE = 2;
    public static final int TYPE_SESSION = 0;
    public static final int TYPE_SESSION_LEGACY = 100;
    public static final int TYPE_SESSION_SERVICE = 1;
    public static final long WAIT_TIME_MS_FOR_SESSION_READY = 300;
    public SessionTokenImpl mImpl;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$OnSessionTokenCreatedListener.class */
    public interface OnSessionTokenCreatedListener {
        void onSessionTokenCreated(MediaSessionCompat.Token token, SessionToken sessionToken);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$SessionTokenImpl.class */
    public interface SessionTokenImpl extends VersionedParcelable {
        Object getBinder();

        @Nullable
        ComponentName getComponentName();

        @NonNull
        Bundle getExtras();

        @NonNull
        String getPackageName();

        @Nullable
        String getServiceName();

        int getType();

        int getUid();

        boolean isLegacySession();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionToken$TokenType.class */
    public @interface TokenType {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public SessionToken() {
    }

    public SessionToken(@NonNull Context context, @NonNull ComponentName componentName) {
        int i;
        if (context == null) {
            throw new NullPointerException("context shouldn't be null");
        } else if (componentName != null) {
            PackageManager packageManager = context.getPackageManager();
            int uid = getUid(packageManager, componentName.getPackageName());
            if (isInterfaceDeclared(packageManager, MediaLibraryService.SERVICE_INTERFACE, componentName)) {
                i = 2;
            } else if (isInterfaceDeclared(packageManager, MediaSessionService.SERVICE_INTERFACE, componentName)) {
                i = 1;
            } else if (isInterfaceDeclared(packageManager, MediaBrowserServiceCompat.SERVICE_INTERFACE, componentName)) {
                i = 101;
            } else {
                throw new IllegalArgumentException(componentName + " doesn't implement none of MediaSessionService, MediaLibraryService, MediaBrowserService nor MediaBrowserServiceCompat. Use service's full name");
            }
            if (i != 101) {
                this.mImpl = new SessionTokenImplBase(componentName, uid, i);
            } else {
                this.mImpl = new SessionTokenImplLegacy(componentName, uid);
            }
        } else {
            throw new NullPointerException("serviceComponent shouldn't be null");
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public SessionToken(SessionTokenImpl sessionTokenImpl) {
        this.mImpl = sessionTokenImpl;
    }

    public static MediaControllerCompat createMediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        try {
            return new MediaControllerCompat(context, token);
        } catch (RemoteException e) {
            Log.e(TAG, "Failed to create MediaControllerCompat object.", e);
            return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void createSessionToken(@NonNull Context context, @NonNull final MediaSessionCompat.Token token, @NonNull final Executor executor, @NonNull final OnSessionTokenCreatedListener onSessionTokenCreatedListener) {
        if (context == null) {
            throw new NullPointerException("context shouldn't be null");
        } else if (token == null) {
            throw new NullPointerException("compatToken shouldn't be null");
        } else if (executor == null) {
            throw new NullPointerException("executor shouldn't be null");
        } else if (onSessionTokenCreatedListener != null) {
            VersionedParcelable session2Token = token.getSession2Token();
            if (session2Token instanceof SessionToken) {
                notifySessionTokenCreated(executor, onSessionTokenCreatedListener, token, (SessionToken) session2Token);
                return;
            }
            final MediaControllerCompat createMediaControllerCompat = createMediaControllerCompat(context, token);
            if (createMediaControllerCompat == null) {
                Log.e(TAG, "Failed to create session token2.");
                return;
            }
            final String packageName = createMediaControllerCompat.getPackageName();
            final int uid = getUid(context.getPackageManager(), packageName);
            final HandlerThread handlerThread = new HandlerThread(TAG);
            handlerThread.start();
            final Handler handler = new Handler(handlerThread.getLooper()) { // from class: androidx.media2.session.SessionToken.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    synchronized (onSessionTokenCreatedListener) {
                        if (message.what == 1000) {
                            createMediaControllerCompat.unregisterCallback((MediaControllerCompat.Callback) message.obj);
                            SessionToken sessionToken = new SessionToken(new SessionTokenImplLegacy(token, packageName, uid));
                            token.setSession2Token(sessionToken);
                            SessionToken.notifySessionTokenCreated(executor, onSessionTokenCreatedListener, token, sessionToken);
                            SessionToken.quitHandlerThread(handlerThread);
                        }
                    }
                }
            };
            MediaControllerCompat.Callback callback = new MediaControllerCompat.Callback() { // from class: androidx.media2.session.SessionToken.2
                @Override // android.support.p001v4.media.session.MediaControllerCompat.Callback
                public void onSessionReady() {
                    SessionToken sessionToken;
                    synchronized (OnSessionTokenCreatedListener.this) {
                        handler.removeMessages(1000);
                        createMediaControllerCompat.unregisterCallback(this);
                        if (token.getSession2Token() instanceof SessionToken) {
                            sessionToken = (SessionToken) token.getSession2Token();
                        } else {
                            sessionToken = new SessionToken(new SessionTokenImplLegacy(token, packageName, uid));
                            token.setSession2Token(sessionToken);
                        }
                        SessionToken.notifySessionTokenCreated(executor, OnSessionTokenCreatedListener.this, token, sessionToken);
                        SessionToken.quitHandlerThread(handlerThread);
                    }
                }
            };
            synchronized (onSessionTokenCreatedListener) {
                createMediaControllerCompat.registerCallback(callback, handler);
                handler.sendMessageDelayed(handler.obtainMessage(1000, callback), 300L);
            }
        } else {
            throw new NullPointerException("listener shouldn't be null");
        }
    }

    public static int getUid(PackageManager packageManager, String str) {
        try {
            return packageManager.getApplicationInfo(str, 0).uid;
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("Cannot find package " + str);
        }
    }

    public static boolean isInterfaceDeclared(PackageManager packageManager, String str, ComponentName componentName) {
        ServiceInfo serviceInfo;
        Intent intent = new Intent(str);
        intent.setPackage(componentName.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 128);
        if (queryIntentServices == null) {
            return false;
        }
        for (int i = 0; i < queryIntentServices.size(); i++) {
            ResolveInfo resolveInfo = queryIntentServices.get(i);
            if (!(resolveInfo == null || (serviceInfo = resolveInfo.serviceInfo) == null || !TextUtils.equals(serviceInfo.name, componentName.getClassName()))) {
                return true;
            }
        }
        return false;
    }

    public static void notifySessionTokenCreated(Executor executor, final OnSessionTokenCreatedListener onSessionTokenCreatedListener, final MediaSessionCompat.Token token, final SessionToken sessionToken) {
        executor.execute(new Runnable() { // from class: androidx.media2.session.SessionToken.3
            @Override // java.lang.Runnable
            public void run() {
                OnSessionTokenCreatedListener.this.onSessionTokenCreated(token, sessionToken);
            }
        });
    }

    public static void quitHandlerThread(HandlerThread handlerThread) {
        if (Build.VERSION.SDK_INT >= 18) {
            handlerThread.quitSafely();
        } else {
            handlerThread.quit();
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionToken)) {
            return false;
        }
        return this.mImpl.equals(((SessionToken) obj).mImpl);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Object getBinder() {
        return this.mImpl.getBinder();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ComponentName getComponentName() {
        return this.mImpl.getComponentName();
    }

    @NonNull
    public Bundle getExtras() {
        return this.mImpl.getExtras();
    }

    @NonNull
    public String getPackageName() {
        return this.mImpl.getPackageName();
    }

    @Nullable
    public String getServiceName() {
        return this.mImpl.getServiceName();
    }

    public int getType() {
        return this.mImpl.getType();
    }

    public int getUid() {
        return this.mImpl.getUid();
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isLegacySession() {
        return this.mImpl.isLegacySession();
    }

    public String toString() {
        return this.mImpl.toString();
    }
}
