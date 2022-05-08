package com.android.vcard;

import android.accounts.Account;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.android.vcard.VCardConstants;
import com.android.vcard.VCardUtils;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry.class */
public class VCardEntry {
    private static final int DEFAULT_ORGANIZATION_TYPE = 1;
    private static final String LOG_TAG = "vCard";
    private static final List<String> sEmptyList = Collections.unmodifiableList(new ArrayList(0));
    private static final Map<String, Integer> sImMap;
    private final Account mAccount;
    private List<AndroidCustomData> mAndroidCustomDataList;
    private AnniversaryData mAnniversary;
    private BirthdayData mBirthday;
    private List<VCardEntry> mChildren;
    private List<EmailData> mEmailList;
    private List<ImData> mImList;
    private final NameData mNameData;
    private List<NicknameData> mNicknameList;
    private List<NoteData> mNoteList;
    private List<OrganizationData> mOrganizationList;
    private List<PhoneData> mPhoneList;
    private List<PhotoData> mPhotoList;
    private List<PostalData> mPostalList;
    private List<SipData> mSipList;
    private final int mVCardType;
    private List<WebsiteData> mWebsiteList;

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$AndroidCustomData.class */
    public static class AndroidCustomData implements EntryElement {
        private final List<String> mDataList;
        private final String mMimeType;

        public AndroidCustomData(String str, List<String> list) {
            this.mMimeType = str;
            this.mDataList = list;
        }

        public static AndroidCustomData constructAndroidCustomData(List<String> list) {
            String str;
            List<String> subList;
            if (list == null) {
                str = null;
                subList = null;
            } else if (list.size() < 2) {
                str = list.get(0);
                subList = null;
            } else {
                int size = list.size() < 16 ? list.size() : 16;
                str = list.get(0);
                subList = list.subList(1, size);
            }
            return new AndroidCustomData(str, subList);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", this.mMimeType);
            for (int i2 = 0; i2 < this.mDataList.size(); i2++) {
                String str = this.mDataList.get(i2);
                if (!TextUtils.isEmpty(str)) {
                    newInsert.withValue("data" + (i2 + 1), str);
                }
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z;
            if (this != obj) {
                if (obj instanceof AndroidCustomData) {
                    AndroidCustomData androidCustomData = (AndroidCustomData) obj;
                    if (TextUtils.equals(this.mMimeType, androidCustomData.mMimeType)) {
                        if (this.mDataList != null) {
                            int size = this.mDataList.size();
                            if (size == androidCustomData.mDataList.size()) {
                                int i = 0;
                                while (true) {
                                    if (i >= size) {
                                        z = true;
                                        break;
                                    } else if (!TextUtils.equals(this.mDataList.get(i), androidCustomData.mDataList.get(i))) {
                                        z = false;
                                        break;
                                    } else {
                                        i++;
                                    }
                                }
                            } else {
                                z = false;
                            }
                        } else {
                            z = androidCustomData.mDataList == null;
                        }
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
            } else {
                z = true;
            }
            return z;
        }

        public List<String> getDataList() {
            return this.mDataList;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.ANDROID_CUSTOM;
        }

        public String getMimeType() {
            return this.mMimeType;
        }

        public int hashCode() {
            int i;
            int hashCode = this.mMimeType != null ? this.mMimeType.hashCode() : 0;
            if (this.mDataList != null) {
                Iterator<String> it = this.mDataList.iterator();
                while (true) {
                    i = hashCode;
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    hashCode = (next != null ? next.hashCode() : 0) + (hashCode * 31);
                }
            } else {
                i = hashCode;
            }
            return i;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mMimeType) || this.mDataList == null || this.mDataList.size() == 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("android-custom: " + this.mMimeType + ", data: ");
            sb.append(this.mDataList == null ? "null" : Arrays.toString(this.mDataList.toArray()));
            return sb.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$AnniversaryData.class */
    public static class AnniversaryData implements EntryElement {
        private final String mAnniversary;

        public AnniversaryData(String str) {
            this.mAnniversary = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/contact_event");
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mAnniversary);
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, 1);
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            return this == obj ? true : !(obj instanceof AnniversaryData) ? false : TextUtils.equals(this.mAnniversary, ((AnniversaryData) obj).mAnniversary);
        }

        public String getAnniversary() {
            return this.mAnniversary;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.ANNIVERSARY;
        }

        public int hashCode() {
            return this.mAnniversary != null ? this.mAnniversary.hashCode() : 0;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAnniversary);
        }

        public String toString() {
            return "anniversary: " + this.mAnniversary;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$BirthdayData.class */
    public static class BirthdayData implements EntryElement {
        private final String mBirthday;

        public BirthdayData(String str) {
            this.mBirthday = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/contact_event");
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mBirthday);
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, 3);
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            return this == obj ? true : !(obj instanceof BirthdayData) ? false : TextUtils.equals(this.mBirthday, ((BirthdayData) obj).mBirthday);
        }

        public String getBirthday() {
            return this.mBirthday;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.BIRTHDAY;
        }

        public int hashCode() {
            return this.mBirthday != null ? this.mBirthday.hashCode() : 0;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mBirthday);
        }

