package com.google.firebase.iid;

import android.support.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.events.Subscriber;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import java.util.Arrays;
import java.util.List;
@Keep
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements ComponentRegistrar {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar$zza.class */
    public static final class zza implements FirebaseInstanceIdInternal {
        private final FirebaseInstanceId zzcn;

        public zza(FirebaseInstanceId firebaseInstanceId) {
            this.zzcn = firebaseInstanceId;
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public final String getId() {
            return this.zzcn.getId();
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public final String getToken() {
            return this.zzcn.getToken();
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public final List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebaseInstanceId.class).add(Dependency.required(FirebaseApp.class)).add(Dependency.required(Subscriber.class)).factory(zzao.zzcm).alwaysEager().build(), Component.builder(FirebaseInstanceIdInternal.class).add(Dependency.required(FirebaseInstanceId.class)).factory(zzap.zzcm).build());
    }
}
