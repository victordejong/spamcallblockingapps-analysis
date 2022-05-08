package com.flurry.sdk;

import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.flurry.sdk.C2808ag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLConnection;
import java.util.List;
/* renamed from: com.flurry.sdk.af */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/af.class */
public class C2806af {

    /* renamed from: a */
    public static final String f3965a = "af";

    /* renamed from: b */
    public C2799ae f3966b;

    /* renamed from: d */
    public long f3968d;

    /* renamed from: e */
    public long f3969e;

    /* renamed from: f */
    public EnumC2807a f3970f = EnumC2807a.NONE;

    /* renamed from: c */
    public C2842as<String> f3967c = null;

    /* renamed from: com.flurry.sdk.af$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/af$a.class */
    public enum EnumC2807a {
        NONE,
        INIT,
        ACTIVE,
        PAUSED
    }

    /* renamed from: a */
    public static File m33656a(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(C3012dz.m33303a("fileStreamCacheDownloaderTmp", i), C3012dz.m33301c(str));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    /* renamed from: a */
    public static String m33646a(String str) {
        return C3012dz.m33301c(str);
    }

    /* renamed from: a */
    public static void m33650a(AbstractC3518x xVar) {
        if (xVar != null) {
            try {
                File a = C3012dz.m33303a("fileStreamCacheDownloaderTmp", xVar.mo32283d());
                String str = f3965a;
                C3356jq.m32615a(3, str, "Precaching: Removing local assets for adObject:" + xVar.mo32283d());
                C3443kz.m32476b(a);
            } catch (Exception e) {
                String str2 = f3965a;
                C3356jq.m32614a(6, str2, "Precaching: Error removing local assets for adObject:" + xVar.mo32283d() + " " + e.getMessage(), e);
            }
        }
    }

    /* renamed from: a */
    public static void m33647a(AbstractC3518x xVar, String str, String str2) {
        Bitmap a = C2900c.m33450a(str);
        if (a != null) {
            File file = new File(C3012dz.m33303a("fileStreamCacheDownloaderTmp", xVar.mo32283d()).getPath(), str2);
            String str3 = f3965a;
            C3356jq.m32615a(3, str3, "Video Cache: Removing local assets for adObject: " + xVar.mo32283d() + " filename: " + str2);
            if (file.exists()) {
                String str4 = f3965a;
                C3356jq.m32615a(3, str4, "Video Cache: found asset: " + file.exists());
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                a.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.close();
            } catch (FileNotFoundException e) {
                String str5 = f3965a;
                C3356jq.m32614a(6, str5, "Precaching: Error saving cache file for filename:" + str2 + " " + e.getMessage(), e);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0132  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m33654a(android.graphics.Bitmap r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2806af.m33654a(android.graphics.Bitmap, java.lang.String):boolean");
    }

    /* renamed from: a */
    public static boolean m33651a(C2853ay ayVar, String str) {
        if (ayVar == null || TextUtils.isEmpty(str)) {
            return false;
        }
        List<C2904ca> list = ayVar.f4111b.f4147b.f4440f;
        for (int i = 0; i < list.size(); i++) {
            for (String str2 : ayVar.m33527c(i)) {
                if (str2.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public static void m33641b(AbstractC3518x xVar, String str) {
        if (str != null && !str.isEmpty()) {
            String str2 = f3965a;
            C3356jq.m32615a(3, str2, "Video Cache: Removing local assets for adObject: " + xVar.mo32283d() + " filename: " + str);
            File file = new File(C3012dz.m33303a("fileStreamCacheDownloaderTmp", xVar.mo32283d()).getPath(), str.substring(str.lastIndexOf("/") + 1, str.length()));
            if (file.isFile() && file.exists()) {
                file.delete();
                String str3 = f3965a;
                C3356jq.m32615a(3, str3, "Video Cache: found asset: " + file.exists());
            }
        }
    }

    /* renamed from: c */
    public static File m33637c(AbstractC3518x xVar, String str) {
        if (xVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return m33656a(xVar.mo32283d(), str);
    }

    /* renamed from: c */
    public static void m33636c(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = f3965a;
            C3356jq.m32615a(3, str2, "AdCacheNative: Delete file " + str);
            File file = new File(str);
            if (file.exists()) {
                boolean delete = file.delete();
                String str3 = f3965a;
                C3356jq.m32615a(3, str3, "AdCacheNative: File exists. Deleting it." + delete);
            }
        }
    }

    /* renamed from: d */
    public static File m33634d(AbstractC3518x xVar, String str) {
        File file = new File(C3012dz.m33303a("fileStreamCacheDownloaderTmp", xVar.mo32283d()).getPath(), str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    /* renamed from: d */
    public static File m33633d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(C3012dz.m33304a("fileAssetCacheFolder"), str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    /* renamed from: a */
    public final int m33652a(C2853ay ayVar) {
        if (!m33639c() || ayVar == null) {
            return 0;
        }
        List<C2904ca> list = ayVar.f4111b.f4147b.f4440f;
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            C2904ca caVar = list.get(i2);
            for (String str : ayVar.m33527c(i2)) {
                if (m33645a(str, caVar.f4373h)) {
                    i++;
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public final void m33655a(long j, long j2) {
        synchronized (this) {
            if (!m33657a()) {
                C3356jq.m32615a(3, f3965a, "Precaching: Initializing AssetCacheManager.");
                this.f3968d = j;
                this.f3969e = j2;
                try {
                    File b = C3012dz.m33302b("fileStreamCacheDownloaderTmp");
                    String str = f3965a;
                    C3356jq.m32615a(3, str, "Precaching: Cleaning temp asset directory: " + b);
                    C3443kz.m32476b(b);
                } catch (Exception e) {
                    String str2 = f3965a;
                    C3356jq.m32614a(6, str2, "Precaching: Error cleaning temp asset directory: " + e.getMessage(), e);
                }
                this.f3970f = EnumC2807a.INIT;
                m33653a(C2808ag.EnumC2809a.INIT);
                this.f3967c = new C2842as<>();
            }
        }
    }

    /* renamed from: a */
    public final void m33653a(C2808ag.EnumC2809a aVar) {
        synchronized (this) {
            C2808ag agVar = new C2808ag();
            agVar.f3976a = aVar;
            C3345jm.m32636a().m32635a(agVar);
        }
    }

    /* renamed from: a */
    public final void m33644a(List<C2853ay> list) {
        if (m33639c() && list != null) {
            int size = list.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                C2853ay ayVar = list.get(size);
                if (m33639c() && ayVar != null) {
                    List<C2904ca> list2 = ayVar.f4111b.f4147b.f4440f;
                    for (int i = 0; i < list2.size(); i++) {
                        for (String str : ayVar.m33527c(i)) {
                            if (!TextUtils.isEmpty(str)) {
                                this.f3966b.m33668b(str);
                            }
                        }
                    }
                }
                size--;
            }
            int i2 = 0;
            for (C2853ay ayVar2 : list) {
                int i3 = i2 + (m33652a(ayVar2) > 0 ? 1 : 0);
                i2 = i3;
                if (i3 >= 2) {
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final boolean m33657a() {
        return !EnumC2807a.NONE.equals(this.f3970f);
    }

    /* renamed from: a */
    public final boolean m33649a(AbstractC3518x xVar, C2853ay ayVar) {
        if (!m33639c() || xVar == null || ayVar == null) {
            return false;
        }
        String str = f3965a;
        C3356jq.m32615a(3, str, "Precaching: Saving local assets for adObject:" + xVar.mo32283d());
        List<C2904ca> list = ayVar.f4111b.f4147b.f4440f;
        for (int i = 0; i < list.size(); i++) {
            for (String str2 : ayVar.m33527c(i)) {
                if (!m33629f(xVar, str2)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x0295  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33648a(com.flurry.sdk.AbstractC3518x r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2806af.m33648a(com.flurry.sdk.x, java.lang.String):boolean");
    }

    /* renamed from: a */
    public final boolean m33645a(String str, long j) {
        EnumC2851aw awVar;
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        EnumC2851aw awVar2 = EnumC2851aw.UNKNOWN;
        String path = Uri.parse(str).getPath();
        if (!TextUtils.isEmpty(path)) {
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(path);
            String str2 = f3965a;
            C3356jq.m32615a(3, str2, "Precaching: assetLink: " + str + " urlPath: " + path + " mimeType: " + guessContentTypeFromName);
            awVar = awVar2;
            if (guessContentTypeFromName != null) {
                if (guessContentTypeFromName.startsWith(MimeTypes.BASE_TYPE_VIDEO)) {
                    String str3 = f3965a;
                    C3356jq.m32615a(3, str3, "Precaching: asset is a video: " + str);
                    awVar = EnumC2851aw.VIDEO;
                } else if (guessContentTypeFromName.startsWith(TtmlNode.TAG_IMAGE)) {
                    String str4 = f3965a;
                    C3356jq.m32615a(3, str4, "Precaching: asset is an image: " + str);
                    awVar = EnumC2851aw.IMAGE;
                } else if (guessContentTypeFromName.startsWith("text")) {
                    String str5 = f3965a;
                    C3356jq.m32615a(3, str5, "Precaching: asset is text: " + str);
                    awVar = EnumC2851aw.TEXT;
                } else {
                    String str6 = f3965a;
                    C3356jq.m32615a(5, str6, "Precaching: could not identify media type for asset: " + str);
                    awVar = awVar2;
                }
            }
        } else {
            String str7 = f3965a;
            C3356jq.m32615a(5, str7, "Precaching: could not identify urlPath for asset: " + str);
            awVar = awVar2;
        }
        if (EnumC2851aw.IMAGE.equals(awVar) || EnumC2851aw.VIDEO.equals(awVar)) {
            z = this.f3966b.m33673a(str, awVar, j);
        }
        return z;
    }

    /* renamed from: b */
    public final EnumC2816ak m33642b(C2853ay ayVar) {
        if (m33639c() && ayVar != null) {
            C2909cf cfVar = ayVar.f4111b.f4147b;
            if (cfVar == null) {
                return EnumC2816ak.COMPLETE;
            }
            EnumC2816ak akVar = EnumC2816ak.NOT_STARTED;
            List<C2904ca> list = cfVar.f4440f;
            boolean z = false;
            for (int i = 0; i < list.size(); i++) {
                for (String str : ayVar.m33527c(i)) {
                    EnumC2828ap b = this.f3966b.m33668b(str);
                    if (akVar == null) {
                        akVar = EnumC2816ak.NOT_STARTED;
                    } else {
                        akVar = akVar;
                        if (b != null) {
                            if (EnumC2828ap.ERROR.equals(b)) {
                                akVar = EnumC2816ak.ERROR;
                            } else if (EnumC2828ap.EVICTED.equals(b)) {
                                akVar = akVar;
                                if (!akVar.equals(EnumC2816ak.ERROR)) {
                                    akVar = EnumC2816ak.EVICTED;
                                }
                            } else if (EnumC2828ap.NONE.equals(b) || EnumC2828ap.CANCELLED.equals(b)) {
                                akVar = akVar;
                                if (!akVar.equals(EnumC2816ak.ERROR)) {
                                    akVar = akVar;
                                    if (!akVar.equals(EnumC2816ak.EVICTED)) {
                                        akVar = EnumC2816ak.INCOMPLETE;
                                    }
                                }
                            } else if (EnumC2828ap.QUEUED.equals(b) || EnumC2828ap.IN_PROGRESS.equals(b)) {
                                if (!EnumC2816ak.NOT_STARTED.equals(akVar)) {
                                    akVar = akVar;
                                    if (!EnumC2816ak.COMPLETE.equals(akVar)) {
                                    }
                                }
                                akVar = EnumC2816ak.IN_PROGRESS;
                            } else {
                                akVar = akVar;
                                if (EnumC2828ap.COMPLETE.equals(b)) {
                                    akVar = akVar;
                                    if (EnumC2816ak.NOT_STARTED.equals(akVar)) {
                                        akVar = EnumC2816ak.COMPLETE;
                                    }
                                }
                            }
                        }
                    }
                    z = true;
                }
            }
            return z ? akVar : EnumC2816ak.COMPLETE;
        }
        return EnumC2816ak.ERROR;
    }

    /* renamed from: b */
    public final void m33643b() {
        synchronized (this) {
            if (m33657a()) {
                if (!m33639c()) {
                    C3356jq.m32615a(3, f3965a, "Precaching: Starting AssetCacheManager.");
                    this.f3966b = new C2799ae("fileStreamCacheDownloader", this.f3968d, this.f3969e);
                    this.f3966b.m33672b();
                    this.f3970f = EnumC2807a.ACTIVE;
                    m33653a(C2808ag.EnumC2809a.START);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m33640b(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (this.f3967c.size() > 2) {
                String str2 = this.f3967c.get(0);
                if (!TextUtils.isEmpty(str2)) {
                    m33636c(str2);
                }
            }
            this.f3967c.add(str);
            String str3 = f3965a;
            C3356jq.m32615a(3, str3, "AdCacheNative: queue " + this.f3967c);
        }
    }

    /* renamed from: c */
    public final void m33638c(C2853ay ayVar) {
        if (m33639c() && ayVar != null) {
            List<C2904ca> list = ayVar.f4111b.f4147b.f4440f;
            for (int i = 0; i < list.size(); i++) {
                C2904ca caVar = list.get(i);
                for (String str : ayVar.m33527c(i)) {
                    if (m33645a(str, caVar.f4373h) && m33639c()) {
                        this.f3966b.m33674a(str);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public final boolean m33639c() {
        return EnumC2807a.ACTIVE.equals(this.f3970f) || EnumC2807a.PAUSED.equals(this.f3970f);
    }

    /* renamed from: d */
    public final void m33635d() {
        synchronized (this) {
            if (m33639c()) {
                C3356jq.m32615a(3, f3965a, "Precaching: Stopping AssetCacheManager.");
                this.f3966b.m33667c();
                this.f3970f = EnumC2807a.INIT;
                m33653a(C2808ag.EnumC2809a.STOP);
            }
        }
    }

    /* renamed from: e */
    public final C2812aj m33630e(String str) {
        return this.f3966b.m33664c(str);
    }

    /* renamed from: e */
    public final File m33631e(AbstractC3518x xVar, String str) {
        if (TextUtils.isEmpty(str) || xVar == null) {
            return null;
        }
        int d = xVar.mo32283d();
        if (d <= 0) {
            String str2 = f3965a;
            C3356jq.m32615a(3, str2, "TileAd: Invalid ad Id: " + d);
            return null;
        }
        File file = new File(C3012dz.m33303a("fileStreamCacheDownloaderTmp", d), C3012dz.m33301c(str));
        if (!file.exists() || file.length() <= 0) {
            boolean z = false;
            if (!m33648a(xVar, str)) {
                String str3 = f3965a;
                C3356jq.m32615a(3, str3, "TileAd: Could not create file " + d + " for url " + str);
            } else if (file.exists()) {
                C3356jq.m32615a(3, f3965a, "TileAd: create file");
                z = true;
                m33640b(file.getAbsolutePath());
            }
            if (z) {
                return file;
            }
            return null;
        }
        this.f3967c.add(file.getAbsolutePath());
        String str4 = f3965a;
        C3356jq.m32615a(3, str4, "TileAd: Queue " + this.f3967c);
        return file;
    }

    /* renamed from: e */
    public final void m33632e() {
        synchronized (this) {
            if (m33639c()) {
                if (EnumC2807a.PAUSED.equals(this.f3970f)) {
                    C3356jq.m32615a(3, f3965a, "Precaching: Resuming AssetCacheManager.");
                    this.f3966b.m33662e();
                    this.f3970f = EnumC2807a.ACTIVE;
                    m33653a(C2808ag.EnumC2809a.RESUME);
                }
            }
        }
    }

    /* renamed from: f */
    public final boolean m33629f(AbstractC3518x xVar, String str) {
        if (!m33639c() || TextUtils.isEmpty(str)) {
            return false;
        }
        C3356jq.m32615a(3, f3965a, "Precaching: Saving local asset for adObject:" + xVar.mo32283d());
        if (!EnumC2828ap.COMPLETE.equals(this.f3966b.m33668b(str))) {
            return false;
        }
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                z = false;
                if (!TextUtils.isEmpty(path)) {
                    String guessContentTypeFromName = URLConnection.guessContentTypeFromName(path);
                    z = false;
                    if (guessContentTypeFromName != null) {
                        z = false;
                        if (guessContentTypeFromName.startsWith(MimeTypes.BASE_TYPE_VIDEO)) {
                            z = true;
                        }
                    }
                }
            } catch (Exception e) {
                C3356jq.m32615a(3, f3965a, "Error while getting mime type");
                z = false;
            }
        }
        if (!(xVar instanceof C2772aa) || !z) {
            return m33648a(xVar, str);
        }
        return true;
    }
}
