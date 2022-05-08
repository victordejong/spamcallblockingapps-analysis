package com.tmobile.tmoid.helperlib.sit.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.tmobile.tmoid.agent.Configuration;
import com.tmobile.tmoid.agent.utils.Utils;
import com.tmobile.tmoid.helperlib.sit.SitErrorType;
import com.tmobile.tmoid.helperlib.sit.SitIccException;
import com.tmobile.tmoid.helperlib.sit.SitMobileDataConnectionException;
import com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException;
import com.tmobile.tmoid.helperlib.sit.http.GetMsisdnRequestWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.GetMsisdnResponseWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.HttpDefaultHandler;
import com.tmobile.tmoid.helperlib.sit.http.ManageConnectivityRequestWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.ManageConnectivityResponseWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.ManagePushTokenRequestWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.ManagePushTokenResponseWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.ManageServiceRequestWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.ManageServiceResponse;
import com.tmobile.tmoid.helperlib.sit.http.ManageServiceResponseWith3GppAuth;
import com.tmobile.tmoid.helperlib.sit.http.ServiceInstance;
import com.tmobile.tmoid.helperlib.sit.http.ServiceItem;
import com.tmobile.tmoid.helperlib.sit.http.ServiceNameInternal;
import com.tmobile.tmoid.helperlib.sit.internal.SitRequestWorker;
import com.tmobile.tmoid.helperlib.sit.mobileconnhelper.Connection;
import com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi;
import com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityCallback;
import com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityImpl;
import com.tmobile.tmoid.helperlib.sit.mobileconnhelper.SimpleConnectivityCallback;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitRequestWorker.class */
public class SitRequestWorker {

    /* renamed from: d */
    private static final TimeUnit f14898d = TimeUnit.MILLISECONDS;

    /* renamed from: a */
    private Context f14899a;

    /* renamed from: b */
    private Configuration f14900b;

    /* renamed from: c */
    private ConnectivityApi f14901c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.tmoid.helperlib.sit.internal.SitRequestWorker$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/internal/SitRequestWorker$1.class */
    public class C20871 extends SimpleConnectivityCallback {

        /* renamed from: a */
        final /* synthetic */ Connection[] f14902a;

        /* renamed from: b */
        final /* synthetic */ CountDownLatch f14903b;

        C20871(Connection[] connectionArr, CountDownLatch countDownLatch) {
            this.f14902a = connectionArr;
            this.f14903b = countDownLatch;
        }

        @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.SimpleConnectivityCallback
        /* renamed from: e */
        public void mo4663e(Connection connection) {
            Log.m4654d("TMO-Agent", "Mobile network available!");
            connection.m4698d(new Runnable() { // from class: com.tmobile.tmoid.helperlib.sit.internal.b
                @Override // java.lang.Runnable
                public final void run() {
                    SitRequestWorker.C20871.this.m4703g();
                }
            });
            this.f14902a[0] = connection;
            this.f14903b.countDown();
        }

        @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.SimpleConnectivityCallback
        /* renamed from: f */
        public void mo4662f(ConnectivityCallback connectivityCallback) {
            Log.m4654d("TMO-Agent", "Mobile connection request failed!");
            this.f14903b.countDown();
        }

