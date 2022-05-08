package com.android.contacts.editor;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/f.class */
public final class f {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final int f1226a;

        /* renamed from: b  reason: collision with root package name */
        private final String f1227b;

        public a(int i, String str) {
            this.f1226a = i;
            this.f1227b = str;
        }

        public final String toString() {
            return this.f1227b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/f$b.class */
    public interface b {
        void onChangePhotoChosen();

        void onPickFromCloudApp();

        void onPickFromGalleryChosen();

        void onRemovePictureChosen();

        void onTakePhotoChosen();

        void onUseAsPrimaryChosen();
    }
}
