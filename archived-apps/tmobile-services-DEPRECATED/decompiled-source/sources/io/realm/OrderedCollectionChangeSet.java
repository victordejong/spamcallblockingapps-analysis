package io.realm;

import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:io/realm/OrderedCollectionChangeSet.class */
public interface OrderedCollectionChangeSet {

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedCollectionChangeSet$Range.class */
    public static class Range {

        /* renamed from: a */
        public final int f19835a;

        /* renamed from: b */
        public final int f19836b;

        public Range(int i, int i2) {
            this.f19835a = i;
            this.f19836b = i2;
        }

        public String toString() {
            return String.format(Locale.ENGLISH, "startIndex: %d, length: %d", Integer.valueOf(this.f19835a), Integer.valueOf(this.f19836b));
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/OrderedCollectionChangeSet$State.class */
    public enum State {
        INITIAL,
        UPDATE,
        ERROR
    }

    /* renamed from: a */
    Range[] mo2681a();

    /* renamed from: b */
    Range[] mo2680b();

    /* renamed from: c */
    Range[] mo2679c();
}
