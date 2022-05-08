package retrofit2.converter.gson;

import com.facebook.stetho.common.Utf8Charset;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;
/* loaded from: classes2-dex2jar.jar:retrofit2/converter/gson/GsonRequestBodyConverter.class */
final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private static final Charset UTF_8 = Charset.forName(Utf8Charset.NAME);
    private final TypeAdapter<T> adapter;
    private final Gson gson;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GsonRequestBodyConverter(Gson gson, TypeAdapter<T> typeAdapter) {
        this.gson = gson;
        this.adapter = typeAdapter;
    }

    @Override // retrofit2.Converter
    /* renamed from: convert  reason: avoid collision after fix types in other method */
    public RequestBody convert2(T t) throws IOException {
        Buffer buffer = new Buffer();
        JsonWriter p = this.gson.m8419p(new OutputStreamWriter(buffer.m214K(), UTF_8));
        this.adapter.mo8174d(p, t);
        p.close();
        return RequestBody.create(MEDIA_TYPE, buffer.mo80U());
    }
}
