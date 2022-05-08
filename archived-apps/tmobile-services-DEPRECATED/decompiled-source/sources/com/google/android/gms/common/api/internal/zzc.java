package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzc.class */
public final class zzc extends Fragment implements LifecycleFragment {

    /* renamed from: i */
    private static WeakHashMap<FragmentActivity, WeakReference<zzc>> f7370i = new WeakHashMap<>();

    /* renamed from: f */
    private Map<String, LifecycleCallback> f7371f = new ArrayMap();

    /* renamed from: g */
    private int f7372g = 0;

    /* renamed from: h */
    private Bundle f7373h;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.isRemoving() != false) goto L_0x0037;
     */
    /* renamed from: H0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzc m14645H0(androidx.fragment.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.f7370i
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
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()     // Catch: ClassCastException -> 0x0066
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.findFragmentByTag(r1)     // Catch: ClassCastException -> 0x0066
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0     // Catch: ClassCastException -> 0x0066
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0037
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L_0x0054
        L_0x0037:
            com.google.android.gms.common.api.internal.zzc r0 = new com.google.android.gms.common.api.internal.zzc
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()
            androidx.fragment.app.FragmentTransaction r0 = r0.beginTransaction()
            r8 = r0
            r0 = r8
            r1 = r7
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.FragmentTransaction r0 = r0.m18343e(r1, r2)
            r0 = r8
            int r0 = r0.mo18338j()
        L_0x0054:
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.f7370i
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            return r0
        L_0x0066:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzc.m14645H0(androidx.fragment.app.FragmentActivity):com.google.android.gms.common.api.internal.zzc");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: I */
    public final <T extends LifecycleCallback> T mo14644I(String str, Class<T> cls) {
        return cls.cast(this.f7371f.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: L */
    public final /* synthetic */ Activity mo14642L() {
        return getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f7371f.values()) {
            lifecycleCallback.mo14733a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: g */
    public final void mo14641g(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f7371f.containsKey(str)) {
            this.f7371f.put(str, lifecycleCallback);
            if (this.f7372g > 0) {
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

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f7371f.values()) {
            lifecycleCallback.mo14727e(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7372g = 1;
        this.f7373h = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f7371f.entrySet()) {
            entry.getValue().mo14726f(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f7372g = 5;
        for (LifecycleCallback lifecycleCallback : this.f7371f.values()) {
            lifecycleCallback.mo14779g();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f7372g = 3;
        for (LifecycleCallback lifecycleCallback : this.f7371f.values()) {
            lifecycleCallback.mo14861h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry<String, LifecycleCallback> entry : this.f7371f.entrySet()) {
                Bundle bundle2 = new Bundle();
                entry.getValue().mo14725i(bundle2);
                bundle.putBundle(entry.getKey(), bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f7372g = 2;
        for (LifecycleCallback lifecycleCallback : this.f7371f.values()) {
            lifecycleCallback.mo14724j();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f7372g = 4;
        for (LifecycleCallback lifecycleCallback : this.f7371f.values()) {
            lifecycleCallback.mo10770k();
        }
    }
}
