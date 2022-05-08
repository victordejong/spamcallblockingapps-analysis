package p459j.p460a.p582w0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.NumberInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p538m0.C13022e;
import p459j.p460a.p538m0.C13023f;
/* renamed from: j.a.w0.u3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/u3.class */
public class C14189u3 {

    /* renamed from: f */
    public static C14189u3 f31713f;

    /* renamed from: a */
    public final HashMap<String, String> f31714a = new HashMap<>();

    /* renamed from: b */
    public final HashMap<String, String> f31715b = new HashMap<>();

    /* renamed from: c */
    public LinkedHashMap<String, Integer> f31716c;

    /* renamed from: d */
    public LinkedHashMap<Integer, String> f31717d;

    /* renamed from: e */
    public JSONObject f31718e;

    public C14189u3() {
        this.f31714a.put("AP", "Andhra Pradesh");
        this.f31714a.put("AS", "Assam");
        this.f31714a.put("BR", "Bihar");
        this.f31714a.put("CH", "Tami Nadu");
        this.f31714a.put("DL", "Dehi Metro");
        this.f31714a.put("GJ", "Gujarat");
        this.f31714a.put("HP", "Himacha Pradesh");
        this.f31714a.put("HR", "Haryana");
        this.f31714a.put("JK", "Jammu & Kashmir");
        this.f31714a.put("KL", "Kerala");
        this.f31714a.put("KA", "Karnataka");
        this.f31714a.put("KO", "Kolkata Metro");
        this.f31714a.put("MH", "Maharashtra");
        this.f31714a.put("MP", "Madhya Pradesh");
        this.f31714a.put("MU", "Mumbai Metro");
        this.f31714a.put("NE", "Northeast");
        this.f31714a.put("OR", "Orissa");
        this.f31714a.put("PB", "Punjab");
        this.f31714a.put("RJ", "Rajasthan");
        this.f31714a.put("TN", "Tami Nadu");
        this.f31714a.put("UE", "Uttar Pradesh (East)");
        this.f31714a.put("UW", "Uttar Pradesh (West)");
        this.f31714a.put("WB", "West Bengal");
        this.f31715b.put("AC", "Aircel");
        this.f31715b.put("AT", "Airtel");
        this.f31715b.put("CC", "BSNL CDMA");
        this.f31715b.put("CG", "BSNL GSM");
        this.f31715b.put("DC", "Videocon");
        this.f31715b.put("DP", "MTNL");
        this.f31715b.put("ET", "Cheers Mobile");
        this.f31715b.put("ID", "Idea");
        this.f31715b.put("LM", "Loop Mobile");
        this.f31715b.put("MT", "MTS");
        this.f31715b.put("PG", "PING CDMA");
        this.f31715b.put("RC", "Reliance CDMA");
        this.f31715b.put("RG", "Reliance GSM");
        this.f31715b.put("SP", "Spice Telecom");
        this.f31715b.put("ST", "S Tel");
        this.f31715b.put("T24", "T24");
        this.f31715b.put("TD", "Tata DoCoMo");
        this.f31715b.put("TI", "Tata Indicom");
        this.f31715b.put("UN", "Uninor");
        this.f31715b.put("VC", "Virgin Mobile CDMA");
        this.f31715b.put("VG", "Virgin Mobile GSM");
        this.f31715b.put("VF", "Vodafone");
        this.f31715b.put("VD", "Videocon");
    }

    /* renamed from: c */
    public static C14189u3 m2264c() {
        if (f31713f == null) {
            f31713f = new C14189u3();
        }
        return f31713f;
    }

