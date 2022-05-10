package p012b.p076s.p118e;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.RelativeLayout;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import p012b.p076s.p118e.AbstractC1838f;
import p012b.p076s.p118e.AbstractC1866t;
import p012b.p076s.p118e.C1818d;
import p012b.p076s.p118e.C1859s;
/* renamed from: b.s.e.e */
/* loaded from: classes-dex2jar.jar:b/s/e/e.class */
public class C1828e extends C1859s.AbstractC1865f {

    /* renamed from: a */
    public final Context f7314a;

    /* renamed from: b */
    public C1829a f7315b;

    /* renamed from: b.s.e.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/e/e$a.class */
    public class C1829a extends AbstractC1838f implements C1818d.AbstractC1827i {

        /* renamed from: g */
        public final C1830a f7316g;

        /* renamed from: b.s.e.e$a$a */
        /* loaded from: classes-dex2jar.jar:b/s/e/e$a$a.class */
        public class C1830a implements Handler.Callback {

            /* renamed from: a */
            public final C1831b f7317a;

            /* renamed from: c */
            public View$OnLayoutChangeListenerC1833d f7319c;

            /* renamed from: b */
            public boolean f7318b = false;

            /* renamed from: d */
            public final View$OnLayoutChangeListenerC1833d[] f7320d = new View$OnLayoutChangeListenerC1833d[8];

            /* renamed from: e */
            public final ArrayList<C1818d.C1821c> f7321e = new ArrayList<>();

            /* renamed from: f */
            public final Handler f7322f = new Handler(this);

            public C1830a(C1831b bVar) {
                this.f7317a = bVar;
            }

            /* renamed from: a */
            public final void m31996a() {
                this.f7318b = false;
                m31986b();
            }

            /* renamed from: a */
            public final void m31995a(char c) {
                View$OnLayoutChangeListenerC1833d dVar = this.f7319c;
                if (dVar != null) {
                    dVar.m31973a(c);
                }
            }

            /* renamed from: a */
            public final void m31994a(int i) {
                if (i != 0) {
                    Iterator<View$OnLayoutChangeListenerC1833d> it = m31981e(i).iterator();
                    while (it.hasNext()) {
                        it.next().m31974a();
                    }
                }
            }

            /* renamed from: a */
            public void m31993a(C1818d.C1821c cVar) {
                if (this.f7318b) {
                    this.f7321e.add(cVar);
                    return;
                }
                switch (cVar.f7298a) {
                    case 1:
                        m31987a((String) cVar.f7299b);
                        return;
                    case 2:
                        m31995a(((Character) cVar.f7299b).charValue());
                        return;
                    case 3:
                        m31979g(((Integer) cVar.f7299b).intValue());
                        return;
                    case 4:
                        m31994a(((Integer) cVar.f7299b).intValue());
                        return;
                    case 5:
                        m31982d(((Integer) cVar.f7299b).intValue());
                        return;
                    case 6:
                        m31980f(((Integer) cVar.f7299b).intValue());
                        return;
                    case 7:
                        m31978h(((Integer) cVar.f7299b).intValue());
                        return;
                    case 8:
                        m31983c(((Integer) cVar.f7299b).intValue());
                        return;
                    case 9:
                        m31985b(((Integer) cVar.f7299b).intValue());
                        return;
                    case 10:
                        m31996a();
                        return;
                    case 11:
                        m31984c();
                        return;
                    case 12:
                        m31992a((C1818d.C1822d) cVar.f7299b);
                        return;
                    case 13:
                        m31991a((C1818d.C1823e) cVar.f7299b);
                        return;
                    case 14:
                        m31990a((C1818d.C1824f) cVar.f7299b);
                        return;
                    case 15:
                        m31988a((C1818d.C1826h) cVar.f7299b);
                        return;
                    case 16:
                        m31989a((C1818d.C1825g) cVar.f7299b);
                        return;
                    default:
                        return;
                }
            }

            /* renamed from: a */
            public final void m31992a(C1818d.C1822d dVar) {
                View$OnLayoutChangeListenerC1833d dVar2 = this.f7319c;
                if (dVar2 != null) {
                    dVar2.m31968a(dVar);
                }
            }

