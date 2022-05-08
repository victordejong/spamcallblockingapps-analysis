package com.android.contacts.editor;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/ViewIdGenerator.class */
public final class ViewIdGenerator implements Parcelable {
    private static final StringBuilder c = new StringBuilder();
    public static final Parcelable.Creator<ViewIdGenerator> CREATOR = new Parcelable.Creator<ViewIdGenerator>() { // from class: com.android.contacts.editor.ViewIdGenerator.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ ViewIdGenerator createFromParcel(Parcel parcel) {
            ViewIdGenerator viewIdGenerator = new ViewIdGenerator();
            ViewIdGenerator.a(viewIdGenerator, parcel);
            return viewIdGenerator;
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ ViewIdGenerator[] newArray(int i) {
            return new ViewIdGenerator[i];
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private Bundle f1200b = new Bundle();

    /* renamed from: a  reason: collision with root package name */
    private int f1199a = 1;

    static /* synthetic */ void a(ViewIdGenerator viewIdGenerator, Parcel parcel) {
        viewIdGenerator.f1199a = parcel.readInt();
        viewIdGenerator.f1200b = parcel.readBundle();
    }

    public final int a(RawContactDelta rawContactDelta, b bVar, RawContactDelta.ValuesDelta valuesDelta, int i) {
        c.setLength(0);
        if (rawContactDelta != null) {
            c.append(rawContactDelta.f1987a.a());
            if (bVar != null) {
                c.append('*');
                c.append(bVar.f1997b);
                if (valuesDelta != null) {
                    c.append('*');
                    c.append(valuesDelta.a());
                    if (i != -1) {
                        c.append('*');
                        c.append(i);
                    }
                }
            }
        }
        String sb = c.toString();
        int i2 = this.f1200b.getInt(sb, 0);
        int i3 = i2;
        if (i2 == 0) {
            int i4 = this.f1199a;
            this.f1199a = i4 + 1;
            i3 = i4 & 65535;
            this.f1200b.putInt(sb, i3);
        }
        return i3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1199a);
        parcel.writeBundle(this.f1200b);
    }
}
