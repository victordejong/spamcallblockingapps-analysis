package com.facebook.appevents;

import android.content.Context;
import com.facebook.appevents.C2252a;
import com.facebook.appevents.C2257c;
import com.facebook.appevents.p038s.C2334b;
import com.facebook.internal.C2408g0;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.f */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/f.class */
public class C2269f {

    /* renamed from: com.facebook.appevents.f$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/f$a.class */
    public static class C2270a extends ObjectInputStream {
        public C2270a(InputStream inputStream) throws IOException {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
            ObjectStreamClass objectStreamClass;
            ObjectStreamClass readClassDescriptor = super.readClassDescriptor();
            if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1")) {
                objectStreamClass = ObjectStreamClass.lookup(C2252a.C2254b.class);
            } else {
                objectStreamClass = readClassDescriptor;
                if (readClassDescriptor.getName().equals("com.facebook.appevents.AppEventsLogger$AppEvent$SerializationProxyV1")) {
                    objectStreamClass = ObjectStreamClass.lookup(C2257c.C2259b.class);
                }
            }
            return objectStreamClass;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00aa A[Catch: all -> 0x00b7, TRY_ENTER, TryCatch #3 {all -> 0x00b7, blocks: (B:4:0x0003, B:10:0x0037, B:12:0x003b, B:18:0x0056, B:20:0x005b, B:22:0x0066, B:25:0x006c, B:27:0x0072, B:29:0x007b, B:35:0x0092, B:37:0x0098, B:40:0x00aa), top: B:55:0x0003 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.appevents.C2284n m35341a() {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.C2269f.m35341a():com.facebook.appevents.n");
    }

    /* renamed from: a */
    public static void m35340a(C2252a aVar, C2287o oVar) {
        synchronized (C2269f.class) {
            try {
                C2334b.m35126b();
                C2284n a = m35341a();
                if (a.m35289a(aVar)) {
                    a.m35287b(aVar).addAll(oVar.m35281b());
                } else {
                    a.m35288a(aVar, oVar.m35281b());
                }
                m35338a(a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m35339a(C2261d dVar) {
        synchronized (C2269f.class) {
            try {
                C2334b.m35126b();
                C2284n a = m35341a();
                for (C2252a aVar : dVar.m35358b()) {
                    a.m35288a(aVar, dVar.m35361a(aVar).m35281b());
                }
                m35338a(a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m35338a(C2284n nVar) {
        Throwable th;
        ObjectOutputStream objectOutputStream;
        Context e = C6135n.m23746e();
        ObjectOutputStream objectOutputStream2 = null;
        ObjectOutputStream objectOutputStream3 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(e.openFileOutput("AppEventsLogger.persistedevents", 0)));
            } catch (Exception e2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            objectOutputStream.writeObject(nVar);
            C2408g0.m34863a(objectOutputStream);
        } catch (Exception e3) {
            objectOutputStream2 = objectOutputStream;
            objectOutputStream3 = objectOutputStream2;
            try {
                e.getFileStreamPath("AppEventsLogger.persistedevents").delete();
            } catch (Exception e4) {
            }
            C2408g0.m34863a(objectOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream3 = objectOutputStream;
            C2408g0.m34863a(objectOutputStream3);
            throw th;
        }
    }
}