            /* renamed from: a */
            public final void m31991a(C1818d.C1823e eVar) {
                View$OnLayoutChangeListenerC1833d dVar = this.f7319c;
                if (dVar != null) {
                    dVar.m31967a(eVar);
                }
            }

            /* renamed from: a */
            public final void m31990a(C1818d.C1824f fVar) {
                View$OnLayoutChangeListenerC1833d dVar = this.f7319c;
                if (dVar != null) {
                    dVar.m31970a(fVar.f7304a, fVar.f7305b);
                }
            }

            /* renamed from: a */
            public final void m31989a(C1818d.C1825g gVar) {
                int i;
                if (gVar != null && (i = gVar.f7306a) >= 0) {
                    View$OnLayoutChangeListenerC1833d[] dVarArr = this.f7320d;
                    if (i < dVarArr.length) {
                        View$OnLayoutChangeListenerC1833d dVar = dVarArr[i];
                        View$OnLayoutChangeListenerC1833d dVar2 = dVar;
                        if (dVar == null) {
                            dVar2 = new View$OnLayoutChangeListenerC1833d(C1829a.this, this.f7317a.getContext());
                        }
                        dVar2.m31965a(this.f7317a, gVar);
                        this.f7320d[i] = dVar2;
                        this.f7319c = dVar2;
                    }
                }
            }

            /* renamed from: a */
            public final void m31988a(C1818d.C1826h hVar) {
                View$OnLayoutChangeListenerC1833d dVar = this.f7319c;
                if (dVar != null) {
                    dVar.m31966a(hVar);
                }
            }

            /* renamed from: a */
            public final void m31987a(String str) {
                View$OnLayoutChangeListenerC1833d dVar = this.f7319c;
                if (dVar != null) {
                    dVar.m31960b(str);
                    this.f7322f.removeMessages(2);
                    Handler handler = this.f7322f;
                    handler.sendMessageDelayed(handler.obtainMessage(2), 60000L);
                }
            }

            /* renamed from: b */
            public final void m31986b() {
                Iterator<C1818d.C1821c> it = this.f7321e.iterator();
                while (it.hasNext()) {
                    m31993a(it.next());
                }
                this.f7321e.clear();
            }

            /* renamed from: b */
            public final void m31985b(int i) {
                if (i >= 0 && i <= 255) {
                    this.f7318b = true;
                    Handler handler = this.f7322f;
                    handler.sendMessageDelayed(handler.obtainMessage(1), i * 100);
                }
            }

            /* renamed from: c */
            public void m31984c() {
                this.f7319c = null;
                this.f7318b = false;
                this.f7321e.clear();
                for (int i = 0; i < 8; i++) {
                    View$OnLayoutChangeListenerC1833d[] dVarArr = this.f7320d;
                    if (dVarArr[i] != null) {
                        dVarArr[i].m31956f();
                    }
                    this.f7320d[i] = null;
                }
                this.f7317a.setVisibility(4);
                this.f7322f.removeMessages(2);
            }

            /* renamed from: c */
            public final void m31983c(int i) {
                if (i != 0) {
                    Iterator<View$OnLayoutChangeListenerC1833d> it = m31981e(i).iterator();
                    while (it.hasNext()) {
                        View$OnLayoutChangeListenerC1833d next = it.next();
                        next.m31956f();
                        this.f7320d[next.m31959c()] = null;
                    }
                }
            }

            /* renamed from: d */
            public final void m31982d(int i) {
                if (i != 0) {
                    Iterator<View$OnLayoutChangeListenerC1833d> it = m31981e(i).iterator();
                    while (it.hasNext()) {
                        it.next().m31955g();
                    }
                }
            }

            /* renamed from: e */
            public final ArrayList<View$OnLayoutChangeListenerC1833d> m31981e(int i) {
                View$OnLayoutChangeListenerC1833d dVar;
                ArrayList<View$OnLayoutChangeListenerC1833d> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < 8; i2++) {
                    if (!(((1 << i2) & i) == 0 || (dVar = this.f7320d[i2]) == null)) {
                        arrayList.add(dVar);
                    }
                }
                return arrayList;
            }

            /* renamed from: f */
            public final void m31980f(int i) {
                if (i != 0) {
                    Iterator<View$OnLayoutChangeListenerC1833d> it = m31981e(i).iterator();
                    while (it.hasNext()) {
                        it.next().m31957e();
                    }
                }
            }

