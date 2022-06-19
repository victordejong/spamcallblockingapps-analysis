package p193e.p194a.p982k0.p983a;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.C3624R;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.z.c.l;
/* renamed from: e.a.k0.a.i */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/i.class */
public final class C16284i implements AbstractC16283h {

    /* renamed from: a */
    public final Context f45865a;

    @Inject
    public C16284i(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f45865a = context;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16283h
    /* renamed from: a */
    public Intent mo17632a(String str) {
        Intent intent;
        l.e(str, "path");
        Intent mo17631b = mo17631b(str);
        if (mo17631b != null) {
            mo17631b.setAction("android.intent.action.SEND");
            mo17631b.putExtra("android.intent.extra.STREAM", mo17631b.getData());
            intent = Intent.createChooser(mo17631b, this.f45865a.getString(C3624R.string.StrChooseApp));
            l.d(intent, "this");
            intent.setFlags(268435456);
        } else {
            intent = null;
        }
        return intent;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16283h
    /* renamed from: b */
    public Intent mo17631b(String str) {
        Intent intent;
        l.e(str, "path");
        Uri m17628e = m17628e(str);
        if (m17628e != null) {
            intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setDataAndType(m17628e, "audio/*");
            intent.addFlags(1);
        } else {
            intent = null;
        }
        return intent;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16283h
    /* renamed from: c */
    public boolean mo17630c(Intent intent) {
        l.e(intent, "intent");
        try {
            this.f45865a.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException | SecurityException e) {
            return false;
        }
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16283h
    /* renamed from: d */
    public Intent mo17629d(List<String> list) {
        l.e(list, "pathList");
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            Uri m17628e = m17628e(str);
            if (m17628e != null) {
                arrayList.add(m17628e);
            }
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setType("audio/*");
        intent.addFlags(1);
        intent.setAction("android.intent.action.SEND_MULTIPLE");
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", new ArrayList<>(arrayList));
        Intent createChooser = Intent.createChooser(intent, this.f45865a.getString(C3624R.string.StrChooseApp));
        l.d(createChooser, "this");
        createChooser.setFlags(268435456);
        return createChooser;
    }

    /* renamed from: e */
    public final Uri m17628e(String str) {
        Uri uri;
        Uri m42989b;
        try {
        } catch (Exception e) {
            uri = null;
        }
        if (!C17891a1.C17902k.m15692B0(str)) {
            File file = new File(str);
            File file2 = file.exists() ? file : null;
            uri = null;
            if (file2 != null) {
                Context context = this.f45865a;
                m42989b = FileProvider.m42989b(context, C8582g0.m28332I(context), file2);
            }
            return uri;
        }
        Uri parse = Uri.parse(str);
        InputStream openInputStream = this.f45865a.getContentResolver().openInputStream(parse);
        m42989b = parse;
        if (openInputStream != null) {
            openInputStream.close();
            m42989b = parse;
        }
        uri = m42989b;
        return uri;
    }
}
