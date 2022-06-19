package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import androidx.room.AbstractC0407e;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService.class */
public class MultiInstanceInvalidationService extends Service {

    /* renamed from: f */
    int f2156f = 0;

    /* renamed from: g */
    final HashMap<Integer, String> f2157g = new HashMap<>();

    /* renamed from: h */
    final RemoteCallbackList<AbstractC0406d> f2158h = new RemoteCallbackListC0404a();

    /* renamed from: i */
    private final AbstractC0407e.a f2159i = new b(this);

    /* renamed from: androidx.room.MultiInstanceInvalidationService$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/MultiInstanceInvalidationService$a.class */
    class RemoteCallbackListC0404a extends RemoteCallbackList<AbstractC0406d> {
        RemoteCallbackListC0404a() {
            MultiInstanceInvalidationService.this = r4;
        }

        /* renamed from: a */
        public void onCallbackDied(AbstractC0406d abstractC0406d, Object obj) {
            MultiInstanceInvalidationService.this.f2157g.remove(Integer.valueOf(((Integer) obj).intValue()));
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2159i;
    }
}
