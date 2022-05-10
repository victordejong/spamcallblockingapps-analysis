package p131c.p161d.p282e.p340u.p347j;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.security.Principal;
import java.security.cert.Certificate;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import p131c.p161d.p282e.p340u.p343f.C5954a;
/* renamed from: c.d.e.u.j.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/d.class */
public final class C5975d extends HttpsURLConnection {

    /* renamed from: a */
    public final C5976e f19397a;

    /* renamed from: b */
    public final HttpsURLConnection f19398b;

    public C5975d(HttpsURLConnection httpsURLConnection, Timer timer, C5954a aVar) {
        super(httpsURLConnection.getURL());
        this.f19398b = httpsURLConnection;
        this.f19397a = new C5976e(httpsURLConnection, timer, aVar);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f19397a.m22473a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.f19397a.m22479a();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f19397a.m22470b();
    }

    public boolean equals(Object obj) {
        return this.f19397a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f19397a.m22463c();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public String getCipherSuite() {
        return this.f19398b.getCipherSuite();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f19397a.m22459d();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        return this.f19397a.m22456e();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        return this.f19397a.m22471a(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f19397a.m22453f();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f19397a.m22450g();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f19397a.m22449h();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f19397a.m22448i();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f19397a.m22447j();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f19397a.m22446k();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f19397a.m22445l();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f19397a.m22444m();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f19397a.m22443n();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f19397a.m22442o();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f19397a.m22478a(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f19397a.m22476a(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f19397a.m22474a(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f19397a.m22475a(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f19397a.m22469b(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f19397a.m22466b(str, j);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f19397a.m22441p();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public HostnameVerifier getHostnameVerifier() {
        return this.f19398b.getHostnameVerifier();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f19397a.m22440q();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        return this.f19397a.m22439r();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f19397a.m22438s();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f19397a.m22437t();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getLocalCertificates() {
        return this.f19398b.getLocalCertificates();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getLocalPrincipal() {
        return this.f19398b.getLocalPrincipal();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        return this.f19397a.m22436u();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        return this.f19398b.getPeerPrincipal();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.f19397a.m22435v();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f19397a.m22434w();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f19397a.m22433x();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f19397a.m22432y();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f19397a.m22467b(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        return this.f19397a.m22431z();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        return this.f19397a.m22484A();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public SSLSocketFactory getSSLSocketFactory() {
        return this.f19398b.getSSLSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public Certificate[] getServerCertificates() throws SSLPeerUnverifiedException {
        return this.f19398b.getServerCertificates();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f19397a.m22483B();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f19397a.m22482C();
    }

    public int hashCode() {
        return this.f19397a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f19397a.m22472a(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f19397a.m22462c(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f19397a.m22458d(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f19397a.m22464b(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f19397a.m22460c(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f19397a.m22457d(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f19397a.m22455e(i);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f19397a.m22477a(j);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f19398b.setHostnameVerifier(hostnameVerifier);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f19397a.m22468b(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f19397a.m22454e(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f19397a.m22452f(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) throws ProtocolException {
        this.f19397a.m22461c(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f19397a.m22465b(str, str2);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f19398b.setSSLSocketFactory(sSLSocketFactory);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f19397a.m22451f(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f19397a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f19397a.m22480E();
    }
}
