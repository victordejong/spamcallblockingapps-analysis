package com.uservoice.uservoicesdk.a;

import android.content.Context;
import android.content.SharedPreferences;
import com.uservoice.uservoicesdk.model.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static String f4565a = "by.uservoice.com";

    /* renamed from: b  reason: collision with root package name */
    public static String f4566b = "d";
    public static String c = "x";
    private static String d;
    private static Map<String, Object> e;
    private static SharedPreferences f;

    /* renamed from: com.uservoice.uservoicesdk.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/a/a$a.class */
    public enum EnumC0133a {
        VIEW_APP("g"),
        VIEW_FORUM("m"),
        VIEW_TOPIC("c"),
        VIEW_KB("k"),
        VIEW_CHANNEL("o"),
        VIEW_IDEA("i"),
        VIEW_ARTICLE("f"),
        AUTHENTICATE("u"),
        SEARCH_IDEAS("s"),
        SEARCH_ARTICLES("r"),
        VOTE_IDEA("v"),
        VOTE_ARTICLE("z"),
        SUBMIT_TICKET("t"),
        SUBMIT_IDEA("d"),
        SUBSCRIBE_IDEA("b"),
        IDENTIFY("y"),
        COMMENT_IDEA("h");
        
        final String r;

        EnumC0133a(String str) {
            this.r = str;
        }
    }

    public static String a() {
        return d;
    }

    public static void a(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("uv", 0);
        f = sharedPreferences;
        if (sharedPreferences.contains("uvts")) {
            d = f.getString("uvts", null);
        }
        a(EnumC0133a.VIEW_APP, (Map<String, Object>) null);
    }

    public static void a(EnumC0133a aVar) {
        a(aVar, (Map<String, Object>) null);
    }

    public static void a(EnumC0133a aVar, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put("id", Integer.valueOf(i));
        a(aVar, hashMap);
    }

    public static void a(EnumC0133a aVar, String str, List<? extends d> list) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList(list.size());
        for (d dVar : list) {
            arrayList.add(Integer.valueOf(dVar.c()));
        }
        hashMap.put("ids", arrayList);
        hashMap.put("text", str);
        a(aVar, hashMap);
    }

    private static void a(EnumC0133a aVar, Map<String, Object> map) {
        new b(aVar.r, d, e, map).execute(new String[0]);
    }

    public static void a(String str) {
        d = str;
        SharedPreferences.Editor edit = f.edit();
        edit.putString("uvts", str);
        edit.commit();
    }

    public static void a(Map<String, Object> map) {
        e = map;
    }
}
