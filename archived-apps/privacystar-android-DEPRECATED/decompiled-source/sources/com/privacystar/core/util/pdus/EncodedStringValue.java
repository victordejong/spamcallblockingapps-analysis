package com.privacystar.core.util.pdus;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/pdus/EncodedStringValue.class */
public class EncodedStringValue implements Cloneable {
    private static final String TAG = "EncodedStringValue";
    private int mCharacterSet;
    private byte[] mData;

    public EncodedStringValue(int i, byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("EncodedStringValue: Text-string is null.");
        }
        this.mCharacterSet = i;
        this.mData = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.mData, 0, bArr.length);
    }

    public EncodedStringValue(String str) {
        try {
            this.mData = str.getBytes("utf-8");
            this.mCharacterSet = 106;
        } catch (UnsupportedEncodingException e) {
            Timber.m32e(e, "Default encoding must be supported.", new Object[0]);
        }
    }

    public EncodedStringValue(byte[] bArr) {
        this(106, bArr);
    }

    public static String concat(EncodedStringValue[] encodedStringValueArr) {
        StringBuilder sb = new StringBuilder();
        int length = encodedStringValueArr.length - 1;
        for (int i = 0; i <= length; i++) {
            sb.append(encodedStringValueArr[i].getString());
            if (i < length) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    public static EncodedStringValue copy(EncodedStringValue encodedStringValue) {
        if (encodedStringValue == null) {
            return null;
        }
        return new EncodedStringValue(encodedStringValue.mCharacterSet, encodedStringValue.mData);
    }

    public static EncodedStringValue[] encodeStrings(String[] strArr) {
        int length = strArr.length;
        if (length <= 0) {
            return null;
        }
        EncodedStringValue[] encodedStringValueArr = new EncodedStringValue[length];
        for (int i = 0; i < length; i++) {
            encodedStringValueArr[i] = new EncodedStringValue(strArr[i]);
        }
        return encodedStringValueArr;
    }

    public static EncodedStringValue[] extract(String str) {
        String[] split = str.split(";");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < split.length; i++) {
            if (split[i].length() > 0) {
                arrayList.add(new EncodedStringValue(split[i]));
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            return (EncodedStringValue[]) arrayList.toArray(new EncodedStringValue[size]);
        }
        return null;
    }

    public void appendTextString(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("Text-string is null.");
        } else if (this.mData == null) {
            this.mData = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.mData, 0, bArr.length);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(this.mData);
                byteArrayOutputStream.write(bArr);
                this.mData = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                Timber.m29i(e, "", new Object[0]);
                throw new NullPointerException("appendTextString: failed when write a new Text-string");
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        super.clone();
        int length = this.mData.length;
        byte[] bArr = new byte[length];
        System.arraycopy(this.mData, 0, bArr, 0, length);
        try {
            return new EncodedStringValue(this.mCharacterSet, bArr);
        } catch (Exception e) {
            Timber.m32e(e, "failed to clone an EncodedStringValue: %s", this);
            throw new CloneNotSupportedException(e.getMessage());
        }
    }

    public int getCharacterSet() {
        return this.mCharacterSet;
    }

    public String getString() {
        if (this.mCharacterSet == 0) {
            return new String(this.mData);
        }
        try {
            return new String(this.mData, CharacterSets.getMimeName(this.mCharacterSet));
        } catch (UnsupportedEncodingException e) {
            Timber.m23w(e, "", new Object[0]);
            try {
                return new String(this.mData, CharacterSets.MIMENAME_ISO_8859_1);
            } catch (UnsupportedEncodingException e2) {
                Timber.m23w(e2, "", new Object[0]);
                return new String(this.mData);
            }
        }
    }

    public byte[] getTextString() {
        byte[] bArr = new byte[this.mData.length];
        System.arraycopy(this.mData, 0, bArr, 0, this.mData.length);
        return bArr;
    }

    public void setCharacterSet(int i) {
        this.mCharacterSet = i;
    }

    public void setTextString(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("EncodedStringValue: Text-string is null.");
        }
        this.mData = new byte[bArr.length];
        System.arraycopy(bArr, 0, this.mData, 0, bArr.length);
    }

    public EncodedStringValue[] split(String str) {
        String[] split = getString().split(str);
        EncodedStringValue[] encodedStringValueArr = new EncodedStringValue[split.length];
        for (int i = 0; i < encodedStringValueArr.length; i++) {
            try {
                encodedStringValueArr[i] = new EncodedStringValue(this.mCharacterSet, split[i].getBytes());
            } catch (NullPointerException e) {
                Timber.wtf(e, "Can't arrive here.", new Object[0]);
                return new EncodedStringValue[0];
            }
        }
        return encodedStringValueArr;
    }
}
