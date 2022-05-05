package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.fragment.app.AbstractC0867ab;
import androidx.lifecycle.AbstractC0927f;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/BackStackState.class */
final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new C0886b();

    /* renamed from: a */
    final int[] f3530a;

    /* renamed from: b */
    final ArrayList<String> f3531b;

    /* renamed from: c */
    final int[] f3532c;

    /* renamed from: d */
    final int[] f3533d;

    /* renamed from: e */
    final int f3534e;

    /* renamed from: f */
    final int f3535f;

    /* renamed from: g */
    final String f3536g;

    /* renamed from: h */
    final int f3537h;

    /* renamed from: i */
    final int f3538i;

    /* renamed from: j */
    final CharSequence f3539j;

    /* renamed from: k */
    final int f3540k;

    /* renamed from: l */
    final CharSequence f3541l;

    /* renamed from: m */
    final ArrayList<String> f3542m;

    /* renamed from: n */
    final ArrayList<String> f3543n;

    /* renamed from: o */
    final boolean f3544o;

    public BackStackState(Parcel parcel) {
        this.f3530a = parcel.createIntArray();
        this.f3531b = parcel.createStringArrayList();
        this.f3532c = parcel.createIntArray();
        this.f3533d = parcel.createIntArray();
        this.f3534e = parcel.readInt();
        this.f3535f = parcel.readInt();
        this.f3536g = parcel.readString();
        this.f3537h = parcel.readInt();
        this.f3538i = parcel.readInt();
        this.f3539j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3540k = parcel.readInt();
        this.f3541l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3542m = parcel.createStringArrayList();
        this.f3543n = parcel.createStringArrayList();
        this.f3544o = parcel.readInt() != 0;
    }

    public BackStackState(C0865a aVar) {
        int size = aVar.f3661d.size();
        this.f3530a = new int[size * 5];
        if (aVar.f3668k) {
            this.f3531b = new ArrayList<>(size);
            this.f3532c = new int[size];
            this.f3533d = new int[size];
            int i = 0;
            int i2 = 0;
            while (i < size) {
                AbstractC0867ab.C0868a aVar2 = aVar.f3661d.get(i);
                int i3 = i2 + 1;
                this.f3530a[i2] = aVar2.f3679a;
                this.f3531b.add(aVar2.f3680b != null ? aVar2.f3680b.f3583o : null);
                int i4 = i3 + 1;
                this.f3530a[i3] = aVar2.f3681c;
                int i5 = i4 + 1;
                this.f3530a[i4] = aVar2.f3682d;
                int i6 = i5 + 1;
                this.f3530a[i5] = aVar2.f3683e;
                this.f3530a[i6] = aVar2.f3684f;
                this.f3532c[i] = aVar2.f3685g.ordinal();
                this.f3533d[i] = aVar2.f3686h.ordinal();
                i++;
                i2 = i6 + 1;
            }
            this.f3534e = aVar.f3666i;
            this.f3535f = aVar.f3667j;
            this.f3536g = aVar.f3670m;
            this.f3537h = aVar.f3660c;
            this.f3538i = aVar.f3671n;
            this.f3539j = aVar.f3672o;
            this.f3540k = aVar.f3673p;
            this.f3541l = aVar.f3674q;
            this.f3542m = aVar.f3675r;
            this.f3543n = aVar.f3676s;
            this.f3544o = aVar.f3677t;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    /* renamed from: a */
    public final C0865a m7911a(LayoutInflater$Factory2C0898n nVar) {
        C0865a aVar = new C0865a(nVar);
        int i = 0;
        int i2 = 0;
        while (i < this.f3530a.length) {
            AbstractC0867ab.C0868a aVar2 = new AbstractC0867ab.C0868a();
            int i3 = i + 1;
            aVar2.f3679a = this.f3530a[i];
            if (LayoutInflater$Factory2C0898n.f3777b) {
                Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f3530a[i3]);
            }
            String str = this.f3531b.get(i2);
            aVar2.f3680b = str != null ? nVar.f3789g.get(str) : null;
            aVar2.f3685g = AbstractC0927f.EnumC0929b.values()[this.f3532c[i2]];
            aVar2.f3686h = AbstractC0927f.EnumC0929b.values()[this.f3533d[i2]];
            int[] iArr = this.f3530a;
            int i4 = i3 + 1;
            aVar2.f3681c = iArr[i3];
            int i5 = i4 + 1;
            aVar2.f3682d = iArr[i4];
            int i6 = i5 + 1;
            aVar2.f3683e = iArr[i5];
            aVar2.f3684f = iArr[i6];
            aVar.f3662e = aVar2.f3681c;
            aVar.f3663f = aVar2.f3682d;
            aVar.f3664g = aVar2.f3683e;
            aVar.f3665h = aVar2.f3684f;
            aVar.m7827a(aVar2);
            i2++;
            i = i6 + 1;
        }
        aVar.f3666i = this.f3534e;
        aVar.f3667j = this.f3535f;
        aVar.f3670m = this.f3536g;
        aVar.f3660c = this.f3537h;
        aVar.f3668k = true;
        aVar.f3671n = this.f3538i;
        aVar.f3672o = this.f3539j;
        aVar.f3673p = this.f3540k;
        aVar.f3674q = this.f3541l;
        aVar.f3675r = this.f3542m;
        aVar.f3676s = this.f3543n;
        aVar.f3677t = this.f3544o;
        aVar.m7846a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f3530a);
        parcel.writeStringList(this.f3531b);
        parcel.writeIntArray(this.f3532c);
        parcel.writeIntArray(this.f3533d);
        parcel.writeInt(this.f3534e);
        parcel.writeInt(this.f3535f);
        parcel.writeString(this.f3536g);
        parcel.writeInt(this.f3537h);
        parcel.writeInt(this.f3538i);
        TextUtils.writeToParcel(this.f3539j, parcel, 0);
        parcel.writeInt(this.f3540k);
        TextUtils.writeToParcel(this.f3541l, parcel, 0);
        parcel.writeStringList(this.f3542m);
        parcel.writeStringList(this.f3543n);
        parcel.writeInt(this.f3544o ? 1 : 0);
    }
}
