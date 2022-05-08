package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.i.d;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.f;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/b.class */
public final class b implements f<Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    private Bitmap.CompressFormat f3599a;

    /* renamed from: b  reason: collision with root package name */
    private int f3600b;

    public b() {
        this((byte) 0);
    }

    private b(byte b2) {
        this.f3599a = null;
        this.f3600b = 90;
    }

    @Override // com.bumptech.glide.load.b
    public final String a() {
        return "BitmapEncoder.com.bumptech.glide.load.resource.bitmap";
    }

    @Override // com.bumptech.glide.load.b
    public final /* synthetic */ boolean a(Object obj, OutputStream outputStream) {
        Bitmap bitmap = (Bitmap) ((k) obj).a();
        long a2 = d.a();
        Bitmap.CompressFormat compressFormat = this.f3599a != null ? this.f3599a : bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        bitmap.compress(compressFormat, this.f3600b, outputStream);
        if (!Log.isLoggable("BitmapEncoder", 2)) {
            return true;
        }
        Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + h.a(bitmap) + " in " + d.a(a2));
        return true;
    }
}
