package com.android.contacts.detail;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.provider.ContactsContract;
import android.view.View;
import android.widget.ImageView;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.k;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.c;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.ImageViewDrawableSetter;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailPhotoSetter.class */
public class ContactDetailPhotoSetter extends ImageViewDrawableSetter {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener.class */
    public static final class PhotoClickListener implements View.OnClickListener {
        private final c mContactData;
        private final Context mContext;
        private final boolean mExpandPhotoOnClick;
        private final Bitmap mPhotoBitmap;
        private final byte[] mPhotoBytes;
        private int mRawContactsCount = 0;

        /* JADX WARN: Type inference failed for: r0v12, types: [com.android.contacts.detail.ContactDetailPhotoSetter$PhotoClickListener$1] */
        public PhotoClickListener(Context context, c cVar, Bitmap bitmap, byte[] bArr, boolean z) {
            final boolean z2 = false;
            this.mContext = context;
            this.mContactData = cVar;
            this.mPhotoBitmap = bitmap;
            this.mPhotoBytes = bArr;
            this.mExpandPhotoOnClick = z;
            final Uri uri = cVar != null ? cVar.f2023b : null;
            z2 = cVar != null ? cVar.B : z2;
            new Thread() { // from class: com.android.contacts.detail.ContactDetailPhotoSetter.PhotoClickListener.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Cursor cursor;
                    long parseId = uri != null ? ContentUris.parseId(uri) : 0L;
                    if (parseId > 0 && PhotoClickListener.this.mContext != null) {
                        try {
                            Uri uri2 = ContactsContract.RawContacts.CONTENT_URI;
                            if (z2) {
                                uri2 = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
                            }
                            Cursor query = PhotoClickListener.this.mContext.getContentResolver().query(uri2, new String[]{"_id"}, "contact_id = " + parseId, null, null);
                            try {
                                if (query != null) {
                                    PhotoClickListener.this.mRawContactsCount = query.getCount();
                                } else {
                                    PhotoClickListener.this.mRawContactsCount = 0;
                                }
                                if (query != null) {
                                    query.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor = query;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = null;
                        }
                    }
                }
            }.start();
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            RawContactDeltaList a2 = this.mContactData.a();
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            Rect rect = new Rect();
            rect.left = iArr[0];
            rect.top = iArr[1];
            rect.right = iArr[0] + view.getWidth();
            rect.bottom = iArr[1] + view.getHeight();
            Uri uri = null;
            if (this.mContactData.j != null) {
                uri = Uri.parse(this.mContactData.j);
            }
            Intent buildIntent = PhotoSelectionActivity.buildIntent(this.mContext, uri, this.mPhotoBitmap, this.mPhotoBytes, rect, a2, this.mContactData.B, this.mContactData.e(), this.mExpandPhotoOnClick, this.mContactData.f2023b, this.mRawContactsCount);
            if (this.mPhotoBitmap != null) {
                k.a(this.mContext).a(uri, this.mPhotoBitmap, this.mPhotoBytes);
            }
            ImplicitIntentsUtil.startActivityInApp(this.mContext, buildIntent);
        }
    }

    private View.OnClickListener setupClickListener(Context context, c cVar, Bitmap bitmap, boolean z) {
        return getTarget() == null ? null : new PhotoClickListener(context, cVar, bitmap, getCompressedImage(), z);
    }

    public View.OnClickListener setupContactPhotoForClick(Context context, c cVar, ImageView imageView, boolean z) {
        setTarget(imageView);
        boolean z2 = true;
        if (!PhoneCapabilityTester.IsAsusDevice() || PhoneCapabilityTester.isVerizon()) {
            z2 = false;
        }
        return cVar.g() ? null : setupClickListener(context, cVar, setCompressedImage(cVar.y, cVar.h(), z2, b.a(context)), z);
    }
}
