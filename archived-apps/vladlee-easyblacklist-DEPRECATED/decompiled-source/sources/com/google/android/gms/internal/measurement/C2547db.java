package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.db */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/db.class */
final class C2547db implements AbstractC2553dh {

    /* renamed from: a */
    private AbstractC2553dh[] f15967a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2547db(AbstractC2553dh... dhVarArr) {
        this.f15967a = dhVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2553dh
    /* renamed from: a */
    public final boolean mo2799a(Class<?> cls) {
        for (AbstractC2553dh dhVar : this.f15967a) {
            if (dhVar.mo2799a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2553dh
    /* renamed from: b */
    public final AbstractC2554di mo2798b(Class<?> cls) {
        AbstractC2553dh[] dhVarArr;
        for (AbstractC2553dh dhVar : this.f15967a) {
            if (dhVar.mo2799a(cls)) {
                return dhVar.mo2798b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
