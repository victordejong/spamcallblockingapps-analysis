package org.simpleframework.xml.core;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/KeyBuilder.class */
class KeyBuilder {
    private final Label label;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/KeyBuilder$Key.class */
    public static class Key {
        private final KeyType type;
        private final String value;

        public Key(KeyType keyType, String str) throws Exception {
            this.value = str;
            this.type = keyType;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Key) {
                return equals((Key) obj);
            }
            return false;
        }

        public boolean equals(Key key) {
            if (this.type == key.type) {
                return key.value.equals(this.value);
            }
            return false;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return this.value;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/KeyBuilder$KeyType.class */
    public enum KeyType {
        TEXT,
        ATTRIBUTE,
        ELEMENT
    }

    public KeyBuilder(Label label) {
        this.label = label;
    }

    private Object getKey(KeyType keyType) throws Exception {
        String key = getKey(this.label.getPaths());
        return keyType == null ? key : new Key(keyType, key);
    }

    private String getKey(String[] strArr) throws Exception {
        StringBuilder sb = new StringBuilder();
        if (strArr.length > 0) {
            Arrays.sort(strArr);
            for (String str : strArr) {
                sb.append(str);
                sb.append('>');
            }
        }
        return sb.toString();
    }

    public Object getKey() throws Exception {
        return this.label.isAttribute() ? getKey(KeyType.ATTRIBUTE) : getKey(KeyType.ELEMENT);
    }
}
