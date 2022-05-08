package com.adbert.p009a.p014e;

import android.content.Context;
import com.adbert.p009a.C1390d;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1382b;
import com.adbert.p009a.p012c.EnumC1386f;
import com.adbert.p009a.p012c.EnumC1389i;
import org.json.JSONArray;
/* renamed from: com.adbert.a.e.a */
/* loaded from: classes-dex2jar.jar:com/adbert/a/e/a.class */
public class C1394a {

    /* renamed from: a */
    public Context f643a;

    /* renamed from: com.adbert.a.e.a$1 */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/e/a$1.class */
    public static /* synthetic */ class C13951 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f644a = new int[EnumC1382b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f644a[EnumC1382b.video.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f644a[EnumC1382b.banner.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f644a[EnumC1382b.cpm_banner.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f644a[EnumC1382b.cpm_video.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.adbert.a.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/e/a$a.class */
    public class C1396a {

        /* renamed from: b */
        public C1377b f646b;

        /* renamed from: c */
        public C1390d f647c;

        public C1396a(C1377b bVar, C1390d dVar) {
            this.f646b = bVar;
            this.f647c = dVar;
        }

        /* renamed from: a */
        private boolean m37166a(EnumC1386f fVar) {
            if (fVar == EnumC1386f.enable_line && !C1409j.m37105b(C1394a.this.f643a)) {
                return false;
            }
            if (fVar != EnumC1386f.enable_phone || C1402g.m37128d(C1394a.this.f643a) == 5) {
                return this.f647c.m37178b(fVar);
            }
            return false;
        }

        /* renamed from: a */
        public C1377b m37167a() {
            return this.f646b;
        }

        /* renamed from: a */
        public void m37165a(EnumC1386f fVar, EnumC1389i iVar, EnumC1386f fVar2) {
            if (m37166a(fVar)) {
                int a = iVar.m37182a();
                C1377b bVar = this.f646b;
                bVar.f414i[a] = true;
                bVar.f415j[a] = this.f647c.m37179a(fVar2);
            }
        }
    }

    public C1394a(Context context) {
        this.f643a = context;
    }

    /* renamed from: a */
    public C1377b m37168a(String str, boolean z) {
        int i;
        C1377b bVar = new C1377b();
        C1377b bVar2 = bVar;
        try {
            C1390d dVar = new C1390d(str);
            bVar.f401C = dVar.m37179a(EnumC1386f.gaUrl);
            bVar.f422q = dVar.m37179a(EnumC1386f.returnUrl);
            bVar.f423r = dVar.m37179a(EnumC1386f.appId);
            bVar.f424s = dVar.m37179a(EnumC1386f.appKey);
            bVar.f425t = dVar.m37179a(EnumC1386f.shareReturnUrl);
            bVar.f426u = dVar.m37179a(EnumC1386f.exposureUrl);
            bVar.f428w = dVar.m37179a(EnumC1386f.actionReturnUrl);
            bVar.f429x = dVar.m37179a(EnumC1386f.durationReturnUrl);
            bVar2 = bVar;
            bVar.f417l = dVar.m37179a(EnumC1386f.IniExpand).equals("Y");
            try {
                bVar.f408c = Integer.parseInt(dVar.m37179a(EnumC1386f.defaultValid)) * 1000;
            } catch (Exception e) {
                bVar.f408c = 0;
            }
            bVar.f409d = dVar.m37179a(EnumC1386f.pid);
            bVar.f431z = bVar.f409d.equals("0");
            bVar.f430y = dVar.m37178b(EnumC1386f.isFullScreen);
            bVar.f421p = dVar.m37179a(EnumC1386f.absolute).equals("Y");
            bVar.f416k = dVar.m37179a(EnumC1386f.url_open).equals("inapp");
            bVar.f399A = dVar.m37178b(EnumC1386f.adServing);
            String a = dVar.m37179a(EnumC1386f.mediaType);
            try {
                i = Integer.parseInt(dVar.m37179a(EnumC1386f.defaultCreative));
            } catch (Exception e2) {
                i = 0;
            }
            EnumC1382b a2 = EnumC1382b.banner.m37193a(a);
            if (a2 != null) {
                bVar.m37199a(a2, i);
            }
            int i2 = C13951.f644a[bVar.f406a.ordinal()];
            if (i2 == 1) {
                bVar.f411f = dVar.m37179a(EnumC1386f.mediaSrc);
                bVar.f412g = dVar.m37179a(EnumC1386f.mediaSrc_S);
            } else if (i2 == 2) {
                bVar.f410e = dVar.m37179a(EnumC1386f.bannerUrl);
            } else if (i2 == 3) {
                bVar.f413h = dVar.m37179a(z ? EnumC1386f.fillbannerUrl_P : EnumC1386f.fillbannerUrl_L);
            } else if (i2 != 4) {
                bVar.f427v = dVar.m37179a(EnumC1386f.creativeUrl);
            } else {
                bVar.f411f = dVar.m37179a(EnumC1386f.mediaSrc);
                bVar.f412g = dVar.m37179a(EnumC1386f.fillbannerUrl);
            }
            C1396a aVar = new C1396a(bVar, dVar);
            aVar.m37165a(EnumC1386f.enable_download, EnumC1389i.download, EnumC1386f.downloadUrl);
            aVar.m37165a(EnumC1386f.enable_fb, EnumC1389i.fb, EnumC1386f.fbUrl);
            aVar.m37165a(EnumC1386f.enable_line, EnumC1389i.line, EnumC1386f.lineTxt);
            aVar.m37165a(EnumC1386f.enable_phone, EnumC1389i.phone, EnumC1386f.phone);
            aVar.m37165a(EnumC1386f.enable_url, EnumC1389i.url, EnumC1386f.linkUrl);
            bVar2 = aVar.m37167a();
            bVar2.f402D = dVar.m37179a(EnumC1386f.fbPageId);
            JSONArray c = dVar.m37177c(EnumC1386f.iBeacons);
            for (int i3 = 0; i3 < c.length(); i3++) {
                bVar2.f404F.add(c.getString(i3));
            }
            bVar2 = bVar2;
            bVar2.f405G = dVar.m37179a(EnumC1386f.iBeaconUrl);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        return bVar2;
    }
}
