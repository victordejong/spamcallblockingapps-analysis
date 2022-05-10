package p131c.p161d.p282e.p340u.p347j;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.Permission;
import java.util.List;
import java.util.Map;
import p131c.p161d.p282e.p340u.p343f.C5954a;
/* renamed from: c.d.e.u.j.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/j/c.class */
public final class C5974c extends HttpURLConnection {

    /* renamed from: a */
    public final C5976e f19396a;

    public C5974c(HttpURLConnection httpURLConnection, Timer timer, C5954a aVar) {
        super(httpURLConnection.getURL());
        this.f19396a = new C5976e(httpURLConnection, timer, aVar);
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(String str, String str2) {
        this.f19396a.m22473a(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
        this.f19396a.m22479a();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f19396a.m22470b();
    }

    public boolean equals(Object obj) {
        return this.f19396a.equals(obj);
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f19396a.m22463c();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f19396a.m22459d();
    }

    @Override // java.net.URLConnection
    public Object getContent() throws IOException {
        return this.f19396a.m22456e();
    }

    @Override // java.net.URLConnection
    public Object getContent(Class[] clsArr) throws IOException {
        return this.f19396a.m22471a(clsArr);
    }

    @Override // java.net.URLConnection
    public String getContentEncoding() {
        return this.f19396a.m22453f();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f19396a.m22450g();
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f19396a.m22449h();
    }

    @Override // java.net.URLConnection
    public String getContentType() {
        return this.f19396a.m22448i();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f19396a.m22447j();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f19396a.m22446k();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f19396a.m22445l();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f19396a.m22444m();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.f19396a.m22443n();
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f19396a.m22442o();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderField(int i) {
        return this.f19396a.m22478a(i);
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String str) {
        return this.f19396a.m22476a(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(String str, long j) {
        return this.f19396a.m22474a(str, j);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(String str, int i) {
        return this.f19396a.m22475a(str, i);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public String getHeaderFieldKey(int i) {
        return this.f19396a.m22469b(i);
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f19396a.m22466b(str, j);
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.f19396a.m22441p();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f19396a.m22440q();
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        return this.f19396a.m22439r();
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f19396a.m22438s();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f19396a.m22437t();
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        return this.f19396a.m22436u();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public Permission getPermission() throws IOException {
        return this.f19396a.m22435v();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f19396a.m22434w();
    }

    @Override // java.net.HttpURLConnection
    public String getRequestMethod() {
        return this.f19396a.m22433x();
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getRequestProperties() {
        return this.f19396a.m22432y();
    }

    @Override // java.net.URLConnection
    public String getRequestProperty(String str) {
        return this.f19396a.m22467b(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        return this.f19396a.m22431z();
    }

    @Override // java.net.HttpURLConnection
    public String getResponseMessage() throws IOException {
        return this.f19396a.m22484A();
    }

    @Override // java.net.URLConnection
    public URL getURL() {
        return this.f19396a.m22483B();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f19396a.m22482C();
    }

    public int hashCode() {
        return this.f19396a.hashCode();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z) {
        this.f19396a.m22472a(z);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i) {
        this.f19396a.m22462c(i);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i) {
        this.f19396a.m22458d(i);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z) {
        this.f19396a.m22464b(z);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z) {
        this.f19396a.m22460c(z);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z) {
        this.f19396a.m22457d(z);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i) {
        this.f19396a.m22455e(i);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f19396a.m22477a(j);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j) {
        this.f19396a.m22468b(j);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z) {
        this.f19396a.m22454e(z);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i) {
        this.f19396a.m22452f(i);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(String str) throws ProtocolException {
        this.f19396a.m22461c(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(String str, String str2) {
        this.f19396a.m22465b(str, str2);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z) {
        this.f19396a.m22451f(z);
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.f19396a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f19396a.m22480E();
    }
}
