package p193e.p194a.p982k0.p983a;

import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import com.mopub.mobileads.VastIconXmlManager;
import com.truecaller.data.entity.CallRecording;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callrecording.util.CallRecordingExtensionsKt$durationAsync$1", f = "CallRecordingExtensions.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k0.a.d */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/d.class */
public final class C16277d extends i implements p<i0, d<? super Long>, Object> {

    /* renamed from: e */
    public final /* synthetic */ CallRecording f45855e;

    /* renamed from: f */
    public final /* synthetic */ C16303s f45856f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16277d(CallRecording callRecording, C16303s c16303s, d dVar) {
        super(2, dVar);
        this.f45855e = callRecording;
        this.f45856f = c16303s;
    }

    /* renamed from: i */
    public final d<s> m17638i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16277d(this.f45855e, this.f45856f, dVar);
    }

    /* renamed from: k */
    public final Object m17637k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16277d(this.f45855e, this.f45856f, dVar).m17636s(s.a);
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* renamed from: s */
    public final Object m17636s(Object obj) {
        boolean z;
        C25225a.m3932a3(obj);
        CallRecording callRecording = this.f45855e;
        l.e(callRecording, "$this$isMediaStoreFile");
        String str = null;
        if (!C17891a1.C17902k.m15692B0(callRecording.f11505c) || Build.VERSION.SDK_INT < 29) {
            CallRecording callRecording2 = this.f45855e;
            C16303s c16303s = this.f45856f;
            try {
                l.e(callRecording2, "$this$isMediaStoreFile");
                if (C17891a1.C17902k.m15692B0(callRecording2.f11505c)) {
                    Cursor query = c16303s.f45900a.query(Uri.parse(callRecording2.f11505c), new String[]{"_data"}, null, null, null);
                    ArrayList arrayList = new ArrayList();
                    if (query != null) {
                        while (query.moveToNext()) {
                            arrayList.add(query.getString(0));
                        }
                    }
                    C25225a.m4016G(query, null);
                    str = (String) s1.u.i.D(arrayList);
                } else {
                    str = callRecording2.f11505c;
                }
            } catch (SecurityException e) {
            }
            Objects.requireNonNull(c16303s);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            boolean z2 = false;
            if (str != null) {
                try {
                    mediaMetadataRetriever.setDataSource(str);
                    String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
                    z2 = false;
                    if (extractMetadata != null) {
                        z2 = Long.parseLong(extractMetadata);
                    }
                } catch (Exception e2) {
                    z2 = false;
                } catch (Throwable th) {
                    mediaMetadataRetriever.release();
                    throw th;
                }
            }
            mediaMetadataRetriever.release();
            z = z2;
        } else {
            try {
                Cursor query2 = this.f45856f.f45900a.query(Uri.parse(this.f45855e.f11505c), new String[]{VastIconXmlManager.DURATION}, null, null, null);
                ArrayList arrayList2 = new ArrayList();
                if (query2 != null) {
                    while (query2.moveToNext()) {
                        arrayList2.add(Long.valueOf(query2.getLong(0)));
                    }
                }
                C25225a.m4016G(query2, null);
                Long l = (Long) s1.u.i.D(arrayList2);
                z = false;
                if (l != null) {
                    z = l.longValue();
                }
            } catch (SecurityException e3) {
                z = false;
            }
        }
        return new Long(z ? 1L : 0L);
    }
}