            /* renamed from: g */
            public final void m31979g(int i) {
                View$OnLayoutChangeListenerC1833d dVar;
                if (i >= 0) {
                    View$OnLayoutChangeListenerC1833d[] dVarArr = this.f7320d;
                    if (i < dVarArr.length && (dVar = dVarArr[i]) != null) {
                        this.f7319c = dVar;
                    }
                }
            }

            /* renamed from: h */
            public final void m31978h(int i) {
                if (i != 0) {
                    Iterator<View$OnLayoutChangeListenerC1833d> it = m31981e(i).iterator();
                    while (it.hasNext()) {
                        View$OnLayoutChangeListenerC1833d next = it.next();
                        if (next.isShown()) {
                            next.m31957e();
                        } else {
                            next.m31955g();
                        }
                    }
                }
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    m31996a();
                    return true;
                } else if (i != 2) {
                    return false;
                } else {
                    m31994a(255);
                    return true;
                }
            }
        }

        /* renamed from: b.s.e.e$a$b */
        /* loaded from: classes-dex2jar.jar:b/s/e/e$a$b.class */
        public class C1831b extends C1834e implements AbstractC1838f.AbstractC1840b {

            /* renamed from: d */
            public final C1834e f7324d;

            public C1831b(Context context) {
                super(context);
                C1834e eVar = new C1834e(context);
                this.f7324d = eVar;
                addView(eVar, new C1834e.C1836b(0.1f, 0.9f, 0.1f, 0.9f));
            }

            @Override // p012b.p076s.p118e.AbstractC1838f.AbstractC1840b
            /* renamed from: a */
            public void mo31949a(float f) {
                int childCount = this.f7324d.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ((View$OnLayoutChangeListenerC1833d) this.f7324d.getChildAt(i)).m31972a(f);
                }
            }

            @Override // p012b.p076s.p118e.AbstractC1838f.AbstractC1840b
            /* renamed from: a */
            public void mo31948a(CaptioningManager.CaptionStyle captionStyle) {
                int childCount = this.f7324d.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ((View$OnLayoutChangeListenerC1833d) this.f7324d.getChildAt(i)).m31969a(captionStyle);
                }
            }

            /* renamed from: a */
            public void m31977a(View$OnLayoutChangeListenerC1833d dVar) {
                this.f7324d.removeView(dVar);
            }

            /* renamed from: a */
            public void m31976a(View$OnLayoutChangeListenerC1833d dVar, C1834e.C1836b bVar) {
                if (this.f7324d.indexOfChild(dVar) < 0) {
                    this.f7324d.addView(dVar, bVar);
                } else {
                    this.f7324d.updateViewLayout(dVar, bVar);
                }
            }
        }

        /* renamed from: b.s.e.e$a$c */
        /* loaded from: classes-dex2jar.jar:b/s/e/e$a$c.class */
        public class C1832c extends C1872u {
            public C1832c(C1829a aVar, Context context) {
                this(aVar, context, null);
            }

            public C1832c(C1829a aVar, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            public C1832c(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
            }

            /* renamed from: a */
            public void m31975a(CaptioningManager.CaptionStyle captionStyle) {
                if (Build.VERSION.SDK_INT >= 21) {
                    if (captionStyle.hasForegroundColor()) {
                        m31849d(captionStyle.foregroundColor);
                    }
                    if (captionStyle.hasBackgroundColor()) {
                        setBackgroundColor(captionStyle.backgroundColor);
                    }
                    if (captionStyle.hasEdgeType()) {
                        m31850c(captionStyle.edgeType);
                    }
                    if (captionStyle.hasEdgeColor()) {
                        m31851b(captionStyle.edgeColor);
                    }
                }
                m31854a(captionStyle.getTypeface());
            }
        }

        /* renamed from: b.s.e.e$a$d */
        /* loaded from: classes-dex2jar.jar:b/s/e/e$a$d.class */
        public class View$OnLayoutChangeListenerC1833d extends RelativeLayout implements View.OnLayoutChangeListener {

            /* renamed from: a */
            public C1831b f7327a;

            /* renamed from: b */
            public C1832c f7328b;

            /* renamed from: c */
            public CaptioningManager.CaptionStyle f7329c;

            /* renamed from: d */
            public int f7330d;

            /* renamed from: e */
            public final SpannableStringBuilder f7331e;

            /* renamed from: f */
            public final List<CharacterStyle> f7332f;

            /* renamed from: g */
            public int f7333g;

            /* renamed from: h */
            public int f7334h;

            /* renamed from: i */
            public float f7335i;

            /* renamed from: j */
            public float f7336j;

            /* renamed from: k */
            public String f7337k;

            /* renamed from: l */
            public int f7338l;

            /* renamed from: m */
            public int f7339m;

            public View$OnLayoutChangeListenerC1833d(C1829a aVar, Context context) {
                this(aVar, context, null);
            }

            public View$OnLayoutChangeListenerC1833d(C1829a aVar, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            public View$OnLayoutChangeListenerC1833d(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
                this.f7330d = 0;
                this.f7331e = new SpannableStringBuilder();
                this.f7332f = new ArrayList();
                this.f7334h = -1;
                this.f7328b = new C1832c(C1829a.this, context);
                addView(this.f7328b, new RelativeLayout.LayoutParams(-2, -2));
                CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
                this.f7335i = captioningManager.getFontScale();
                m31969a(captioningManager.getUserStyle());
                this.f7328b.m31852a("");
                m31953i();
            }

            /* renamed from: a */
            public void m31974a() {
                m31962b();
                m31957e();
            }

            /* renamed from: a */
            public void m31973a(char c) {
            }

            /* renamed from: a */
            public void m31972a(float f) {
                this.f7335i = f;
                m31954h();
            }

            /* renamed from: a */
            public void m31971a(int i) {
                this.f7333g = i;
            }

            /* renamed from: a */
            public void m31970a(int i, int i2) {
                int i3 = this.f7334h;
                if (i3 >= 0) {
                    while (i3 < i) {
                        m31964a("\n");
                        i3++;
                    }
                }
                this.f7334h = i;
            }

            /* renamed from: a */
            public void m31969a(CaptioningManager.CaptionStyle captionStyle) {
                this.f7329c = captionStyle;
                this.f7328b.m31975a(captionStyle);
            }

            /* renamed from: a */
            public void m31968a(C1818d.C1822d dVar) {
                this.f7332f.clear();
                if (dVar.f7303d) {
                    this.f7332f.add(new StyleSpan(2));
                }
                if (dVar.f7302c) {
                    this.f7332f.add(new UnderlineSpan());
                }
                int i = dVar.f7300a;
                if (i == 0) {
                    this.f7332f.add(new RelativeSizeSpan(0.75f));
                } else if (i == 2) {
                    this.f7332f.add(new RelativeSizeSpan(1.25f));
                }
                int i2 = dVar.f7301b;
                if (i2 == 0) {
                    this.f7332f.add(new SubscriptSpan());
                } else if (i2 == 2) {
                    this.f7332f.add(new SuperscriptSpan());
                }
            }

            /* renamed from: a */
            public void m31967a(C1818d.C1823e eVar) {
            }

            /* renamed from: a */
            public void m31966a(C1818d.C1826h hVar) {
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
                if (r0 > 1.0f) goto L_0x007e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x00b9, code lost:
                if (r0 > 1.0f) goto L_0x00bc;
             */
            /* JADX WARN: Removed duplicated region for block: B:53:0x0203  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x0254  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x029f  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x02a6  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void m31965a(p012b.p076s.p118e.C1828e.C1829a.C1831b r11, p012b.p076s.p118e.C1818d.C1825g r12) {
                /*
                    Method dump skipped, instructions count: 683
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p118e.C1828e.C1829a.View$OnLayoutChangeListenerC1833d.m31965a(b.s.e.e$a$b, b.s.e.d$g):void");
            }

            /* renamed from: a */
            public void m31964a(String str) {
                m31963a(str, true);
            }

            /* renamed from: a */
            public final void m31963a(String str, boolean z) {
                if (!z) {
                    this.f7331e.clear();
                }
                if (str != null && str.length() > 0) {
                    int length = this.f7331e.length();
                    this.f7331e.append((CharSequence) str);
                    for (CharacterStyle characterStyle : this.f7332f) {
                        SpannableStringBuilder spannableStringBuilder = this.f7331e;
                        spannableStringBuilder.setSpan(characterStyle, length, spannableStringBuilder.length(), 33);
                    }
                }
                String[] split = TextUtils.split(this.f7331e.toString(), "\n");
                String join = TextUtils.join("\n", Arrays.copyOfRange(split, Math.max(0, split.length - (this.f7330d + 1)), split.length));
                SpannableStringBuilder spannableStringBuilder2 = this.f7331e;
                spannableStringBuilder2.delete(0, spannableStringBuilder2.length() - join.length());
                int length2 = this.f7331e.length() - 1;
                int i = 0;
                while (i <= length2 && this.f7331e.charAt(i) <= ' ') {
                    i++;
                }
                int i2 = length2;
                while (i2 >= i && this.f7331e.charAt(i2) <= ' ') {
                    i2--;
                }
                if (i == 0 && i2 == length2) {
                    this.f7328b.m31852a(this.f7331e);
                    return;
                }
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                spannableStringBuilder3.append((CharSequence) this.f7331e);
                if (i2 < length2) {
                    spannableStringBuilder3.delete(i2 + 1, length2 + 1);
                }
                if (i > 0) {
                    spannableStringBuilder3.delete(0, i);
                }
                this.f7328b.m31852a(spannableStringBuilder3);
            }

            /* renamed from: b */
            public void m31962b() {
                this.f7331e.clear();
                this.f7328b.m31852a("");
            }

            /* renamed from: b */
            public void m31961b(int i) {
                if (i >= 0) {
                    this.f7330d = i;
                    return;
                }
                throw new IllegalArgumentException("A rowLimit should have a positive number");
            }

            /* renamed from: b */
            public void m31960b(String str) {
                m31964a(str);
            }

            /* renamed from: c */
            public int m31959c() {
                return this.f7333g;
            }

            /* renamed from: d */
            public final int m31958d() {
                return 42;
            }

            /* renamed from: e */
            public void m31957e() {
                setVisibility(4);
                requestLayout();
            }

            /* renamed from: f */
            public void m31956f() {
                C1831b bVar = this.f7327a;
                if (bVar != null) {
                    bVar.m31977a(this);
                    this.f7327a.removeOnLayoutChangeListener(this);
                    this.f7327a = null;
                }
            }

            /* renamed from: g */
            public void m31955g() {
                setVisibility(0);
                requestLayout();
            }

            /* renamed from: h */
            public final void m31954h() {
                if (this.f7327a != null) {
                    StringBuilder sb = new StringBuilder();
                    int d = m31958d();
                    for (int i = 0; i < d; i++) {
                        sb.append(this.f7337k);
                    }
                    String sb2 = sb.toString();
                    Paint paint = new Paint();
                    paint.setTypeface(this.f7329c.getTypeface());
                    float f = 0.0f;
                    float f2 = 255.0f;
                    while (f < f2) {
                        float f3 = (f + f2) / 2.0f;
                        paint.setTextSize(f3);
                        if (this.f7327a.getWidth() * 0.8f > paint.measureText(sb2)) {
                            f = f3 + 0.01f;
                        } else {
                            f2 = f3 - 0.01f;
                        }
                    }
                    float f4 = f2 * this.f7335i;
                    this.f7336j = f4;
                    this.f7328b.m31856a(f4);
                }
            }

            /* renamed from: i */
            public final void m31953i() {
                Paint paint = new Paint();
                paint.setTypeface(this.f7329c.getTypeface());
                Charset forName = Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
                float f = 0.0f;
                for (int i = 0; i < 256; i++) {
                    String str = new String(new byte[]{(byte) i}, forName);
                    float measureText = paint.measureText(str);
                    f = f;
                    if (f < measureText) {
                        this.f7337k = str;
                        f = measureText;
                    }
                }
                m31954h();
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9 = i3 - i;
                int i10 = i4 - i2;
                if (i9 != this.f7338l || i10 != this.f7339m) {
                    this.f7338l = i9;
                    this.f7339m = i10;
                    m31954h();
                }
            }
        }

        /* renamed from: b.s.e.e$a$e */
        /* loaded from: classes-dex2jar.jar:b/s/e/e$a$e.class */
        public class C1834e extends ViewGroup {

            /* renamed from: a */
            public final Comparator<Rect> f7341a = new C1835a();

            /* renamed from: b */
            public Rect[] f7342b;

            /* renamed from: b.s.e.e$a$e$a */
            /* loaded from: classes-dex2jar.jar:b/s/e/e$a$e$a.class */
            public class C1835a implements Comparator<Rect> {
                public C1835a() {
                }

                /* renamed from: a */
                public int compare(Rect rect, Rect rect2) {
                    int i = rect.top;
                    int i2 = rect2.top;
                    return i != i2 ? i - i2 : rect.left - rect2.left;
                }
            }

            /* renamed from: b.s.e.e$a$e$b */
            /* loaded from: classes-dex2jar.jar:b/s/e/e$a$e$b.class */
            public class C1836b extends ViewGroup.LayoutParams {

                /* renamed from: a */
                public float f7345a;

                /* renamed from: b */
                public float f7346b;

                /* renamed from: c */
                public float f7347c;

                /* renamed from: d */
                public float f7348d;

                public C1836b(float f, float f2, float f3, float f4) {
                    super(-1, -1);
                    this.f7345a = f;
                    this.f7346b = f2;
                    this.f7347c = f3;
                    this.f7348d = f4;
                }

                public C1836b(Context context, AttributeSet attributeSet) {
                    super(-1, -1);
                }
            }

            public C1834e(Context context) {
                super(context);
            }

            @Override // android.view.ViewGroup
            public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
                return layoutParams instanceof C1836b;
            }

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt.getVisibility() != 8) {
                        Rect[] rectArr = this.f7342b;
                        if (i < rectArr.length) {
                            int i2 = rectArr[i].left;
                            int i3 = rectArr[i].top;
                            int save = canvas.save();
                            canvas.translate(i2 + paddingLeft, i3 + paddingTop);
                            childAt.draw(canvas);
                            canvas.restoreToCount(save);
                        } else {
                            return;
                        }
                    }
                }
            }

            @Override // android.view.ViewGroup
            public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
                return new C1836b(getContext(), attributeSet);
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt.getVisibility() != 8) {
                        Rect[] rectArr = this.f7342b;
                        childAt.layout(rectArr[i5].left + paddingLeft, rectArr[i5].top + paddingTop, rectArr[i5].right + paddingTop, rectArr[i5].bottom + paddingLeft);
                    }
                }
            }

            @Override // android.view.View
            public void onMeasure(int i, int i2) {
                int i3;
                int i4;
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
                int childCount = getChildCount();
                this.f7342b = new Rect[childCount];
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof C1836b) {
                        C1836b bVar = (C1836b) layoutParams;
                        float f = bVar.f7345a;
                        float f2 = bVar.f7346b;
                        float f3 = bVar.f7347c;
                        float f4 = bVar.f7348d;
                        if (f < 0.0f || f > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartRow between 0 and 1");
                        } else if (f2 < f || f > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1");
                        } else if (f4 < 0.0f || f4 > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartCol between 0 and 1");
                        } else if (f4 < f3 || f4 > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1");
                        } else {
                            float f5 = paddingLeft;
                            int i6 = (int) (f3 * f5);
                            float f6 = paddingTop;
                            this.f7342b[i5] = new Rect(i6, (int) (f * f6), (int) (f4 * f5), (int) (f2 * f6));
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (f5 * (f4 - f3)), 1073741824);
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                            if (childAt.getMeasuredHeight() > this.f7342b[i5].height()) {
                                int measuredHeight = ((childAt.getMeasuredHeight() - this.f7342b[i5].height()) + 1) / 2;
                                Rect[] rectArr = this.f7342b;
                                rectArr[i5].bottom += measuredHeight;
                                rectArr[i5].top -= measuredHeight;
                                if (rectArr[i5].top < 0) {
                                    rectArr[i5].bottom -= rectArr[i5].top;
                                    rectArr[i5].top = 0;
                                }
                                Rect[] rectArr2 = this.f7342b;
                                if (rectArr2[i5].bottom > paddingTop) {
                                    rectArr2[i5].top -= rectArr2[i5].bottom - paddingTop;
                                    rectArr2[i5].bottom = paddingTop;
                                }
                            }
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((int) (f6 * (f2 - f)), 1073741824));
                        }
                    } else {
                        throw new RuntimeException("A child of ScaledLayout cannot have the UNSPECIFIED scale factors");
                    }
                }
                int[] iArr = new int[childCount];
                Rect[] rectArr3 = new Rect[childCount];
                int i7 = 0;
                for (int i8 = 0; i8 < childCount; i8++) {
                    i7 = i7;
                    if (getChildAt(i8).getVisibility() == 0) {
                        iArr[i7] = i7;
                        rectArr3[i7] = this.f7342b[i8];
                        i7++;
                    }
                }
                Arrays.sort(rectArr3, 0, i7, this.f7341a);
                int i9 = 0;
                while (true) {
                    i3 = i7 - 1;
                    if (i9 < i3) {
                        int i10 = i9 + 1;
                        for (int i11 = i10; i11 < i7; i11++) {
                            if (Rect.intersects(rectArr3[i9], rectArr3[i11])) {
                                iArr[i11] = iArr[i9];
                                rectArr3[i11].set(rectArr3[i11].left, rectArr3[i9].bottom, rectArr3[i11].right, rectArr3[i9].bottom + rectArr3[i11].height());
                            }
                        }
                        i9 = i10;
                    }
                }
                for (i4 = i3; i4 >= 0; i4--) {
                    if (rectArr3[i4].bottom > paddingTop) {
                        int i12 = rectArr3[i4].bottom - paddingTop;
                        for (int i13 = 0; i13 <= i4; i13++) {
                            if (iArr[i4] == iArr[i13]) {
                                rectArr3[i13].set(rectArr3[i13].left, rectArr3[i13].top - i12, rectArr3[i13].right, rectArr3[i13].bottom - i12);
                            }
                        }
                    }
                }
                setMeasuredDimension(size, size2);
            }
        }

        public C1829a(C1828e eVar, Context context) {
            this(eVar, context, null);
        }

        public C1829a(C1828e eVar, Context context, AttributeSet attributeSet) {
            this(eVar, context, attributeSet, 0);
        }

        public C1829a(C1828e eVar, Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f7316g = new C1830a((C1831b) this.f7355d);
        }

        @Override // p012b.p076s.p118e.AbstractC1838f
        /* renamed from: a */
        public AbstractC1838f.AbstractC1840b mo31951a(Context context) {
            return new C1831b(context);
        }

        @Override // p012b.p076s.p118e.C1818d.AbstractC1827i
        /* renamed from: a */
        public void mo31997a(C1818d.C1821c cVar) {
            this.f7316g.m31993a(cVar);
            mo31861a(getWidth(), getHeight());
            AbstractC1866t.AbstractC1869c.AbstractC1870a aVar = this.f7354c;
            if (aVar != null) {
                aVar.mo31859a(this);
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            ((ViewGroup) this.f7355d).draw(canvas);
        }
    }

    /* renamed from: b.s.e.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/e/e$b.class */
    public static class C1837b extends AbstractC1866t {

        /* renamed from: i */
        public final C1818d f7350i;

        /* renamed from: j */
        public final C1829a f7351j;

        public C1837b(C1829a aVar, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.f7351j = aVar;
            this.f7350i = new C1818d(this.f7351j);
        }

        @Override // p012b.p076s.p118e.AbstractC1866t
        /* renamed from: a */
        public void mo31869a(byte[] bArr, boolean z, long j) {
            this.f7350i.m32008a(bArr);
        }

        @Override // p012b.p076s.p118e.AbstractC1866t
        /* renamed from: c */
        public AbstractC1866t.AbstractC1869c mo31867c() {
            return this.f7351j;
        }
    }

    public C1828e(Context context) {
        this.f7314a = context;
    }

    @Override // p012b.p076s.p118e.C1859s.AbstractC1865f
    /* renamed from: a */
    public AbstractC1866t mo31876a(MediaFormat mediaFormat) {
        if ("text/cea-708".equals(mediaFormat.getString("mime"))) {
            if (this.f7315b == null) {
                this.f7315b = new C1829a(this, this.f7314a);
            }
            return new C1837b(this.f7315b, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }

    @Override // p012b.p076s.p118e.C1859s.AbstractC1865f
    /* renamed from: b */
    public boolean mo31875b(MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-708".equals(mediaFormat.getString("mime"));
        }
        return false;
    }
}
