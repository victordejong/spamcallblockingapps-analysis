package com.android.vcard;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/vcard/VCardSourceDetector.class */
public class VCardSourceDetector implements VCardInterpreter {
    private static final String LOG_TAG = "vCard";
    private static final int PARSE_TYPE_APPLE = 1;
    private static final int PARSE_TYPE_DOCOMO_FOMA = 3;
    private static final int PARSE_TYPE_MOBILE_PHONE_JP = 2;
    public static final int PARSE_TYPE_UNKNOWN = 0;
    private static final int PARSE_TYPE_WINDOWS_MOBILE_V65_JP = 4;
    private String mSpecifiedCharset;
    private static Set<String> APPLE_SIGNS = new HashSet(Arrays.asList(VCardConstants.PROPERTY_X_PHONETIC_FIRST_NAME, VCardConstants.PROPERTY_X_PHONETIC_MIDDLE_NAME, VCardConstants.PROPERTY_X_PHONETIC_LAST_NAME, "X-ABADR", "X-ABUID"));
    private static Set<String> JAPANESE_MOBILE_PHONE_SIGNS = new HashSet(Arrays.asList("X-GNO", "X-GN", VCardConstants.PROPERTY_X_REDUCTION));
    private static Set<String> WINDOWS_MOBILE_PHONE_SIGNS = new HashSet(Arrays.asList("X-MICROSOFT-ASST_TEL", "X-MICROSOFT-ASSISTANT", "X-MICROSOFT-OFFICELOC"));
    private static Set<String> FOMA_SIGNS = new HashSet(Arrays.asList("X-SD-VERN", "X-SD-FORMAT_VER", "X-SD-CATEGORIES", "X-SD-CLASS", "X-SD-DCREATED", "X-SD-DESCRIPTION"));
    private static String TYPE_FOMA_CHARSET_SIGN = "X-SD-CHAR_CODE";
    private int mParseType = 0;
    private int mVersion = -1;

    public String getEstimatedCharset() {
        String str;
        if (!TextUtils.isEmpty(this.mSpecifiedCharset)) {
            switch (this.mParseType) {
                case 1:
                    str = "UTF-8";
                    break;
                case 2:
                case 3:
                case 4:
                    str = "SHIFT_JIS";
                    break;
                default:
                    str = null;
                    break;
            }
        } else {
            str = this.mSpecifiedCharset;
        }
        return str;
    }

    public int getEstimatedType() {
        int i;
        switch (this.mParseType) {
            case 2:
                i = VCardConfig.VCARD_TYPE_V21_JAPANESE_MOBILE;
                break;
            case 3:
                i = VCardConfig.VCARD_TYPE_DOCOMO;
                break;
            default:
                if (this.mVersion != 0) {
                    if (this.mVersion != 1) {
                        if (this.mVersion != 2) {
                            i = 0;
                            break;
                        } else {
                            i = VCardConfig.VCARD_TYPE_V40_GENERIC;
                            break;
                        }
                    } else {
                        i = VCardConfig.VCARD_TYPE_V30_GENERIC;
                        break;
                    }
                } else {
                    i = VCardConfig.VCARD_TYPE_V21_GENERIC;
                    break;
                }
        }
        return i;
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryEnded() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onEntryStarted() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onPropertyCreated(VCardProperty vCardProperty) {
        String name = vCardProperty.getName();
        List<String> valueList = vCardProperty.getValueList();
        if (name.equalsIgnoreCase(VCardConstants.PROPERTY_VERSION) && valueList.size() > 0) {
            String str = valueList.get(0);
            if (str.equals(VCardConstants.VERSION_V21)) {
                this.mVersion = 0;
            } else if (str.equals(VCardConstants.VERSION_V30)) {
                this.mVersion = 1;
            } else if (str.equals(VCardConstants.VERSION_V40)) {
                this.mVersion = 2;
            } else {
                Log.w(LOG_TAG, "Invalid version string: " + str);
            }
        } else if (name.equalsIgnoreCase(TYPE_FOMA_CHARSET_SIGN)) {
            this.mParseType = 3;
            if (valueList.size() > 0) {
                this.mSpecifiedCharset = valueList.get(0);
            }
        }
        if (this.mParseType == 0) {
            if (WINDOWS_MOBILE_PHONE_SIGNS.contains(name)) {
                this.mParseType = 4;
            } else if (FOMA_SIGNS.contains(name)) {
                this.mParseType = 3;
            } else if (JAPANESE_MOBILE_PHONE_SIGNS.contains(name)) {
                this.mParseType = 2;
            } else if (APPLE_SIGNS.contains(name)) {
                this.mParseType = 1;
            }
        }
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardEnded() {
    }

    @Override // com.android.vcard.VCardInterpreter
    public void onVCardStarted() {
    }
}