        public String toString() {
            return "birthday: " + this.mBirthday;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$EmailData.class */
    public static class EmailData implements EntryElement {
        private final String mAddress;
        private final boolean mIsPrimary;
        private final String mLabel;
        private final int mType;

        public EmailData(String str, int i, String str2, boolean z) {
            this.mType = i;
            this.mAddress = str;
            this.mLabel = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/email_v2");
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue(CoverUtils.CoverData.USER_SET, this.mLabel);
            }
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mAddress);
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof EmailData)) {
                    z = false;
                } else {
                    EmailData emailData = (EmailData) obj;
                    if (this.mType != emailData.mType || !TextUtils.equals(this.mAddress, emailData.mAddress) || !TextUtils.equals(this.mLabel, emailData.mLabel) || this.mIsPrimary != emailData.mIsPrimary) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public String getAddress() {
            return this.mAddress;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.EMAIL;
        }

        public String getLabel() {
            return this.mLabel;
        }

        public int getType() {
            return this.mType;
        }

        public int hashCode() {
            int i = 0;
            int i2 = this.mType;
            int hashCode = this.mAddress != null ? this.mAddress.hashCode() : 0;
            if (this.mLabel != null) {
                i = this.mLabel.hashCode();
            }
            return (this.mIsPrimary ? 1231 : 1237) + ((((hashCode + (i2 * 31)) * 31) + i) * 31);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAddress);
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.mType), this.mAddress, this.mLabel, Boolean.valueOf(this.mIsPrimary));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$EntryElement.class */
    public interface EntryElement {
        void constructInsertOperation(List<ContentProviderOperation> list, int i);

        EntryLabel getEntryLabel();

        boolean isEmpty();
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$EntryElementIterator.class */
    public interface EntryElementIterator {
        boolean onElement(EntryElement entryElement);

        void onElementGroupEnded();

        void onElementGroupStarted(EntryLabel entryLabel);

        void onIterationEnded();

        void onIterationStarted();
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$EntryLabel.class */
    public enum EntryLabel {
        NAME,
        PHONE,
        EMAIL,
        POSTAL_ADDRESS,
        ORGANIZATION,
        IM,
        PHOTO,
        WEBSITE,
        SIP,
        NICKNAME,
        NOTE,
        BIRTHDAY,
        ANNIVERSARY,
        ANDROID_CUSTOM
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$ImData.class */
    public static class ImData implements EntryElement {
        private final String mAddress;
        private final String mCustomProtocol;
        private final boolean mIsPrimary;
        private final int mProtocol;
        private final int mType;

        public ImData(int i, String str, String str2, int i2, boolean z) {
            this.mProtocol = i;
            this.mCustomProtocol = str;
            this.mType = i2;
            this.mAddress = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/im");
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(this.mType));
            newInsert.withValue("data5", Integer.valueOf(this.mProtocol));
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mAddress);
            if (this.mProtocol == -1) {
                newInsert.withValue("data6", this.mCustomProtocol);
            }
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof ImData)) {
                    z = false;
                } else {
                    ImData imData = (ImData) obj;
                    if (!(this.mType == imData.mType && this.mProtocol == imData.mProtocol && TextUtils.equals(this.mCustomProtocol, imData.mCustomProtocol) && TextUtils.equals(this.mAddress, imData.mAddress) && this.mIsPrimary == imData.mIsPrimary)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public String getAddress() {
            return this.mAddress;
        }

        public String getCustomProtocol() {
            return this.mCustomProtocol;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.IM;
        }

        public int getProtocol() {
            return this.mProtocol;
        }

        public int getType() {
            return this.mType;
        }

        public int hashCode() {
            int i = 0;
            int i2 = this.mType;
            int i3 = this.mProtocol;
            int hashCode = this.mCustomProtocol != null ? this.mCustomProtocol.hashCode() : 0;
            if (this.mAddress != null) {
                i = this.mAddress.hashCode();
            }
            return (this.mIsPrimary ? 1231 : 1237) + ((((hashCode + (((i2 * 31) + i3) * 31)) * 31) + i) * 31);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAddress);
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        public String toString() {
            return String.format("type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s", Integer.valueOf(this.mType), Integer.valueOf(this.mProtocol), this.mCustomProtocol, this.mAddress, Boolean.valueOf(this.mIsPrimary));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$InsertOperationConstrutor.class */
    private class InsertOperationConstrutor implements EntryElementIterator {
        private final int mBackReferenceIndex;
        private final List<ContentProviderOperation> mOperationList;

        public InsertOperationConstrutor(List<ContentProviderOperation> list, int i) {
            this.mOperationList = list;
            this.mBackReferenceIndex = i;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public boolean onElement(EntryElement entryElement) {
            if (entryElement.isEmpty()) {
                return true;
            }
            entryElement.constructInsertOperation(this.mOperationList, this.mBackReferenceIndex);
            return true;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupStarted(EntryLabel entryLabel) {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationStarted() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$IsIgnorableIterator.class */
    public class IsIgnorableIterator implements EntryElementIterator {
        private boolean mEmpty;

        private IsIgnorableIterator() {
            this.mEmpty = true;
        }

        public boolean getResult() {
            return this.mEmpty;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public boolean onElement(EntryElement entryElement) {
            boolean z = false;
            if (!entryElement.isEmpty()) {
                this.mEmpty = false;
            } else {
                z = true;
            }
            return z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupStarted(EntryLabel entryLabel) {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationEnded() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationStarted() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$NameData.class */
    public static class NameData implements EntryElement {
        public String displayName;
        private String mFamily;
        private String mFormatted;
        private String mGiven;
        private String mMiddle;
        private String mPhoneticFamily;
        private String mPhoneticGiven;
        private String mPhoneticMiddle;
        private String mPrefix;
        private String mSortString;
        private String mSuffix;

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            boolean z = true;
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/name");
            if (!TextUtils.isEmpty(this.mGiven)) {
                newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, this.mGiven);
            }
            if (!TextUtils.isEmpty(this.mFamily)) {
                newInsert.withValue(CoverUtils.CoverData.USER_SET, this.mFamily);
            }
            if (!TextUtils.isEmpty(this.mMiddle)) {
                newInsert.withValue("data5", this.mMiddle);
            }
            if (!TextUtils.isEmpty(this.mPrefix)) {
                newInsert.withValue("data4", this.mPrefix);
            }
            if (!TextUtils.isEmpty(this.mSuffix)) {
                newInsert.withValue("data6", this.mSuffix);
            }
            z = false;
            if (!TextUtils.isEmpty(this.mPhoneticGiven)) {
                newInsert.withValue("data7", this.mPhoneticGiven);
                z = true;
            }
            if (!TextUtils.isEmpty(this.mPhoneticFamily)) {
                newInsert.withValue("data9", this.mPhoneticFamily);
                z = true;
            }
            if (!TextUtils.isEmpty(this.mPhoneticMiddle)) {
                newInsert.withValue("data8", this.mPhoneticMiddle);
            }
            if (!z) {
                newInsert.withValue("data7", this.mSortString);
            }
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.displayName);
            list.add(newInsert.build());
        }

        public boolean emptyPhoneticStructuredName() {
            return TextUtils.isEmpty(this.mPhoneticFamily) && TextUtils.isEmpty(this.mPhoneticGiven) && TextUtils.isEmpty(this.mPhoneticMiddle);
        }

        public boolean emptyStructuredName() {
            return TextUtils.isEmpty(this.mFamily) && TextUtils.isEmpty(this.mGiven) && TextUtils.isEmpty(this.mMiddle) && TextUtils.isEmpty(this.mPrefix) && TextUtils.isEmpty(this.mSuffix);
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof NameData)) {
                    z = false;
                } else {
                    NameData nameData = (NameData) obj;
                    if (!TextUtils.equals(this.mFamily, nameData.mFamily) || !TextUtils.equals(this.mMiddle, nameData.mMiddle) || !TextUtils.equals(this.mGiven, nameData.mGiven) || !TextUtils.equals(this.mPrefix, nameData.mPrefix) || !TextUtils.equals(this.mSuffix, nameData.mSuffix) || !TextUtils.equals(this.mFormatted, nameData.mFormatted) || !TextUtils.equals(this.mPhoneticFamily, nameData.mPhoneticFamily) || !TextUtils.equals(this.mPhoneticMiddle, nameData.mPhoneticMiddle) || !TextUtils.equals(this.mPhoneticGiven, nameData.mPhoneticGiven) || !TextUtils.equals(this.mSortString, nameData.mSortString)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.NAME;
        }

        public String getFamily() {
            return this.mFamily;
        }

        public String getFormatted() {
            return this.mFormatted;
        }

        public String getGiven() {
            return this.mGiven;
        }

        public String getMiddle() {
            return this.mMiddle;
        }

        public String getPrefix() {
            return this.mPrefix;
        }

        public String getSortString() {
            return this.mSortString;
        }

        public String getSuffix() {
            return this.mSuffix;
        }

        public int hashCode() {
            String str = this.mFamily;
            String str2 = this.mMiddle;
            String str3 = this.mGiven;
            String str4 = this.mPrefix;
            String str5 = this.mSuffix;
            String str6 = this.mFormatted;
            String str7 = this.mPhoneticFamily;
            String str8 = this.mPhoneticMiddle;
            String str9 = this.mPhoneticGiven;
            String str10 = this.mSortString;
            int i = 0;
            for (int i2 = 0; i2 < 10; i2++) {
                String str11 = new String[]{str, str2, str3, str4, str5, str6, str7, str8, str9, str10}[i2];
                i = (i * 31) + (str11 != null ? str11.hashCode() : 0);
            }
            return i;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mFamily) && TextUtils.isEmpty(this.mMiddle) && TextUtils.isEmpty(this.mGiven) && TextUtils.isEmpty(this.mPrefix) && TextUtils.isEmpty(this.mSuffix) && TextUtils.isEmpty(this.mFormatted) && TextUtils.isEmpty(this.mPhoneticFamily) && TextUtils.isEmpty(this.mPhoneticMiddle) && TextUtils.isEmpty(this.mPhoneticGiven) && TextUtils.isEmpty(this.mSortString);
        }

        public void setFamily(String str) {
            this.mFamily = str;
        }

        public void setGiven(String str) {
            this.mGiven = str;
        }

        public void setMiddle(String str) {
            this.mMiddle = str;
        }

        public void setPrefix(String str) {
            this.mPrefix = str;
        }

        public void setSuffix(String str) {
            this.mSuffix = str;
        }

        public String toString() {
            return String.format("family: %s, given: %s, middle: %s, prefix: %s, suffix: %s", this.mFamily, this.mGiven, this.mMiddle, this.mPrefix, this.mSuffix);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$NicknameData.class */
    public static class NicknameData implements EntryElement {
        private final String mNickname;

        public NicknameData(String str) {
            this.mNickname = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/nickname");
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, 1);
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mNickname);
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            return !(obj instanceof NicknameData) ? false : TextUtils.equals(this.mNickname, ((NicknameData) obj).mNickname);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.NICKNAME;
        }

        public String getNickname() {
            return this.mNickname;
        }

        public int hashCode() {
            return this.mNickname != null ? this.mNickname.hashCode() : 0;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mNickname);
        }

        public String toString() {
            return "nickname: " + this.mNickname;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$NoteData.class */
    public static class NoteData implements EntryElement {
        public final String mNote;

        public NoteData(String str) {
            this.mNote = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/note");
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mNote);
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            return this == obj ? true : !(obj instanceof NoteData) ? false : TextUtils.equals(this.mNote, ((NoteData) obj).mNote);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.NOTE;
        }

        public String getNote() {
            return this.mNote;
        }

        public int hashCode() {
            return this.mNote != null ? this.mNote.hashCode() : 0;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mNote);
        }

        public String toString() {
            return "note: " + this.mNote;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$OrganizationData.class */
    public static class OrganizationData implements EntryElement {
        private String mDepartmentName;
        private boolean mIsPrimary;
        private String mOrganizationName;
        private final String mPhoneticName;
        private String mTitle;
        private final int mType;

        public OrganizationData(String str, String str2, String str3, String str4, int i, boolean z) {
            this.mType = i;
            this.mOrganizationName = str;
            this.mDepartmentName = str2;
            this.mTitle = str3;
            this.mPhoneticName = str4;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/organization");
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(this.mType));
            if (this.mOrganizationName != null) {
                newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mOrganizationName);
            }
            if (this.mDepartmentName != null) {
                newInsert.withValue("data5", this.mDepartmentName);
            }
            if (this.mTitle != null) {
                newInsert.withValue("data4", this.mTitle);
            }
            if (this.mPhoneticName != null) {
                newInsert.withValue("data8", this.mPhoneticName);
            }
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof OrganizationData)) {
                    z = false;
                } else {
                    OrganizationData organizationData = (OrganizationData) obj;
                    if (this.mType != organizationData.mType || !TextUtils.equals(this.mOrganizationName, organizationData.mOrganizationName) || !TextUtils.equals(this.mDepartmentName, organizationData.mDepartmentName) || !TextUtils.equals(this.mTitle, organizationData.mTitle) || this.mIsPrimary != organizationData.mIsPrimary) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public String getDepartmentName() {
            return this.mDepartmentName;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.ORGANIZATION;
        }

        public String getFormattedString() {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.mOrganizationName)) {
                sb.append(this.mOrganizationName);
            }
            if (!TextUtils.isEmpty(this.mDepartmentName)) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.mDepartmentName);
            }
            if (!TextUtils.isEmpty(this.mTitle)) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(this.mTitle);
            }
            return sb.toString();
        }

        public String getOrganizationName() {
            return this.mOrganizationName;
        }

        public String getPhoneticName() {
            return this.mPhoneticName;
        }

        public String getTitle() {
            return this.mTitle;
        }

        public int getType() {
            return this.mType;
        }

        public int hashCode() {
            int i = 0;
            int i2 = this.mType;
            int hashCode = this.mOrganizationName != null ? this.mOrganizationName.hashCode() : 0;
            int hashCode2 = this.mDepartmentName != null ? this.mDepartmentName.hashCode() : 0;
            if (this.mTitle != null) {
                i = this.mTitle.hashCode();
            }
            return (this.mIsPrimary ? 1231 : 1237) + ((((hashCode2 + ((hashCode + (i2 * 31)) * 31)) * 31) + i) * 31);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mOrganizationName) && TextUtils.isEmpty(this.mDepartmentName) && TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mPhoneticName);
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        public String toString() {
            return String.format("type: %d, organization: %s, department: %s, title: %s, isPrimary: %s", Integer.valueOf(this.mType), this.mOrganizationName, this.mDepartmentName, this.mTitle, Boolean.valueOf(this.mIsPrimary));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$PhoneData.class */
    public static class PhoneData implements EntryElement {
        private boolean mIsPrimary;
        private final String mLabel;
        private final String mNumber;
        private final int mType;

        public PhoneData(String str, int i, String str2, boolean z) {
            this.mNumber = str;
            this.mType = i;
            this.mLabel = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/phone_v2");
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue(CoverUtils.CoverData.USER_SET, this.mLabel);
            }
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mNumber);
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof PhoneData)) {
                    z = false;
                } else {
                    PhoneData phoneData = (PhoneData) obj;
                    if (this.mType != phoneData.mType || !TextUtils.equals(this.mNumber, phoneData.mNumber) || !TextUtils.equals(this.mLabel, phoneData.mLabel) || this.mIsPrimary != phoneData.mIsPrimary) {
                        z = false;
                    }
                }
            }
            return z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.PHONE;
        }

        public String getLabel() {
            return this.mLabel;
        }

        public String getNumber() {
            return this.mNumber;
        }

        public int getType() {
            return this.mType;
        }

        public int hashCode() {
            int i = 0;
            int i2 = this.mType;
            int hashCode = this.mNumber != null ? this.mNumber.hashCode() : 0;
            if (this.mLabel != null) {
                i = this.mLabel.hashCode();
            }
            return (this.mIsPrimary ? 1231 : 1237) + ((((hashCode + (i2 * 31)) * 31) + i) * 31);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mNumber);
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        public String toString() {
            return String.format("type: %d, data: %s, label: %s, isPrimary: %s", Integer.valueOf(this.mType), this.mNumber, this.mLabel, Boolean.valueOf(this.mIsPrimary));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$PhotoData.class */
    public static class PhotoData implements EntryElement {
        private final byte[] mBytes;
        private final String mFormat;
        private Integer mHashCode = null;
        private final boolean mIsPrimary;

        public PhotoData(String str, byte[] bArr, boolean z) {
            this.mFormat = str;
            this.mBytes = bArr;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/photo");
            newInsert.withValue("data15", this.mBytes);
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof PhotoData)) {
                    z = false;
                } else {
                    PhotoData photoData = (PhotoData) obj;
                    if (!TextUtils.equals(this.mFormat, photoData.mFormat) || !Arrays.equals(this.mBytes, photoData.mBytes) || this.mIsPrimary != photoData.mIsPrimary) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public byte[] getBytes() {
            return this.mBytes;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.PHOTO;
        }

        public String getFormat() {
            return this.mFormat;
        }

        public int hashCode() {
            int i;
            int i2 = 0;
            if (this.mHashCode != null) {
                i = this.mHashCode.intValue();
            } else {
                int hashCode = (this.mFormat != null ? this.mFormat.hashCode() : 0) * 31;
                int i3 = hashCode;
                if (this.mBytes != null) {
                    byte[] bArr = this.mBytes;
                    int length = bArr.length;
                    while (true) {
                        i3 = hashCode;
                        if (i2 >= length) {
                            break;
                        }
                        hashCode += bArr[i2];
                        i2++;
                    }
                }
                i = (this.mIsPrimary ? 1231 : 1237) + (i3 * 31);
                this.mHashCode = Integer.valueOf(i);
            }
            return i;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return this.mBytes == null || this.mBytes.length == 0;
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        public String toString() {
            return String.format("format: %s: size: %d, isPrimary: %s", this.mFormat, Integer.valueOf(this.mBytes.length), Boolean.valueOf(this.mIsPrimary));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$PostalData.class */
    public static class PostalData implements EntryElement {
        private static final int ADDR_MAX_DATA_SIZE = 7;
        private final String mCountry;
        private final String mExtendedAddress;
        private boolean mIsPrimary;
        private final String mLabel;
        private final String mLocalty;
        private final String mPobox;
        private final String mPostalCode;
        private final String mRegion;
        private final String mStreet;
        private final int mType;
        private int mVCardType;

        public PostalData(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, String str8, boolean z, int i2) {
            this.mType = i;
            this.mPobox = str;
            this.mExtendedAddress = str2;
            this.mStreet = str3;
            this.mLocalty = str4;
            this.mRegion = str5;
            this.mPostalCode = str6;
            this.mCountry = str7;
            this.mLabel = str8;
            this.mIsPrimary = z;
            this.mVCardType = i2;
        }

        public static PostalData constructPostalData(List<String> list, int i, String str, boolean z, int i2) {
            String[] strArr = new String[7];
            int size = list.size();
            if (size > 7) {
                size = 7;
            }
            int i3 = 0;
            for (String str2 : list) {
                strArr[i3] = str2;
                i3++;
                if (i3 >= size) {
                    break;
                }
            }
            while (i3 < 7) {
                strArr[i3] = null;
                i3++;
            }
            return new PostalData(strArr[0], strArr[1], strArr[2], strArr[3], strArr[4], strArr[5], strArr[6], i, str, z, i2);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/postal-address_v2");
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue(CoverUtils.CoverData.USER_SET, this.mLabel);
            }
            String str = TextUtils.isEmpty(this.mStreet) ? TextUtils.isEmpty(this.mExtendedAddress) ? null : this.mExtendedAddress : TextUtils.isEmpty(this.mExtendedAddress) ? this.mStreet : this.mStreet + " " + this.mExtendedAddress;
            newInsert.withValue("data5", this.mPobox);
            newInsert.withValue("data4", str);
            newInsert.withValue("data7", this.mLocalty);
            newInsert.withValue("data8", this.mRegion);
            newInsert.withValue("data9", this.mPostalCode);
            newInsert.withValue("data10", this.mCountry);
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, getFormattedAddress(this.mVCardType));
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", 1);
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof PostalData)) {
                    z = false;
                } else {
                    PostalData postalData = (PostalData) obj;
                    if (this.mType != postalData.mType || ((this.mType == 0 && !TextUtils.equals(this.mLabel, postalData.mLabel)) || this.mIsPrimary != postalData.mIsPrimary || !TextUtils.equals(this.mPobox, postalData.mPobox) || !TextUtils.equals(this.mExtendedAddress, postalData.mExtendedAddress) || !TextUtils.equals(this.mStreet, postalData.mStreet) || !TextUtils.equals(this.mLocalty, postalData.mLocalty) || !TextUtils.equals(this.mRegion, postalData.mRegion) || !TextUtils.equals(this.mPostalCode, postalData.mPostalCode) || !TextUtils.equals(this.mCountry, postalData.mCountry))) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public String getCountry() {
            return this.mCountry;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public final EntryLabel getEntryLabel() {
            return EntryLabel.POSTAL_ADDRESS;
        }

        public String getExtendedAddress() {
            return this.mExtendedAddress;
        }

        public String getFormattedAddress(int i) {
            boolean z = true;
            boolean z2 = true;
            StringBuilder sb = new StringBuilder();
            String[] strArr = {this.mPobox, this.mExtendedAddress, this.mStreet, this.mLocalty, this.mRegion, this.mPostalCode, this.mCountry};
            if (VCardConfig.isJapaneseDevice(i)) {
                for (int i2 = 6; i2 >= 0; i2--) {
                    String str = strArr[i2];
                    z2 = z2;
                    if (!TextUtils.isEmpty(str)) {
                        if (!z2) {
                            sb.append(' ');
                        } else {
                            z2 = false;
                        }
                        sb.append(str);
                    }
                }
            } else {
                for (int i3 = 0; i3 < 7; i3++) {
                    String str2 = strArr[i3];
                    z = z;
                    if (!TextUtils.isEmpty(str2)) {
                        if (!z) {
                            sb.append(' ');
                        } else {
                            z = false;
                        }
                        sb.append(str2);
                    }
                }
            }
            return sb.toString().trim();
        }

        public String getLabel() {
            return this.mLabel;
        }

        public String getLocalty() {
            return this.mLocalty;
        }

        public String getPobox() {
            return this.mPobox;
        }

        public String getPostalCode() {
            return this.mPostalCode;
        }

        public String getRegion() {
            return this.mRegion;
        }

        public String getStreet() {
            return this.mStreet;
        }

        public int getType() {
            return this.mType;
        }

        public int hashCode() {
            int i = this.mType;
            int hashCode = this.mLabel != null ? this.mLabel.hashCode() : 0;
            int i2 = this.mIsPrimary ? 1231 : 1237;
            String str = this.mPobox;
            String str2 = this.mExtendedAddress;
            String str3 = this.mStreet;
            String str4 = this.mLocalty;
            String str5 = this.mRegion;
            String str6 = this.mPostalCode;
            String str7 = this.mCountry;
            int i3 = i2 + ((hashCode + (i * 31)) * 31);
            for (int i4 = 0; i4 < 7; i4++) {
                String str8 = new String[]{str, str2, str3, str4, str5, str6, str7}[i4];
                i3 = (i3 * 31) + (str8 != null ? str8.hashCode() : 0);
            }
            return i3;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mPobox) && TextUtils.isEmpty(this.mExtendedAddress) && TextUtils.isEmpty(this.mStreet) && TextUtils.isEmpty(this.mLocalty) && TextUtils.isEmpty(this.mRegion) && TextUtils.isEmpty(this.mPostalCode) && TextUtils.isEmpty(this.mCountry);
        }

        public boolean isPrimary() {
            return this.mIsPrimary;
        }

        public String toString() {
            return String.format("type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s", Integer.valueOf(this.mType), this.mLabel, Boolean.valueOf(this.mIsPrimary), this.mPobox, this.mExtendedAddress, this.mStreet, this.mLocalty, this.mRegion, this.mPostalCode, this.mCountry);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$SipData.class */
    public static class SipData implements EntryElement {
        private final String mAddress;
        private final boolean mIsPrimary;
        private final String mLabel;
        private final int mType;

        public SipData(String str, int i, String str2, boolean z) {
            if (str.startsWith("sip:")) {
                this.mAddress = str.substring(4);
            } else {
                this.mAddress = str;
            }
            this.mType = i;
            this.mLabel = str2;
            this.mIsPrimary = z;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/sip_address");
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mAddress);
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(this.mType));
            if (this.mType == 0) {
                newInsert.withValue(CoverUtils.CoverData.USER_SET, this.mLabel);
            }
            if (this.mIsPrimary) {
                newInsert.withValue("is_primary", Boolean.valueOf(this.mIsPrimary));
            }
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof SipData)) {
                    z = false;
                } else {
                    SipData sipData = (SipData) obj;
                    if (this.mType != sipData.mType || !TextUtils.equals(this.mLabel, sipData.mLabel) || !TextUtils.equals(this.mAddress, sipData.mAddress) || this.mIsPrimary != sipData.mIsPrimary) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public String getAddress() {
            return this.mAddress;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.SIP;
        }

        public String getLabel() {
            return this.mLabel;
        }

        public int getType() {
            return this.mType;
        }

        public int hashCode() {
            int i = 0;
            int i2 = this.mType;
            int hashCode = this.mLabel != null ? this.mLabel.hashCode() : 0;
            if (this.mAddress != null) {
                i = this.mAddress.hashCode();
            }
            return (this.mIsPrimary ? 1231 : 1237) + ((((hashCode + (i2 * 31)) * 31) + i) * 31);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mAddress);
        }

        public String toString() {
            return "sip: " + this.mAddress;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$ToStringIterator.class */
    private class ToStringIterator implements EntryElementIterator {
        private StringBuilder mBuilder;
        private boolean mFirstElement;

        private ToStringIterator() {
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public boolean onElement(EntryElement entryElement) {
            if (!this.mFirstElement) {
                this.mBuilder.append(", ");
                this.mFirstElement = false;
            }
            this.mBuilder.append("[").append(entryElement.toString()).append("]");
            return true;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupEnded() {
            this.mBuilder.append("\n");
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onElementGroupStarted(EntryLabel entryLabel) {
            this.mBuilder.append(entryLabel.toString() + ": ");
            this.mFirstElement = true;
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationEnded() {
            this.mBuilder.append("]]\n");
        }

        @Override // com.android.vcard.VCardEntry.EntryElementIterator
        public void onIterationStarted() {
            this.mBuilder = new StringBuilder();
            this.mBuilder.append("[[hash: " + VCardEntry.this.hashCode() + "\n");
        }

        public String toString() {
            return this.mBuilder.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/vcard/VCardEntry$WebsiteData.class */
    public static class WebsiteData implements EntryElement {
        private final String mWebsite;

        public WebsiteData(String str) {
            this.mWebsite = str;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public void constructInsertOperation(List<ContentProviderOperation> list, int i) {
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert.withValueBackReference("raw_contact_id", i);
            newInsert.withValue("mimetype", "vnd.android.cursor.item/website");
            newInsert.withValue(CoverUtils.CoverData.COVER_URI, this.mWebsite);
            newInsert.withValue(CoverUtils.CoverData.COVER_TYPE, 1);
            list.add(newInsert.build());
        }

        public boolean equals(Object obj) {
            return this == obj ? true : !(obj instanceof WebsiteData) ? false : TextUtils.equals(this.mWebsite, ((WebsiteData) obj).mWebsite);
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public EntryLabel getEntryLabel() {
            return EntryLabel.WEBSITE;
        }

        public String getWebsite() {
            return this.mWebsite;
        }

        public int hashCode() {
            return this.mWebsite != null ? this.mWebsite.hashCode() : 0;
        }

        @Override // com.android.vcard.VCardEntry.EntryElement
        public boolean isEmpty() {
            return TextUtils.isEmpty(this.mWebsite);
        }

        public String toString() {
            return "website: " + this.mWebsite;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        sImMap = hashMap;
        hashMap.put(VCardConstants.PROPERTY_X_AIM, 0);
        sImMap.put(VCardConstants.PROPERTY_X_MSN, 1);
        sImMap.put(VCardConstants.PROPERTY_X_YAHOO, 2);
        sImMap.put(VCardConstants.PROPERTY_X_ICQ, 6);
        sImMap.put(VCardConstants.PROPERTY_X_JABBER, 7);
        sImMap.put(VCardConstants.PROPERTY_X_SKYPE_USERNAME, 3);
        sImMap.put(VCardConstants.PROPERTY_X_GOOGLE_TALK, 5);
        sImMap.put(VCardConstants.ImportOnly.PROPERTY_X_GOOGLE_TALK_WITH_SPACE, 5);
    }

    public VCardEntry() {
        this(VCardConfig.VCARD_TYPE_V21_GENERIC);
    }

    public VCardEntry(int i) {
        this(i, null);
    }

    public VCardEntry(int i, Account account) {
        this.mNameData = new NameData();
        this.mVCardType = i;
        this.mAccount = account;
    }

    private void addEmail(int i, String str, String str2, boolean z) {
        if (this.mEmailList == null) {
            this.mEmailList = new ArrayList();
        }
        this.mEmailList.add(new EmailData(str, i, str2, z));
    }

    private void addIm(int i, String str, String str2, int i2, boolean z) {
        if (this.mImList == null) {
            this.mImList = new ArrayList();
        }
        this.mImList.add(new ImData(i, str, str2, i2, z));
    }

    private void addNewOrganization(String str, String str2, String str3, String str4, int i, boolean z) {
        if (this.mOrganizationList == null) {
            this.mOrganizationList = new ArrayList();
        }
        this.mOrganizationList.add(new OrganizationData(str, str2, str3, str4, i, z));
    }

    private void addNickName(String str) {
        if (this.mNicknameList == null) {
            this.mNicknameList = new ArrayList();
        }
        this.mNicknameList.add(new NicknameData(str));
    }

    private void addNote(String str) {
        if (this.mNoteList == null) {
            this.mNoteList = new ArrayList(1);
        }
        this.mNoteList.add(new NoteData(str));
    }

    private void addPhone(int i, String str, String str2, boolean z) {
        if (this.mPhoneList == null) {
            this.mPhoneList = new ArrayList();
        }
        StringBuilder sb = new StringBuilder();
        String trim = str.trim();
        if (i != 6 && !VCardConfig.refrainPhoneNumberFormatting(this.mVCardType)) {
            int length = trim.length();
            boolean z2 = false;
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = trim.charAt(i2);
                if (charAt == 'p' || charAt == 'P') {
                    sb.append(',');
                    z2 = true;
                } else if (charAt == 'w' || charAt == 'W') {
                    sb.append(';');
                    z2 = true;
                } else {
                    if ('0' > charAt || charAt > '9') {
                        z2 = z2;
                        if (i2 == 0) {
                            z2 = z2;
                            if (charAt != '+') {
                            }
                        }
                    }
                    sb.append(charAt);
                    z2 = z2;
                }
            }
            trim = !z2 ? VCardUtils.PhoneNumberUtilsPort.formatNumber(sb.toString(), VCardUtils.getPhoneNumberFormat(this.mVCardType)) : sb.toString();
        }
        this.mPhoneList.add(new PhoneData(trim, i, str2, z));
    }

    private void addPhotoBytes(String str, byte[] bArr, boolean z) {
        if (this.mPhotoList == null) {
            this.mPhotoList = new ArrayList(1);
        }
        this.mPhotoList.add(new PhotoData(str, bArr, z));
    }

    private void addPostal(int i, List<String> list, String str, boolean z) {
        if (this.mPostalList == null) {
            this.mPostalList = new ArrayList(0);
        }
        this.mPostalList.add(PostalData.constructPostalData(list, i, str, z, this.mVCardType));
    }

    private void addSip(String str, int i, String str2, boolean z) {
        if (this.mSipList == null) {
            this.mSipList = new ArrayList();
        }
        this.mSipList.add(new SipData(str, i, str2, z));
    }

    public static VCardEntry buildFromResolver(ContentResolver contentResolver) {
        return buildFromResolver(contentResolver, ContactsContract.Contacts.CONTENT_URI);
    }

    public static VCardEntry buildFromResolver(ContentResolver contentResolver, Uri uri) {
        return null;
    }

    private String buildSinglePhoneticNameFromSortAsParam(Map<String, Collection<String>> map) {
        String str;
        Collection<String> collection = map.get(VCardConstants.PARAM_SORT_AS);
        if (collection == null || collection.size() == 0) {
            str = null;
        } else {
            if (collection.size() > 1) {
                Log.w(LOG_TAG, "Incorrect multiple SORT_AS parameters detected: " + Arrays.toString(collection.toArray()));
            }
            List<String> constructListFromValue = VCardUtils.constructListFromValue(collection.iterator().next(), this.mVCardType);
            StringBuilder sb = new StringBuilder();
            for (String str2 : constructListFromValue) {
                sb.append(str2);
            }
            str = sb.toString();
        }
        return str;
    }

    private String constructDisplayName() {
        String str;
        if (!TextUtils.isEmpty(this.mNameData.mFormatted)) {
            str = this.mNameData.mFormatted;
        } else if (!this.mNameData.emptyStructuredName()) {
            str = VCardUtils.constructNameFromElements(this.mVCardType, this.mNameData.mFamily, this.mNameData.mMiddle, this.mNameData.mGiven, this.mNameData.mPrefix, this.mNameData.mSuffix);
        } else if (!this.mNameData.emptyPhoneticStructuredName()) {
            str = VCardUtils.constructNameFromElements(this.mVCardType, this.mNameData.mPhoneticFamily, this.mNameData.mPhoneticMiddle, this.mNameData.mPhoneticGiven);
        } else if (this.mEmailList != null && this.mEmailList.size() > 0) {
            str = this.mEmailList.get(0).mAddress;
        } else if (this.mPhoneList != null && this.mPhoneList.size() > 0) {
            str = this.mPhoneList.get(0).mNumber;
        } else if (this.mPostalList == null || this.mPostalList.size() <= 0) {
            str = null;
            if (this.mOrganizationList != null) {
                str = null;
                if (this.mOrganizationList.size() > 0) {
                    str = this.mOrganizationList.get(0).getFormattedString();
                }
            }
        } else {
            str = this.mPostalList.get(0).getFormattedAddress(this.mVCardType);
        }
        String str2 = str;
        if (str == null) {
            str2 = BuildConfig.FLAVOR;
        }
        return str2;
    }

    private void handleAndroidCustomProperty(List<String> list) {
        if (this.mAndroidCustomDataList == null) {
            this.mAndroidCustomDataList = new ArrayList();
        }
        this.mAndroidCustomDataList.add(AndroidCustomData.constructAndroidCustomData(list));
    }

    private void handleNProperty(List<String> list, Map<String, Collection<String>> map) {
        int size = 5;
        tryHandleSortAsName(map);
        if (list != null) {
            size = list.size();
            if (size > 0) {
                if (size > 5) {
                }
                switch (size) {
                    case 5:
                        this.mNameData.mSuffix = list.get(4);
                    case 4:
                        this.mNameData.mPrefix = list.get(3);
                    case 3:
                        this.mNameData.mMiddle = list.get(2);
                    case 2:
                        this.mNameData.mGiven = list.get(1);
                        break;
                }
                this.mNameData.mFamily = list.get(0);
            }
        }
    }

    private void handleOrgValue(int i, List<String> list, Map<String, Collection<String>> map, boolean z) {
        String str;
        String str2;
        String buildSinglePhoneticNameFromSortAsParam = buildSinglePhoneticNameFromSortAsParam(map);
        List<String> list2 = list;
        if (list == null) {
            list2 = sEmptyList;
        }
        int size = list2.size();
        switch (size) {
            case 0:
                str = BuildConfig.FLAVOR;
                str2 = null;
                break;
            case 1:
                str = list2.get(0);
                str2 = null;
                break;
            default:
                str = list2.get(0);
                StringBuilder sb = new StringBuilder();
                for (int i2 = 1; i2 < size; i2++) {
                    if (i2 > 1) {
                        sb.append(' ');
                    }
                    sb.append(list2.get(i2));
                }
                str2 = sb.toString();
                break;
        }
        if (this.mOrganizationList == null) {
            addNewOrganization(str, str2, null, buildSinglePhoneticNameFromSortAsParam, i, z);
            return;
        }
        for (OrganizationData organizationData : this.mOrganizationList) {
            if (organizationData.mOrganizationName == null && organizationData.mDepartmentName == null) {
                organizationData.mOrganizationName = str;
                organizationData.mDepartmentName = str2;
                organizationData.mIsPrimary = z;
                return;
            }
        }
        addNewOrganization(str, str2, null, buildSinglePhoneticNameFromSortAsParam, i, z);
    }

    private void handlePhoneticNameFromSound(List<String> list) {
        boolean z;
        if (TextUtils.isEmpty(this.mNameData.mPhoneticFamily) && TextUtils.isEmpty(this.mNameData.mPhoneticMiddle) && TextUtils.isEmpty(this.mNameData.mPhoneticGiven) && list != null) {
            int size = list.size();
            if (size > 0) {
                if (size > 3) {
                    size = 3;
                }
                if (list.get(0).length() > 0) {
                    int i = 1;
                    while (true) {
                        if (i >= size) {
                            z = true;
                            break;
                        } else if (list.get(i).length() > 0) {
                            z = false;
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (z) {
                        String[] split = list.get(0).split(" ");
                        int length = split.length;
                        if (length == 3) {
                            this.mNameData.mPhoneticFamily = split[0];
                            this.mNameData.mPhoneticMiddle = split[1];
                            this.mNameData.mPhoneticGiven = split[2];
                            return;
                        } else if (length == 2) {
                            this.mNameData.mPhoneticFamily = split[0];
                            this.mNameData.mPhoneticGiven = split[1];
                            return;
                        } else {
                            this.mNameData.mPhoneticGiven = list.get(0);
                            return;
                        }
                    }
                }
                switch (size) {
                    case 3:
                        this.mNameData.mPhoneticMiddle = list.get(2);
                    case 2:
                        this.mNameData.mPhoneticGiven = list.get(1);
                        break;
                }
                this.mNameData.mPhoneticFamily = list.get(0);
            }
        }
    }

    private void handleSipCase(String str, Collection<String> collection) {
        boolean z;
        if (!TextUtils.isEmpty(str)) {
            String str2 = str;
            if (str.startsWith("sip:")) {
                str2 = str.substring(4);
                if (str2.length() == 0) {
                    return;
                }
            }
            int i = -1;
            r7 = null;
            String str3 = null;
            if (collection != null) {
                z = false;
                for (String str4 : collection) {
                    String upperCase = str4.toUpperCase();
                    if (upperCase.equals(VCardConstants.PARAM_TYPE_PREF)) {
                        z = true;
                    } else if (upperCase.equals(VCardConstants.PARAM_TYPE_HOME)) {
                        i = 1;
                    } else if (upperCase.equals(VCardConstants.PARAM_TYPE_WORK)) {
                        i = 2;
                    } else if (i < 0) {
                        str3 = str4;
                        if (upperCase.startsWith("X-")) {
                            str3 = str4.substring(2);
                        }
                        i = 0;
                    }
                }
            } else {
                z = false;
                i = -1;
            }
            int i2 = i;
            if (i < 0) {
                i2 = 3;
            }
            addSip(str2, i2, str3, z);
        }
    }

    private void handleTitleValue(String str) {
        if (this.mOrganizationList == null) {
            addNewOrganization(null, null, str, null, 1, false);
            return;
        }
        for (OrganizationData organizationData : this.mOrganizationList) {
            if (organizationData.mTitle == null) {
                organizationData.mTitle = str;
                return;
            }
        }
        addNewOrganization(null, null, str, null, 1, false);
    }

    private void iterateOneList(List<? extends EntryElement> list, EntryElementIterator entryElementIterator) {
        if (list != null && list.size() > 0) {
            entryElementIterator.onElementGroupStarted(((EntryElement) list.get(0)).getEntryLabel());
            for (EntryElement entryElement : list) {
                entryElementIterator.onElement(entryElement);
            }
            entryElementIterator.onElementGroupEnded();
        }
    }

    private String listToString(List<String> list) {
        String str;
        int size = list.size();
        if (size > 1) {
            StringBuilder sb = new StringBuilder();
            for (String str2 : list) {
                sb.append(str2);
                if (size - 1 > 0) {
                    sb.append(";");
                }
            }
            str = sb.toString();
        } else {
            str = size == 1 ? list.get(0) : BuildConfig.FLAVOR;
        }
        return str;
    }

    private void tryHandleSortAsName(Map<String, Collection<String>> map) {
        Collection<String> collection;
        if ((!VCardConfig.isVersion30(this.mVCardType) || (TextUtils.isEmpty(this.mNameData.mPhoneticFamily) && TextUtils.isEmpty(this.mNameData.mPhoneticMiddle) && TextUtils.isEmpty(this.mNameData.mPhoneticGiven))) && (collection = map.get(VCardConstants.PARAM_SORT_AS)) != null && collection.size() != 0) {
            if (collection.size() > 1) {
                Log.w(LOG_TAG, "Incorrect multiple SORT_AS parameters detected: " + Arrays.toString(collection.toArray()));
            }
            List<String> constructListFromValue = VCardUtils.constructListFromValue(collection.iterator().next(), this.mVCardType);
            int size = constructListFromValue.size();
            int i = size;
            if (size > 3) {
                i = 3;
            }
            switch (i) {
                case 3:
                    this.mNameData.mPhoneticMiddle = constructListFromValue.get(2);
                case 2:
                    this.mNameData.mPhoneticGiven = constructListFromValue.get(1);
                    break;
            }
            this.mNameData.mPhoneticFamily = constructListFromValue.get(0);
        }
    }

    public void addChild(VCardEntry vCardEntry) {
        if (this.mChildren == null) {
            this.mChildren = new ArrayList();
        }
        this.mChildren.add(vCardEntry);
    }

    public void addProperty(VCardProperty vCardProperty) {
        String str;
        boolean z;
        String str2;
        int i;
        boolean z2;
        String str3;
        int i2;
        boolean z3;
        boolean z4;
        String str4;
        int i3 = -1;
        String obj = null;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = true;
        boolean z12 = true;
        int i4 = 1;
        String name = vCardProperty.getName();
        Map<String, Collection<String>> parameterMap = vCardProperty.getParameterMap();
        List<String> valueList = vCardProperty.getValueList();
        byte[] byteValue = vCardProperty.getByteValue();
        if ((valueList != null && valueList.size() != 0) || byteValue != null) {
            String trim = valueList != null ? listToString(valueList).trim() : null;
            if (name.equals(VCardConstants.PROPERTY_VERSION)) {
                return;
            }
            if (name.equals(VCardConstants.PROPERTY_FN)) {
                this.mNameData.mFormatted = trim;
            } else if (name.equals(VCardConstants.PROPERTY_NAME)) {
                if (TextUtils.isEmpty(this.mNameData.mFormatted)) {
                    this.mNameData.mFormatted = trim;
                }
            } else if (name.equals(VCardConstants.PROPERTY_N)) {
                handleNProperty(valueList, parameterMap);
            } else if (name.equals(VCardConstants.PROPERTY_SORT_STRING)) {
                this.mNameData.mSortString = trim;
            } else if (name.equals(VCardConstants.PROPERTY_NICKNAME) || name.equals(VCardConstants.ImportOnly.PROPERTY_X_NICKNAME)) {
                addNickName(trim);
            } else if (name.equals(VCardConstants.PROPERTY_SOUND)) {
                Collection<String> collection = parameterMap.get(VCardConstants.PARAM_TYPE);
                if (collection != null && collection.contains("X-IRMC-N")) {
                    handlePhoneticNameFromSound(VCardUtils.constructListFromValue(trim, this.mVCardType));
                }
            } else if (name.equals(VCardConstants.PROPERTY_ADR)) {
                Iterator<String> it = valueList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!TextUtils.isEmpty(it.next())) {
                            z3 = false;
                            break;
                        }
                    } else {
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    Collection<String> collection2 = parameterMap.get(VCardConstants.PARAM_TYPE);
                    if (collection2 != null) {
                        z4 = false;
                        str4 = null;
                        i4 = -1;
                        for (String str5 : collection2) {
                            String upperCase = str5.toUpperCase();
                            if (upperCase.equals(VCardConstants.PARAM_TYPE_PREF)) {
                                z4 = true;
                            } else if (upperCase.equals(VCardConstants.PARAM_TYPE_HOME)) {
                                str4 = null;
                                i4 = 1;
                            } else if (upperCase.equals(VCardConstants.PARAM_TYPE_WORK) || upperCase.equalsIgnoreCase(VCardConstants.PARAM_EXTRA_TYPE_COMPANY)) {
                                str4 = null;
                                i4 = 2;
                            } else if (!upperCase.equals(VCardConstants.PARAM_ADR_TYPE_PARCEL) && !upperCase.equals(VCardConstants.PARAM_ADR_TYPE_DOM) && !upperCase.equals(VCardConstants.PARAM_ADR_TYPE_INTL) && i4 < 0) {
                                if (upperCase.startsWith("X-")) {
                                    str4 = str5.substring(2);
                                    i4 = 0;
                                } else {
                                    i4 = 0;
                                    str4 = str5;
                                }
                            }
                        }
                    } else {
                        z4 = false;
                        str4 = null;
                        i4 = -1;
                    }
                    if (i4 < 0) {
                    }
                    addPostal(i4, valueList, str4, z4);
                }
            } else if (name.equals(VCardConstants.PROPERTY_EMAIL)) {
                Collection<String> collection3 = parameterMap.get(VCardConstants.PARAM_TYPE);
                if (collection3 != null) {
                    z2 = false;
                    str3 = null;
                    i2 = -1;
                    for (String str6 : collection3) {
                        String upperCase2 = str6.toUpperCase();
                        if (upperCase2.equals(VCardConstants.PARAM_TYPE_PREF)) {
                            z2 = true;
                        } else if (upperCase2.equals(VCardConstants.PARAM_TYPE_HOME)) {
                            i2 = 1;
                        } else if (upperCase2.equals(VCardConstants.PARAM_TYPE_WORK)) {
                            i2 = 2;
                        } else if (upperCase2.equals(VCardConstants.PARAM_TYPE_CELL)) {
                            i2 = 4;
                        } else if (i2 < 0) {
                            str3 = str6;
                            if (upperCase2.startsWith("X-")) {
                                str3 = str6.substring(2);
                            }
                            i2 = 0;
                        }
                    }
                } else {
                    z2 = false;
                    str3 = null;
                    i2 = -1;
                }
                int i5 = i2;
                if (i2 < 0) {
                    i5 = 3;
                }
                addEmail(i5, trim, str3, z2);
            } else if (name.equals(VCardConstants.PROPERTY_ORG)) {
                Collection<String> collection4 = parameterMap.get(VCardConstants.PARAM_TYPE);
                if (collection4 != null) {
                    Iterator<String> it2 = collection4.iterator();
                    while (true) {
                        z5 = z10;
                        if (!it2.hasNext()) {
                            break;
                        } else if (it2.next().equals(VCardConstants.PARAM_TYPE_PREF)) {
                            z10 = true;
                        }
                    }
                }
                handleOrgValue(1, valueList, parameterMap, z5);
            } else if (name.equals(VCardConstants.PROPERTY_TITLE)) {
                handleTitleValue(trim);
            } else if (!name.equals(VCardConstants.PROPERTY_ROLE)) {
                if (name.equals(VCardConstants.PROPERTY_PHOTO) || name.equals(VCardConstants.PROPERTY_LOGO)) {
                    Collection<String> collection5 = parameterMap.get(VCardConstants.PARAM_VALUE);
                    if (collection5 == null || !collection5.contains("URL")) {
                        Collection<String> collection6 = parameterMap.get(VCardConstants.PARAM_TYPE);
                        if (collection6 != null) {
                            Iterator<String> it3 = collection6.iterator();
                            String str7 = null;
                            while (true) {
                                str = str7;
                                z7 = z6;
                                if (!it3.hasNext()) {
                                    break;
                                }
                                String next = it3.next();
                                if (VCardConstants.PARAM_TYPE_PREF.equals(next)) {
                                    z6 = true;
                                } else if (str7 == null) {
                                    str7 = next;
                                }
                            }
                        } else {
                            str = null;
                        }
                        addPhotoBytes(str, byteValue, z7);
                    }
                } else if (name.equals(VCardConstants.PROPERTY_TEL)) {
                    if (!VCardConfig.isVersion40(this.mVCardType)) {
                        z = false;
                        str2 = trim;
                    } else if (trim.startsWith("sip:")) {
                        z = true;
                        str2 = null;
                    } else if (trim.startsWith("tel:")) {
                        str2 = trim.substring(4);
                        z = false;
                    } else {
                        z = false;
                        str2 = trim;
                    }
                    if (z) {
                        handleSipCase(trim, parameterMap.get(VCardConstants.PARAM_TYPE));
                    } else if (trim.length() != 0) {
                        Collection<String> collection7 = parameterMap.get(VCardConstants.PARAM_TYPE);
                        Object phoneTypeFromStrings = VCardUtils.getPhoneTypeFromStrings(collection7, str2);
                        if (phoneTypeFromStrings instanceof Integer) {
                            i = ((Integer) phoneTypeFromStrings).intValue();
                        } else {
                            obj = phoneTypeFromStrings.toString();
                            i = 0;
                        }
                        if (collection7 == null || !collection7.contains(VCardConstants.PARAM_TYPE_PREF)) {
                            z11 = false;
                        }
                        addPhone(i, str2, obj, z11);
                    }
                } else if (name.equals(VCardConstants.PROPERTY_X_SKYPE_PSTNNUMBER)) {
                    Collection<String> collection8 = parameterMap.get(VCardConstants.PARAM_TYPE);
                    if (collection8 == null || !collection8.contains(VCardConstants.PARAM_TYPE_PREF)) {
                        z12 = false;
                    }
                    addPhone(7, trim, null, z12);
                } else if (sImMap.containsKey(name)) {
                    int intValue = sImMap.get(name).intValue();
                    Collection<String> collection9 = parameterMap.get(VCardConstants.PARAM_TYPE);
                    int i6 = -1;
                    if (collection9 != null) {
                        Iterator<String> it4 = collection9.iterator();
                        while (true) {
                            z9 = z8;
                            i6 = i3;
                            if (!it4.hasNext()) {
                                break;
                            }
                            String next2 = it4.next();
                            if (next2.equals(VCardConstants.PARAM_TYPE_PREF)) {
                                z8 = true;
                            } else if (i3 < 0) {
                                if (next2.equalsIgnoreCase(VCardConstants.PARAM_TYPE_HOME)) {
                                    i3 = 1;
                                } else if (next2.equalsIgnoreCase(VCardConstants.PARAM_TYPE_WORK)) {
                                    i3 = 2;
                                }
                            }
                        }
                    }
                    if (i6 < 0) {
                        i6 = 1;
                    }
                    addIm(intValue, null, trim, i6, z9);
                } else if (name.equals(VCardConstants.PROPERTY_NOTE)) {
                    addNote(trim);
                } else if (name.equals("URL")) {
                    if (this.mWebsiteList == null) {
                        this.mWebsiteList = new ArrayList(1);
                    }
                    this.mWebsiteList.add(new WebsiteData(trim));
                } else if (name.equals(VCardConstants.PROPERTY_BDAY)) {
                    this.mBirthday = new BirthdayData(trim);
                } else if (name.equals(VCardConstants.PROPERTY_ANNIVERSARY)) {
                    this.mAnniversary = new AnniversaryData(trim);
                } else if (name.equals(VCardConstants.PROPERTY_X_PHONETIC_FIRST_NAME)) {
                    this.mNameData.mPhoneticGiven = trim;
                } else if (name.equals(VCardConstants.PROPERTY_X_PHONETIC_MIDDLE_NAME)) {
                    this.mNameData.mPhoneticMiddle = trim;
                } else if (name.equals(VCardConstants.PROPERTY_X_PHONETIC_LAST_NAME)) {
                    this.mNameData.mPhoneticFamily = trim;
                } else if (name.equals(VCardConstants.PROPERTY_IMPP)) {
                    if (trim.startsWith("sip:")) {
                        handleSipCase(trim, parameterMap.get(VCardConstants.PARAM_TYPE));
                    }
                } else if (name.equals(VCardConstants.PROPERTY_X_SIP)) {
                    if (!TextUtils.isEmpty(trim)) {
                        handleSipCase(trim, parameterMap.get(VCardConstants.PARAM_TYPE));
                    }
                } else if (name.equals(VCardConstants.PROPERTY_X_ANDROID_CUSTOM)) {
                    handleAndroidCustomProperty(VCardUtils.constructListFromValue(trim, this.mVCardType));
                }
            }
        }
    }

    public void consolidateFields() {
        this.mNameData.displayName = constructDisplayName();
    }

    public ArrayList<ContentProviderOperation> constructInsertOperations(ContentResolver contentResolver, ArrayList<ContentProviderOperation> arrayList) {
        ArrayList<ContentProviderOperation> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
        }
        if (!isIgnorable()) {
            int size = arrayList2.size();
            ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI);
            if (this.mAccount != null) {
                newInsert.withValue(SelectAccountActivity.ACCOUNT_NAME, this.mAccount.name);
                newInsert.withValue(SelectAccountActivity.ACCOUNT_TYPE, this.mAccount.type);
            } else {
                newInsert.withValue(SelectAccountActivity.ACCOUNT_NAME, null);
                newInsert.withValue(SelectAccountActivity.ACCOUNT_TYPE, null);
            }
            arrayList2.add(newInsert.build());
            arrayList2.size();
            iterateAllData(new InsertOperationConstrutor(arrayList2, size));
            arrayList2.size();
        }
        return arrayList2;
    }

    public final String getBirthday() {
        return this.mBirthday != null ? this.mBirthday.mBirthday : null;
    }

    public final List<VCardEntry> getChildlen() {
        return this.mChildren;
    }

    public String getDisplayName() {
        if (this.mNameData.displayName == null) {
            this.mNameData.displayName = constructDisplayName();
        }
        return this.mNameData.displayName;
    }

    public final List<EmailData> getEmailList() {
        return this.mEmailList;
    }

    public final List<ImData> getImList() {
        return this.mImList;
    }

    public final NameData getNameData() {
        return this.mNameData;
    }

    public final List<NicknameData> getNickNameList() {
        return this.mNicknameList;
    }

    public final List<NoteData> getNotes() {
        return this.mNoteList;
    }

    public final List<OrganizationData> getOrganizationList() {
        return this.mOrganizationList;
    }

    public final List<PhoneData> getPhoneList() {
        return this.mPhoneList;
    }

    public final List<PhotoData> getPhotoList() {
        return this.mPhotoList;
    }

    public final List<PostalData> getPostalList() {
        return this.mPostalList;
    }

    public final List<WebsiteData> getWebsiteList() {
        return this.mWebsiteList;
    }

    public boolean isIgnorable() {
        IsIgnorableIterator isIgnorableIterator = new IsIgnorableIterator();
        iterateAllData(isIgnorableIterator);
        return isIgnorableIterator.getResult();
    }

    public final void iterateAllData(EntryElementIterator entryElementIterator) {
        entryElementIterator.onIterationStarted();
        entryElementIterator.onElementGroupStarted(this.mNameData.getEntryLabel());
        entryElementIterator.onElement(this.mNameData);
        entryElementIterator.onElementGroupEnded();
        iterateOneList(this.mPhoneList, entryElementIterator);
        iterateOneList(this.mEmailList, entryElementIterator);
        iterateOneList(this.mPostalList, entryElementIterator);
        iterateOneList(this.mOrganizationList, entryElementIterator);
        iterateOneList(this.mImList, entryElementIterator);
        iterateOneList(this.mPhotoList, entryElementIterator);
        iterateOneList(this.mWebsiteList, entryElementIterator);
        iterateOneList(this.mSipList, entryElementIterator);
        iterateOneList(this.mNicknameList, entryElementIterator);
        iterateOneList(this.mNoteList, entryElementIterator);
        iterateOneList(this.mAndroidCustomDataList, entryElementIterator);
        if (this.mBirthday != null) {
            entryElementIterator.onElementGroupStarted(this.mBirthday.getEntryLabel());
            entryElementIterator.onElement(this.mBirthday);
            entryElementIterator.onElementGroupEnded();
        }
        if (this.mAnniversary != null) {
            entryElementIterator.onElementGroupStarted(this.mAnniversary.getEntryLabel());
            entryElementIterator.onElement(this.mAnniversary);
            entryElementIterator.onElementGroupEnded();
        }
        entryElementIterator.onIterationEnded();
    }

    public String toString() {
        ToStringIterator toStringIterator = new ToStringIterator();
        iterateAllData(toStringIterator);
        return toStringIterator.toString();
    }
}
