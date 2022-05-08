package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.util.ArrayMap;
import com.google.android.gms.internal.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzc.class */
public final class zzc extends Fragment implements LifecycleFragment {
    private static WeakHashMap<FragmentActivity, WeakReference<zzc>> zzbd = new WeakHashMap<>();
    private Map<String, LifecycleCallback> zzbe = new ArrayMap();
    private int zzbf = 0;
    private Bundle zzbg;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.isRemoving() != false) goto L_0x0037;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzc zza(android.support.p001v4.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<android.support.v4.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.zzbd
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            return r0
        L_0x001d:
            r0 = r6
            android.support.v4.app.FragmentManager r0 = r0.getSupportFragmentManager()     // Catch: ClassCastException -> 0x0062
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            android.support.v4.app.Fragment r0 = r0.findFragmentByTag(r1)     // Catch: ClassCastException -> 0x0062
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0     // Catch: ClassCastException -> 0x0062
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0037
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L_0x0050
        L_0x0037:
            com.google.android.gms.common.api.internal.zzc r0 = new com.google.android.gms.common.api.internal.zzc
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            android.support.v4.app.FragmentManager r0 = r0.getSupportFragmentManager()
            android.support.v4.app.FragmentTransaction r0 = r0.beginTransaction()
            r1 = r7
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            android.support.v4.app.FragmentTransaction r0 = r0.add(r1, r2)
            int r0 = r0.commitAllowingStateLoss()
        L_0x0050:
            java.util.WeakHashMap<android.support.v4.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.zzbd
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            return r0
        L_0x0062:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzc.zza(android.support.v4.app.FragmentActivity):com.google.android.gms.common.api.internal.zzc");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.zzbe.containsKey(str)) {
            this.zzbe.put(str, lifecycleCallback);
            if (this.zzbf > 0) {
                new zze(Looper.getMainLooper()).post(new zzd(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // android.support.p001v4.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.zzbe.values()) {
            lifecycleCallback.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return cls.cast(this.zzbe.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final /* synthetic */ Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isCreated() {
        return this.zzbf > 0;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isStarted() {
        return this.zzbf >= 2;
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.zzbe.values()) {
            lifecycleCallback.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzbf = 1;
        this.zzbg = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.zzbe.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzbf = 5;
        for (LifecycleCallback lifecycleCallback : this.zzbe.values()) {
            lifecycleCallback.onDestroy();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzbf = 3;
        for (LifecycleCallback lifecycleCallback : this.zzbe.values()) {
            lifecycleCallback.onResume();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry<String, LifecycleCallback> entry : this.zzbe.entrySet()) {
                Bundle bundle2 = new Bundle();
                entry.getValue().onSaveInstanceState(bundle2);
                bundle.putBundle(entry.getKey(), bundle2);
            }
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzbf = 2;
        for (LifecycleCallback lifecycleCallback : this.zzbe.values()) {
            lifecycleCallback.onStart();
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzbf = 4;
        for (LifecycleCallback lifecycleCallback : this.zzbe.values()) {
            lifecycleCallback.onStop();
        }
    }
}
