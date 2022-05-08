package okhttp3.internal.platform;

import android.os.Build;
import android.util.Log;
import androidx.media2.exoplayer.external.audio.Sonic;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform.class */
public class AndroidPlatform extends Platform {
    public final CloseGuard closeGuard = CloseGuard.get();
    public final OptionalMethod<Socket> getAlpnSelectedProtocol;
    public final OptionalMethod<Socket> setAlpnProtocols;
    public final OptionalMethod<Socket> setHostname;
    public final OptionalMethod<Socket> setUseSessionTickets;
    public final Class<?> sslParametersClass;

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$AndroidCertificateChainCleaner.class */
    public static final class AndroidCertificateChainCleaner extends CertificateChainCleaner {
        public final Method checkServerTrusted;
        public final Object x509TrustManagerExtensions;

        public AndroidCertificateChainCleaner(Object obj, Method method) {
            this.x509TrustManagerExtensions = obj;
            this.checkServerTrusted = method;
        }

        @Override // okhttp3.internal.tls.CertificateChainCleaner
        public List<Certificate> clean(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.checkServerTrusted.invoke(this.x509TrustManagerExtensions, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e2.getMessage());
                sSLPeerUnverifiedException.initCause(e2);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof AndroidCertificateChainCleaner;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$AndroidTrustRootIndex.class */
    public static final class AndroidTrustRootIndex implements TrustRootIndex {
        public final Method findByIssuerAndSignatureMethod;
        public final X509TrustManager trustManager;

        public AndroidTrustRootIndex(X509TrustManager x509TrustManager, Method method) {
            this.findByIssuerAndSignatureMethod = method;
            this.trustManager = x509TrustManager;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof AndroidTrustRootIndex)) {
                return false;
            }
            AndroidTrustRootIndex androidTrustRootIndex = (AndroidTrustRootIndex) obj;
            if (!this.trustManager.equals(androidTrustRootIndex.trustManager) || !this.findByIssuerAndSignatureMethod.equals(androidTrustRootIndex.findByIssuerAndSignatureMethod)) {
                z = false;
            }
            return z;
        }

        @Override // okhttp3.internal.tls.TrustRootIndex
        public X509Certificate findByIssuerAndSignature(X509Certificate x509Certificate) {
            X509Certificate x509Certificate2;
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.findByIssuerAndSignatureMethod.invoke(this.trustManager, x509Certificate);
                x509Certificate2 = null;
                if (trustAnchor != null) {
                    x509Certificate2 = trustAnchor.getTrustedCert();
                }
            } catch (IllegalAccessException e) {
                throw Util.assertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException e2) {
                x509Certificate2 = null;
            }
            return x509Certificate2;
        }

        public int hashCode() {
            return this.trustManager.hashCode() + (this.findByIssuerAndSignatureMethod.hashCode() * 31);
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/platform/AndroidPlatform$CloseGuard.class */
    public static final class CloseGuard {
        public final Method getMethod;
        public final Method openMethod;
        public final Method warnIfOpenMethod;

        public CloseGuard(Method method, Method method2, Method method3) {
            this.getMethod = method;
            this.openMethod = method2;
            this.warnIfOpenMethod = method3;
        }

        public static CloseGuard get() {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                method3 = cls.getMethod("get", new Class[0]);
                method = cls.getMethod(MraidParser.MRAID_COMMAND_OPEN, String.class);
                method2 = cls.getMethod("warnIfOpen", new Class[0]);
            } catch (Exception e) {
                method2 = null;
                method = null;
            }
            return new CloseGuard(method3, method, method2);
        }

        public Object createAndOpen(String str) {
            Method method = this.getMethod;
            if (method == null) {
                return null;
            }
            try {
                Object invoke = method.invoke(null, new Object[0]);
                this.openMethod.invoke(invoke, str);
                return invoke;
            } catch (Exception e) {
                return null;
            }
        }

        public boolean warnIfOpen(Object obj) {
            boolean z = false;
            if (obj != null) {
                try {
                    this.warnIfOpenMethod.invoke(obj, new Object[0]);
                    z = true;
                } catch (Exception e) {
                    z = false;
                }
            }
            return z;
        }
    }

    public AndroidPlatform(Class<?> cls, OptionalMethod<Socket> optionalMethod, OptionalMethod<Socket> optionalMethod2, OptionalMethod<Socket> optionalMethod3, OptionalMethod<Socket> optionalMethod4) {
        this.sslParametersClass = cls;
        this.setUseSessionTickets = optionalMethod;
        this.setHostname = optionalMethod2;
        this.getAlpnSelectedProtocol = optionalMethod3;
        this.setAlpnProtocols = optionalMethod4;
    }

