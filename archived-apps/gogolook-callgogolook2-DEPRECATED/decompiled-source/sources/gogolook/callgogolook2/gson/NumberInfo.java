package gogolook.callgogolook2.gson;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import androidx.media2.exoplayer.external.upstream.DefaultHttpDataSource;
import com.gogolook.whoscallsdk.core.num.data.Ask;
import com.gogolook.whoscallsdk.core.num.data.Images;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import com.gogolook.whoscallsdk.core.num.data.Stats;
import com.google.android.gms.maps.model.LatLng;
import com.google.gson.Gson;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.RowInfo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p459j.p460a.p461a0.EnumC11085n;
import p459j.p460a.p536l0.C13008c;
import p459j.p460a.p561r.p562a.AbstractC13389a;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14978j;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo.class */
public class NumberInfo {
    public static final String CLOUD_FRONT_HIT_VALUE = "cf-hit";
    public static final long[] HOURJ_ARRAY = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, DefaultHttpDataSource.MAX_BYTES_TO_DRAIN, 4096, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND, 16384, 32768, 65536, 131072, 262144, 524288, PsExtractor.MAX_SEARCH_LENGTH, CoroutineScheduler.PARKED_VERSION_INC, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, 2147483648L, AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L};
    public static final String KEY_DATA_SOURCE = "data_source";
    public static final String KEY_NAME_SOURCE = "name_source";
    public static final String VALUE_DATA_SOURCE_CF = "cf";
    public NumInfo sdkNumInfo;
    @Deprecated
    public transient EnumC11085n status;
    public UsefulInfoType usefulInfoType;
    public Whoscall whoscall;
    public ErrorReason error_reason = null;
    public boolean mIsSuspicious = false;
    public InfoSource info_source = InfoSource.NONE;

    /* renamed from: gogolook.callgogolook2.gson.NumberInfo$1 */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$1.class */
    public static /* synthetic */ class C44781 {
        public static final /* synthetic */ int[] $SwitchMap$gogolook$callgogolook2$loader$Status = new int[EnumC11085n.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$gogolook$callgogolook2$loader$Status[EnumC11085n.FINISH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$gogolook$callgogolook2$loader$Status[EnumC11085n.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$gogolook$callgogolook2$loader$Status[EnumC11085n.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$CloudFrontType.class */
    public enum CloudFrontType {
        HIT,
        HAS_CF_HEADER_BUT_NO_HIT,
        NO_CF_HEADER
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$DetailDataImp.class */
    public static class DetailDataImp implements AbstractC13389a {
        @Nullable
        public String mE164;
        @Nullable
        public String mNumber;
        @Nullable
        public NumberInfo mNumberInfo;
        @Nullable
        public RowInfo mRowInfo;

        public DetailDataImp(String str, String str2, RowInfo rowInfo, NumberInfo numberInfo) {
            this.mNumber = str;
            this.mE164 = str2;
            this.mNumberInfo = numberInfo;
            this.mRowInfo = rowInfo;
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        /* renamed from: a */
        public boolean mo4087a() {
            NumberInfo numberInfo = this.mNumberInfo;
            return numberInfo != null && numberInfo.m28329f0();
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        /* renamed from: b */
        public String mo4086b() {
            NumberInfo numberInfo = this.mNumberInfo;
            return numberInfo != null ? numberInfo.m28383M() : null;
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        /* renamed from: c */
        public RowInfo.Primary.Type mo4085c() {
            RowInfo rowInfo = this.mRowInfo;
            return (rowInfo == null || rowInfo.m28224h() == null) ? null : this.mRowInfo.m28224h().type;
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        /* renamed from: d */
        public String mo4084d() {
            return this.mE164;
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        /* renamed from: e */
        public boolean mo4083e() {
            NumberInfo numberInfo = this.mNumberInfo;
            return numberInfo != null && numberInfo.m28312k0();
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        public String getName() {
            NumberInfo numberInfo = this.mNumberInfo;
            return (numberInfo == null || numberInfo.sdkNumInfo == null) ? null : this.mNumberInfo.sdkNumInfo.name;
        }

        @Override // p459j.p460a.p561r.p562a.AbstractC13389a
        public String getNumber() {
            return this.mNumber;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$ErrorReason.class */
    public enum ErrorReason {
        NO_NETWORK,
        SERVER_ERROR,
        SERVER_BUSY,
        NETWORK_RESTRICTED,
        TIMEOUT
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$InfoSource.class */
    public enum InfoSource {
        NONE("none"),
        OFFLINE_DB("common_db"),
        PERSONAL_DB("personal_db"),
        DB_CACHE("db_cache"),
        MEMORY_CACHE("memory_cache"),
        SERVER("server");
        
        public String key;

        InfoSource(String str) {
            this.key = str;
        }

        /* renamed from: a */
        public String m28282a() {
            return this.key;
        }

        /* renamed from: b */
        public boolean m28281b() {
            return (this == NONE || this == SERVER) ? false : true;
        }

        /* renamed from: c */
        public boolean m28280c() {
            return this == OFFLINE_DB || this == PERSONAL_DB;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$InfoType.class */
    public enum InfoType {
        WHOSCALLCARD,
        CS,
        MASSES,
        OFFLINEDB
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$Note.class */
    public static class Note {
        public long createtime;
        public long date;
        public String descr;
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$PublicSearch.class */
    public class PublicSearch {
        public String descr;
        public final /* synthetic */ NumberInfo this$0;
        public String title;
        public String url;
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$UsefulInfoType.class */
    public enum UsefulInfoType {
        CALL_OUT_COUNT,
        PICK_UP_COUNT,
        ANSWER_RATE,
        FOREIGN_NUMBER
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$Whoscall.class */
    public static class Whoscall {
        public boolean favored = false;
        @Nullable
        public Spam mySpam = null;
        @Nullable
        public Tag myTag = null;
        public List<Note> notes = new ArrayList();
        public String localizedGeoCoder = "";
        @Nullable
        public Boolean hasWhoscallNumber = null;

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$Whoscall$Spam.class */
        public static class Spam {
            public static final long EXPIRE_INTERVAL = 2592000000L;
            public int ccat;
            public String reason;
            public long updateTime;

            public Spam(String str, int i, long j) {
                this.updateTime = -1L;
                this.reason = str;
                this.ccat = i;
                this.updateTime = j;
            }

            /* renamed from: a */
            public boolean m28277a() {
                return this.updateTime >= 0 && System.currentTimeMillis() - this.updateTime >= EXPIRE_INTERVAL;
            }
        }

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NumberInfo$Whoscall$Tag.class */
        public static class Tag {
            public static final long EXPIRE_INTERVAL = 15552000000L;
            public String name;
            public long updateTime;

            public Tag(String str, long j) {
                this.updateTime = -1L;
                this.name = str;
                this.updateTime = j;
            }

            /* renamed from: a */
            public boolean m28276a() {
                return this.updateTime >= 0 && System.currentTimeMillis() - this.updateTime >= EXPIRE_INTERVAL;
            }
        }
    }

    public NumberInfo() {
        this.whoscall = new Whoscall();
        this.sdkNumInfo = new NumInfo();
        this.whoscall = new Whoscall();
        this.sdkNumInfo = new NumInfo();
    }

    /* renamed from: A */
    public Whoscall.Spam m28395A() {
        return this.whoscall.mySpam;
    }

    /* renamed from: B */
    public Whoscall.Tag m28394B() {
        return this.whoscall.myTag;
    }

    /* renamed from: C */
    public String m28393C() {
        return this.sdkNumInfo.name;
    }

    /* renamed from: D */
    public List<String> m28392D() {
        List<String> c = BusinessNumberInfoKt.m28558c(this);
        return c != null ? c : this.sdkNumInfo.name_candidates;
    }

    /* renamed from: E */
    public List<Note> m28391E() {
        return this.whoscall.notes;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r4 > 0) goto L_0x001a;
     */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m28390F() {
        /*
            r2 = this;
            r0 = r2
            com.gogolook.whoscallsdk.core.num.data.NumInfo r0 = r0.sdkNumInfo
            com.gogolook.whoscallsdk.core.num.data.Stats r0 = r0.stats
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0018
            r0 = r3
            int r0 = r0.offhook
            r4 = r0
            r0 = r4
            if (r0 <= 0) goto L_0x0018
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r4 = r0
        L_0x001a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.NumberInfo.m28390F():int");
    }

    /* renamed from: G */
    public List<String> m28389G() {
        return this.sdkNumInfo.images.getPhotoUrls(C13008c.m4801c());
    }

    @Nullable
    /* renamed from: H */
    public String m28388H() {
        return m28368a(C13008c.m4801c());
    }

    @Deprecated
    /* renamed from: I */
    public List<PublicSearch> m28387I() {
        return null;
    }

    @Deprecated
    /* renamed from: J */
    public int m28386J() {
        return 0;
    }

    /* renamed from: K */
    public NumInfo m28385K() {
        return this.sdkNumInfo;
    }

    @Deprecated
    /* renamed from: L */
    public List<String> m28384L() {
        return null;
    }

    /* renamed from: M */
    public String m28383M() {
        return this.sdkNumInfo.spam;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r4 > 0) goto L_0x001a;
     */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m28382N() {
        /*
            r2 = this;
            r0 = r2
            com.gogolook.whoscallsdk.core.num.data.NumInfo r0 = r0.sdkNumInfo
            com.gogolook.whoscallsdk.core.num.data.Stats r0 = r0.stats
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0018
            r0 = r3
            int r0 = r0.spam
            r4 = r0
            r0 = r4
            if (r0 <= 0) goto L_0x0018
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r4 = r0
        L_0x001a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.NumberInfo.m28382N():int");
    }

    /* renamed from: O */
    public int m28381O() {
        return this.sdkNumInfo.spamlevel;
    }

    /* renamed from: P */
    public String m28380P() {
        return this.sdkNumInfo.sp_name;
    }

    @NonNull
    /* renamed from: Q */
    public List<String> m28379Q() {
        return this.sdkNumInfo.sp_nums;
    }

    /* renamed from: R */
    public Stats m28378R() {
        return this.sdkNumInfo.stats;
    }

    /* renamed from: S */
    public String m28377S() {
        return this.sdkNumInfo.telecom;
    }

    /* renamed from: T */
    public boolean m28376T() {
        boolean z;
        if (!C14217x3.m2160b(this.sdkNumInfo.address) && this.sdkNumInfo.lnglat.size() == 2) {
            z = true;
            if (this.sdkNumInfo.lnglat.get(0).doubleValue() == 0.0d) {
                if (this.sdkNumInfo.lnglat.get(1).doubleValue() != 0.0d) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: U */
    public boolean m28375U() {
        return this.sdkNumInfo.isCS();
    }

    /* renamed from: V */
    public boolean m28374V() {
        return !TextUtils.isEmpty(this.sdkNumInfo.bizcate);
    }

    /* renamed from: W */
    public boolean m28373W() {
        return m28329f0() && this.sdkNumInfo.spamlevel >= 2;
    }

    /* renamed from: X */
    public boolean m28372X() {
        return m28304o0() || m28314j0();
    }

    /* renamed from: Y */
    public boolean m28371Y() {
        return this.sdkNumInfo.isMasses();
    }

    /* renamed from: Z */
    public boolean m28370Z() {
        Whoscall.Spam spam = this.whoscall.mySpam;
        return spam != null && !C14217x3.m2160b(spam.reason);
    }

    /* renamed from: a */
    public String m28368a(int i) {
        return this.sdkNumInfo.images.getProfileUrl(i);
    }

    /* renamed from: a */
    public String m28356a(Locale locale) {
        return this.sdkNumInfo.getLocalizedGeocoder(locale);
    }

    /* renamed from: a */
    public void m28367a(Images images) {
        this.sdkNumInfo.images = images;
    }

    /* renamed from: a */
    public void m28366a(NumInfo numInfo) {
        this.sdkNumInfo = numInfo;
    }

    /* renamed from: a */
    public void m28365a(ErrorReason errorReason) {
        this.error_reason = errorReason;
    }

    /* renamed from: a */
    public void m28364a(InfoSource infoSource) {
        this.info_source = infoSource;
    }

    @Deprecated
    /* renamed from: a */
    public void m28362a(EnumC11085n nVar) {
        int i = C44781.$SwitchMap$gogolook$callgogolook2$loader$Status[nVar.ordinal()];
        if (i == 1) {
            this.error_reason = null;
        } else if (i == 2) {
            this.error_reason = null;
            this.info_source = InfoSource.NONE;
        } else if (i == 3) {
            this.info_source = InfoSource.NONE;
        }
        this.status = nVar;
    }

    /* renamed from: a */
    public void m28361a(@NonNull String str) {
        Ask ask = this.sdkNumInfo.ask;
        if (ask.spam == null) {
            ask.spam = new ArrayList();
        }
        this.sdkNumInfo.ask.spam.add(str);
    }

    /* renamed from: a */
    public void m28360a(@NonNull String str, int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.name_candidates == null) {
            numInfo.name_candidates = new ArrayList();
        }
        Ask ask = this.sdkNumInfo.ask;
        if (ask.name == null) {
            ask.name = new ArrayList();
        }
        this.sdkNumInfo.name_candidates.add(str);
        this.sdkNumInfo.ask.name.add(str);
    }

    /* renamed from: a */
    public void m28359a(String str, long j, long j2) {
        Whoscall whoscall = this.whoscall;
        if (whoscall.notes == null) {
            whoscall.notes = new ArrayList();
        }
        Note note = new Note();
        note.descr = str;
        note.createtime = j;
        note.date = j2;
        this.whoscall.notes.add(note);
    }

    /* renamed from: a */
    public void m28358a(@NonNull String str, @NonNull String str2) {
        NumInfo numInfo = this.sdkNumInfo;
        numInfo.name = str;
        numInfo.type = str2;
    }

    /* renamed from: a */
    public void m28357a(@NonNull Collection<String> collection) {
        this.sdkNumInfo.sp_nums = new ArrayList(collection);
    }

    /* renamed from: a */
    public void m28355a(boolean z) {
        this.sdkNumInfo.setCalloutOnly(z);
    }

    /* renamed from: a */
    public boolean m28369a() {
        Boolean a = BusinessNumberInfoKt.m28561a(this);
        if (a != null) {
            return a.booleanValue();
        }
        return this.sdkNumInfo.ask.ask_times > 0;
    }

    /* renamed from: a */
    public boolean m28354a(@NonNull String... strArr) {
        for (String str : strArr) {
            if (m28379Q().contains(C14108o4.m2486c(str))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a0 */
    public boolean m28353a0() {
        Whoscall.Tag tag = this.whoscall.myTag;
        return tag != null && !C14217x3.m2160b(tag.name);
    }

    /* renamed from: b */
    public CloudFrontType m28352b() {
        Object obj;
        HashMap<String, Object> hashMap = this.sdkNumInfo.hit;
        if (hashMap == null || (obj = hashMap.get(KEY_DATA_SOURCE)) == null) {
            return CloudFrontType.NO_CF_HEADER;
        }
        String str = (String) obj;
        return str.equals(CLOUD_FRONT_HIT_VALUE) ? CloudFrontType.HIT : str.startsWith(VALUE_DATA_SOURCE_CF) ? CloudFrontType.HAS_CF_HEADER_BUT_NO_HIT : CloudFrontType.NO_CF_HEADER;
    }

    /* renamed from: b */
    public void m28351b(int i) {
        this.sdkNumInfo.ask.ask_times = i;
    }

    /* renamed from: b */
    public void m28350b(String str) {
        this.sdkNumInfo.address = str;
    }

    /* renamed from: b */
    public void m28349b(String str, long j, long j2) {
        Whoscall whoscall = this.whoscall;
        if (whoscall.notes == null) {
            whoscall.notes = new ArrayList();
        }
        Note note = new Note();
        note.descr = str;
        note.createtime = j;
        note.date = j2;
        this.whoscall.notes.add(0, note);
    }

    /* renamed from: b */
    public void m28348b(boolean z) {
        this.sdkNumInfo.setRed(z);
    }

    /* renamed from: b0 */
    public boolean m28347b0() {
        return m28353a0() || m28370Z();
    }

    /* renamed from: c */
    public void m28346c() {
        NumInfo numInfo = this.sdkNumInfo;
        numInfo.name = "";
        numInfo.type = "";
    }

    /* renamed from: c */
    public void m28345c(int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.stats == null) {
            numInfo.stats = new Stats();
        }
        this.sdkNumInfo.stats.callin = i;
    }

    /* renamed from: c */
    public void m28344c(String str) {
        this.sdkNumInfo.bizcate = str;
    }

    /* renamed from: c */
    public void m28343c(boolean z) {
        this.sdkNumInfo.setWhite(z);
    }

    /* renamed from: c0 */
    public boolean m28342c0() {
        return !TextUtils.isEmpty(this.sdkNumInfo.name.trim());
    }

    public NumberInfo clone() {
        Gson gson = new Gson();
        NumberInfo numberInfo = (NumberInfo) gson.m30982a(gson.m30988a(this), (Class<Object>) NumberInfo.class);
        numberInfo.status = this.status;
        numberInfo.info_source = this.info_source;
        numberInfo.error_reason = this.error_reason;
        return numberInfo;
    }

    /* renamed from: d */
    public void m28341d() {
        Whoscall whoscall = this.whoscall;
        List<Note> list = whoscall.notes;
        if (list == null) {
            whoscall.notes = new ArrayList();
        } else {
            list.clear();
        }
    }

    /* renamed from: d */
    public void m28340d(int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.stats == null) {
            numInfo.stats = new Stats();
        }
        this.sdkNumInfo.stats.contact = i;
    }

    /* renamed from: d */
    public void m28339d(String str) {
        this.sdkNumInfo.descr = str;
    }

    /* renamed from: d */
    public void m28338d(boolean z) {
        this.mIsSuspicious = z;
    }

    /* renamed from: d0 */
    public boolean m28337d0() {
        return !C14217x3.m2173a(this.whoscall.notes);
    }

    /* renamed from: e */
    public void m28336e() {
        List<String> list = this.sdkNumInfo.ask.spam;
        if (list != null) {
            list.clear();
        }
    }

    /* renamed from: e */
    public void m28335e(int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.stats == null) {
            numInfo.stats = new Stats();
        }
        this.sdkNumInfo.stats.favor = i;
    }

    /* renamed from: e */
    public void m28334e(String str) {
        this.whoscall.localizedGeoCoder = str;
    }

    /* renamed from: e0 */
    public boolean m28333e0() {
        return this.sdkNumInfo.isRed();
    }

    /* renamed from: f */
    public void m28332f() {
        C6384a.m22851d(this.sdkNumInfo.num);
    }

    /* renamed from: f */
    public void m28331f(int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.stats == null) {
            numInfo.stats = new Stats();
        }
        this.sdkNumInfo.stats.offhook = i;
    }

    /* renamed from: f */
    public void m28330f(String str) {
        this.sdkNumInfo.name = str;
    }

    /* renamed from: f0 */
    public boolean m28329f0() {
        return !C14217x3.m2160b(m28383M()) || m28370Z();
    }

    /* renamed from: g */
    public String m28328g() {
        return this.sdkNumInfo.address;
    }

    /* renamed from: g */
    public void m28327g(int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.stats == null) {
            numInfo.stats = new Stats();
        }
        this.sdkNumInfo.stats.spam = i;
    }

    /* renamed from: g */
    public void m28326g(String str) {
        this.sdkNumInfo.spam = str;
    }

    /* renamed from: g0 */
    public boolean m28325g0() {
        return this.sdkNumInfo.sp_nums.size() > 0;
    }

    /* renamed from: h */
    public List<String> m28324h() {
        List<String> b = BusinessNumberInfoKt.m28559b(this);
        return b != null ? b : this.sdkNumInfo.ask.name;
    }

    /* renamed from: h */
    public void m28323h(int i) {
        this.sdkNumInfo.spamlevel = i;
    }

    /* renamed from: h */
    public void m28322h(String str) {
        this.sdkNumInfo.sp_name = str;
    }

    /* renamed from: h0 */
    public boolean m28321h0() {
        Stats stats = this.sdkNumInfo.stats;
        return stats.favor > 0 || stats.tag > 0 || stats.spam > 0 || stats.contact > 0 || stats.callin > 0 || stats.offhook > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r4 > 0) goto L_0x001a;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m28320i() {
        /*
            r2 = this;
            r0 = r2
            com.gogolook.whoscallsdk.core.num.data.NumInfo r0 = r0.sdkNumInfo
            com.gogolook.whoscallsdk.core.num.data.Stats r0 = r0.stats
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0018
            r0 = r3
            int r0 = r0.callin
            r4 = r0
            r0 = r4
            if (r0 <= 0) goto L_0x0018
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r4 = r0
        L_0x001a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.NumberInfo.m28320i():int");
    }

    /* renamed from: i */
    public void m28319i(int i) {
        NumInfo numInfo = this.sdkNumInfo;
        if (numInfo.stats == null) {
            numInfo.stats = new Stats();
        }
        this.sdkNumInfo.stats.tag = i;
    }

    /* renamed from: i */
    public void m28318i(String str) {
        this.sdkNumInfo.telecom = str;
    }

    /* renamed from: i0 */
    public boolean m28317i0() {
        return this.usefulInfoType != null;
    }

    /* renamed from: j */
    public String m28316j() {
        return this.sdkNumInfo.bizcate;
    }

    /* renamed from: j */
    public void m28315j(String str) {
        this.sdkNumInfo.type = str;
    }

    @Deprecated
    /* renamed from: j0 */
    public boolean m28314j0() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r4 > 0) goto L_0x001a;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m28313k() {
        /*
            r2 = this;
            r0 = r2
            com.gogolook.whoscallsdk.core.num.data.NumInfo r0 = r0.sdkNumInfo
            com.gogolook.whoscallsdk.core.num.data.Stats r0 = r0.stats
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0018
            r0 = r3
            int r0 = r0.contact
            r4 = r0
            r0 = r4
            if (r0 <= 0) goto L_0x0018
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r4 = r0
        L_0x001a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.NumberInfo.m28313k():int");
    }

    /* renamed from: k0 */
    public boolean m28312k0() {
        return m28310l0() || m28308m0();
    }

    @Deprecated
    /* renamed from: l */
    public List<C14978j<String, String>> m28311l() {
        return null;
    }

    /* renamed from: l0 */
    public boolean m28310l0() {
        return this.sdkNumInfo.isCardV1();
    }

    /* renamed from: m */
    public String m28309m() {
        return this.sdkNumInfo.images.getCoverUrl(C13008c.m4801c());
    }

    /* renamed from: m0 */
    public boolean m28308m0() {
        return this.sdkNumInfo.isCardV3() || this.sdkNumInfo.isCardV2();
    }

    /* renamed from: n */
    public String m28307n() {
        return this.sdkNumInfo.descr;
    }

    /* renamed from: n0 */
    public boolean m28306n0() {
        return this.sdkNumInfo.isCardV3();
    }

    /* renamed from: o */
    public ErrorReason m28305o() {
        return this.error_reason;
    }

    /* renamed from: o0 */
    public boolean m28304o0() {
        return m28342c0() || m28353a0() || m28370Z() || m28337d0() || m28329f0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r4 > 0) goto L_0x001a;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m28303p() {
        /*
            r2 = this;
            r0 = r2
            com.gogolook.whoscallsdk.core.num.data.NumInfo r0 = r0.sdkNumInfo
            com.gogolook.whoscallsdk.core.num.data.Stats r0 = r0.stats
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0018
            r0 = r3
            int r0 = r0.favor
            r4 = r0
            r0 = r4
            if (r0 <= 0) goto L_0x0018
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r4 = r0
        L_0x001a:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.NumberInfo.m28303p():int");
    }

    /* renamed from: p0 */
    public boolean m28302p0() {
        return BusinessNumberInfoKt.m28557d(this);
    }

    /* renamed from: q */
    public String m28301q() {
        return this.whoscall.localizedGeoCoder;
    }

    /* renamed from: q0 */
    public boolean m28300q0() {
        return this.sdkNumInfo.isCalloutOnly();
    }

    /* renamed from: r */
    public Map<String, Object> m28299r() {
        return this.sdkNumInfo.hit;
    }

    @Deprecated
    /* renamed from: r0 */
    public boolean m28298r0() {
        return this.status == EnumC11085n.ERROR;
    }

    /* renamed from: s */
    public String m28297s() {
        Object obj;
        HashMap<String, Object> hashMap = this.sdkNumInfo.hit;
        if (hashMap == null || (obj = hashMap.get(KEY_NAME_SOURCE)) == null) {
            return null;
        }
        return (String) obj;
    }

    @Deprecated
    /* renamed from: s0 */
    public boolean m28296s0() {
        return this.status == EnumC11085n.FINISH;
    }

    @Deprecated
    /* renamed from: t */
    public String m28295t() {
        return null;
    }

    @Deprecated
    /* renamed from: t0 */
    public boolean m28294t0() {
        return this.status == EnumC11085n.LOADING;
    }

    public String toString() {
        try {
            return new JSONObject(new Gson().m30988a(this)).toString(1);
        } catch (Throwable th) {
            return "";
        }
    }

    @Deprecated
    /* renamed from: u */
    public Map<String, Long> m28293u() {
        return null;
    }

    /* renamed from: u0 */
    public boolean m28292u0() {
        return this.sdkNumInfo.isWhite();
    }

    /* renamed from: v */
    public String m28291v() {
        int i = Calendar.getInstance().get(7);
        float f = Calendar.getInstance().get(11) + (Calendar.getInstance().get(12) / 60.0f);
        if (m28293u() == null || m28293u().size() == 0) {
            return C14206w4.m2225a((int) R$string.ndp_hour_close);
        }
        long longValue = m28293u().get(String.valueOf(i - 1)).longValue();
        if (longValue == 0) {
            return C14206w4.m2225a((int) R$string.ndp_hour_close);
        }
        String a = C14206w4.m2225a((int) R$string.ndp_hour_close);
        int i2 = 0;
        while (true) {
            long[] jArr = HOURJ_ARRAY;
            if (i2 >= jArr.length) {
                break;
            }
            if ((jArr[i2] & longValue) != 0) {
                float f2 = i2 / 2.0f;
                if (f2 <= f && f <= f2 + 0.5f) {
                    a = C14206w4.m2225a((int) R$string.ndp_hour_open);
                    break;
                }
            }
            i2++;
        }
        return a;
    }

    /* renamed from: v0 */
    public boolean m28290v0() {
        return this.mIsSuspicious;
    }

    /* renamed from: w */
    public InfoSource m28289w() {
        return this.info_source;
    }

    @Deprecated
    /* renamed from: w0 */
    public boolean m28288w0() {
        return this.status == EnumC11085n.UPDATING;
    }

    @Deprecated
    /* renamed from: x */
    public String m28287x() {
        return null;
    }

    /* renamed from: x0 */
    public boolean m28286x0() {
        Boolean e = BusinessNumberInfoKt.m28556e(this);
        return e != null ? e.booleanValue() : !C14217x3.m2173a(this.sdkNumInfo.ask.name);
    }

    @Deprecated
    /* renamed from: y */
    public List<String> m28285y() {
        return null;
    }

    /* renamed from: y0 */
    public boolean m28284y0() {
        Boolean f = BusinessNumberInfoKt.m28555f(this);
        return f != null ? f.booleanValue() : !C14217x3.m2173a(this.sdkNumInfo.ask.spam);
    }

    /* renamed from: z */
    public LatLng m28283z() {
        NumInfo numInfo = this.sdkNumInfo;
        List<Double> list = numInfo != null ? numInfo.lnglat : null;
        LatLng latLng = null;
        if (list != null) {
            latLng = null;
            if (list.size() >= 2) {
                latLng = new LatLng(list.get(1).doubleValue(), list.get(0).doubleValue());
            }
        }
        return latLng;
    }
}
