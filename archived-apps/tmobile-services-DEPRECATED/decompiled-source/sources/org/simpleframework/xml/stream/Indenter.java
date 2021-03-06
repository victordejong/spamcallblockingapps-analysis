package org.simpleframework.xml.stream;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/Indenter.class */
class Indenter {
    private Cache cache;
    private int count;
    private int indent;
    private int index;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/Indenter$Cache.class */
    public static class Cache {
        private int count;
        private String[] list;

        public Cache(int i) {
            this.list = new String[i];
        }

        private void resize(int i) {
            String[] strArr = new String[i];
            int i2 = 0;
            while (true) {
                String[] strArr2 = this.list;
                if (i2 < strArr2.length) {
                    strArr[i2] = strArr2[i2];
                    i2++;
                } else {
                    this.list = strArr;
                    return;
                }
            }
        }

        public String get(int i) {
            String[] strArr = this.list;
            if (i < strArr.length) {
                return strArr[i];
            }
            return null;
        }

        public void set(int i, String str) {
            if (i >= this.list.length) {
                resize(i * 2);
            }
            if (i > this.count) {
                this.count = i;
            }
            this.list[i] = str;
        }

        public int size() {
            return this.count;
        }
    }

    public Indenter() {
        this(new Format());
    }

    public Indenter(Format format) {
        this(format, 16);
    }

    private Indenter(Format format, int i) {
        this.indent = format.getIndent();
        this.cache = new Cache(i);
    }

    private String create() {
        int i = this.count;
        char[] cArr = new char[i + 1];
        if (i <= 0) {
            return "\n";
        }
        cArr[0] = (char) 10;
        for (int i2 = 1; i2 <= this.count; i2++) {
            cArr[i2] = (char) 32;
        }
        return new String(cArr);
    }

    private String indent(int i) {
        if (this.indent <= 0) {
            return "";
        }
        String str = this.cache.get(i);
        String str2 = str;
        if (str == null) {
            str2 = create();
            this.cache.set(i, str2);
        }
        return this.cache.size() > 0 ? str2 : "";
    }

    public String pop() {
        int i = this.index - 1;
        this.index = i;
        String indent = indent(i);
        int i2 = this.indent;
        if (i2 > 0) {
            this.count -= i2;
        }
        return indent;
    }

    public String push() {
        int i = this.index;
        this.index = i + 1;
        String indent = indent(i);
        int i2 = this.indent;
        if (i2 > 0) {
            this.count += i2;
        }
        return indent;
    }

    public String top() {
        return indent(this.index);
    }
}
