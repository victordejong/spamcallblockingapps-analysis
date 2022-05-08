package zendesk.core;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.C10113s;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/GsonSerializer.class */
public class GsonSerializer implements Serializer {
    public final Gson gson;

    public GsonSerializer(Gson gson) {
        this.gson = gson;
    }

    @Override // zendesk.core.Serializer
    public <E> E deserialize(Object obj, @NonNull Class<E> cls) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (!C10862d.m10390b(str)) {
                return null;
            }
            try {
                return (E) this.gson.m30982a(str, (Class<Object>) cls);
            } catch (C10113s e) {
                C10845a.m10422a("GsonSerializer", "Unable to deserialize String into object of type %s", cls.getSimpleName());
                return null;
            }
        } else if (obj instanceof AbstractC10104j) {
            try {
                return (E) this.gson.m30999a((AbstractC10104j) obj, (Class<Object>) cls);
            } catch (C10113s e2) {
                C10845a.m10422a("GsonSerializer", "Unable to deserialize JsonElement into object of type %s", cls.getSimpleName(), e2);
                return null;
            }
        } else {
            C10845a.m10422a("GsonSerializer", "Unable to deserialize the provided object into %s", cls.getSimpleName());
            return null;
        }
    }

    @Override // zendesk.core.Serializer
    public String serialize(Object obj) {
        return this.gson.m30988a(obj);
    }
}
