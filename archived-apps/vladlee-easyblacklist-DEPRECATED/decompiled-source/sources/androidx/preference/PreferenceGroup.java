package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.content.p033a.C0645i;
import androidx.p026b.C0542i;
import androidx.preference.C1001ac;
import androidx.preference.Preference;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/preference/PreferenceGroup.class */
public abstract class PreferenceGroup extends Preference {

    /* renamed from: a */
    final C0542i<String, Long> f4092a;

    /* renamed from: b */
    private final Handler f4093b;

    /* renamed from: c */
    private List<Preference> f4094c;

    /* renamed from: d */
    private boolean f4095d;

    /* renamed from: e */
    private int f4096e;

    /* renamed from: f */
    private boolean f4097f;

    /* renamed from: g */
    private int f4098g;

    /* renamed from: h */
    private AbstractC0995a f4099h;

    /* renamed from: i */
    private final Runnable f4100i;

    /* loaded from: classes-dex2jar.jar:androidx/preference/PreferenceGroup$SavedState.class */
    static class SavedState extends Preference.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1035s();

        /* renamed from: a */
        int f4101a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f4101a = parcel.readInt();
        }

        SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.f4101a = i;
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4101a);
        }
    }

    /* renamed from: androidx.preference.PreferenceGroup$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/PreferenceGroup$a.class */
    public interface AbstractC0995a {
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, 0);
        this.f4092a = new C0542i<>();
        this.f4093b = new Handler();
        this.f4095d = true;
        this.f4096e = 0;
        this.f4097f = false;
        this.f4098g = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f4099h = null;
        this.f4100i = new RunnableC1034r(this);
        this.f4094c = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4281bh, i, 0);
        int i2 = C1001ac.C1009h.f4283bj;
        this.f4095d = C0645i.m8633a(obtainStyledAttributes, i2, i2, true);
        if (obtainStyledAttributes.hasValue(C1001ac.C1009h.f4282bi)) {
            int i3 = C1001ac.C1009h.f4282bi;
            m7429h(C0645i.m8635a(obtainStyledAttributes, i3, i3));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    private boolean m7431c(Preference preference) {
        boolean remove;
        synchronized (this) {
            preference.m7486K();
            if (preference.m7487J() == this) {
                preference.m7476a((PreferenceGroup) null);
            }
            remove = this.f4094c.remove(preference);
            if (remove) {
                String y = preference.m7446y();
                if (y != null) {
                    this.f4092a.put(y, Long.valueOf(preference.mo7400i_()));
                    this.f4093b.removeCallbacks(this.f4100i);
                    this.f4093b.post(this.f4100i);
                }
                if (this.f4097f) {
                    preference.mo7440H();
                }
            }
        }
        return remove;
    }

    @Override // androidx.preference.Preference
    /* renamed from: G */
    public final void mo7441G() {
        super.mo7441G();
        this.f4097f = true;
        int c = m7432c();
        for (int i = 0; i < c; i++) {
            m7428i(i).mo7441G();
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: H */
    public final void mo7440H() {
        super.mo7440H();
        this.f4097f = false;
        int c = m7432c();
        for (int i = 0; i < c; i++) {
            m7428i(i).mo7440H();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7439a(Bundle bundle) {
        super.mo7439a(bundle);
        int c = m7432c();
        for (int i = 0; i < c; i++) {
            m7428i(i).mo7439a(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7418a(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(SavedState.class)) {
            super.mo7418a(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f4098g = savedState.f4101a;
        super.mo7418a(savedState.getSuperState());
    }

    /* renamed from: a */
    public final boolean m7438a(Preference preference) {
        long j;
        if (this.f4094c.contains(preference)) {
            return true;
        }
        if (preference.m7446y() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.m7487J() != null) {
                preferenceGroup = preferenceGroup.m7487J();
            }
            String y = preference.m7446y();
            if (preferenceGroup.m7434b((CharSequence) y) != null) {
                Log.e("PreferenceGroup", "Found duplicated key: \"" + y + "\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        if (preference.m7449u() == Integer.MAX_VALUE) {
            if (this.f4095d) {
                int i = this.f4096e;
                this.f4096e = i + 1;
                preference.m7469b(i);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).f4095d = this.f4095d;
            }
        }
        int binarySearch = Collections.binarySearch(this.f4094c, preference);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (binarySearch * (-1)) - 1;
        }
        preference.m7463c(mo7409j());
        synchronized (this) {
            this.f4094c.add(i2, preference);
        }
        C1042y F = m7489F();
        String y2 = preference.m7446y();
        if (y2 == null || !this.f4092a.containsKey(y2)) {
            j = F.m7364a();
        } else {
            j = this.f4092a.get(y2).longValue();
            this.f4092a.remove(y2);
        }
        preference.m7474a(F, j);
        preference.m7476a(this);
        if (this.f4097f) {
            preference.mo7441G();
        }
        m7490E();
        return true;
    }

    /* renamed from: b */
    public final int m7437b() {
        return this.f4098g;
    }

    /* renamed from: b */
    public final <T extends Preference> T m7434b(CharSequence charSequence) {
        T t;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        } else if (TextUtils.equals(m7446y(), charSequence)) {
            return this;
        } else {
            int c = m7432c();
            for (int i = 0; i < c; i++) {
                T t2 = (T) m7428i(i);
                if (TextUtils.equals(t2.m7446y(), charSequence)) {
                    return t2;
                }
                if ((t2 instanceof PreferenceGroup) && (t = (T) ((PreferenceGroup) t2).m7434b(charSequence)) != null) {
                    return t;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: b */
    public final void mo7436b(Bundle bundle) {
        super.mo7436b(bundle);
        int c = m7432c();
        for (int i = 0; i < c; i++) {
            m7428i(i).mo7436b(bundle);
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: b */
    public final void mo7433b(boolean z) {
        super.mo7433b(z);
        int c = m7432c();
        for (int i = 0; i < c; i++) {
            m7428i(i).m7463c(z);
        }
    }

    /* renamed from: b */
    public final boolean m7435b(Preference preference) {
        boolean c = m7431c(preference);
        m7490E();
        return c;
    }

    /* renamed from: c */
    public final int m7432c() {
        return this.f4094c.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean mo7427d() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final void m7430e() {
        synchronized (this) {
            Collections.sort(this.f4094c);
        }
    }

    /* renamed from: h */
    public final void m7429h(int i) {
        if (i != Integer.MAX_VALUE && !m7445z()) {
            Log.e("PreferenceGroup", getClass().getSimpleName() + " should have a key defined if it contains an expandable preference");
        }
        this.f4098g = i;
    }

    /* renamed from: i */
    public final Preference m7428i(int i) {
        return this.f4094c.get(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: k */
    public final Parcelable mo7408k() {
        return new SavedState(super.mo7408k(), this.f4098g);
    }
}
