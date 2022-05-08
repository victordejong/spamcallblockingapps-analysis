package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.databinding.Observable;
/* loaded from: classes-dex2jar.jar:androidx/databinding/BaseObservable.class */
public class BaseObservable implements Observable {

    /* renamed from: f */
    private transient PropertyChangeRegistry f3510f;

    @Override // androidx.databinding.Observable
    /* renamed from: a */
    public void mo18662a(@NonNull Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            if (this.f3510f != null) {
                this.f3510f.m18683j(onPropertyChangedCallback);
            }
        }
    }

    /* renamed from: b */
    public void m18690b() {
        synchronized (this) {
            if (this.f3510f != null) {
                this.f3510f.mo18672c(this, 0, null);
            }
        }
    }
}