        /* renamed from: g */
        public /* synthetic */ void m4703g() {
            SitRequestWorker.this.f14901c.mo4691b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SitRequestWorker(Context context, Configuration configuration) {
        this.f14899a = context;
        this.f14900b = configuration;
        this.f14901c = new ConnectivityImpl(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02b8  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m4724c(com.tmobile.tmoid.helperlib.sit.mobileconnhelper.Connection r8, java.lang.String r9) throws com.tmobile.tmoid.helperlib.sit.SitServerCommunicationErrorException, com.tmobile.tmoid.helperlib.sit.SitIccException {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.tmoid.helperlib.sit.internal.SitRequestWorker.m4724c(com.tmobile.tmoid.helperlib.sit.mobileconnhelper.Connection, java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    private String m4723d(String str) throws SitServerCommunicationErrorException, SitIccException {
        String c = this.f14900b.getRamStorage().m5104c();
        String str2 = c;
        if (TextUtils.isEmpty(c)) {
            try {
                String c2 = m4724c(m4722e(false), str);
                str2 = c2;
                if (!TextUtils.isEmpty(c2)) {
                    this.f14900b.getRamStorage().m5098i(c2);
                    str2 = c2;
                }
            } catch (SitMobileDataConnectionException e) {
                throw new IllegalStateException(e);
            }
        }
        Log.m4654d("TMO-Agent", "getAkaToken: " + str2);
        return str2;
    }

    /* renamed from: e */
    private Connection m4722e(boolean z) throws SitMobileDataConnectionException {
        Connection connection;
        Connection[] connectionArr = new Connection[1];
        String sit_ses_url = this.f14900b.getSIT_SES_URL();
        if (z) {
            Log.m4654d("TMO-Agent", "Initiating 'force mobile network' request...");
            CountDownLatch countDownLatch = new CountDownLatch(1);
            try {
                this.f14901c.mo4692a(sit_ses_url, new C20871(connectionArr, countDownLatch), 45000L);
                if (countDownLatch.await(60000L, f14898d)) {
                    connection = connectionArr[0];
                } else {
                    Log.m4654d("TMO-Agent", "Callback sync failed to complete within the allotted time interval!");
                    throw new SitMobileDataConnectionException("Internal error.Failed to force the mobile data connection within the allotted time interval!");
                }
            } catch (InterruptedException e) {
                Log.m4653d("TMO-Agent", "Requesting a mobile connection failed with an exception!", e);
                throw new SitMobileDataConnectionException(e);
            }
        } else {
            connection = new Connection(sit_ses_url);
        }
        if (connection != null) {
            return connection;
        }
        throw new SitMobileDataConnectionException();
    }

    /* renamed from: f */
    private String m4721f(Connection connection, String str, String str2) throws SitServerCommunicationErrorException {
        String d = this.f14900b.getRamStorage().m5103d();
        String str3 = d;
        if (TextUtils.isEmpty(d)) {
            str3 = m4718i(str, connection, str2).m4777e();
        }
        return str3;
    }

    @Deprecated
    /* renamed from: g */
    private ManageConnectivityResponseWith3GppAuth m4720g(Connection connection, String str, int i, String str2, String str3, String str4) throws SitServerCommunicationErrorException {
        ManageConnectivityRequestWith3GppAuth manageConnectivityRequestWith3GppAuth = new ManageConnectivityRequestWith3GppAuth(str, i, str2, str3, str4);
        ManageConnectivityResponseWith3GppAuth manageConnectivityResponseWith3GppAuth = (ManageConnectivityResponseWith3GppAuth) new HttpDefaultHandler(connection.m4701a(), connection.m4700b()).m4951c(manageConnectivityRequestWith3GppAuth, ManageConnectivityResponseWith3GppAuth.class);
        if (manageConnectivityResponseWith3GppAuth == null || !manageConnectivityResponseWith3GppAuth.m4923l(manageConnectivityRequestWith3GppAuth)) {
            Log.m4654d("TMO-Agent", "'manageConnectivity' response invalid!");
            return null;
        }
        Log.m4654d("TMO-Agent", "'manageConnectivity' response parsing ok!");
        return manageConnectivityResponseWith3GppAuth;
    }

    /* renamed from: h */
    private String m4719h(String str, Connection connection, String str2) throws SitServerCommunicationErrorException {
        String e = this.f14900b.getRamStorage().m5102e();
        String str3 = e;
        if (TextUtils.isEmpty(e)) {
            str3 = m4718i(str, connection, str2).m4779c();
        }
        return str3;
    }

    /* renamed from: i */
    private MsisdnDataAPIResponse m4718i(String str, Connection connection, String str2) throws SitServerCommunicationErrorException {
        Log.m4654d("TMO-Agent", "getMsisdnDataInternal akaToken: " + str2);
        GetMsisdnRequestWith3GppAuth getMsisdnRequestWith3GppAuth = new GetMsisdnRequestWith3GppAuth(Utils.m5076a(this.f14899a), str2 != null ? Utils.m5075b(this.f14899a) : null, str2);
        GetMsisdnResponseWith3GppAuth getMsisdnResponseWith3GppAuth = (GetMsisdnResponseWith3GppAuth) new HttpDefaultHandler(connection.m4701a(), connection.m4700b(), str).m4951c(getMsisdnRequestWith3GppAuth, GetMsisdnResponseWith3GppAuth.class);
        if (!getMsisdnResponseWith3GppAuth.mo4878f()) {
            Log.m4654d("TMO-Agent", "Failed to get a successful response from the server.");
            throw getMsisdnResponseWith3GppAuth.mo4880d();
        } else if (getMsisdnResponseWith3GppAuth.m4956j(getMsisdnRequestWith3GppAuth)) {
            String h = getMsisdnResponseWith3GppAuth.m4958h();
            String i = getMsisdnResponseWith3GppAuth.m4957i();
            this.f14900b.getRamStorage().m5096k(h);
            this.f14900b.getRamStorage().m5097j(i);
            return new MsisdnDataAPIResponse(h, i);
        } else {
            throw new SitServerCommunicationErrorException(SitErrorType.OTHER, "wrong message id");
        }
    }

    /* renamed from: j */
    private ManageServiceResponse m4717j(Connection connection, String str, String str2, String str3, String str4, String str5) throws SitServerCommunicationErrorException {
        ManageServiceResponse p = m4711p(connection, str, str2, str3, str4, str5, 0, null);
        return p != null ? m4711p(connection, str, str2, str3, str4, str5, 5, p.m4902i()) : null;
    }

    /* renamed from: k */
    private SitAPIResponse m4716k(Connection connection, String str, String str2, String str3, String str4, String str5) throws SitServerCommunicationErrorException {
        ManageServiceRequestWith3GppAuth manageServiceRequestWith3GppAuth = new ManageServiceRequestWith3GppAuth(new ServiceInstance(str, str2), 5, str3, str4, str5);
        ManageServiceResponseWith3GppAuth manageServiceResponseWith3GppAuth = (ManageServiceResponseWith3GppAuth) new HttpDefaultHandler(connection.m4701a(), connection.m4700b(), str).m4951c(manageServiceRequestWith3GppAuth, ManageServiceResponseWith3GppAuth.class);
        if (!manageServiceResponseWith3GppAuth.mo4878f()) {
            Log.m4654d("TMO-Agent", "Failed to get a successful response from the server.");
            throw manageServiceResponseWith3GppAuth.mo4880d();
        } else if (manageServiceResponseWith3GppAuth.m4895k(manageServiceRequestWith3GppAuth)) {
            String i = manageServiceResponseWith3GppAuth.m4897i();
            String h = manageServiceResponseWith3GppAuth.m4898h();
            Log.m4654d("TMO-Agent", "receivedSit: " + i);
            Log.m4654d("TMO-Agent", "receivedSitExpiry: " + h);
            return new SitAPIResponse(i, h);
        } else {
            throw new SitServerCommunicationErrorException(SitErrorType.OTHER, "wrong message id");
        }
    }

    /* renamed from: m */
    private ManageConnectivityAPIResponse m4714m(String str, Connection connection, int i, String str2, String str3) throws SitServerCommunicationErrorException {
        Log.m4654d("TMO-Agent", "manageConnectivityInternal operation: " + i + ", serviceDetails: " + str2 + ", akaToken: " + str3);
        ManageConnectivityAPIResponse manageConnectivityAPIResponse = new ManageConnectivityAPIResponse();
        ManageConnectivityRequestWith3GppAuth manageConnectivityRequestWith3GppAuth = new ManageConnectivityRequestWith3GppAuth(Utils.m5076a(this.f14899a), i, str2, str3 != null ? Utils.m5075b(this.f14899a) : null, str3);
        ManageConnectivityResponseWith3GppAuth manageConnectivityResponseWith3GppAuth = (ManageConnectivityResponseWith3GppAuth) new HttpDefaultHandler(connection.m4701a(), connection.m4700b(), str).m4951c(manageConnectivityRequestWith3GppAuth, ManageConnectivityResponseWith3GppAuth.class);
        if (!manageConnectivityResponseWith3GppAuth.mo4878f()) {
            Log.m4654d("TMO-Agent", "Failed to get a successful response from the server.");
            throw manageConnectivityResponseWith3GppAuth.mo4880d();
        } else if (manageConnectivityResponseWith3GppAuth.m4923l(manageConnectivityRequestWith3GppAuth)) {
            Log.m4654d("TMO-Agent", "'manageConnectivity' response parsing ok!");
            manageConnectivityAPIResponse.m4797g(manageConnectivityResponseWith3GppAuth.m4925j());
            manageConnectivityAPIResponse.m4799e(manageConnectivityResponseWith3GppAuth.m4927h());
            manageConnectivityAPIResponse.m4798f(manageConnectivityResponseWith3GppAuth.m4926i());
            manageConnectivityAPIResponse.m4796h(manageConnectivityResponseWith3GppAuth.m4924k());
            return manageConnectivityAPIResponse;
        } else {
            throw new SitServerCommunicationErrorException(SitErrorType.OTHER, "wrong message id");
        }
    }

    /* renamed from: o */
    private ManagePushTokenAPIResponse m4712o(Connection connection, String str, String str2, int i, String str3, String str4, int i2, String str5, String str6, String str7) throws SitServerCommunicationErrorException {
        StringBuilder sb = new StringBuilder();
        sb.append("managePushTokenInternal serviceName: ");
        sb.append(str);
        sb.append(" msisdn: ");
        sb.append(str2);
        sb.append(" operation: ");
        sb.append(i);
        sb.append(" pushToken: ");
        sb.append(str3);
        sb.append(" packageName: ");
        sb.append(str4);
        sb.append(" connectivityOperation: ");
        sb.append(i2);
        sb.append(" deviceGroup: ");
        sb.append(str5);
        sb.append(" clientId: ");
        String str8 = str6;
        sb.append(str8);
        sb.append(" akaToken: ");
        sb.append(str7);
        Log.m4654d("TMO-Agent", sb.toString());
        String a = Utils.m5076a(this.f14899a);
        String b = str7 != null ? Utils.m5075b(this.f14899a) : null;
        String encodeToString = Base64.encodeToString(str3.getBytes(), 2);
        if (TextUtils.isEmpty(str2)) {
            str2 = m4719h(str, connection, str7);
        }
        if (TextUtils.isEmpty(str6)) {
            str8 = m4710q(connection, i2, str5, str, str4, str7);
        }
        ManagePushTokenRequestWith3GppAuth managePushTokenRequestWith3GppAuth = new ManagePushTokenRequestWith3GppAuth(a, str2, str, i, encodeToString, b, str8, str7);
        ManagePushTokenResponseWith3GppAuth managePushTokenResponseWith3GppAuth = (ManagePushTokenResponseWith3GppAuth) new HttpDefaultHandler(connection.m4701a(), connection.m4700b(), str).m4951c(managePushTokenRequestWith3GppAuth, ManagePushTokenResponseWith3GppAuth.class);
        if (!managePushTokenResponseWith3GppAuth.mo4878f()) {
            Log.m4654d("TMO-Agent", "Failed to get a successful response from the server.");
            throw managePushTokenResponseWith3GppAuth.mo4880d();
        } else if (managePushTokenResponseWith3GppAuth.m4912h(managePushTokenRequestWith3GppAuth)) {
            Log.m4654d("TMO-Agent", "Manage push token request was successful.");
            return new ManagePushTokenAPIResponse();
        } else {
            throw new SitServerCommunicationErrorException(SitErrorType.OTHER, "wrong message id");
        }
    }

    /* renamed from: p */
    private ManageServiceResponse m4711p(Connection connection, String str, String str2, String str3, String str4, String str5, int i, String str6) throws SitServerCommunicationErrorException {
        ServiceItem serviceItem = new ServiceItem(str, str2);
        ManageServiceRequestWith3GppAuth manageServiceRequestWith3GppAuth = str6 == null ? new ManageServiceRequestWith3GppAuth(serviceItem, i, str3, str4, str5) : new ManageServiceRequestWith3GppAuth(serviceItem, new ServiceInstance(str, str6), i, str3, str4, str5);
        ManageServiceResponseWith3GppAuth manageServiceResponseWith3GppAuth = (ManageServiceResponseWith3GppAuth) new HttpDefaultHandler(connection.m4701a(), connection.m4700b(), str).m4951c(manageServiceRequestWith3GppAuth, ManageServiceResponseWith3GppAuth.class);
        if (!manageServiceResponseWith3GppAuth.mo4878f()) {
            Log.m4654d("TMO-Agent", "Failed to get a successful response from the server.");
            throw manageServiceResponseWith3GppAuth.mo4880d();
        } else if (manageServiceResponseWith3GppAuth.m4895k(manageServiceRequestWith3GppAuth)) {
            return manageServiceResponseWith3GppAuth.m4896j();
        } else {
            throw new SitServerCommunicationErrorException(SitErrorType.OTHER, "wrong message id");
        }
    }

    /* renamed from: q */
    private String m4710q(Connection connection, int i, String str, String str2, String str3, String str4) throws SitServerCommunicationErrorException {
        String str5;
        Log.m4654d("TMO-Agent", "requestClientId called! operation=" + i + ", deviceGroup=" + str + ", serviceName=" + str2 + ", packageName=" + str3 + ", akaToken=" + str4);
        ManageConnectivityAPIResponse m = m4714m(str2, connection, i, str, str4);
        String str6 = str3;
        if (TextUtils.isEmpty(str3)) {
            str6 = Utils.m5071f(this.f14899a);
        }
        ServiceNameInternal[] c = m.m4801c();
        int length = c.length;
        int i2 = 0;
        String str7 = "";
        while (true) {
            str5 = str7;
            if (i2 >= length) {
                break;
            }
            ServiceNameInternal serviceNameInternal = c[i2];
            str7 = str7;
            if (serviceNameInternal.m4863c().equals("default")) {
                str7 = str7;
                if (serviceNameInternal.m4862d().equals(str2)) {
                    str7 = serviceNameInternal.m4864b();
                }
            }
            if (serviceNameInternal.m4863c().equals(str6) && serviceNameInternal.m4862d().equals(str2)) {
                str5 = serviceNameInternal.m4864b();
                break;
            }
            i2++;
        }
        Log.m4654d("TMO-Agent", "clientid =  " + str5);
        if (!TextUtils.isEmpty(str5)) {
            return str5;
        }
        SitErrorType sitErrorType = SitErrorType.MANAGE_CONNECTIVITY_OPERATION;
        throw new SitServerCommunicationErrorException(sitErrorType, "No clientId found for \"" + str6 + "\" and \"" + str2 + "\"");
    }

    @Deprecated
    /* renamed from: t */
    private DeprecatedManageConnectivityAPIResponse m4707t(Connection connection, int i, String str, String str2) {
        Log.m4654d("TMO-Agent", "requestManageConnectivityInternal operation: " + i + ", serviceDetails: " + str + ", akaToken: " + str2);
        DeprecatedManageConnectivityAPIResponse deprecatedManageConnectivityAPIResponse = new DeprecatedManageConnectivityAPIResponse();
        try {
            ManageConnectivityResponseWith3GppAuth g = m4720g(connection, Utils.m5076a(this.f14899a), i, str, str2 != null ? Utils.m5075b(this.f14899a) : null, str2);
            if (g != null) {
                deprecatedManageConnectivityAPIResponse.m4810f(g.m4925j());
                if (g.mo4878f()) {
                    deprecatedManageConnectivityAPIResponse.m4812d(g.m4927h());
                    deprecatedManageConnectivityAPIResponse.m4811e(g.m4926i());
                    deprecatedManageConnectivityAPIResponse.m4809g(g.m4924k());
                }
            } else {
                Log.m4654d("TMO-Agent", "Null 'getManageConnectivityResponse' received!");
                deprecatedManageConnectivityAPIResponse.m4818b(new SitServerCommunicationErrorException(SitErrorType.MANAGE_CONNECTIVITY_OPERATION));
            }
        } catch (Exception e) {
            Log.m4653d("TMO-Agent", "Exception in requestMcInternal!", e);
            deprecatedManageConnectivityAPIResponse.m4818b(e);
        }
        return deprecatedManageConnectivityAPIResponse;
    }

    /* renamed from: w */
    private SitAPIResponse m4704w(Connection connection, String str, String str2, String str3) {
        SitAPIResponse sitAPIResponse;
        Log.m4654d("TMO-Agent", "requestSitTokenInternal serviceName: " + str + " fingerprint: " + str2 + " akaToken: " + str3);
        SitAPIResponse sitAPIResponse2 = new SitAPIResponse();
        String a = Utils.m5076a(this.f14899a);
        String b = str3 != null ? Utils.m5075b(this.f14899a) : null;
        try {
            Log.m4654d("TMO-Agent", "======================== STEP 1 ==========================");
            if (TextUtils.isEmpty(str2)) {
                str2 = m4721f(connection, str, str3);
                Log.m4654d("TMO-Agent", "serviceFingerprint: " + str2);
            } else {
                Log.m4654d("TMO-Agent", "Using the provided fingerprint: " + str2);
            }
            if (str2 != null) {
                Log.m4654d("TMO-Agent", "======================== STEP 2 ==========================");
                ManageServiceResponse j = m4717j(connection, str, str2, a, b, str3);
                if (j.mo4854f() && !TextUtils.isEmpty(j.m4903h()) && !TextUtils.isEmpty(j.m4904g())) {
                    Log.m4654d("TMO-Agent", "Step 3 is skipped because instance token is provided by Step 2");
                    sitAPIResponse = new SitAPIResponse(j.m4903h(), j.m4904g());
                } else if (!j.mo4854f() || TextUtils.isEmpty(j.m4902i())) {
                    Log.m4654d("TMO-Agent", "Step 2 failed: could not retrieve service-instance-id!");
                    SitServerCommunicationErrorException sitServerCommunicationErrorException = new SitServerCommunicationErrorException(SitErrorType.MANAGE_SERVICE_OPERATION);
                    sitServerCommunicationErrorException.setDescription("Step 2 failed: could not retrieve a valid service-instance-id!");
                    sitAPIResponse2.m4818b(sitServerCommunicationErrorException);
                    sitAPIResponse = sitAPIResponse2;
                } else {
                    String i = j.m4902i();
                    Log.m4654d("TMO-Agent", "serviceInstanceId: " + i);
                    Log.m4654d("TMO-Agent", "======================== STEP 3 ==========================");
                    sitAPIResponse = m4716k(connection, str, i, a, b, str3);
                }
            } else {
                Log.m4654d("TMO-Agent", "Step 1 failed: could not retrieve service fingerprint!");
                SitServerCommunicationErrorException sitServerCommunicationErrorException2 = new SitServerCommunicationErrorException(SitErrorType.GET_MSISDN_DATA);
                sitServerCommunicationErrorException2.setDescription("Step 1 failed: could not retrieve a valid service fingerprint!");
                sitAPIResponse2.m4818b(sitServerCommunicationErrorException2);
                sitAPIResponse = sitAPIResponse2;
            }
        } catch (Exception e) {
            sitAPIResponse2.m4818b(e);
            sitAPIResponse = sitAPIResponse2;
        }
        return sitAPIResponse;
    }

    /* renamed from: b */
    public void m4725b() {
        this.f14900b.getRamStorage().m5106a();
        Log.m4654d("TMO-Agent", "Cleared RamStorage values: AkaToken is Empty: " + this.f14900b.getRamStorage().m5104c().isEmpty() + ", MSISDN is Empty: " + this.f14900b.getRamStorage().m5102e().isEmpty() + ", Fingerprint is Empty: " + this.f14900b.getRamStorage().m5103d().isEmpty());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public ManageConnectivityAPIResponse m4715l(String str, int i, String str2, String str3) {
        ManageConnectivityAPIResponse manageConnectivityAPIResponse;
        Connection connection = null;
        Connection connection2 = null;
        try {
            try {
                Connection e = m4722e(str3 == null);
                connection2 = e;
                connection = e;
                ManageConnectivityAPIResponse m = m4714m(str, e, i, str2, str3);
                manageConnectivityAPIResponse = m;
                if (e != null) {
                    e.m4699c();
                    manageConnectivityAPIResponse = m;
                }
            } catch (Exception e2) {
                manageConnectivityAPIResponse = new ManageConnectivityAPIResponse();
                connection2 = connection;
                manageConnectivityAPIResponse.m4818b(e2);
                if (connection != null) {
                    connection.m4699c();
                }
            }
            return manageConnectivityAPIResponse;
        } catch (Throwable th) {
            if (connection2 != null) {
                connection2.m4699c();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public ManagePushTokenAPIResponse m4713n(String str, String str2, int i, String str3, String str4, int i2, String str5, String str6, String str7) {
        Throwable th;
        ManagePushTokenAPIResponse managePushTokenAPIResponse;
        Exception e;
        Connection e2;
        Connection connection = null;
        Connection connection2 = null;
        try {
            try {
                e2 = m4722e(str7 == null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        try {
            ManagePushTokenAPIResponse o = m4712o(e2, str, str2, i, str3, str4, i2, str5, str6, str7);
            managePushTokenAPIResponse = o;
            if (e2 != null) {
                e2.m4699c();
                managePushTokenAPIResponse = o;
            }
        } catch (Exception e4) {
            e = e4;
            connection = e2;
            ManagePushTokenAPIResponse managePushTokenAPIResponse2 = new ManagePushTokenAPIResponse();
            connection2 = connection;
            managePushTokenAPIResponse2.m4818b(e);
            if (connection != null) {
                connection.m4699c();
            }
            managePushTokenAPIResponse = managePushTokenAPIResponse2;
            return managePushTokenAPIResponse;
        } catch (Throwable th3) {
            th = th3;
            connection2 = e2;
            if (connection2 != null) {
                connection2.m4699c();
            }
            throw th;
        }
        return managePushTokenAPIResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public AkaAuthAPIResponse m4709r(String str) {
        AkaAuthAPIResponse akaAuthAPIResponse = new AkaAuthAPIResponse();
        try {
            akaAuthAPIResponse.m4823e(m4723d(str));
        } catch (Exception e) {
            Log.m4654d("TMO-Agent", "requestEapAkaToken " + e.getMessage());
            akaAuthAPIResponse.m4818b(e);
        }
        return akaAuthAPIResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    @Deprecated
    /* renamed from: s */
    public DeprecatedManageConnectivityAPIResponse m4708s(int i, String str, String str2) {
        DeprecatedManageConnectivityAPIResponse deprecatedManageConnectivityAPIResponse;
        Connection connection = null;
        Connection connection2 = null;
        try {
            try {
                Connection e = m4722e(str2 == null);
                connection2 = e;
                connection = e;
                DeprecatedManageConnectivityAPIResponse t = m4707t(e, i, str, str2);
                deprecatedManageConnectivityAPIResponse = t;
                if (e != null) {
                    e.m4699c();
                    deprecatedManageConnectivityAPIResponse = t;
                }
            } catch (Exception e2) {
                deprecatedManageConnectivityAPIResponse = new DeprecatedManageConnectivityAPIResponse();
                connection2 = connection;
                deprecatedManageConnectivityAPIResponse.m4818b(e2);
                if (connection != null) {
                    connection.m4699c();
                }
            }
            return deprecatedManageConnectivityAPIResponse;
        } catch (Throwable th) {
            if (connection2 != null) {
                connection2.m4699c();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: u */
    public MsisdnDataAPIResponse m4706u(String str, String str2) {
        MsisdnDataAPIResponse msisdnDataAPIResponse;
        Connection connection = null;
        Connection connection2 = null;
        try {
            try {
                Connection e = m4722e(str2 == null);
                connection2 = e;
                connection = e;
                MsisdnDataAPIResponse i = m4718i(str, e, str2);
                msisdnDataAPIResponse = i;
                if (e != null) {
                    e.m4699c();
                    msisdnDataAPIResponse = i;
                }
            } catch (Exception e2) {
                msisdnDataAPIResponse = new MsisdnDataAPIResponse();
                connection2 = connection;
                msisdnDataAPIResponse.m4818b(e2);
                if (connection != null) {
                    connection.m4699c();
                }
            }
            return msisdnDataAPIResponse;
        } catch (Throwable th) {
            if (connection2 != null) {
                connection2.m4699c();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    /* renamed from: v */
    public SitAPIResponse m4705v(String str, String str2, String str3) {
        SitAPIResponse sitAPIResponse;
        Connection connection = null;
        Connection connection2 = null;
        try {
            try {
                Connection e = m4722e(str3 == null);
                connection2 = e;
                connection = e;
                SitAPIResponse w = m4704w(e, str, str2, str3);
                sitAPIResponse = w;
                if (e != null) {
                    e.m4699c();
                    sitAPIResponse = w;
                }
            } catch (Exception e2) {
                sitAPIResponse = new SitAPIResponse();
                connection2 = connection;
                sitAPIResponse.m4818b(e2);
                if (connection != null) {
                    connection.m4699c();
                }
            }
            return sitAPIResponse;
        } catch (Throwable th) {
            if (connection2 != null) {
                connection2.m4699c();
            }
            throw th;
        }
    }
}
