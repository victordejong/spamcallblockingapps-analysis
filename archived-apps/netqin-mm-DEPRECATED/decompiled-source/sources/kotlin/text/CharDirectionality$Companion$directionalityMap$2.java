package kotlin.text;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Lambda;
import p573f.p577r.C9962e0;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p595z.C10084f;
/* loaded from: classes2-dex2jar.jar:kotlin/text/CharDirectionality$Companion$directionalityMap$2.class */
public final class CharDirectionality$Companion$directionalityMap$2 extends Lambda implements AbstractC10020a<Map<Integer, ? extends CharDirectionality>> {
    public static final CharDirectionality$Companion$directionalityMap$2 INSTANCE = new CharDirectionality$Companion$directionalityMap$2();

    public CharDirectionality$Companion$directionalityMap$2() {
        super(0);
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public final Map<Integer, ? extends CharDirectionality> invoke() {
        CharDirectionality[] values = CharDirectionality.values();
        LinkedHashMap linkedHashMap = new LinkedHashMap(C10084f.m1571a(C9962e0.m1730a(values.length), 16));
        for (CharDirectionality charDirectionality : values) {
            linkedHashMap.put(Integer.valueOf(charDirectionality.getValue()), charDirectionality);
        }
        return linkedHashMap;
    }
}
