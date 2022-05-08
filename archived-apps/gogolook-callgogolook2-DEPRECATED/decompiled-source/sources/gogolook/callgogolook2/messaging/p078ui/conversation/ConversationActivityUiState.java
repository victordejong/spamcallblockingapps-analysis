package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.os.Parcel;
import android.os.Parcelable;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivityUiState */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivityUiState.class */
public class ConversationActivityUiState implements Parcelable, Cloneable {
    public static final Parcelable.Creator<ConversationActivityUiState> CREATOR = new C4753a();

    /* renamed from: a */
    public int f11684a;

    /* renamed from: b */
    public String f11685b;

    /* renamed from: c */
    public boolean f11686c;

    /* renamed from: d */
    public AbstractC4754b f11687d;

    /* renamed from: e */
    public int f11688e;

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivityUiState$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivityUiState$a.class */
    public static final class C4753a implements Parcelable.Creator<ConversationActivityUiState> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConversationActivityUiState createFromParcel(Parcel parcel) {
            return new ConversationActivityUiState(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConversationActivityUiState[] newArray(int i) {
            return new ConversationActivityUiState[i];
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.ConversationActivityUiState$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/ConversationActivityUiState$b.class */
    public interface AbstractC4754b {
        /* renamed from: a */
        void mo27133a(int i, int i2, boolean z);
    }

    public ConversationActivityUiState(Parcel parcel) {
        this.f11686c = false;
        this.f11684a = parcel.readInt();
        this.f11685b = parcel.readString();
        m27143q();
    }

    public /* synthetic */ ConversationActivityUiState(Parcel parcel, C4753a aVar) {
        this(parcel);
    }

    public ConversationActivityUiState(String str) {
        this.f11686c = false;
        this.f11685b = str;
        this.f11684a = str == null ? 2 : 1;
    }

    /* renamed from: A */
    public boolean m27149A() {
        int i = this.f11684a;
        boolean z = true;
        if (i != 5) {
            z = i == 1;
        }
        return z;
    }

    /* renamed from: a */
    public final void m27148a(int i, int i2, boolean z) {
        m27143q();
        C12151d.m6999b(m27138v());
        AbstractC4754b bVar = this.f11687d;
        if (bVar != null) {
            bVar.mo27133a(i, i2, z);
        }
    }

    /* renamed from: a */
    public final void m27147a(int i, boolean z) {
        m27142r();
        int i2 = this.f11684a;
        if (i != i2) {
            this.f11684a = i;
            m27148a(i2, this.f11684a, z);
        }
        m27141s();
    }

    /* renamed from: a */
    public void m27146a(AbstractC4754b bVar) {
        this.f11687d = bVar;
    }

    /* renamed from: a */
    public void m27145a(String str) {
        int i;
        int i2 = this.f11684a;
        if (i2 == 2) {
            i = 5;
        } else {
            if (!(i2 == 3 || i2 == 4)) {
                C12151d.m7005a("Invalid conversation activity state: can't create conversation!");
            }
            i = 1;
        }
        this.f11685b = str;
        m27147a(i, true);
    }

    /* renamed from: a */
    public void m27144a(boolean z) {
        if (this.f11684a == 3 && !z) {
            m27147a(4, false);
        } else if (this.f11684a == 4 && z) {
            m27147a(3, false);
        }
    }

    public ConversationActivityUiState clone() {
        try {
            return (ConversationActivityUiState) super.clone();
        } catch (CloneNotSupportedException e) {
            C12151d.m7005a("ConversationActivityUiState: failed to clone(). Is there a mutable reference?");
            return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: q */
    public final void m27143q() {
        boolean z = true;
        if ((this.f11684a == 2) != (this.f11685b == null)) {
            z = false;
        }
        C12151d.m6999b(z);
    }

    /* renamed from: r */
    public final void m27142r() {
        this.f11688e++;
    }

    /* renamed from: s */
    public final void m27141s() {
        int i = this.f11688e - 1;
        this.f11688e = i;
        if (i < 0) {
            C12151d.m7005a("Unbalanced Ui updates!");
        }
    }

    /* renamed from: t */
    public String m27140t() {
        return this.f11685b;
    }

    /* renamed from: u */
    public int m27139u() {
        int i = this.f11684a;
        if (i == 2) {
            return 1;
        }
        int i2 = 3;
        if (i != 3) {
            i2 = 4;
            if (i != 4) {
                if (i == 5) {
                    return 2;
                }
                C12151d.m7005a("Invalid contact picking mode for ConversationActivity!");
                return 0;
            }
        }
        return i2;
    }

    /* renamed from: v */
    public final boolean m27138v() {
        return this.f11688e > 0;
    }

    /* renamed from: w */
    public void m27137w() {
        if (this.f11684a == 5) {
            this.f11686c = true;
            m27147a(3, true);
            return;
        }
        C12151d.m7005a("Invalid conversation activity state: can't add more participants!");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f11684a);
        parcel.writeString(this.f11685b);
    }

    /* renamed from: x */
    public void m27136x() {
        int i = this.f11684a;
        C12151d.m6999b((i == 2 || i == 3 || i == 4) ? false : true);
        if (this.f11684a == 5) {
            m27147a(1, true);
        }
    }

    /* renamed from: y */
    public boolean m27135y() {
        if (!this.f11686c) {
            return false;
        }
        this.f11686c = false;
        return true;
    }

    /* renamed from: z */
    public boolean m27134z() {
        int i = this.f11684a;
        return i == 3 || i == 4 || i == 2 || i == 5;
    }
}
