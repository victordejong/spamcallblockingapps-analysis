package kotlin.text;

import kotlin.jvm.internal.PropertyReference1Impl;
import p573f.AbstractC9907c;
import p573f.C9926d;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharCategory.class */
public enum CharCategory {
    UNASSIGNED(0, "Cn"),
    UPPERCASE_LETTER(1, "Lu"),
    LOWERCASE_LETTER(2, "Ll"),
    TITLECASE_LETTER(3, "Lt"),
    MODIFIER_LETTER(4, "Lm"),
    OTHER_LETTER(5, "Lo"),
    NON_SPACING_MARK(6, "Mn"),
    ENCLOSING_MARK(7, "Me"),
    COMBINING_SPACING_MARK(8, "Mc"),
    DECIMAL_DIGIT_NUMBER(9, "Nd"),
    LETTER_NUMBER(10, "Nl"),
    OTHER_NUMBER(11, "No"),
    SPACE_SEPARATOR(12, "Zs"),
    LINE_SEPARATOR(13, "Zl"),
    PARAGRAPH_SEPARATOR(14, "Zp"),
    CONTROL(15, "Cc"),
    FORMAT(16, "Cf"),
    PRIVATE_USE(18, "Co"),
    SURROGATE(19, "Cs"),
    DASH_PUNCTUATION(20, "Pd"),
    START_PUNCTUATION(21, "Ps"),
    END_PUNCTUATION(22, "Pe"),
    CONNECTOR_PUNCTUATION(23, "Pc"),
    OTHER_PUNCTUATION(24, "Po"),
    MATH_SYMBOL(25, "Sm"),
    CURRENCY_SYMBOL(26, "Sc"),
    MODIFIER_SYMBOL(27, "Sk"),
    OTHER_SYMBOL(28, "So"),
    INITIAL_QUOTE_PUNCTUATION(29, "Pi"),
    FINAL_QUOTE_PUNCTUATION(30, "Pf");
    
    public final String code;
    public final int value;
    public static final C10484a Companion = new C10484a(null);
    public static final AbstractC9907c categoryMap$delegate = C9926d.m1780a(CharCategory$Companion$categoryMap$2.INSTANCE);

    /* renamed from: kotlin.text.CharCategory$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/text/CharCategory$a.class */
    public static final class C10484a {
        static {
            C10062t.m1621a(new PropertyReference1Impl(C10062t.m1629a(C10484a.class), "categoryMap", "getCategoryMap()Ljava/util/Map;"));
        }

        public C10484a() {
        }

        public /* synthetic */ C10484a(C10057o oVar) {
            this();
        }
    }

    CharCategory(int i, String str) {
        this.value = i;
        this.code = str;
    }

    public final boolean contains(char c) {
        return Character.getType(c) == this.value;
    }

    public final String getCode() {
        return this.code;
    }

    public final int getValue() {
        return this.value;
    }
}
