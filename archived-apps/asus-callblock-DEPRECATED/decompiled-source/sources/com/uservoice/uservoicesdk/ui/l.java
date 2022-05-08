package com.uservoice.uservoicesdk.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.i;
import android.util.TypedValue;
import android.view.View;
import com.android.vcard.VCardConfig;
import com.asus.updatesdk.cdn.CdnUtils;
import com.uservoice.uservoicesdk.activity.ArticleActivity;
import com.uservoice.uservoicesdk.activity.TopicActivity;
import com.uservoice.uservoicesdk.e.f;
import com.uservoice.uservoicesdk.model.Article;
import com.uservoice.uservoicesdk.model.Suggestion;
import com.uservoice.uservoicesdk.model.Topic;
import com.uservoice.uservoicesdk.model.d;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/l.class */
public final class l {
    @SuppressLint({"DefaultLocale"})
    public static String a(View view, int i, int i2) {
        return String.format("%,d %s", Integer.valueOf(i2), view.getContext().getResources().getQuantityString(i, i2));
    }

    public static void a(Activity activity) {
        if (activity.getResources().getIdentifier("windowTranslucentStatus", "attr", "android") != 0) {
            activity.getWindow().setFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM, VCardConfig.FLAG_APPEND_TYPE_PARAM);
        }
    }

    public static void a(i iVar, d dVar) {
        if (dVar instanceof Article) {
            Intent intent = new Intent(iVar, ArticleActivity.class);
            ArrayList arrayList = new ArrayList();
            arrayList.add((Article) dVar);
            intent.putExtra(Article.class.getName(), arrayList);
            intent.putExtra("position", 0);
            iVar.startActivity(intent);
        } else if (dVar instanceof Suggestion) {
            f fVar = new f();
            Bundle bundle = new Bundle(2);
            bundle.putParcelable("suggestion", (Suggestion) dVar);
            bundle.putString("deflecting_type", null);
            fVar.setArguments(bundle);
            fVar.a(iVar.getSupportFragmentManager(), "SuggestionDialogFragment");
        } else if (dVar instanceof Topic) {
            Intent intent2 = new Intent(iVar, TopicActivity.class);
            intent2.putExtra(CdnUtils.NODE_TOPIC, (Topic) dVar);
            iVar.startActivity(intent2);
        }
    }

    public static boolean a(int i) {
        return 255 - Color.red(i) < 30 && 255 - Color.green(i) < 30 && 255 - Color.blue(i) < 30;
    }

    public static boolean a(Context context) {
        boolean z = true;
        TypedValue typedValue = new TypedValue();
        float[] fArr = new float[3];
        context.getTheme().resolveAttribute(16842806, typedValue, true);
        Color.colorToHSV(context.getResources().getColor(typedValue.resourceId), fArr);
        if (fArr[2] <= 0.5f) {
            z = false;
        }
        return z;
    }
}
