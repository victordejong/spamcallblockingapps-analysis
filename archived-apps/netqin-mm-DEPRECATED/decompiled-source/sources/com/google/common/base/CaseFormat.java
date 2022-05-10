package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4909b;
import p131c.p161d.p266c.p267a.C4908a;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/CaseFormat.class */
public enum CaseFormat {
    LOWER_HYPHEN(AbstractC4909b.m24834c('-'), "-") { // from class: com.google.common.base.CaseFormat.1
        @Override // com.google.common.base.CaseFormat
        public String convert(CaseFormat caseFormat, String str) {
            return caseFormat == CaseFormat.LOWER_UNDERSCORE ? str.replace('-', '_') : caseFormat == CaseFormat.UPPER_UNDERSCORE ? C4908a.m24841b(str.replace('-', '_')) : CaseFormat.super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return C4908a.m24843a(str);
        }
    },
    LOWER_UNDERSCORE(AbstractC4909b.m24834c('_'), "_") { // from class: com.google.common.base.CaseFormat.2
        @Override // com.google.common.base.CaseFormat
        public String convert(CaseFormat caseFormat, String str) {
            return caseFormat == CaseFormat.LOWER_HYPHEN ? str.replace('_', '-') : caseFormat == CaseFormat.UPPER_UNDERSCORE ? C4908a.m24841b(str) : CaseFormat.super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return C4908a.m24843a(str);
        }
    },
    LOWER_CAMEL(AbstractC4909b.m24838a('A', 'Z'), "") { // from class: com.google.common.base.CaseFormat.3
        @Override // com.google.common.base.CaseFormat
        public String normalizeFirstWord(String str) {
            return C4908a.m24843a(str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return CaseFormat.firstCharOnlyToUpper(str);
        }
    },
    UPPER_CAMEL(AbstractC4909b.m24838a('A', 'Z'), "") { // from class: com.google.common.base.CaseFormat.4
        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return CaseFormat.firstCharOnlyToUpper(str);
        }
    },
    UPPER_UNDERSCORE(AbstractC4909b.m24834c('_'), "_") { // from class: com.google.common.base.CaseFormat.5
        @Override // com.google.common.base.CaseFormat
        public String convert(CaseFormat caseFormat, String str) {
            return caseFormat == CaseFormat.LOWER_HYPHEN ? C4908a.m24843a(str.replace('_', '-')) : caseFormat == CaseFormat.LOWER_UNDERSCORE ? C4908a.m24843a(str) : CaseFormat.super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return C4908a.m24841b(str);
        }
    };
    
    public final AbstractC4909b wordBoundary;
    public final String wordSeparator;

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/CaseFormat$StringConverter.class */
    public static final class StringConverter extends Converter<String, String> implements Serializable {
        public static final long serialVersionUID = 0;
        public final CaseFormat sourceFormat;
        public final CaseFormat targetFormat;

        public StringConverter(CaseFormat caseFormat, CaseFormat caseFormat2) {
            C4933n.m24795a(caseFormat);
            this.sourceFormat = caseFormat;
            C4933n.m24795a(caseFormat2);
            this.targetFormat = caseFormat2;
        }

        public String doBackward(String str) {
            return this.targetFormat.m8576to(this.sourceFormat, str);
        }

        public String doForward(String str) {
            return this.sourceFormat.m8576to(this.targetFormat, str);
        }

        @Override // com.google.common.base.Converter, p131c.p161d.p266c.p267a.AbstractC4920g
        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof StringConverter) {
                StringConverter stringConverter = (StringConverter) obj;
                z = false;
                if (this.sourceFormat.equals(stringConverter.sourceFormat)) {
                    z = false;
                    if (this.targetFormat.equals(stringConverter.targetFormat)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return this.sourceFormat.hashCode() ^ this.targetFormat.hashCode();
        }

        public String toString() {
            return this.sourceFormat + ".converterTo(" + this.targetFormat + ")";
        }
    }

    CaseFormat(AbstractC4909b bVar, String str) {
        this.wordBoundary = bVar;
        this.wordSeparator = str;
    }

    public static String firstCharOnlyToUpper(String str) {
        if (!str.isEmpty()) {
            str = C4908a.m24840c(str.charAt(0)) + C4908a.m24843a(str.substring(1));
        }
        return str;
    }

    public String convert(CaseFormat caseFormat, String str) {
        String str2;
        StringBuilder sb = null;
        int i = 0;
        int i2 = -1;
        while (true) {
            i2 = this.wordBoundary.mo24832a(str, i2 + 1);
            if (i2 == -1) {
                break;
            }
            if (i == 0) {
                sb = new StringBuilder(str.length() + (this.wordSeparator.length() * 4));
                sb.append(caseFormat.normalizeFirstWord(str.substring(i, i2)));
            } else {
                sb.append(caseFormat.normalizeWord(str.substring(i, i2)));
            }
            sb.append(caseFormat.wordSeparator);
            i = this.wordSeparator.length() + i2;
        }
        if (i == 0) {
            str2 = caseFormat.normalizeFirstWord(str);
        } else {
            sb.append(caseFormat.normalizeWord(str.substring(i)));
            str2 = sb.toString();
        }
        return str2;
    }

    public Converter<String, String> converterTo(CaseFormat caseFormat) {
        return new StringConverter(this, caseFormat);
    }

    public String normalizeFirstWord(String str) {
        return normalizeWord(str);
    }

    public abstract String normalizeWord(String str);

    /* renamed from: to */
    public final String m8576to(CaseFormat caseFormat, String str) {
        C4933n.m24795a(caseFormat);
        C4933n.m24795a(str);
        if (caseFormat != this) {
            str = convert(caseFormat, str);
        }
        return str;
    }
}
