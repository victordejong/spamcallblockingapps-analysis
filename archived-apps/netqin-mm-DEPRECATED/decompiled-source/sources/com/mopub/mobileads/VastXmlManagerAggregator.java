package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.google.logging.type.LogSeverity;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.VastResource;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p421j.p424b.AbstractC6659j;
import p131c.p421j.p424b.C6658i;
import p131c.p421j.p424b.C6660k;
import p131c.p421j.p424b.C6661l;
import p131c.p421j.p424b.C6662m;
import p131c.p421j.p424b.C6664o;
import p131c.p421j.p424b.C6665p;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator.class */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";

    /* renamed from: f */
    public static final List<String> f34415f = Arrays.asList("video/mp4", "video/3gpp");

    /* renamed from: a */
    public final WeakReference<AbstractC8837a> f34416a;

    /* renamed from: b */
    public final double f34417b;

    /* renamed from: c */
    public final Context f34418c;

    /* renamed from: d */
    public final int f34419d;

    /* renamed from: e */
    public int f34420e;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation.class */
    public enum CompanionOrientation {
        LANDSCAPE,
        PORTRAIT
    }

    /* renamed from: com.mopub.mobileads.VastXmlManagerAggregator$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastXmlManagerAggregator$a.class */
    public interface AbstractC8837a {
        void onAggregationComplete(VastVideoConfig vastVideoConfig);
    }

    public VastXmlManagerAggregator(AbstractC8837a aVar, double d, int i, Context context) {
        Preconditions.checkNotNull(aVar);
        Preconditions.checkNotNull(context);
        this.f34416a = new WeakReference<>(aVar);
        this.f34417b = d;
        this.f34419d = i;
        this.f34418c = context.getApplicationContext();
    }

    /* renamed from: c */
    public static boolean m4169c(String str) {
        boolean z = true;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            if (Integer.parseInt(str) >= 2) {
                z = false;
            }
        } catch (NumberFormatException e) {
        }
        return z;
    }

    /* renamed from: a */
    public final double m4188a(int i, int i2) {
        double d = i;
        double d2 = i2;
        Double.isNaN(d);
        Double.isNaN(d2);
        double abs = Math.abs(this.f34417b - (d / d2));
        int i3 = this.f34419d;
        double abs2 = Math.abs((i3 - i) / i3);
        Double.isNaN(abs2);
        return abs + abs2;
    }

    /* renamed from: a */
    public final double m4186a(int i, int i2, Integer num, String str) {
        double a = m4188a(i, i2);
        return m4178a(str) * (1.0d / ((a + 1.0d) + m4179a(num)));
    }

    /* renamed from: a */
    public final double m4179a(Integer num) {
        int intValue = (num == null || num.intValue() < 0) ? 0 : num.intValue();
        if (700 > intValue || intValue > 1500) {
            return Math.min(Math.abs(LogSeverity.ALERT_VALUE - intValue) / 700.0f, Math.abs(1500 - intValue) / 1500.0f);
        }
        return 0.0d;
    }

    /* renamed from: a */
    public final double m4178a(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        char c = 65535;
        int hashCode = str2.hashCode();
        if (hashCode != -1664118616) {
            if (hashCode == 1331848029 && str2.equals("video/mp4")) {
                c = 0;
            }
        } else if (str2.equals("video/3gpp")) {
            c = 1;
        }
        return c != 0 ? 1.0d : 1.5d;
    }

    @VisibleForTesting
    /* renamed from: a */
    public Point m4187a(int i, int i2, VastResource.Type type, CompanionOrientation companionOrientation) {
        int i3;
        int i4;
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) this.f34418c.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int dipsToIntPixels = Dips.dipsToIntPixels(i, this.f34418c);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.f34418c);
        if (CompanionOrientation.LANDSCAPE == companionOrientation) {
            i4 = Math.max(width, height);
            i3 = Math.min(width, height);
        } else {
            i4 = Math.min(width, height);
            i3 = Math.max(width, height);
        }
        if (dipsToIntPixels <= i4 - 16 && dipsToIntPixels2 <= i3 - 16) {
            return point;
        }
        Point point2 = new Point();
        if (VastResource.Type.HTML_RESOURCE == type) {
            point2.x = Math.min(i4, dipsToIntPixels);
            point2.y = Math.min(i3, dipsToIntPixels2);
        } else {
            float f = dipsToIntPixels;
            float f2 = f / i4;
            float f3 = dipsToIntPixels2;
            float f4 = f3 / i3;
            if (f2 >= f4) {
                point2.x = i4;
                point2.y = (int) (f3 / f2);
            } else {
                point2.x = (int) (f / f4);
                point2.y = i3;
            }
        }
        int i5 = point2.x - 16;
        point2.x = i5;
        int i6 = point2.y - 16;
        point2.y = i6;
        if (i5 < 0 || i6 < 0) {
            return point;
        }
        point2.x = Dips.pixelsToIntDips(i5, this.f34418c);
        point2.y = Dips.pixelsToIntDips(point2.y, this.f34418c);
        return point2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v2, types: [double] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r29v0, types: [double] */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @com.mopub.common.VisibleForTesting
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.mobileads.VastCompanionAdConfig m4174a(java.util.List<p131c.p421j.p424b.C6660k> r10, com.mopub.mobileads.VastXmlManagerAggregator.CompanionOrientation r11) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m4174a(java.util.List, com.mopub.mobileads.VastXmlManagerAggregator$CompanionOrientation):com.mopub.mobileads.VastCompanionAdConfig");
    }

    @VisibleForTesting
    /* renamed from: a */
    public VastIconConfig m4176a(List<VastIconXmlManager> list) {
        VastResource.Type[] values;
        VastResource fromVastResourceXmlManager;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (VastResource.Type type : VastResource.Type.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer h = vastIconXmlManager.m4270h();
                Integer d = vastIconXmlManager.m4274d();
                if (h != null && h.intValue() > 0 && h.intValue() <= 300 && d != null && d.intValue() > 0 && d.intValue() <= 300 && (fromVastResourceXmlManager = VastResource.fromVastResourceXmlManager(vastIconXmlManager.m4272f(), type, h.intValue(), d.intValue())) != null) {
                    return new VastIconConfig(vastIconXmlManager.m4270h().intValue(), vastIconXmlManager.m4274d().intValue(), vastIconXmlManager.m4273e(), vastIconXmlManager.m4275c(), fromVastResourceXmlManager, vastIconXmlManager.m4276b(), vastIconXmlManager.m4277a(), vastIconXmlManager.m4271g());
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    public final VastVideoConfig m4184a(C6661l lVar, List<VastTracker> list) {
        Preconditions.checkNotNull(lVar);
        Preconditions.checkNotNull(list);
        for (C6662m mVar : lVar.m20156d()) {
            String b = m4170b(mVar.m20139f());
            if (b != null) {
                VastVideoConfig vastVideoConfig = new VastVideoConfig();
                vastVideoConfig.addImpressionTrackers(lVar.m20157c());
                m4183a(mVar, vastVideoConfig);
                vastVideoConfig.setClickThroughUrl(mVar.m20144b());
                vastVideoConfig.setNetworkMediaFileUrl(b);
                List<C6660k> a = lVar.m20159a();
                vastVideoConfig.setVastCompanionAd(m4174a(a, CompanionOrientation.LANDSCAPE), m4174a(a, CompanionOrientation.PORTRAIT));
                list.addAll(lVar.m20158b());
                vastVideoConfig.addErrorTrackers(list);
                m4185a(lVar, vastVideoConfig);
                m4172b(lVar, vastVideoConfig);
                return vastVideoConfig;
            }
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: a */
    public VastVideoConfig m4177a(String str, List<VastTracker> list) {
        VastVideoConfig a;
        VastVideoConfig a2;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        C6665p pVar = new C6665p();
        try {
            pVar.m20125a(str);
            List<C6658i> a3 = pVar.m20126a();
            if (m4175a(a3, pVar, this.f34418c)) {
                return null;
            }
            for (C6658i iVar : a3) {
                if (m4169c(iVar.m20161b())) {
                    C6661l a4 = iVar.m20162a();
                    if (a4 == null || (a2 = m4184a(a4, list)) == null) {
                        C6664o c = iVar.m20160c();
                        if (c != null) {
                            List<VastTracker> arrayList = new ArrayList<>(list);
                            arrayList.addAll(c.m20158b());
                            String a5 = m4182a(c, arrayList);
                            if (!(a5 == null || (a = m4177a(a5, arrayList)) == null)) {
                                a.addImpressionTrackers(c.m20157c());
                                for (C6662m mVar : c.m20156d()) {
                                    m4183a(mVar, a);
                                }
                                m4185a(c, a);
                                m4172b(c, a);
                                List<C6660k> a6 = c.m20159a();
                                if (!a.hasCompanionAd()) {
                                    a.setVastCompanionAd(m4174a(a6, CompanionOrientation.LANDSCAPE), m4174a(a6, CompanionOrientation.PORTRAIT));
                                } else {
                                    VastCompanionAdConfig vastCompanionAd = a.getVastCompanionAd(2);
                                    VastCompanionAdConfig vastCompanionAd2 = a.getVastCompanionAd(1);
                                    if (!(vastCompanionAd == null || vastCompanionAd2 == null)) {
                                        for (C6660k kVar : a6) {
                                            if (!kVar.m20148g()) {
                                                vastCompanionAd.addClickTrackers(kVar.m20153b());
                                                vastCompanionAd.addCreativeViewTrackers(kVar.m20152c());
                                                vastCompanionAd2.addClickTrackers(kVar.m20153b());
                                                vastCompanionAd2.addCreativeViewTrackers(kVar.m20152c());
                                            }
                                        }
                                    }
                                }
                                m4181a(pVar, a);
                                return a;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        m4181a(pVar, a2);
                        return a2;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.f34418c);
            return null;
        }
    }

    /* renamed from: a */
    public VastVideoConfig doInBackground(String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return m4177a(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    /* renamed from: a */
    public final String m4182a(C6664o oVar, List<VastTracker> list) {
        String str;
        String f = oVar.m20127f();
        if (f == null) {
            return null;
        }
        try {
            str = m4171b(f);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to follow VAST redirect", e);
            str = null;
            if (!list.isEmpty()) {
                TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.f34418c);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m4185a(AbstractC6659j jVar, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e;
        Preconditions.checkNotNull(jVar);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (e = jVar.m20155e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.m4282a()) {
                if (MoPubLog.LOGTAG.equals(vastExtensionXmlManager.m4279c())) {
                    vastVideoConfig.setVideoViewabilityTracker(vastExtensionXmlManager.m4278d());
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m4183a(C6662m mVar, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(mVar, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(mVar.m20147a());
        vastVideoConfig.addFractionalTrackers(mVar.m20141d());
        vastVideoConfig.addPauseTrackers(mVar.m20138g());
        vastVideoConfig.addResumeTrackers(mVar.m20137h());
        vastVideoConfig.addCompleteTrackers(mVar.m20134k());
        vastVideoConfig.addCloseTrackers(mVar.m20135j());
        vastVideoConfig.addSkipTrackers(mVar.m20133l());
        vastVideoConfig.addClickTrackers(mVar.m20142c());
        if (vastVideoConfig.getSkipOffsetString() == null) {
            vastVideoConfig.setSkipOffset(mVar.m20136i());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(m4176a(mVar.m20140e()));
        }
    }

    /* renamed from: a */
    public final void m4181a(C6665p pVar, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(pVar, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(pVar.m20120f());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(pVar.m20123c());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(pVar.m20122d());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(pVar.m20124b());
        }
    }

    /* renamed from: a */
    public void onPostExecute(VastVideoConfig vastVideoConfig) {
        AbstractC8837a aVar = this.f34416a.get();
        if (aVar != null) {
            aVar.onAggregationComplete(vastVideoConfig);
        }
    }

    /* renamed from: a */
    public final boolean m4175a(List<C6658i> list, C6665p pVar, Context context) {
        if (!list.isEmpty() || pVar.m20121e() == null) {
            return false;
        }
        TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(pVar.m20121e()), this.f34420e > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
        return true;
    }

    /* renamed from: b */
    public final String m4171b(String str) throws IOException {
        Throwable th;
        HttpURLConnection httpURLConnection;
        BufferedInputStream bufferedInputStream;
        Preconditions.checkNotNull(str);
        int i = this.f34420e;
        if (i >= 10) {
            return null;
        }
        this.f34420e = i + 1;
        try {
            httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
            try {
                bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
            httpURLConnection = null;
        }
        try {
            String fromStream = Strings.fromStream(bufferedInputStream);
            Streams.closeStream(bufferedInputStream);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return fromStream;
        } catch (Throwable th4) {
            th = th4;
            Streams.closeStream(bufferedInputStream);
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v32, types: [double] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @com.mopub.common.VisibleForTesting
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m4170b(java.util.List<p131c.p421j.p424b.C6663n> r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "managers cannot be null"
            com.mopub.common.Preconditions.checkNotNull(r0, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
            r0 = -4503599627370496(0xfff0000000000000, double:-Infinity)
            r9 = r0
            r0 = 0
            r7 = r0
        L_0x001a:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00b0
            r0 = r8
            java.lang.Object r0 = r0.next()
            c.j.b.n r0 = (p131c.p421j.p424b.C6663n) r0
            r11 = r0
            r0 = r11
            java.lang.String r0 = r0.m20129d()
            r12 = r0
            r0 = r11
            java.lang.String r0 = r0.m20130c()
            r13 = r0
            java.util.List<java.lang.String> r0 = com.mopub.mobileads.VastXmlManagerAggregator.f34415f
            r1 = r12
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x00a7
            r0 = r13
            if (r0 != 0) goto L_0x0051
            goto L_0x00a7
        L_0x0051:
            r0 = r11
            java.lang.Integer r0 = r0.m20128e()
            r14 = r0
            r0 = r11
            java.lang.Integer r0 = r0.m20131b()
            r15 = r0
            r0 = r11
            java.lang.Integer r0 = r0.m20132a()
            r11 = r0
            r0 = r14
            if (r0 == 0) goto L_0x001a
            r0 = r14
            int r0 = r0.intValue()
            if (r0 <= 0) goto L_0x001a
            r0 = r15
            if (r0 == 0) goto L_0x001a
            r0 = r15
            int r0 = r0.intValue()
            if (r0 > 0) goto L_0x0083
            goto L_0x001a
        L_0x0083:
            r0 = r6
            r1 = r14
            int r1 = r1.intValue()
            r2 = r15
            int r2 = r2.intValue()
            r3 = r11
            r4 = r12
            double r0 = r0.m4186a(r1, r2, r3, r4)
            r16 = r0
            r0 = r16
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x001a
            r0 = r16
            r9 = r0
            r0 = r13
            r7 = r0
            goto L_0x001a
        L_0x00a7:
            r0 = r8
            r0.remove()
            goto L_0x001a
        L_0x00b0:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.m4170b(java.util.List):java.lang.String");
    }

    /* renamed from: b */
    public final void m4172b(AbstractC6659j jVar, VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e = jVar.m20155e();
        if (e != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.m4282a()) {
                if (vastExtensionXmlManager != null) {
                    vastVideoConfig.addAvidJavascriptResources(vastExtensionXmlManager.m4281a());
                    vastVideoConfig.addMoatImpressionPixels(vastExtensionXmlManager.m4280b());
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        AbstractC8837a aVar = this.f34416a.get();
        if (aVar != null) {
            aVar.onAggregationComplete(null);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        Networking.getUserAgent(this.f34418c);
    }
}
