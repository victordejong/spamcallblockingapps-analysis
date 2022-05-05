package com.vladlee.easyblacklist;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.LruCache;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
/* renamed from: com.vladlee.easyblacklist.bo */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bo.class */
public final class C3303bo {
    /* renamed from: a */
    private static String m251a(C3304bp bpVar, String str) {
        String str2;
        String str3 = str;
        if (bpVar != null) {
            str3 = str;
            if (bpVar.f19373a != null) {
                str3 = str;
                if (bpVar.f19373a.length() > 0) {
                    str3 = bpVar.f19373a;
                }
            }
        }
        try {
            String upperCase = str3.substring(0, 1).toUpperCase();
            str2 = upperCase;
            if (upperCase.equals("+")) {
                str2 = upperCase;
                if (str3.length() > 1) {
                    str2 = str3.substring(0, 2).toUpperCase();
                }
            }
        } catch (Exception e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: a */
    public static void m253a(View view, C3304bp bpVar, String str, LruCache<String, Bitmap> lruCache) {
        if (m250b(view, bpVar, str, lruCache)) {
            view.findViewById(2131296443).setVisibility(8);
            view.findViewById(2131296444).setVisibility(8);
            String a = m251a(bpVar, str);
            if (a != null) {
                TextView textView = (TextView) view.findViewById(2131296593);
                textView.setVisibility(0);
                textView.setText(a);
                return;
            }
            view.findViewById(2131296593).setVisibility(8);
            view.findViewById(2131296443).setVisibility(0);
        }
    }

    /* renamed from: a */
    public static void m252a(View view, C3304bp bpVar, String str, LruCache<String, Bitmap> lruCache, int i) {
        View findViewById = view.findViewById(2131296386);
        if (i == 0) {
            findViewById.setVisibility(0);
            view.findViewById(2131296387).setVisibility(8);
        } else {
            findViewById.setVisibility(8);
            view.findViewById(2131296387).setVisibility(0);
        }
        if (!m250b(view, bpVar, str, lruCache)) {
            return;
        }
        if (i == 0) {
            view.findViewById(2131296443).setVisibility(8);
            view.findViewById(2131296444).setVisibility(8);
            String a = m251a(bpVar, str);
            if (a != null) {
                TextView textView = (TextView) view.findViewById(2131296593);
                textView.setVisibility(0);
                textView.setText(a);
                return;
            }
            view.findViewById(2131296593).setVisibility(8);
            view.findViewById(2131296443).setVisibility(0);
        } else if (i == 1) {
            ((ImageView) view.findViewById(2131296446)).setImageResource(2131230862);
        } else {
            ImageView imageView = (ImageView) view.findViewById(2131296446);
            if (i == 2) {
                imageView.setImageResource(2131230863);
            } else {
                imageView.setImageResource(2131230860);
            }
        }
    }

    /* renamed from: b */
    private static boolean m250b(View view, C3304bp bpVar, String str, LruCache<String, Bitmap> lruCache) {
        Bitmap bitmap;
        boolean z = true;
        if (bpVar != null) {
            z = true;
            if (bpVar.f19374b != null) {
                view.findViewById(2131296593).setVisibility(8);
                view.findViewById(2131296443).setVisibility(8);
                ImageView imageView = (ImageView) view.findViewById(2131296444);
                Bitmap bitmap2 = null;
                if (lruCache != null) {
                    try {
                        bitmap = lruCache.get(str);
                    } catch (IOException e) {
                        e.printStackTrace();
                        imageView.setVisibility(8);
                        z = true;
                    }
                } else {
                    bitmap = null;
                }
                Bitmap bitmap3 = bitmap;
                if (bitmap == null) {
                    try {
                        bitmap2 = MediaStore.Images.Media.getBitmap(view.getContext().getContentResolver(), Uri.parse(bpVar.f19374b));
                    } catch (NullPointerException e2) {
                        FirebaseAnalytics.getInstance(view.getContext()).m646a("getBitmap_NullPointerException", new Bundle());
                    }
                    bitmap3 = bitmap2;
                    if (bitmap2 != null) {
                        bitmap3 = bitmap2;
                        if (lruCache != null) {
                            lruCache.put(str, bitmap2);
                            bitmap3 = bitmap2;
                        }
                    }
                }
                z = true;
                if (bitmap3 != null) {
                    imageView.setImageDrawable(new C3394ef(bitmap3));
                    imageView.setVisibility(0);
                    z = false;
                }
            }
        }
        return z;
    }
}