    @Nullable
    /* renamed from: a */
    public String m2270a(String str, NumberInfo numberInfo) {
        Context o = MyApplication.m29013o();
        if (C14017g4.m2833C()) {
            try {
                PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
                String l = C14108o4.m2474l(str);
                Phonenumber.PhoneNumber parse = instance.parse(l, C14017g4.m2810n().toUpperCase(Locale.US));
                if (l.startsWith("+91") && PhoneNumberUtil.PhoneNumberType.MOBILE.name().equals(instance.getNumberType(parse).name())) {
                    if (this.f31718e == null) {
                        this.f31718e = m2273a(o);
                    }
                    JSONObject optJSONObject = this.f31718e.optJSONObject(C14108o4.m2473m(str).substring(1, 5));
                    if (optJSONObject != null) {
                        return this.f31714a.get(optJSONObject.getString("circle"));
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        if (numberInfo == null) {
            return null;
        }
        if (numberInfo.m28290v0()) {
            return "";
        }
        if (!TextUtils.isEmpty(numberInfo.m28301q())) {
            return numberInfo.m28301q();
        }
        String a = numberInfo.m28356a(C14217x3.m2151d(o));
        if ("中華人民共和國香港特別行政區".equals(a)) {
            numberInfo.m28334e("香港");
        } else if ("Hong Kong SAR China".equals(a)) {
            numberInfo.m28334e("Hong Kong");
        } else {
            numberInfo.m28334e(a);
        }
        return numberInfo.m28301q();
    }

    /* renamed from: a */
    public String m2269a(String str, String str2) {
        Context o = MyApplication.m29013o();
        String b = !C14217x3.m2160b(str) ? m2265b(C14108o4.m2474l(str), str2) : str2;
        if (!C14217x3.m2160b(b)) {
            return b;
        }
        if (C14017g4.m2833C()) {
            if (!str2.equals("")) {
                return str2;
            }
            try {
                PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
                String l = C14108o4.m2474l(str);
                Phonenumber.PhoneNumber parse = instance.parse(C14108o4.m2474l(str), C14017g4.m2810n().toUpperCase(Locale.US));
                if (l.startsWith("+91") && PhoneNumberUtil.PhoneNumberType.MOBILE.name().equals(instance.getNumberType(parse).name())) {
                    if (this.f31718e == null) {
                        this.f31718e = m2273a(o);
                    }
                    JSONObject optJSONObject = this.f31718e.optJSONObject(C14108o4.m2473m(str).substring(1, 5));
                    if (optJSONObject != null) {
                        return this.f31715b.get(optJSONObject.getString("op"));
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return b;
    }

    /* renamed from: a */
    public LinkedHashMap<Integer, String> m2274a() {
        LinkedHashMap<Integer, String> linkedHashMap;
        synchronized (this) {
            if (this.f31717d == null) {
                this.f31717d = new LinkedHashMap<>();
                Cursor query = MyApplication.m29013o().getContentResolver().query(C13022e.f29449a, null, "_region = ?", new String[]{C14017g4.m2810n().toUpperCase(Locale.US)}, null);
                if (query != null) {
                    int count = query.getCount();
                    for (int i = 0; i < count; i++) {
                        query.moveToPosition(i);
                        this.f31717d.put(Integer.valueOf(query.getInt(query.getColumnIndex("_report_id"))), query.getString(query.getColumnIndex("_name")));
                    }
                    query.close();
                }
            }
            linkedHashMap = this.f31717d;
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    public final JSONObject m2273a(Context context) throws JSONException, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getAssets().open("india_telecom.json")));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return new JSONObject(sb.toString());
            }
            sb.append(readLine);
            sb.append("\n");
        }
    }

    /* renamed from: a */
    public void m2271a(String str, int i) {
        Context o = MyApplication.m29013o();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_e164", str);
        contentValues.put("_report_id", Integer.valueOf(i));
        if (o.getContentResolver().update(C13023f.f29450a, contentValues, "_e164 = ? ", new String[]{str}) == 0) {
            o.getContentResolver().insert(C13023f.f29450a, contentValues);
        }
    }

    /* renamed from: a */
    public void m2268a(JSONArray jSONArray) {
        synchronized (this) {
            this.f31716c = null;
            this.f31717d = null;
            Context o = MyApplication.m29013o();
            String upperCase = C14017g4.m2810n().toUpperCase(Locale.US);
            o.getContentResolver().delete(C13022e.f29449a, null, null);
            try {
                ContentValues[] contentValuesArr = new ContentValues[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    contentValuesArr[i] = new ContentValues();
                    contentValuesArr[i].put("_region", upperCase);
                    contentValuesArr[i].put("_name", jSONArray.getJSONObject(i).getString("name"));
                    contentValuesArr[i].put("_report_id", Integer.valueOf(jSONArray.getJSONObject(i).getInt("id")));
                }
                o.getContentResolver().bulkInsert(C13022e.f29449a, contentValuesArr);
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public boolean m2272a(String str) {
        Context o = MyApplication.m29013o();
        if (str == null) {
            return m2266b(o);
        }
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber parse = instance.parse(str, C14017g4.m2810n().toUpperCase(Locale.US));
            if (parse == null) {
                return false;
            }
            if ((PhoneNumberUtil.PhoneNumberType.MOBILE.name().equals(instance.getNumberType(parse).name()) || PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE.name().equals(instance.getNumberType(parse).name())) && parse.getCountryCode() == instance.getCountryCodeForRegion(C14017g4.m2810n().toUpperCase(Locale.US))) {
                return m2266b(o);
            }
            return false;
        } catch (NumberParseException e) {
            return false;
        }
    }

    /* renamed from: b */
    public final String m2265b(String str, String str2) {
        String str3 = str2;
        try {
            Cursor query = MyApplication.m29013o().getContentResolver().query(C13023f.f29450a, null, "_e164 = ?", new String[]{str}, null);
            String str4 = str2;
            if (query != null) {
                str4 = str2;
                if (query.moveToFirst()) {
                    String str5 = m2274a().get(Integer.valueOf(query.getInt(query.getColumnIndex("_report_id"))));
                    str4 = str2;
                    if (!TextUtils.isEmpty(str5)) {
                        str4 = str5;
                    }
                }
            }
            str3 = str4;
            if (query != null) {
                str3 = str4;
                query.close();
                str3 = str4;
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        return str3;
    }

    /* renamed from: b */
    public LinkedHashMap<String, Integer> m2267b() {
        LinkedHashMap<String, Integer> linkedHashMap;
        synchronized (this) {
            if (this.f31716c == null) {
                this.f31716c = new LinkedHashMap<>();
                Cursor query = MyApplication.m29013o().getContentResolver().query(C13022e.f29449a, null, "_region = ?", new String[]{C14017g4.m2810n().toUpperCase(Locale.US)}, null);
                if (query != null) {
                    int count = query.getCount();
                    for (int i = 0; i < count; i++) {
                        query.moveToPosition(i);
                        this.f31716c.put(query.getString(query.getColumnIndex("_name")), Integer.valueOf(query.getInt(query.getColumnIndex("_report_id"))));
                    }
                    query.close();
                }
            }
            linkedHashMap = this.f31716c;
        }
        return linkedHashMap;
    }

    /* renamed from: b */
    public final boolean m2266b(Context context) {
        return m2267b().size() > 0;
    }
}
