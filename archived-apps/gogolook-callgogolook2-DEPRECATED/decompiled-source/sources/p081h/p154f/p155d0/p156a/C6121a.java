package p081h.p154f.p155d0.p156a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import com.facebook.internal.EnumC2403e0;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.util.EnumMap;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
import p081h.p203i.p402h.C10533e;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.f.d0.a.a */
/* loaded from: classes-dex2jar.jar:h/f/d0/a/a.class */
public class C6121a {

    /* renamed from: a */
    public static final String f15226a = "h.f.d0.a.a";

    /* renamed from: b */
    public static HashMap<String, NsdManager.RegistrationListener> f15227b = new HashMap<>();

    /* renamed from: h.f.d0.a.a$a */
    /* loaded from: classes-dex2jar.jar:h/f/d0/a/a$a.class */
    public static final class C6122a implements NsdManager.RegistrationListener {

        /* renamed from: a */
        public final /* synthetic */ String f15228a;

        /* renamed from: b */
        public final /* synthetic */ String f15229b;

        public C6122a(String str, String str2) {
            this.f15228a = str;
            this.f15229b = str2;
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
            C6121a.m23790a(this.f15229b);
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceRegistered(NsdServiceInfo nsdServiceInfo) {
            if (!this.f15228a.equals(nsdServiceInfo.getServiceName())) {
                C6121a.m23790a(this.f15229b);
            }
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo) {
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
        }
    }

    /* renamed from: a */
    public static String m23791a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", Build.DEVICE);
            jSONObject.put("model", Build.MODEL);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public static void m23790a(String str) {
        m23788b(str);
    }

    @TargetApi(16)
    /* renamed from: b */
    public static void m23788b(String str) {
        NsdManager.RegistrationListener registrationListener = f15227b.get(str);
        if (registrationListener != null) {
            try {
                ((NsdManager) C6135n.m23746e().getSystemService("servicediscovery")).unregisterService(registrationListener);
            } catch (IllegalArgumentException e) {
                C2408g0.m34853a(f15226a, (Exception) e);
            }
            f15227b.remove(str);
        }
    }

    /* renamed from: b */
    public static boolean m23789b() {
        C2464o c = C2466p.m34636c(C6135n.m23745f());
        return Build.VERSION.SDK_INT >= 16 && c != null && c.m34655l().contains(EnumC2403e0.Enabled);
    }

    /* renamed from: c */
    public static Bitmap m23787c(String str) {
        Bitmap bitmap;
        EnumMap enumMap = new EnumMap(EnumC10531c.class);
        enumMap.put((EnumMap) EnumC10531c.MARGIN, (EnumC10531c) 2);
        try {
            C10549b a = new C10533e().mo11288a(str, EnumC10529a.QR_CODE, 200, 200, enumMap);
            int e = a.m11442e();
            int f = a.m11441f();
            int[] iArr = new int[e * f];
            for (int i = 0; i < e; i++) {
                for (int i2 = 0; i2 < f; i2++) {
                    iArr[(i * f) + i2] = a.m11448a(i2, i) ? -16777216 : -1;
                }
            }
            bitmap = Bitmap.createBitmap(f, e, Bitmap.Config.ARGB_8888);
            try {
                bitmap.setPixels(iArr, 0, f, 0, 0, f, e);
            } catch (C10538i e2) {
            }
        } catch (C10538i e3) {
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: d */
    public static boolean m23786d(String str) {
        if (m23789b()) {
            return m23785e(str);
        }
        return false;
    }

    @TargetApi(16)
    /* renamed from: e */
    public static boolean m23785e(String str) {
        if (f15227b.containsKey(str)) {
            return true;
        }
        String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", IJSExecutor.JS_FUNCTION_GROUP, C6135n.m23733r().replace('.', '|')), str);
        NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
        nsdServiceInfo.setServiceType("_fb._tcp.");
        nsdServiceInfo.setServiceName(format);
        nsdServiceInfo.setPort(80);
        NsdManager nsdManager = (NsdManager) C6135n.m23746e().getSystemService("servicediscovery");
        C6122a aVar = new C6122a(format, str);
        f15227b.put(str, aVar);
        nsdManager.registerService(nsdServiceInfo, 1, aVar);
        return true;
    }
}
