package com.mopub.mobileads;

import android.text.TextUtils;
import com.android.volley.Request;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastMacroHelper.class */
public class VastMacroHelper {

    /* renamed from: a */
    public final List<String> f34251a;

    /* renamed from: b */
    public final Map<VastMacro, String> f34252b;

    public VastMacroHelper(List<String> list) {
        Preconditions.checkNotNull(list, "uris cannot be null");
        this.f34251a = list;
        HashMap hashMap = new HashMap();
        this.f34252b = hashMap;
        hashMap.put(VastMacro.CACHEBUSTING, m4269a());
    }

    /* renamed from: a */
    public final String m4269a() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    /* renamed from: a */
    public final String m4268a(int i) {
        long j = i;
        return String.format("%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(i % 1000));
    }

    public List<String> getUris() {
        VastMacro[] values;
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f34251a.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!TextUtils.isEmpty(next)) {
                for (VastMacro vastMacro : VastMacro.values()) {
                    String str = this.f34252b.get(vastMacro);
                    String str2 = str;
                    if (str == null) {
                        str2 = "";
                    }
                    next = next.replaceAll("\\[" + vastMacro.name() + "\\]", str2);
                }
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public VastMacroHelper withAssetUri(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, Request.DEFAULT_PARAMS_ENCODING);
            } catch (UnsupportedEncodingException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to encode url", e);
            }
            this.f34252b.put(VastMacro.ASSETURI, str);
        }
        return this;
    }

    public VastMacroHelper withContentPlayHead(Integer num) {
        if (num != null) {
            String a = m4268a(num.intValue());
            if (!TextUtils.isEmpty(a)) {
                this.f34252b.put(VastMacro.CONTENTPLAYHEAD, a);
            }
        }
        return this;
    }

    public VastMacroHelper withErrorCode(VastErrorCode vastErrorCode) {
        if (vastErrorCode != null) {
            this.f34252b.put(VastMacro.ERRORCODE, vastErrorCode.getErrorCode());
        }
        return this;
    }
}
