package gogolook.callgogolook2.messaging.p078ui.mediapicker;

import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.collection.ArrayMap;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridItemView;
import java.util.Iterator;
import java.util.Map;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11624k;
import p459j.p460a.p474c0.p491g.AbstractC12100p;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12205r;
/* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridView.class */
public class GalleryGridView extends MediaPickerGridView implements GalleryGridItemView.AbstractC4828c, AbstractC12100p, C11617j.AbstractC11622e {

    /* renamed from: a */
    public AbstractC4831b f11862a;

    /* renamed from: d */
    public C11592f<C11617j> f11865d;

    /* renamed from: e */
    public MenuItem f11866e;

    /* renamed from: f */
    public MenuItem f11867f;

    /* renamed from: c */
    public boolean f11864c = false;

    /* renamed from: b */
    public final ArrayMap<Uri, MessagePartData> f11863b = new ArrayMap<>();

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridView$SavedState */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C4829a();

        /* renamed from: a */
        public boolean f11868a;

        /* renamed from: b */
        public MessagePartData[] f11869b;

        /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridView$SavedState$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridView$SavedState$a.class */
        public static final class C4829a implements Parcelable.Creator<SavedState> {
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
            this.f11868a = parcel.readInt() != 1 ? false : true;
            int readInt = parcel.readInt();
            this.f11869b = new MessagePartData[readInt];
            for (int i = 0; i < readInt; i++) {
                this.f11869b[i] = (MessagePartData) parcel.readParcelable(MessagePartData.class.getClassLoader());
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f11868a ? 1 : 0);
            parcel.writeInt(this.f11869b.length);
            for (MessagePartData messagePartData : this.f11869b) {
                parcel.writeParcelable(messagePartData, i);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.mediapicker.GalleryGridView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/mediapicker/GalleryGridView$b.class */
    public interface AbstractC4831b {
        /* renamed from: b */
        void mo7443b(MessagePartData messagePartData);

        /* renamed from: c */
        void mo7442c(MessagePartData messagePartData);

        void onUpdate();

        /* renamed from: q */
        void mo7440q();

        /* renamed from: v */
        void mo7439v();
    }

    public GalleryGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27000a(Rect rect, C11624k kVar) {
        C12151d.m6999b(mo27001a());
        if (mo26994a(kVar)) {
            this.f11862a.mo7443b(this.f11863b.remove(kVar.m8775d()));
            if (this.f11863b.size() == 0) {
                m26993a(false);
            }
        } else {
            MessagePartData a = kVar.m8778a(rect);
            this.f11863b.put(kVar.m8775d(), a);
            this.f11862a.mo7442c(a);
        }
        invalidateViews();
    }

    /* renamed from: a */
    public void m26999a(MenuInflater menuInflater, Menu menu) {
        menuInflater.inflate(R$menu.gallery_picker_menu, menu);
        this.f11866e = menu.findItem(R$id.action_multiselect);
        this.f11867f = menu.findItem(R$id.action_confirm_multiselect);
        this.f11866e.setVisible(m26992c());
        this.f11867f.setVisible(false);
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridItemView.AbstractC4828c
    /* renamed from: a */
    public void mo26997a(View view, C11624k kVar, boolean z) {
        if (kVar.m8774e()) {
            this.f11862a.mo7439v();
        } else if (C12205r.m6808e(kVar.m8780a())) {
            if (z) {
                m26993a(true);
            }
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect);
            if (mo27001a()) {
                m27000a(rect, kVar);
            } else {
                this.f11862a.mo7442c(kVar.m8778a(rect));
            }
        } else {
            C12153d0.m6981e("MessagingApp", "Selected item has invalid contentType " + kVar.m8780a());
        }
    }

    /* renamed from: a */
    public void m26996a(AbstractC4831b bVar) {
        this.f11862a = bVar;
    }

    /* renamed from: a */
    public void m26995a(AbstractC11590d<C11617j> dVar) {
        this.f11865d = AbstractC11590d.m9041a((AbstractC11590d) dVar);
        this.f11865d.mo9033b().m8826a(this);
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7860a(C11617j jVar) {
        this.f11865d.mo9034a((C11592f<C11617j>) jVar);
        m26988i();
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: a */
    public void mo7859a(C11617j jVar, int i) {
        this.f11865d.mo9034a((C11592f<C11617j>) jVar);
        int i2 = C11617j.f26070s;
        if ((i & i2) == i2) {
            m26988i();
        }
    }

    /* renamed from: a */
    public final void m26993a(boolean z) {
        if (this.f11864c != z) {
            m26986k();
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridItemView.AbstractC4828c
    /* renamed from: a */
    public boolean mo27001a() {
        return this.f11864c;
    }

    /* renamed from: a */
    public boolean m26998a(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2131361846) {
            C12151d.m6999b(!m26992c());
            this.f11862a.mo7440q();
            return true;
        } else if (itemId != 2131361868) {
            return false;
        } else {
            C12151d.m6999b(m26992c());
            m26986k();
            return true;
        }
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridItemView.AbstractC4828c
    /* renamed from: a */
    public boolean mo26994a(C11624k kVar) {
        return this.f11863b.containsKey(kVar.m8775d());
    }

    /* renamed from: c */
    public final boolean m26992c() {
        return this.f11863b.size() == 0;
    }

    /* renamed from: d */
    public MenuItem m26991d() {
        return this.f11867f;
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    /* renamed from: f */
    public void mo7169f() {
        this.f11863b.clear();
        this.f11864c = false;
        invalidateViews();
    }

    /* renamed from: g */
    public int m26990g() {
        return this.f11863b.size();
    }

    /* renamed from: h */
    public MenuItem m26989h() {
        return this.f11866e;
    }

    /* renamed from: i */
    public final void m26988i() {
        Iterator<Map.Entry<Uri, MessagePartData>> it = this.f11863b.entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (!this.f11865d.mo9033b().m8837a(it.next().getKey())) {
                it.remove();
                z = true;
            }
        }
        if (z) {
            this.f11862a.onUpdate();
            invalidateViews();
        }
    }

    /* renamed from: j */
    public void m26987j() {
        for (MessagePartData messagePartData : this.f11863b.values()) {
            this.f11862a.mo7443b(messagePartData);
        }
        mo7169f();
    }

    /* renamed from: k */
    public final void m26986k() {
        this.f11864c = !this.f11864c;
        invalidateViews();
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f11864c = savedState.f11868a;
        this.f11863b.clear();
        int i = 0;
        while (true) {
            MessagePartData[] messagePartDataArr = savedState.f11869b;
            if (i < messagePartDataArr.length) {
                MessagePartData messagePartData = messagePartDataArr[i];
                this.f11863b.put(messagePartData.m27567q(), messagePartData);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f11868a = this.f11864c;
        savedState.f11869b = (MessagePartData[]) this.f11863b.values().toArray(new MessagePartData[this.f11863b.size()]);
        return savedState;
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
    /* renamed from: q */
    public void mo7796q() {
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    public void restoreState(Parcelable parcelable) {
        onRestoreInstanceState(parcelable);
        invalidateViews();
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12100p
    public Parcelable saveState() {
        return onSaveInstanceState();
    }
}
