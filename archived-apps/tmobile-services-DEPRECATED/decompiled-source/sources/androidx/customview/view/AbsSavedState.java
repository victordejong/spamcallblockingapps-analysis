package androidx.customview.view;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/customview/view/AbsSavedState.class */
public abstract class AbsSavedState implements Parcelable {

    /* renamed from: f */
    private final Parcelable f3467f;

    /* renamed from: g */
    public static final AbsSavedState f3466g = new AbsSavedState() { // from class: androidx.customview.view.AbsSavedState.1
    };
    public static final Parcelable.Creator<AbsSavedState> CREATOR = new Parcelable.ClassLoaderCreator<AbsSavedState>() { // from class: androidx.customview.view.AbsSavedState.2
        /* renamed from: a */
        public AbsSavedState createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        /* renamed from: b */
        public AbsSavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbsSavedState.f3466g;
            }
            throw new IllegalStateException("superState must be null");
        }

        /* renamed from: c */
        public AbsSavedState[] newArray(int i) {
            return new AbsSavedState[i];
        }
    };

    private AbsSavedState() {
        this.f3467f = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbsSavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f3467f = readParcelable == null ? f3466g : readParcelable;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbsSavedState(@NonNull Parcelable parcelable) {
        if (parcelable != null) {
            this.f3467f = parcelable == f3466g ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    @Nullable
    /* renamed from: a */
    public final Parcelable m18793a() {
        return this.f3467f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f3467f, i);
    }
}
