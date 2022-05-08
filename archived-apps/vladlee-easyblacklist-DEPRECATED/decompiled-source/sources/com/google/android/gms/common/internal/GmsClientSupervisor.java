package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor.class */
public abstract class GmsClientSupervisor {

    /* renamed from: a */
    private static final Object f6778a = new Object();

    /* renamed from: b */
    private static GmsClientSupervisor f6779b;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientSupervisor$zza.class */
    public static final class zza {

        /* renamed from: a */
        private final String f6780a;

        /* renamed from: b */
        private final String f6781b;

        /* renamed from: c */
        private final ComponentName f6782c;

        /* renamed from: d */
        private final int f6783d;

        public zza(ComponentName componentName, int i) {
            this.f6780a = null;
            this.f6781b = null;
            this.f6782c = (ComponentName) Preconditions.checkNotNull(componentName);
            this.f6783d = 129;
        }

        public zza(String str, int i) {
            this.f6780a = Preconditions.checkNotEmpty(str);
            this.f6781b = "com.google.android.gms";
            this.f6782c = null;
            this.f6783d = 129;
        }

        public zza(String str, String str2, int i) {
            this.f6780a = Preconditions.checkNotEmpty(str);
            this.f6781b = Preconditions.checkNotEmpty(str2);
            this.f6782c = null;
            this.f6783d = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return Objects.equal(this.f6780a, zzaVar.f6780a) && Objects.equal(this.f6781b, zzaVar.f6781b) && Objects.equal(this.f6782c, zzaVar.f6782c) && this.f6783d == zzaVar.f6783d;
        }

        public final ComponentName getComponentName() {
            return this.f6782c;
        }

        public final String getPackage() {
            return this.f6781b;
        }

        public final int hashCode() {
            return Objects.hashCode(this.f6780a, this.f6781b, this.f6782c, Integer.valueOf(this.f6783d));
        }

        public final String toString() {
            String str = this.f6780a;
            return str == null ? this.f6782c.flattenToString() : str;
        }

        public final Intent zzb(Context context) {
            String str = this.f6780a;
            return str != null ? new Intent(str).setPackage(this.f6781b) : new Intent().setComponent(this.f6782c);
        }

        public final int zzq() {
            return this.f6783d;
        }
    }

    public static GmsClientSupervisor getInstance(Context context) {
        synchronized (f6778a) {
            if (f6779b == null) {
                f6779b = new C1669k(context.getApplicationContext());
            }
        }
        return f6779b;
    }

    /* renamed from: a */
    protected abstract void mo5681a(zza zzaVar, ServiceConnection serviceConnection);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract boolean mo5680a(zza zzaVar, ServiceConnection serviceConnection, String str);

    public boolean bindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        return mo5680a(new zza(componentName, 129), serviceConnection, str);
    }

    public boolean bindService(String str, ServiceConnection serviceConnection, String str2) {
        return mo5680a(new zza(str, 129), serviceConnection, str2);
    }

    public void unbindService(ComponentName componentName, ServiceConnection serviceConnection, String str) {
        mo5681a(new zza(componentName, 129), serviceConnection);
    }

    public void unbindService(String str, ServiceConnection serviceConnection, String str2) {
        mo5681a(new zza(str, 129), serviceConnection);
    }

    public final void zza(String str, String str2, int i, ServiceConnection serviceConnection, String str3) {
        mo5681a(new zza(str, str2, i), serviceConnection);
    }
}
