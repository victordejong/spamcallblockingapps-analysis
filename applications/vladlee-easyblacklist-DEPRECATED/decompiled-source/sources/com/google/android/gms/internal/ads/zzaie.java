package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaie.class */
public class zzaie<ReferenceT> implements zzaib {

    /* renamed from: a */
    private final Map<String, CopyOnWriteArrayList<zzafn<? super ReferenceT>>> f10930a = new HashMap();

    /* renamed from: b */
    private ReferenceT f10931b;

    /* renamed from: a */
    private final void m4398a(final String str, final Map<String, String> map) {
        synchronized (this) {
            if (zzavs.isLoggable(2)) {
                String valueOf = String.valueOf(str);
                zzavs.zzed(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
                for (String str2 : map.keySet()) {
                    String str3 = map.get(str2);
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                    sb.append("  ");
                    sb.append(str2);
                    sb.append(": ");
                    sb.append(str3);
                    zzavs.zzed(sb.toString());
                }
            }
            CopyOnWriteArrayList<zzafn<? super ReferenceT>> copyOnWriteArrayList = this.f10930a.get(str);
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcre)).booleanValue() && zzq.zzku().zzuz() != null) {
                    zzazd.zzdwe.execute(new Runnable(str) { // from class: com.google.android.gms.internal.ads.af

                        /* renamed from: a */
                        private final String f7292a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f7292a = str;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzq.zzku().zzuz().zzcr(this.f7292a.substring(1));
                        }
                    });
                    return;
                }
                return;
            }
            Iterator<zzafn<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                final zzafn<? super ReferenceT> next = it.next();
                zzazd.zzdwi.execute(new Runnable(this, next, map) { // from class: com.google.android.gms.internal.ads.ae

                    /* renamed from: a */
                    private final zzaie f7266a;

                    /* renamed from: b */
                    private final zzafn f7267b;

                    /* renamed from: c */
                    private final Map f7268c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7266a = this;
                        this.f7267b = next;
                        this.f7268c = map;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f7266a.m4399a(this.f7267b, this.f7268c);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4399a(zzafn zzafnVar, Map map) {
        zzafnVar.zza(this.f10931b, map);
    }

    public final void reset() {
        synchronized (this) {
            this.f10930a.clear();
        }
    }

    public final void zza(String str, Predicate<zzafn<? super ReferenceT>> predicate) {
        synchronized (this) {
            CopyOnWriteArrayList<zzafn<? super ReferenceT>> copyOnWriteArrayList = this.f10930a.get(str);
            if (copyOnWriteArrayList != null) {
                ArrayList arrayList = new ArrayList();
                Iterator<zzafn<? super ReferenceT>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    zzafn<? super ReferenceT> next = it.next();
                    if (predicate.apply(next)) {
                        arrayList.add(next);
                    }
                }
                copyOnWriteArrayList.removeAll(arrayList);
            }
        }
    }

    public final void zza(String str, zzafn<? super ReferenceT> zzafnVar) {
        synchronized (this) {
            CopyOnWriteArrayList<zzafn<? super ReferenceT>> copyOnWriteArrayList = this.f10930a.get(str);
            CopyOnWriteArrayList<zzafn<? super ReferenceT>> copyOnWriteArrayList2 = copyOnWriteArrayList;
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                this.f10930a.put(str, copyOnWriteArrayList2);
            }
            copyOnWriteArrayList2.add(zzafnVar);
        }
    }

    public final void zzb(String str, zzafn<? super ReferenceT> zzafnVar) {
        synchronized (this) {
            CopyOnWriteArrayList<zzafn<? super ReferenceT>> copyOnWriteArrayList = this.f10930a.get(str);
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(zzafnVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaib
    public final boolean zzdc(String str) {
        return str != null && zzg(Uri.parse(str));
    }

    public final void zzg(ReferenceT referencet) {
        this.f10931b = referencet;
    }

    public final boolean zzg(Uri uri) {
        if (!"gmsg".equalsIgnoreCase(uri.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            return false;
        }
        zzh(uri);
        return true;
    }

    public final void zzh(Uri uri) {
        String path = uri.getPath();
        zzq.zzkq();
        m4398a(path, zzawb.zzi(uri));
    }
}
