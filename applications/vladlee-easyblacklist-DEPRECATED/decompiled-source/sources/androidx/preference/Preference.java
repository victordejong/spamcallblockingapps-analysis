package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.content.p033a.C0645i;
import androidx.core.p037g.p038a.C0696d;
import androidx.preference.C1001ac;
import androidx.preference.C1042y;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/preference/Preference.class */
public class Preference implements Comparable<Preference> {

    /* renamed from: A */
    private boolean f4049A;

    /* renamed from: B */
    private boolean f4050B;

    /* renamed from: C */
    private boolean f4051C;

    /* renamed from: D */
    private boolean f4052D;

    /* renamed from: E */
    private boolean f4053E;

    /* renamed from: F */
    private boolean f4054F;

    /* renamed from: G */
    private int f4055G;

    /* renamed from: H */
    private int f4056H;

    /* renamed from: I */
    private AbstractC0990a f4057I;

    /* renamed from: J */
    private List<Preference> f4058J;

    /* renamed from: K */
    private PreferenceGroup f4059K;

    /* renamed from: L */
    private boolean f4060L;

    /* renamed from: M */
    private boolean f4061M;

    /* renamed from: N */
    private MenuItem$OnMenuItemClickListenerC0993d f4062N;

    /* renamed from: O */
    private AbstractC0994e f4063O;

    /* renamed from: P */
    private final View.OnClickListener f4064P;

    /* renamed from: a */
    private Context f4065a;

    /* renamed from: b */
    private C1042y f4066b;

    /* renamed from: c */
    private AbstractC1025m f4067c;

    /* renamed from: d */
    private long f4068d;

    /* renamed from: e */
    private boolean f4069e;

    /* renamed from: f */
    private AbstractC0991b f4070f;

    /* renamed from: g */
    private AbstractC0992c f4071g;

    /* renamed from: h */
    private int f4072h;

    /* renamed from: i */
    private int f4073i;

    /* renamed from: j */
    private CharSequence f4074j;

    /* renamed from: k */
    private CharSequence f4075k;

    /* renamed from: l */
    private int f4076l;

    /* renamed from: m */
    private Drawable f4077m;

    /* renamed from: n */
    private String f4078n;

    /* renamed from: o */
    private Intent f4079o;

    /* renamed from: p */
    private String f4080p;

    /* renamed from: q */
    private Bundle f4081q;

    /* renamed from: r */
    private boolean f4082r;

    /* renamed from: s */
    private boolean f4083s;

    /* renamed from: t */
    private boolean f4084t;

    /* renamed from: u */
    private String f4085u;

    /* renamed from: v */
    private Object f4086v;

    /* renamed from: w */
    private boolean f4087w;

    /* renamed from: x */
    private boolean f4088x;

    /* renamed from: y */
    private boolean f4089y;

    /* renamed from: z */
    private boolean f4090z;

    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$BaseSavedState.class */
    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new C1024l();

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.preference.Preference$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$a.class */
    public interface AbstractC0990a {
        /* renamed from: a */
        void mo7377a();

        /* renamed from: a */
        void mo7375a(Preference preference);
    }

    /* renamed from: androidx.preference.Preference$b */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$b.class */
    public interface AbstractC0991b {
        /* renamed from: a */
        boolean mo53a(Object obj);
    }

    /* renamed from: androidx.preference.Preference$c */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$c.class */
    public interface AbstractC0992c {
        /* renamed from: a */
        boolean mo52a(Preference preference);
    }

    /* renamed from: androidx.preference.Preference$d */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$d.class */
    private static final class MenuItem$OnMenuItemClickListenerC0993d implements MenuItem.OnMenuItemClickListener, View.OnCreateContextMenuListener {

        /* renamed from: a */
        private final Preference f4091a;

        MenuItem$OnMenuItemClickListenerC0993d(Preference preference) {
            this.f4091a = preference;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence m = this.f4091a.mo7455m();
            if (this.f4091a.m7493B() && !TextUtils.isEmpty(m)) {
                contextMenu.setHeaderTitle(m);
                contextMenu.add(0, 0, 0, C1001ac.C1007f.f4162a).setOnMenuItemClickListener(this);
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            ClipboardManager clipboardManager = (ClipboardManager) this.f4091a.m7491D().getSystemService("clipboard");
            CharSequence m = this.f4091a.mo7455m();
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", m));
            Toast.makeText(this.f4091a.m7491D(), this.f4091a.m7491D().getString(C1001ac.C1007f.f4165d, m), 0).show();
            return true;
        }
    }

