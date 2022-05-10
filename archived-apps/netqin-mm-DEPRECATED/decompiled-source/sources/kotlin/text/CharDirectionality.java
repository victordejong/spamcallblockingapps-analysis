package kotlin.text;

import kotlin.jvm.internal.PropertyReference1Impl;
import p573f.AbstractC9907c;
import p573f.C9926d;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharDirectionality.class */
public enum CharDirectionality {
    UNDEFINED(-1),
    LEFT_TO_RIGHT(0),
    RIGHT_TO_LEFT(1),
    RIGHT_TO_LEFT_ARABIC(2),
    EUROPEAN_NUMBER(3),
    EUROPEAN_NUMBER_SEPARATOR(4),
    EUROPEAN_NUMBER_TERMINATOR(5),
    ARABIC_NUMBER(6),
    COMMON_NUMBER_SEPARATOR(7),
    NONSPACING_MARK(8),
    BOUNDARY_NEUTRAL(9),
    PARAGRAPH_SEPARATOR(10),
    SEGMENT_SEPARATOR(11),
    WHITESPACE(12),
    OTHER_NEUTRALS(13),
    LEFT_TO_RIGHT_EMBEDDING(14),
    LEFT_TO_RIGHT_OVERRIDE(15),
    RIGHT_TO_LEFT_EMBEDDING(16),
    RIGHT_TO_LEFT_OVERRIDE(17),
    POP_DIRECTIONAL_FORMAT(18);
    
    public final int value;
    public static final C10485a Companion = new C10485a(null);
    public static final AbstractC9907c directionalityMap$delegate = C9926d.m1780a(CharDirectionality$Companion$directionalityMap$2.INSTANCE);

    /* renamed from: kotlin.text.CharDirectionality$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/text/CharDirectionality$a.class */
    public static final class C10485a {
        static {
            C10062t.m1621a(new PropertyReference1Impl(C10062t.m1629a(C10485a.class), "directionalityMap", "getDirectionalityMap()Ljava/util/Map;"));
        }

        public C10485a() {
        }

        public /* synthetic */ C10485a(C10057o oVar) {
            this();
        }
    }

    CharDirectionality(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
