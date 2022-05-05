package androidx.preference;
/* renamed from: androidx.preference.r */
/* loaded from: classes-dex2jar.jar:androidx/preference/r.class */
final class RunnableC1034r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ PreferenceGroup f4367a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1034r(PreferenceGroup preferenceGroup) {
        this.f4367a = preferenceGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this) {
            this.f4367a.f4092a.clear();
        }
    }
}