    /* renamed from: androidx.preference.Preference$e */
    /* loaded from: classes-dex2jar.jar:androidx/preference/Preference$e.class */
    public interface AbstractC0994e<T extends Preference> {
        /* renamed from: a */
        CharSequence mo7444a(T t);
    }

    public Preference(Context context) {
        this(context, null);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0645i.m8637a(context, C1001ac.C1002a.f4145i, 16842894));
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Preference(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: a */
    private <T extends Preference> T m7472a(String str) {
        C1042y yVar = this.f4066b;
        if (yVar == null) {
            return null;
        }
        return (T) yVar.m7357a(str);
    }

    /* renamed from: a */
    private void m7483a(SharedPreferences.Editor editor) {
        if (this.f4066b.m7351f()) {
            editor.apply();
        }
    }

    /* renamed from: a */
    private void m7482a(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                m7482a(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    /* renamed from: a */
    private void m7477a(Preference preference) {
        List<Preference> list = this.f4058J;
        if (list != null) {
            list.remove(preference);
        }
    }

    /* renamed from: b */
    private AbstractC1025m m7470b() {
        AbstractC1025m mVar = this.f4067c;
        if (mVar != null) {
            return mVar;
        }
        C1042y yVar = this.f4066b;
        if (yVar != null) {
            return yVar.m7355b();
        }
        return null;
    }

    /* renamed from: c */
    private boolean m7466c() {
        return this.f4066b != null && this.f4084t && m7445z();
    }

    /* renamed from: d */
    private void m7462d() {
        Preference a;
        String str = this.f4085u;
        if (str != null && (a = m7472a(str)) != null) {
            a.m7477a(this);
        }
    }

    /* renamed from: f */
    private void m7458f(boolean z) {
        if (this.f4087w == z) {
            this.f4087w = !z;
            mo7433b(mo7409j());
            mo7456h();
        }
    }

    /* renamed from: A */
    public final boolean m7494A() {
        return this.f4084t;
    }

    /* renamed from: B */
    public final boolean m7493B() {
        return this.f4053E;
    }

    /* renamed from: C */
    public final AbstractC0994e m7492C() {
        return this.f4063O;
    }

    /* renamed from: D */
    public final Context m7491D() {
        return this.f4065a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: E */
    public final void m7490E() {
        AbstractC0990a aVar = this.f4057I;
        if (aVar != null) {
            aVar.mo7377a();
        }
    }

    /* renamed from: F */
    public final C1042y m7489F() {
        return this.f4066b;
    }

    /* renamed from: G */
    public void mo7441G() {
        if (!TextUtils.isEmpty(this.f4085u)) {
            Preference a = m7472a(this.f4085u);
            if (a != null) {
                if (a.f4058J == null) {
                    a.f4058J = new ArrayList();
                }
                a.f4058J.add(this);
                m7458f(a.mo7409j());
                return;
            }
            throw new IllegalStateException("Dependency \"" + this.f4085u + "\" not found for preference \"" + this.f4078n + "\" (title: \"" + ((Object) this.f4074j) + "\"");
        }
    }

    /* renamed from: H */
    public void mo7440H() {
        m7462d();
        this.f4060L = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public final void m7488I() {
        this.f4060L = false;
    }

    /* renamed from: J */
    public final PreferenceGroup m7487J() {
        return this.f4059K;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: K */
    public final void m7486K() {
        m7462d();
    }

    /* renamed from: a */
    protected Object mo7419a(TypedArray typedArray, int i) {
        return null;
    }

    /* renamed from: a */
    public final void m7485a(int i) {
        this.f4055G = i;
    }

    /* renamed from: a */
    public final void m7484a(Intent intent) {
        this.f4079o = intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo7439a(Bundle bundle) {
        if (m7445z()) {
            this.f4061M = false;
            Parcelable k = mo7408k();
            if (!this.f4061M) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            } else if (k != null) {
                bundle.putParcelable(this.f4078n, k);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7418a(Parcelable parcelable) {
        this.f4061M = true;
        if (parcelable != BaseSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7421a(View view) {
        Intent intent;
        C1042y.AbstractC1045c h;
        if (mo7442w() && this.f4083s) {
            mo7411g();
            AbstractC0992c cVar = this.f4071g;
            if (cVar != null) {
                cVar.mo52a(this);
                return;
            }
            C1042y yVar = this.f4066b;
            if ((yVar == null || (h = yVar.m7349h()) == null || !h.mo7345a(this)) && (intent = this.f4079o) != null) {
                this.f4065a.startActivity(intent);
            }
        }
    }

    @Deprecated
    /* renamed from: a */
    public void mo7443a(C0696d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7481a(AbstractC0990a aVar) {
        this.f4057I = aVar;
    }

    /* renamed from: a */
    public final void m7480a(AbstractC0991b bVar) {
        this.f4070f = bVar;
    }

    /* renamed from: a */
    public final void m7479a(AbstractC0992c cVar) {
        this.f4071g = cVar;
    }

    /* renamed from: a */
    public final void m7478a(AbstractC0994e eVar) {
        this.f4063O = eVar;
        mo7456h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m7476a(PreferenceGroup preferenceGroup) {
        if (preferenceGroup == null || this.f4059K == null) {
            this.f4059K = preferenceGroup;
            return;
        }
        throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo7401a(androidx.preference.C1000ab r6) {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.mo7401a(androidx.preference.ab):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m7475a(C1042y yVar) {
        this.f4066b = yVar;
        if (!this.f4069e) {
            this.f4068d = yVar.m7364a();
        }
        if (m7470b() != null) {
            mo7417a(this.f4086v);
            return;
        }
        if (m7466c()) {
            if (((this.f4066b == null || m7470b() != null) ? null : this.f4066b.m7354c()).contains(this.f4078n)) {
                mo7417a((Object) null);
                return;
            }
        }
        Object obj = this.f4086v;
        if (obj != null) {
            mo7417a(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m7474a(C1042y yVar, long j) {
        this.f4068d = j;
        this.f4069e = true;
        try {
            m7475a(yVar);
        } finally {
            this.f4069e = false;
        }
    }

    /* renamed from: a */
    public void mo7473a(CharSequence charSequence) {
        if (this.f4063O != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        } else if (!TextUtils.equals(this.f4075k, charSequence)) {
            this.f4075k = charSequence;
            mo7456h();
        }
    }

    /* renamed from: a */
    protected void mo7417a(Object obj) {
    }

    /* renamed from: a */
    public final void m7471a(boolean z) {
        if (this.f4082r != z) {
            this.f4082r = z;
            mo7433b(mo7409j());
            mo7456h();
        }
    }

    /* renamed from: b */
    public final void m7469b(int i) {
        if (i != this.f4072h) {
            this.f4072h = i;
            m7490E();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void mo7436b(Bundle bundle) {
        Parcelable parcelable;
        if (m7445z() && (parcelable = bundle.getParcelable(this.f4078n)) != null) {
            this.f4061M = false;
            mo7418a(parcelable);
            if (!this.f4061M) {
                throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
            }
        }
    }

    /* renamed from: b */
    public void mo7433b(boolean z) {
        List<Preference> list = this.f4058J;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i).m7458f(z);
            }
        }
    }

    /* renamed from: b */
    public final boolean m7468b(Object obj) {
        AbstractC0991b bVar = this.f4070f;
        return bVar == null || bVar.mo53a(obj);
    }

    /* renamed from: b */
    public final boolean m7467b(Set<String> set) {
        if (!m7466c()) {
            return false;
        }
        if (set.equals(m7464c((Set<String>) null))) {
            return true;
        }
        if (m7470b() == null) {
            SharedPreferences.Editor e = this.f4066b.m7352e();
            e.putStringSet(this.f4078n, set);
            m7483a(e);
            return true;
        }
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    /* renamed from: c */
    public final Set<String> m7464c(Set<String> set) {
        if (m7466c() && m7470b() == null) {
            return this.f4066b.m7354c().getStringSet(this.f4078n, set);
        }
        return set;
    }

    /* renamed from: c */
    public final void m7465c(int i) {
        String string = this.f4065a.getString(i);
        if ((string == null && this.f4074j != null) || (string != null && !string.equals(this.f4074j))) {
            this.f4074j = string;
            mo7456h();
        }
    }

    /* renamed from: c */
    public final void m7463c(boolean z) {
        if (this.f4088x == z) {
            this.f4088x = !z;
            mo7433b(mo7409j());
            mo7456h();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public boolean mo3c(String str) {
        if (!m7466c()) {
            return false;
        }
        if (TextUtils.equals(str, mo2d((String) null))) {
            return true;
        }
        if (m7470b() == null) {
            SharedPreferences.Editor e = this.f4066b.m7352e();
            e.putString(this.f4078n, str);
            m7483a(e);
            return true;
        }
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i = this.f4072h;
        int i2 = preference2.f4072h;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.f4074j;
        CharSequence charSequence2 = preference2.f4074j;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.f4074j.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public String mo2d(String str) {
        if (m7466c() && m7470b() == null) {
            return this.f4066b.m7354c().getString(this.f4078n, str);
        }
        return str;
    }

    /* renamed from: d */
    public final void m7461d(int i) {
        Drawable b = C0258a.m9951b(this.f4065a, i);
        if (this.f4077m != b) {
            this.f4077m = b;
            this.f4076l = 0;
            mo7456h();
        }
        this.f4076l = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public boolean mo1d(boolean z) {
        if (!m7466c()) {
            return false;
        }
        if (z == mo0e(!z)) {
            return true;
        }
        if (m7470b() == null) {
            SharedPreferences.Editor e = this.f4066b.m7352e();
            e.putBoolean(this.f4078n, z);
            m7483a(e);
            return true;
        }
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    /* renamed from: e */
    public final void m7460e(int i) {
        mo7473a((CharSequence) this.f4065a.getString(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public boolean mo0e(boolean z) {
        if (m7466c() && m7470b() == null) {
            return this.f4066b.m7354c().getBoolean(this.f4078n, z);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: f */
    public final boolean m7459f(int i) {
        if (!m7466c()) {
            return false;
        }
        if (i == m7457g(i ^ (-1))) {
            return true;
        }
        if (m7470b() == null) {
            SharedPreferences.Editor e = this.f4066b.m7352e();
            e.putInt(this.f4078n, i);
            m7483a(e);
            return true;
        }
        throw new UnsupportedOperationException("Not implemented on this data store");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public final int m7457g(int i) {
        if (m7466c() && m7470b() == null) {
            return this.f4066b.m7354c().getInt(this.f4078n, i);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public void mo7411g() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public void mo7456h() {
        AbstractC0990a aVar = this.f4057I;
        if (aVar != null) {
            aVar.mo7375a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i_ */
    public long mo7400i_() {
        return this.f4068d;
    }

    /* renamed from: j */
    public boolean mo7409j() {
        return !mo7442w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public Parcelable mo7408k() {
        this.f4061M = true;
        return BaseSavedState.EMPTY_STATE;
    }

    /* renamed from: m */
    public CharSequence mo7455m() {
        AbstractC0994e eVar = this.f4063O;
        return eVar != null ? eVar.mo7444a(this) : this.f4075k;
    }

    /* renamed from: p */
    public final Intent m7454p() {
        return this.f4079o;
    }

    /* renamed from: q */
    public final String m7453q() {
        return this.f4080p;
    }

    /* renamed from: r */
    public final Bundle m7452r() {
        if (this.f4081q == null) {
            this.f4081q = new Bundle();
        }
        return this.f4081q;
    }

    /* renamed from: s */
    public final int m7451s() {
        return this.f4055G;
    }

    /* renamed from: t */
    public final int m7450t() {
        return this.f4056H;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.f4074j;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence m = mo7455m();
        if (!TextUtils.isEmpty(m)) {
            sb.append(m);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    /* renamed from: u */
    public final int m7449u() {
        return this.f4072h;
    }

    /* renamed from: v */
    public final CharSequence m7448v() {
        return this.f4074j;
    }

    /* renamed from: w */
    public boolean mo7442w() {
        return this.f4082r && this.f4087w && this.f4088x;
    }

    /* renamed from: x */
    public final boolean m7447x() {
        return this.f4089y;
    }

    /* renamed from: y */
    public final String m7446y() {
        return this.f4078n;
    }

    /* renamed from: z */
    public final boolean m7445z() {
        return !TextUtils.isEmpty(this.f4078n);
    }
}
