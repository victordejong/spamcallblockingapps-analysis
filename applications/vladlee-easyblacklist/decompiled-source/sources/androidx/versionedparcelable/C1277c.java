package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.p026b.C0529a;
import java.lang.reflect.Method;
/* renamed from: androidx.versionedparcelable.c */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/c.class */
final class C1277c extends AbstractC1276b {

    /* renamed from: d */
    private final SparseIntArray f5351d;

    /* renamed from: e */
    private final Parcel f5352e;

    /* renamed from: f */
    private final int f5353f;

    /* renamed from: g */
    private final int f5354g;

    /* renamed from: h */
    private final String f5355h;

    /* renamed from: i */
    private int f5356i;

    /* renamed from: j */
    private int f5357j;

    /* renamed from: k */
    private int f5358k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1277c(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0529a(), new C0529a(), new C0529a());
    }

    private C1277c(Parcel parcel, int i, int i2, String str, C0529a<String, Method> aVar, C0529a<String, Method> aVar2, C0529a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f5351d = new SparseIntArray();
        this.f5356i = -1;
        this.f5357j = 0;
        this.f5358k = -1;
        this.f5352e = parcel;
        this.f5353f = i;
        this.f5354g = i2;
        this.f5357j = this.f5353f;
        this.f5355h = str;
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    public final void mo6453a() {
        int i = this.f5356i;
        if (i >= 0) {
            int i2 = this.f5351d.get(i);
            int dataPosition = this.f5352e.dataPosition();
            this.f5352e.setDataPosition(i2);
            this.f5352e.writeInt(dataPosition - i2);
            this.f5352e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    public final void mo6452a(int i) {
        this.f5352e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    public final void mo6451a(Parcelable parcelable) {
        this.f5352e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    protected final void mo6450a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f5352e, 0);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    public final void mo6449a(String str) {
        this.f5352e.writeString(str);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    public final void mo6448a(boolean z) {
        this.f5352e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: a */
    public final void mo6447a(byte[] bArr) {
        if (bArr != null) {
            this.f5352e.writeInt(bArr.length);
            this.f5352e.writeByteArray(bArr);
            return;
        }
        this.f5352e.writeInt(-1);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: b */
    protected final AbstractC1276b mo6446b() {
        Parcel parcel = this.f5352e;
        int dataPosition = parcel.dataPosition();
        int i = this.f5357j;
        int i2 = i;
        if (i == this.f5353f) {
            i2 = this.f5354g;
        }
        return new C1277c(parcel, dataPosition, i2, this.f5355h + "  ", this.f5348a, this.f5349b, this.f5350c);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: b */
    public final boolean mo6445b(int i) {
        while (this.f5357j < this.f5354g) {
            int i2 = this.f5358k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f5352e.setDataPosition(this.f5357j);
            int readInt = this.f5352e.readInt();
            this.f5358k = this.f5352e.readInt();
            this.f5357j += readInt;
        }
        return this.f5358k == i;
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: c */
    public final int mo6444c() {
        return this.f5352e.readInt();
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: c */
    public final void mo6443c(int i) {
        mo6453a();
        this.f5356i = i;
        this.f5351d.put(i, this.f5352e.dataPosition());
        mo6452a(0);
        mo6452a(i);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: d */
    public final String mo6442d() {
        return this.f5352e.readString();
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: e */
    public final byte[] mo6441e() {
        int readInt = this.f5352e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f5352e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: f */
    protected final CharSequence mo6440f() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f5352e);
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: g */
    public final <T extends Parcelable> T mo6439g() {
        return (T) this.f5352e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.AbstractC1276b
    /* renamed from: h */
    public final boolean mo6438h() {
        return this.f5352e.readInt() != 0;
    }
}
