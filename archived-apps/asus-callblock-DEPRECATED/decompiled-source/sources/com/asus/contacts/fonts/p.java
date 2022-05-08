package com.asus.contacts.fonts;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Vector;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    Context f2674a;

    /* renamed from: b  reason: collision with root package name */
    public final List<n> f2675b = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/p$a.class */
    public final class a implements Comparator<n> {
        public a() {
        }

        @Override // java.util.Comparator
        public final /* synthetic */ int compare(n nVar, n nVar2) {
            return nVar.f2670a.compareTo(nVar2.f2670a);
        }
    }

    public p(Context context) {
        this.f2674a = context;
    }

    private String a(AssetManager assetManager, String str, String str2) {
        String a2 = str2.substring(0, str2.length() - 4);
        if (!TextUtils.isEmpty(str)) {
            str2 = str + "/" + str2;
        }
        a2 = new m(this.f2674a).a(assetManager, str2, null);
        if (a2 == null) {
        }
        return a2;
    }

    private void a(AssetManager assetManager, String str, InputStream inputStream, String str2) {
        try {
            XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
            q qVar = new q();
            xMLReader.setContentHandler(qVar);
            xMLReader.parse(new InputSource(inputStream));
            n nVar = qVar.f2677a;
            nVar.c = str;
            nVar.f2671b = str2;
            nVar.f2670a = a(assetManager, "fonts", str.replace(".xml", ".ttf"));
            this.f2675b.add(nVar);
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f9 -> B:27:0x00b9). Please submit an issue!!! */
    private boolean a(String str) {
        boolean z;
        AssetManager assetManager;
        InputStream inputStream;
        Throwable th;
        try {
            ContentResolver contentResolver = this.f2674a.getContentResolver();
            try {
                String type = contentResolver.getType(Uri.parse("content://" + str + "/fonts"));
                String[] split = TextUtils.isEmpty(type) ? type.split("\n") : null;
                z = false;
                if (split != null) {
                    if (split.length == 0) {
                        z = false;
                    } else {
                        PackageManager packageManager = this.f2674a.getPackageManager();
                        try {
                            assetManager = packageManager.getResourcesForApplication(packageManager.getApplicationInfo(str, 128)).getAssets();
                        } catch (PackageManager.NameNotFoundException e) {
                            e.printStackTrace();
                            assetManager = null;
                        }
                        for (int i = 0; i < split.length; i++) {
                            try {
                                inputStream = contentResolver.openInputStream(Uri.parse("content://" + str + "/xml/" + split[i]));
                                try {
                                    a(assetManager, split[i], inputStream, str);
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e2) {
                                        }
                                    }
                                } catch (Exception e3) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e4) {
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException e5) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Exception e6) {
                                inputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = null;
                            }
                        }
                        z = true;
                    }
                }
            } catch (Exception e7) {
                z = false;
            }
        } catch (Exception e8) {
            z = false;
        }
        return z;
    }

    public final void a(Vector<String> vector, Vector<String> vector2, Vector<String> vector3) {
        Collections.sort(this.f2675b, new a());
        for (int i = 0; i < this.f2675b.size(); i++) {
            n nVar = this.f2675b.get(i);
            String str = nVar.d.isEmpty() ? null : nVar.f2670a;
            if (str != null) {
                vector.add(str);
                vector2.add(this.f2675b.get(i).c);
                vector3.add(this.f2675b.get(i).f2671b);
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ab -> B:21:0x007e). Please submit an issue!!! */
    public final boolean a(AssetManager assetManager, String str) {
        boolean z = false;
        try {
            String[] list = assetManager.list("xml");
            if (list.length == 0) {
                z = a(str);
            } else {
                for (int i = 0; i < list.length; i++) {
                    InputStream inputStream = null;
                    InputStream inputStream2 = null;
                    try {
                        InputStream open = assetManager.open("xml/" + list[i]);
                        a(assetManager, list[i], open, str);
                        if (open != null) {
                            try {
                                open.close();
                            } catch (IOException e) {
                            }
                        }
                    } catch (Exception e2) {
                        if (0 != 0) {
                            try {
                                inputStream2.close();
                            } catch (IOException e3) {
                            }
                        }
                    } catch (Throwable th) {
                        if (0 != 0) {
                            try {
                                inputStream.close();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                }
                z = true;
            }
        } catch (Exception e5) {
        }
        return z;
    }

    public final boolean b(AssetManager assetManager, String str) {
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            String str2 = new String[]{BuildConfig.FLAVOR, "font", "fonts"}[i];
            try {
                String[] list = assetManager.list(str2);
                int length = list.length;
                int i2 = 0;
                while (true) {
                    z = z;
                    if (i2 < length) {
                        String str3 = list[i2];
                        if (str3.toLowerCase().endsWith(".ttf")) {
                            String a2 = a(assetManager, str2, str3);
                            if (!TextUtils.isEmpty(str2)) {
                                str3 = str2 + "/" + str3;
                            }
                            n nVar = new n();
                            nVar.f2670a = a2;
                            nVar.c = str3;
                            nVar.f2671b = str;
                            o oVar = new o();
                            oVar.f2672a = str3;
                            nVar.d.add(oVar);
                            this.f2675b.add(nVar);
                            z = true;
                        }
                        i2++;
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
                z = z;
            }
        }
        return z;
    }
}
