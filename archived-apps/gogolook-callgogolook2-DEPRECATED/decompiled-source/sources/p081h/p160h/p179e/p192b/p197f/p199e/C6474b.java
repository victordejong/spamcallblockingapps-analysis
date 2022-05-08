package p081h.p160h.p179e.p192b.p197f.p199e;

import android.content.Context;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import p081h.p160h.p179e.p192b.C6442a;
import p081h.p160h.p179e.p192b.p202h.C6488a;
import p626l.p641z.p643d.C15149k;
import p646n.p649b.p650a.p652e.p653a.C15211b;
/* renamed from: h.h.e.b.f.e.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/f/e/b.class */
public final class C6474b {

    /* renamed from: a */
    public static final C6474b f16134a = new C6474b();

    /* renamed from: a */
    public final C6473a m22505a(Context context) {
        C15149k.m377b(context, "context");
        String a = C6488a.m22474a(C6488a.f16168a, context, TtmlNode.TAG_METADATA, null, 4, null);
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return (C6473a) new Gson().m30982a(a, (Class<Object>) C6473a.class);
    }

    /* renamed from: a */
    public final void m22504a(Context context, RandomAccessFile randomAccessFile) {
        C15149k.m377b(context, "context");
        C15149k.m377b(randomAccessFile, "file");
        try {
            FileChannel channel = randomAccessFile.getChannel();
            C15149k.m383a((Object) channel, "file.channel");
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            C6442a.m22561a(f16134a);
            StringBuilder sb = new StringBuilder();
            sb.append("isLoaded : ");
            C15149k.m383a((Object) map, "it");
            sb.append(map.isLoaded());
            sb.append(", size : ");
            sb.append(map.capacity());
            sb.toString();
            C15149k.m383a((Object) map, "fileChannel.map(FileChan…}\")\n                    }");
            C15211b bVar = new C15211b(map);
            if (!bVar.m214c()) {
                bVar = null;
            }
            if (bVar != null) {
                C6474b bVar2 = f16134a;
                String a = bVar.m215b().m178a();
                C15149k.m383a((Object) a, "modelMetadata.description()");
                bVar2.m22503a(context, a);
            }
        } catch (IOException e) {
            C6442a.m22561a(this);
        }
    }

    /* renamed from: a */
    public final void m22503a(Context context, String str) {
        C6442a.m22561a(this);
        String str2 = "metadata = " + str;
        C6488a.f16168a.m22473b(context, TtmlNode.TAG_METADATA, str);
    }
}
