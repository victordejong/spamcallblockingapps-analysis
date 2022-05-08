package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.k;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cx.class */
class cx extends cl {

    /* renamed from: b  reason: collision with root package name */
    static final String f4370b;
    private static final String c = h.ARBITRARY_PIXEL.toString();
    private static final String d = i.URL.toString();
    private static final String e = i.ADDITIONAL_PARAMS.toString();
    private static final String f = i.UNREPEATABLE.toString();
    private static final Set<String> g = new HashSet();
    private final a h;
    private final Context i;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cx$a.class */
    public interface a {
        x a();
    }

    static {
        String str = c;
        f4370b = new StringBuilder(String.valueOf(str).length() + 17).append("gtm_").append(str).append("_unrepeatable").toString();
    }

    public cx(final Context context) {
        this(context, new a() { // from class: com.google.android.gms.tagmanager.cx.1
            @Override // com.google.android.gms.tagmanager.cx.a
            public final x a() {
                return dn.a(context);
            }
        });
    }

    private cx(Context context, a aVar) {
        super(c, d);
        this.h = aVar;
        this.i = context;
    }

    private boolean a(String str) {
        boolean z = true;
        synchronized (this) {
            if (!g.contains(str)) {
                if (this.i.getSharedPreferences(f4370b, 0).contains(str)) {
                    g.add(str);
                } else {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tagmanager.cl
    public final void b(Map<String, k.a> map) {
        String a2 = map.get(f) != null ? cn.a(map.get(f)) : null;
        if (a2 == null || !a(a2)) {
            Uri.Builder buildUpon = Uri.parse(cn.a(map.get(d))).buildUpon();
            k.a aVar = map.get(e);
            if (aVar != null) {
                Object e2 = cn.e(aVar);
                if (!(e2 instanceof List)) {
                    String valueOf = String.valueOf(buildUpon.build().toString());
                    an.a(valueOf.length() != 0 ? "ArbitraryPixel: additional params not a list: not sending partial hit: ".concat(valueOf) : new String("ArbitraryPixel: additional params not a list: not sending partial hit: "));
                    return;
                }
                for (Object obj : (List) e2) {
                    if (!(obj instanceof Map)) {
                        String valueOf2 = String.valueOf(buildUpon.build().toString());
                        an.a(valueOf2.length() != 0 ? "ArbitraryPixel: additional params contains non-map: not sending partial hit: ".concat(valueOf2) : new String("ArbitraryPixel: additional params contains non-map: not sending partial hit: "));
                        return;
                    }
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        buildUpon.appendQueryParameter(entry.getKey().toString(), entry.getValue().toString());
                    }
                }
            }
            String uri = buildUpon.build().toString();
            this.h.a().a(uri);
            String valueOf3 = String.valueOf(uri);
            an.e(valueOf3.length() != 0 ? "ArbitraryPixel: url = ".concat(valueOf3) : new String("ArbitraryPixel: url = "));
            if (a2 != null) {
                synchronized (cx.class) {
                    try {
                        g.add(a2);
                        ce.a(this.i, f4370b, a2, "true");
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }
}