    public static Platform buildIfSupported() {
        Class<?> cls;
        OptionalMethod optionalMethod;
        OptionalMethod optionalMethod2;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException e) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            OptionalMethod optionalMethod3 = new OptionalMethod(null, "setUseSessionTickets", Boolean.TYPE);
            OptionalMethod optionalMethod4 = new OptionalMethod(null, "setHostname", String.class);
            if (supportsAlpn()) {
                optionalMethod2 = new OptionalMethod(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                optionalMethod = new OptionalMethod(null, "setAlpnProtocols", byte[].class);
            } else {
                optionalMethod = null;
                optionalMethod2 = null;
            }
            return new AndroidPlatform(cls, optionalMethod3, optionalMethod4, optionalMethod2, optionalMethod);
        } catch (ClassNotFoundException e2) {
            return null;
        }
    }

    public static boolean supportsAlpn() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public final boolean api23IsCleartextTrafficPermitted(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException e) {
            return super.isCleartextTrafficPermitted(str);
        }
    }

    public final boolean api24IsCleartextTrafficPermitted(String str, Class<?> cls, Object obj) throws InvocationTargetException, IllegalAccessException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException e) {
            return api23IsCleartextTrafficPermitted(str, cls, obj);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public CertificateChainCleaner buildCertificateChainCleaner(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new AndroidCertificateChainCleaner(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception e) {
            return super.buildCertificateChainCleaner(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public TrustRootIndex buildTrustRootIndex(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new AndroidTrustRootIndex(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException e) {
            return super.buildTrustRootIndex(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
        if (str != null) {
            this.setUseSessionTickets.invokeOptionalWithoutCheckedException(sSLSocket, true);
            this.setHostname.invokeOptionalWithoutCheckedException(sSLSocket, str);
        }
        OptionalMethod<Socket> optionalMethod = this.setAlpnProtocols;
        if (optionalMethod != null && optionalMethod.isSupported(sSLSocket)) {
            this.setAlpnProtocols.invokeWithoutCheckedException(sSLSocket, Platform.concatLengthPrefixed(list));
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (AssertionError e) {
            if (Util.isAndroidGetsocknameError(e)) {
                throw new IOException(e);
            }
            throw e;
        } catch (ClassCastException e2) {
            if (Build.VERSION.SDK_INT == 26) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e2);
                throw iOException;
            }
            throw e2;
        } catch (SecurityException e3) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e3);
            throw iOException2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (android.os.Build.VERSION.SDK_INT < 22) goto L_0x001d;
     */
    @Override // okhttp3.internal.platform.Platform
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.net.ssl.SSLContext getSSLContext() {
        /*
            r5 = this;
            r0 = 1
            r6 = r0
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: NoClassDefFoundError -> 0x001c
            r1 = 16
            if (r0 < r1) goto L_0x0017
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: NoClassDefFoundError -> 0x001c
            r7 = r0
            r0 = r7
            r1 = 22
            if (r0 >= r1) goto L_0x0017
            goto L_0x001d
        L_0x0017:
            r0 = 0
            r6 = r0
            goto L_0x001d
        L_0x001c:
            r8 = move-exception
        L_0x001d:
            r0 = r6
            if (r0 == 0) goto L_0x0029
            java.lang.String r0 = "TLSv1.2"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: NoSuchAlgorithmException -> 0x003e
            r8 = r0
            r0 = r8
            return r0
        L_0x0029:
            java.lang.String r0 = "TLS"
            javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch: NoSuchAlgorithmException -> 0x0031
            r8 = r0
            r0 = r8
            return r0
        L_0x0031:
            r8 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "No TLS provider"
            r3 = r8
            r1.<init>(r2, r3)
            throw r0
        L_0x003e:
            r8 = move-exception
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.platform.AndroidPlatform.getSSLContext():javax.net.ssl.SSLContext");
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String getSelectedProtocol(SSLSocket sSLSocket) {
        OptionalMethod<Socket> optionalMethod = this.getAlpnSelectedProtocol;
        String str = null;
        if (optionalMethod == null || !optionalMethod.isSupported(sSLSocket)) {
            return null;
        }
        byte[] bArr = (byte[]) this.getAlpnSelectedProtocol.invokeWithoutCheckedException(sSLSocket, new Object[0]);
        if (bArr != null) {
            str = new String(bArr, Util.UTF_8);
        }
        return str;
    }

    @Override // okhttp3.internal.platform.Platform
    public Object getStackTraceForCloseable(String str) {
        return this.closeGuard.createAndOpen(str);
    }

    @Override // okhttp3.internal.platform.Platform
    public boolean isCleartextTrafficPermitted(String str) {
        Exception e;
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return api24IsCleartextTrafficPermitted(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return super.isCleartextTrafficPermitted(str);
        } catch (IllegalAccessException e3) {
            e = e3;
            throw Util.assertionError("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e4) {
            e = e4;
            throw Util.assertionError("unable to determine cleartext support", e);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw Util.assertionError("unable to determine cleartext support", e);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void log(int i, String str, @Nullable Throwable th) {
        int min;
        int i2 = 5;
        if (i != 5) {
            i2 = 3;
        }
        String str2 = str;
        if (th != null) {
            str2 = str + '\n' + Log.getStackTraceString(th);
        }
        int i3 = 0;
        int length = str2.length();
        while (i3 < length) {
            int indexOf = str2.indexOf(10, i3);
            if (indexOf == -1) {
                indexOf = length;
            }
            while (true) {
                min = Math.min(indexOf, i3 + Sonic.AMDF_FREQUENCY);
                Log.println(i2, "OkHttp", str2.substring(i3, min));
                if (min >= indexOf) {
                    break;
                }
                i3 = min;
            }
            i3 = min + 1;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void logCloseableLeak(String str, Object obj) {
        if (!this.closeGuard.warnIfOpen(obj)) {
            log(5, str, null);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        Object readFieldOrNull = Platform.readFieldOrNull(sSLSocketFactory, this.sslParametersClass, "sslParameters");
        Object obj = readFieldOrNull;
        if (readFieldOrNull == null) {
            try {
                obj = Platform.readFieldOrNull(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
            } catch (ClassNotFoundException e) {
                return super.trustManager(sSLSocketFactory);
            }
        }
        X509TrustManager x509TrustManager = (X509TrustManager) Platform.readFieldOrNull(obj, X509TrustManager.class, "x509TrustManager");
        return x509TrustManager != null ? x509TrustManager : (X509TrustManager) Platform.readFieldOrNull(obj, X509TrustManager.class, "trustManager");
    }
}
