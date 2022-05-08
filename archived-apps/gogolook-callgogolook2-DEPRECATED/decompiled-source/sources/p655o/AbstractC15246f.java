package p655o;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* renamed from: o.f */
/* loaded from: classes3-dex2jar.jar:o/f.class */
public interface AbstractC15246f<F, T> {

    /* renamed from: o.f$a */
    /* loaded from: classes3-dex2jar.jar:o/f$a.class */
    public static abstract class AbstractC15247a {
        /* renamed from: a */
        public static Class<?> m156a(Type type) {
            return C15306w.m50b(type);
        }

        /* renamed from: a */
        public static Type m157a(int i, ParameterizedType parameterizedType) {
            return C15306w.m51b(i, parameterizedType);
        }

        @Nullable
        /* renamed from: a */
        public AbstractC15246f<ResponseBody, ?> mo44a(Type type, Annotation[] annotationArr, C15300s sVar) {
            return null;
        }

        @Nullable
        /* renamed from: a */
        public AbstractC15246f<?, RequestBody> mo43a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, C15300s sVar) {
            return null;
        }

        @Nullable
        /* renamed from: b */
        public AbstractC15246f<?, String> m155b(Type type, Annotation[] annotationArr, C15300s sVar) {
            return null;
        }
    }

    @Nullable
    T convert(F f) throws IOException;
}
