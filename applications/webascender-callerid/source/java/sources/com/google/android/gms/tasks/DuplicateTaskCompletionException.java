package com.google.android.gms.tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/DuplicateTaskCompletionException.class */
public final class DuplicateTaskCompletionException extends IllegalStateException {
    private DuplicateTaskCompletionException(String str, Throwable th) {
        super(str, th);
    }

    /* renamed from: a */
    public static IllegalStateException m1479a(AbstractC1646g<?> abstractC1646g) {
        String str;
        if (!abstractC1646g.m1453r()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception m1457n = abstractC1646g.m1457n();
        if (m1457n != null) {
            str = "failure";
        } else if (abstractC1646g.m1452s()) {
            String valueOf = String.valueOf(abstractC1646g.m1456o());
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 7);
            sb.append("result ");
            sb.append(valueOf);
            str = sb.toString();
        } else {
            str = abstractC1646g.m1454q() ? "cancellation" : "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        return new DuplicateTaskCompletionException(valueOf2.length() != 0 ? "Complete with: ".concat(valueOf2) : new String("Complete with: "), m1457n);
    }
}
