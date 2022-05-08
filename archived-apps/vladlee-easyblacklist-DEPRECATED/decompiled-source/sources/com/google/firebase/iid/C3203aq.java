package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p074d.AbstractC3182g;
import java.io.IOException;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.aq */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/aq.class */
public final class C3203aq implements AbstractC3211b {

    /* renamed from: a */
    private final FirebaseApp f19094a;

    /* renamed from: b */
    private final C3224o f19095b;

    /* renamed from: c */
    private final C3231v f19096c;

    /* renamed from: d */
    private final Executor f19097d;

    /* renamed from: e */
    private final AbstractC3182g f19098e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3203aq(FirebaseApp firebaseApp, C3224o oVar, Executor executor, AbstractC3182g gVar) {
        this(firebaseApp, oVar, executor, new C3231v(firebaseApp.m664a(), oVar), gVar);
    }

    private C3203aq(FirebaseApp firebaseApp, C3224o oVar, Executor executor, C3231v vVar, AbstractC3182g gVar) {
        this.f19094a = firebaseApp;
        this.f19095b = oVar;
        this.f19096c = vVar;
        this.f19097d = executor;
        this.f19098e = gVar;
    }

    /* renamed from: a */
    private static <T> Task<Void> m516a(Task<T> task) {
        return task.continueWith(C3193ag.m526a(), new C3205as());
    }

    /* renamed from: a */
    private final Task<Bundle> m515a(String str, String str2, String str3, final Bundle bundle) {
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.f19094a.m658b().m642a());
        bundle.putString("gmsv", Integer.toString(this.f19095b.m462d()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f19095b.m464b());
        bundle.putString("app_ver_name", this.f19095b.m463c());
        bundle.putString("cliv", "fiid-12451000");
        bundle.putString("Firebase-Client", this.f19098e.mo568a());
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f19097d.execute(new Runnable(this, bundle, taskCompletionSource) { // from class: com.google.firebase.iid.ap

            /* renamed from: a */
            private final C3203aq f19091a;

            /* renamed from: b */
            private final Bundle f19092b;

            /* renamed from: c */
            private final TaskCompletionSource f19093c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19091a = this;
                this.f19092b = bundle;
                this.f19093c = taskCompletionSource;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19091a.m517a(this.f19092b, this.f19093c);
            }
        });
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ String m518a(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString("error");
            if ("RST".equals(string3)) {
                throw new IOException("INSTANCE_ID_RESET");
            } else if (string3 != null) {
                throw new IOException(string3);
            } else {
                String valueOf = String.valueOf(bundle);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
                sb.append("Unexpected response: ");
                sb.append(valueOf);
                Log.w("FirebaseInstanceId", sb.toString(), new Throwable());
                throw new IOException("SERVICE_NOT_AVAILABLE");
            }
        } else {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
    }

    /* renamed from: b */
    private final Task<String> m514b(Task<Bundle> task) {
        return task.continueWith(this.f19097d, new C3204ar(this));
    }

    @Override // com.google.firebase.iid.AbstractC3211b
    /* renamed from: a */
    public final Task<String> mo489a(String str, String str2, String str3) {
        return m514b(m515a(str, str2, str3, new Bundle()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m517a(Bundle bundle, TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(this.f19096c.m454a(bundle));
        } catch (IOException e) {
            taskCompletionSource.setException(e);
        }
    }

    @Override // com.google.firebase.iid.AbstractC3211b
    /* renamed from: a */
    public final boolean mo490a() {
        return this.f19095b.m468a() != 0;
    }

    @Override // com.google.firebase.iid.AbstractC3211b
    /* renamed from: b */
    public final Task<Void> mo488b(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        String valueOf2 = String.valueOf(str3);
        return m516a(m514b(m515a(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle)));
    }

    @Override // com.google.firebase.iid.AbstractC3211b
    /* renamed from: c */
    public final Task<Void> mo487c(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        bundle.putString("delete", "1");
        String valueOf2 = String.valueOf(str3);
        return m516a(m514b(m515a(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle)));
    }
}
