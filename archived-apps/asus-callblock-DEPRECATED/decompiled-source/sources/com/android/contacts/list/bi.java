package com.android.contacts.list;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextPaint;
import android.text.TextUtils;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.vcard.VCardConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/bi.class */
public final class bi {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f1812b;
    private static final String[] c;
    private static final String[] d;

    /* renamed from: a  reason: collision with root package name */
    int f1813a = 0;
    private final c e;
    private final Context f;
    private int g;
    private final int h;
    private final int i;
    private final int j;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bi$a.class */
    private final class a extends b {
        public a(Uri uri) {
            super(uri);
        }

        @Override // com.android.contacts.list.bi.b
        protected final void a() {
            Cursor query = bi.this.f.getContentResolver().query(this.f1815b, bi.f1812b, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        this.d = query.getString(0);
                        this.f = query.getLong(1);
                        this.g = PhoneCapabilityTester.IsAsusDevice() ? query.getInt(2) : 0;
                    }
                } finally {
                    query.close();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r8) {
            bi.a(bi.this, this.f1815b, this.c, this.d, this.e, this.g);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bi$b.class */
    private abstract class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        protected Uri f1815b;
        protected String c;
        protected String d;
        protected byte[] e;
        protected long f;
        protected int g;

        public b(Uri uri) {
            this.f1815b = uri;
        }

        private Void b() {
            Cursor query;
            this.c = bi.this.f.getContentResolver().getType(this.f1815b);
            a();
            if (this.f == 0 || (query = bi.this.f.getContentResolver().query(ContactsContract.Data.CONTENT_URI, bi.d, "_id=?", new String[]{String.valueOf(this.f)}, null)) == null) {
                return null;
            }
            try {
                if (query.moveToFirst()) {
                    this.e = query.getBlob(0);
                }
                return null;
            } finally {
                query.close();
            }
        }

        protected abstract void a();

        @Override // android.os.AsyncTask
        protected /* synthetic */ Void doInBackground(Void[] voidArr) {
            return b();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bi$c.class */
    public interface c {
        void onShortcutIntentCreated(Uri uri, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bi$d.class */
    public final class d extends b {
        private final String i;
        private String j;
        private int k;
        private String l;
        private int m;
        private long n;
        private long o;
        private long p;

        public d(Uri uri, String str) {
            super(uri);
            this.i = str;
        }

        @Override // com.android.contacts.list.bi.b
        protected final void a() {
            Cursor query = bi.this.f.getContentResolver().query(this.f1815b, bi.c, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        this.d = query.getString(0);
                        this.f = query.getLong(1);
                        this.j = query.getString(2);
                        this.k = query.getInt(3);
                        this.l = query.getString(4);
                        this.n = query.getLong(5);
                        this.m = PhoneCapabilityTester.IsAsusDevice() ? query.getInt(8) : e.a(this.n, bi.this.f);
                        this.o = query.getLong(6);
                        this.p = query.getLong(7);
                    }
                } finally {
                    query.close();
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r17) {
            bi.a(bi.this, this.f1815b, this.d, this.e, this.j, this.k, this.l, this.i, this.m, this.n, this.o, this.p);
        }
    }

    static {
        f1812b = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"display_name", "photo_id", SpeedDialList.Columns.ISSIM} : new String[]{"display_name", "photo_id"};
        c = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"display_name", "photo_id", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "raw_contact_id", "_id", SpeedDialList.Columns.ISSIM} : new String[]{"display_name", "photo_id", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, ContactDetailCallogActivity.EXTRA_CONTACT_ID, "raw_contact_id", "_id"};
        d = new String[]{"data15"};
    }

    public bi(Context context, c cVar) {
        this.f = context;
        this.e = cVar;
        Resources resources = context.getResources();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.g = resources.getDimensionPixelSize(2131100291);
        if (this.g == 0) {
            this.g = activityManager.getLauncherLargeIconSize();
        }
        this.h = activityManager.getLauncherLargeIconDensity();
        this.i = resources.getDimensionPixelOffset(2131100290);
        this.j = resources.getColor(2131034405);
    }

    private Bitmap a(Bitmap bitmap, int i, String str, int i2) {
        Resources resources = this.f.getResources();
        float f = resources.getDisplayMetrics().density;
        Bitmap bitmap2 = ((BitmapDrawable) resources.getDrawableForDensity(i2, this.h)).getBitmap();
        Bitmap createBitmap = Bitmap.createBitmap(this.g, this.g, Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setFilterBitmap(true);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        Rect rect2 = new Rect(0, 0, this.g, this.g);
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        a(canvas, rect2);
        CharSequence typeLabel = ContactsContract.CommonDataKinds.Phone.getTypeLabel(resources, i, str);
        CharSequence charSequence = typeLabel;
        if (i == 0) {
            charSequence = typeLabel;
            if (TextUtils.isEmpty(str)) {
                charSequence = resources.getText(2131755945);
            }
        }
        if (charSequence != null) {
            TextPaint textPaint = new TextPaint(257);
            textPaint.setTextSize(resources.getDimension(2131100293));
            textPaint.setColor(resources.getColor(2131034422));
            textPaint.setShadowLayer(4.0f, 0.0f, 2.0f, resources.getColor(2131034423));
            Paint.FontMetricsInt fontMetricsInt = textPaint.getFontMetricsInt();
            Paint paint2 = new Paint();
            paint2.setColor(this.j);
            paint2.setStyle(Paint.Style.FILL);
            int dimensionPixelOffset = resources.getDimensionPixelOffset(2131100292);
            rect2.set(this.i + 0, this.g - ((fontMetricsInt.descent - fontMetricsInt.ascent) + (dimensionPixelOffset * 2)), this.g - this.i, this.g - this.i);
            canvas.drawRect(rect2, paint2);
            CharSequence ellipsize = TextUtils.ellipsize(charSequence, textPaint, this.g - (this.i * 2.0f), TextUtils.TruncateAt.END);
            canvas.drawText(ellipsize, 0, ellipsize.length(), (this.g - textPaint.measureText(ellipsize, 0, ellipsize.length())) / 2.0f, (this.g - fontMetricsInt.descent) - dimensionPixelOffset, textPaint);
        }
        rect.set(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
        int width = createBitmap.getWidth();
        rect2.set(width - ((int) (20.0f * f)), -1, width, (int) (19.0f * f));
        rect2.offset(-this.i, this.i);
        canvas.drawBitmap(bitmap2, rect, rect2, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    private Bitmap a(byte[] bArr, int i) {
        Bitmap bitmap = null;
        if (bArr != null) {
            bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, null);
        } else if (this.f1813a != 1) {
            bitmap = ((BitmapDrawable) this.f.getResources().getDrawableForDensity((!com.android.contacts.simcardmanage.b.a(this.f) || i <= 0) ? i > 0 ? 2131165377 : 2131165278 : i == 2 ? 2131165379 : 2131165378, this.h)).getBitmap();
        }
        return bitmap;
    }

    private void a(Canvas canvas, Rect rect) {
        Paint paint = new Paint();
        paint.setColor(this.j);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.i * 2);
        canvas.drawRect(rect, paint);
    }

    static /* synthetic */ void a(bi biVar, Uri uri, String str, String str2, byte[] bArr, int i) {
        Bitmap a2 = biVar.a(bArr, i);
        Intent intent = new Intent("android.provider.action.QUICK_CONTACT");
        intent.addFlags(268533760);
        intent.putExtra("com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION", true);
        intent.setDataAndType(uri, str);
        intent.putExtra("android.provider.extra.EXCLUDE_MIMES", (String[]) null);
        Bitmap createBitmap = Bitmap.createBitmap(biVar.g, biVar.g, Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setDither(true);
        paint.setFilterBitmap(true);
        Rect rect = new Rect(0, 0, a2.getWidth(), a2.getHeight());
        Rect rect2 = new Rect(0, 0, biVar.g, biVar.g);
        canvas.drawBitmap(a2, rect, rect2, paint);
        biVar.a(canvas, rect2);
        Drawable drawableForDensity = biVar.f.getResources().getDrawableForDensity(2131165746, biVar.h);
        drawableForDensity.setBounds(rect2);
        drawableForDensity.draw(canvas);
        canvas.setBitmap(null);
        Intent intent2 = new Intent();
        intent2.putExtra("android.intent.extra.shortcut.ICON", createBitmap);
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        if (TextUtils.isEmpty(str2)) {
            intent2.putExtra("android.intent.extra.shortcut.NAME", biVar.f.getResources().getString(2131755855));
        } else {
            intent2.putExtra("android.intent.extra.shortcut.NAME", str2);
        }
        biVar.e.onShortcutIntentCreated(uri, intent2);
    }

    static /* synthetic */ void a(bi biVar, Uri uri, String str, byte[] bArr, String str2, int i, String str3, String str4, int i2, long j, long j2, long j3) {
        Uri fromParts;
        Bitmap a2;
        Bitmap a3 = biVar.a(bArr, i2);
        if (biVar.f1813a == 1) {
            Intent intent = new Intent();
            intent.putExtra("android.intent.extra.shortcut.ICON", a3);
            intent.putExtra("android.intent.extra.shortcut.NAME", str);
            intent.putExtra("android.intent.extra.PHONE_NUMBER", str2);
            intent.putExtra("EXTRA_RAW_CONTACT_ID", j2);
            intent.putExtra("EXTRA_PHONE_DATA_ID", j3);
            biVar.e.onShortcutIntentCreated(uri, intent);
            return;
        }
        if ("android.intent.action.CALL".equals(str4)) {
            fromParts = Uri.fromParts(Constants.SCHEME_TEL, str2, null);
            a2 = biVar.a(a3, i, str3, 2131165744);
        } else {
            fromParts = Uri.fromParts(Constants.SCHEME_SMSTO, str2, null);
            a2 = biVar.a(a3, i, str3, 2131165745);
        }
        Intent intent2 = new Intent(str4, fromParts);
        intent2.setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
        intent2.putExtra("com.android.phone.AsusDialContactId", j);
        Intent intent3 = new Intent();
        intent3.putExtra("android.intent.extra.shortcut.ICON", a2);
        intent3.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        intent3.putExtra("android.intent.extra.shortcut.NAME", str);
        intent3.putExtra("com.android.phone.FromAsusDialer", true);
        biVar.e.onShortcutIntentCreated(uri, intent3);
    }

    public final void a(Uri uri) {
        new a(uri).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
