package com.android.contacts.util;

import android.content.Context;
import android.database.Cursor;
import android.text.Html;
import com.android.contacts.detail.ContactDetailDisplayUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/StreamItemEntry.class */
public class StreamItemEntry implements Comparable<StreamItemEntry> {
    private final String mAccountName;
    private final String mAccountType;
    private final String mComments;
    private String mContent;
    private final String mDataSet;
    private boolean mDecoded;
    private CharSequence mDecodedComments;
    private CharSequence mDecodedText;
    private final String mIconRes;
    private final long mId;
    private boolean mIsCoupon;
    private final String mLabelRes;
    private List<StreamItemPhotoEntry> mPhotos;
    private final String mResPackage;
    private final String mText;
    private final long mTimestamp;
    private String mTrackId;
    private String mType;

    private StreamItemEntry(long j, String str, String str2, long j2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.mIsCoupon = false;
        this.mId = j;
        this.mText = str;
        this.mComments = str2;
        this.mTimestamp = j2;
        this.mAccountType = str3;
        this.mAccountName = str4;
        this.mDataSet = str5;
        this.mResPackage = str6;
        this.mIconRes = str7;
        this.mLabelRes = str8;
        this.mPhotos = new ArrayList();
    }

    public StreamItemEntry(Cursor cursor) {
        this.mIsCoupon = false;
        this.mId = getLong(cursor, "_id");
        this.mText = getString(cursor, "text");
        this.mComments = getString(cursor, "comments");
        this.mTimestamp = getLong(cursor, "timestamp");
        this.mAccountType = getString(cursor, SelectAccountActivity.ACCOUNT_TYPE);
        this.mAccountName = getString(cursor, SelectAccountActivity.ACCOUNT_NAME);
        this.mDataSet = getString(cursor, SelectAccountActivity.DATA_SET);
        this.mResPackage = getString(cursor, "res_package");
        this.mIconRes = getString(cursor, "icon");
        this.mLabelRes = getString(cursor, "label");
        this.mPhotos = new ArrayList();
    }

    public StreamItemEntry(boolean z, long j, String str, String str2, String str3, String str4) {
        this.mIsCoupon = false;
        this.mIsCoupon = z;
        this.mId = j;
        this.mText = str2;
        this.mComments = null;
        this.mTimestamp = 0L;
        this.mAccountType = BuildConfig.FLAVOR;
        this.mAccountName = BuildConfig.FLAVOR;
        this.mDataSet = null;
        this.mResPackage = null;
        this.mIconRes = null;
        this.mLabelRes = null;
        this.mPhotos = new ArrayList();
        this.mType = str;
        this.mContent = str3;
        this.mTrackId = str4;
    }

    private void checkDecoded() {
        if (!this.mDecoded) {
            throw new IllegalStateException("decodeHtml must have been called");
        }
    }

    public static StreamItemEntry createForTest(long j, String str, String str2, long j2, String str3, String str4, String str5, String str6, String str7, String str8) {
        return new StreamItemEntry(j, str, str2, j2, str3, str4, str5, str6, str7, str8);
    }

    private static long getLong(Cursor cursor, String str) {
        return cursor.getLong(cursor.getColumnIndex(str));
    }

    private static String getString(Cursor cursor, String str) {
        return cursor.getString(cursor.getColumnIndex(str));
    }

    public void addPhoto(StreamItemPhotoEntry streamItemPhotoEntry) {
        this.mPhotos.add(streamItemPhotoEntry);
    }

    public int compareTo(StreamItemEntry streamItemEntry) {
        return this.mTimestamp == streamItemEntry.mTimestamp ? 0 : this.mTimestamp > streamItemEntry.mTimestamp ? -1 : 1;
    }

    public void decodeHtml(Context context) {
        Html.ImageGetter imageGetter = ContactDetailDisplayUtils.getImageGetter(context);
        if (this.mText != null) {
            this.mDecodedText = HtmlUtils.fromHtml(context, this.mText, imageGetter, null);
        }
        if (this.mComments != null) {
            this.mDecodedComments = HtmlUtils.fromHtml(context, this.mComments, imageGetter, null);
        }
        this.mDecoded = true;
    }

    public String getAccountName() {
        return this.mAccountName;
    }

    public String getAccountType() {
        return this.mAccountType;
    }

    public String getComments() {
        return this.mComments;
    }

    public String getContent() {
        return this.mContent;
    }

    public String getDataSet() {
        return this.mDataSet;
    }

    public CharSequence getDecodedComments() {
        checkDecoded();
        return this.mDecodedComments;
    }

    public CharSequence getDecodedText() {
        checkDecoded();
        return this.mDecodedText;
    }

    public String getIconRes() {
        return this.mIconRes;
    }

    public long getId() {
        return this.mId;
    }

    public String getLabelRes() {
        return this.mLabelRes;
    }

    public List<StreamItemPhotoEntry> getPhotos() {
        Collections.sort(this.mPhotos);
        return this.mPhotos;
    }

    public String getResPackage() {
        return this.mResPackage;
    }

    public String getText() {
        return this.mText;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public String getTrackId() {
        return this.mTrackId;
    }

    public String getType() {
        return this.mType;
    }

    public boolean isCoupon() {
        return this.mIsCoupon;
    }
}
