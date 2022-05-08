package gogolook.callgogolook2.messaging.p078ui.attachmentchooser;

import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentChooserFragment;
import gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridItemView;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridView.class */
public class AttachmentGridView extends GridView implements AttachmentGridItemView.AbstractC4713d {

    /* renamed from: a */
    public final Set<MessagePartData> f11578a = new HashSet();

    /* renamed from: b */
    public AbstractC4716b f11579b;

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridView$SavedState */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C4714a();

        /* renamed from: a */
        public MessagePartData[] f11580a;

        /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridView$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridView$SavedState$a.class */
        public static final class C4714a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            int readInt = parcel.readInt();
            this.f11580a = new MessagePartData[readInt];
            for (int i = 0; i < readInt; i++) {
                this.f11580a[i] = (MessagePartData) parcel.readParcelable(MessagePartData.class.getClassLoader());
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11580a.length);
            for (MessagePartData messagePartData : this.f11580a) {
                parcel.writeParcelable(messagePartData, i);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.attachmentchooser.AttachmentGridView$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/attachmentchooser/AttachmentGridView$b.class */
    public interface AbstractC4716b {
        /* renamed from: a */
        void mo27277a(int i);

        /* renamed from: a */
        void mo27276a(Rect rect, Uri uri);
    }

    public AttachmentGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public Set<MessagePartData> m27284a() {
        return Collections.unmodifiableSet(this.f11578a);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridItemView.AbstractC4713d
    /* renamed from: a */
    public void mo27282a(AttachmentGridItemView attachmentGridItemView, MessagePartData messagePartData) {
        if (messagePartData.m27560x()) {
            this.f11579b.mo27276a(C12212s0.m6792a(attachmentGridItemView), messagePartData.m27567q());
        }
    }

    /* renamed from: a */
    public void m27281a(AbstractC4716b bVar) {
        this.f11579b = bVar;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridItemView.AbstractC4713d
    /* renamed from: a */
    public boolean mo27283a(MessagePartData messagePartData) {
        return !this.f11578a.contains(messagePartData);
    }

    /* renamed from: b */
    public final void m27280b() {
        if (getAdapter() instanceof AttachmentChooserFragment.C4709b) {
            ((AttachmentChooserFragment.C4709b) getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.attachmentchooser.AttachmentGridItemView.AbstractC4713d
    /* renamed from: b */
    public void mo27279b(AttachmentGridItemView attachmentGridItemView, MessagePartData messagePartData) {
        if (mo27283a(messagePartData)) {
            this.f11578a.add(messagePartData);
        } else {
            this.f11578a.remove(messagePartData);
        }
        attachmentGridItemView.m27286b();
        m27278c();
    }

    /* renamed from: c */
    public final void m27278c() {
        int count = getAdapter().getCount() - this.f11578a.size();
        C12151d.m6999b(count >= 0);
        this.f11579b.mo27277a(count);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f11578a.clear();
        int i = 0;
        while (true) {
            MessagePartData[] messagePartDataArr = savedState.f11580a;
            if (i < messagePartDataArr.length) {
                this.f11578a.add(messagePartDataArr[i]);
                i++;
            } else {
                m27280b();
                return;
            }
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Set<MessagePartData> set = this.f11578a;
        savedState.f11580a = (MessagePartData[]) set.toArray(new MessagePartData[set.size()]);
        return savedState;
    }
}
