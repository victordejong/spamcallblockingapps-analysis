package com.google.firebase.p074d;

import javax.annotation.Nonnull;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.d.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/d/a.class */
public final class C3176a extends AbstractC3180e {

    /* renamed from: a */
    private final String f19031a;

    /* renamed from: b */
    private final String f19032b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3176a(String str, String str2) {
        if (str != null) {
            this.f19031a = str;
            if (str2 != null) {
                this.f19032b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    @Override // com.google.firebase.p074d.AbstractC3180e
    @Nonnull
    /* renamed from: a */
    public final String mo572a() {
        return this.f19031a;
    }

    @Override // com.google.firebase.p074d.AbstractC3180e
    @Nonnull
    /* renamed from: b */
    public final String mo570b() {
        return this.f19032b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3180e)) {
            return false;
        }
        AbstractC3180e eVar = (AbstractC3180e) obj;
        return this.f19031a.equals(eVar.mo572a()) && this.f19032b.equals(eVar.mo570b());
    }

    public final int hashCode() {
        return this.f19032b.hashCode() ^ ((this.f19031a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "LibraryVersion{libraryName=" + this.f19031a + ", version=" + this.f19032b + "}";
    }
}
