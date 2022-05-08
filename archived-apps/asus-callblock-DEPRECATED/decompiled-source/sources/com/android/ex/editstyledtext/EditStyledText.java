package com.android.ex.editstyledtext;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.text.ClipboardManager;
import android.text.Editable;
import android.text.Html;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.ArrowKeyMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.DynamicDrawableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.asus.updatesdk.BuildConfig;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText.class */
public class EditStyledText extends EditText {

    /* renamed from: b  reason: collision with root package name */
    private static CharSequence f2220b;
    private static CharSequence c;
    private static CharSequence d;
    private static final NoCopySpan.Concrete k = new NoCopySpan.Concrete();

    /* renamed from: a  reason: collision with root package name */
    e f2221a;
    private float e = 0.0f;
    private ArrayList<c> f;
    private Drawable g;
    private InputConnection h;
    private h i;
    private i j;

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$SavedStyledTextState.class */
    public static class SavedStyledTextState extends View.BaseSavedState {

        /* renamed from: a  reason: collision with root package name */
        public int f2222a;

        SavedStyledTextState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "EditStyledText.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " bgcolor=" + this.f2222a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2222a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver.class */
    public static class SoftKeyReceiver extends ResultReceiver {

        /* renamed from: a  reason: collision with root package name */
        int f2223a;

        /* renamed from: b  reason: collision with root package name */
        int f2224b;
        EditStyledText c;

        SoftKeyReceiver(EditStyledText editStyledText) {
            super(editStyledText.getHandler());
            this.c = editStyledText;
        }

        @Override // android.os.ResultReceiver
        protected void onReceiveResult(int i, Bundle bundle) {
            if (i != 2) {
                Selection.setSelection(this.c.getText(), this.f2223a, this.f2224b);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$a.class */
    public static final class a extends ShapeDrawable {

        /* renamed from: a  reason: collision with root package name */
        private Rect f2225a;

        public a(int i, int i2, int i3, int i4) {
            super(new RectShape());
            this.f2225a = new Rect(i4, i4, i2 - i4, i3 - i4);
            getPaint().setColor(i);
        }

        @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            canvas.drawRect(this.f2225a, getPaint());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        EditStyledText f2226a;

        /* renamed from: b  reason: collision with root package name */
        e f2227b;
        i c;
        int d = 0;
        private HashMap<Integer, h> f = new HashMap<>();
        private m g = new m();
        private f h = new f();
        private n i = new n();
        private q j = new q();
        private g k = new g();
        private r l = new r();
        private j m = new j();
        private w n = new w();
        private d o = new d();
        private k p = new k();
        private C0057b q = new C0057b();
        private o r = new o();
        private c s = new c();
        private z t = new z();
        private v u = new v();
        private i v = new i();
        private p w = new p();
        private t x = new t();
        private a y = new a();
        private y z = new y();
        private x A = new x();
        private l B = new l();
        private e C = new e();
        private u D = new u();

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$a.class */
        public final class a extends s {
            public a() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.s, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                boolean z = false;
                if (super.a()) {
                    return true;
                }
                final i iVar = b.this.c;
                Log.d("EditStyledText", "--- onShowAlignAlertDialog");
                Log.d("EditStyledText", "--- checkAlignAlertParams");
                if (iVar.f2268a == null) {
                    Log.e("EditStyledText", "--- builder is null.");
                } else if (iVar.e == null) {
                    Log.e("EditStyledText", "--- align alert params are null.");
                } else {
                    z = true;
                }
                if (!z) {
                    return true;
                }
                iVar.a(iVar.e, iVar.l, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                        switch (i) {
                            case 0:
                                alignment = Layout.Alignment.ALIGN_NORMAL;
                                break;
                            case 1:
                                alignment = Layout.Alignment.ALIGN_CENTER;
                                break;
                            case 2:
                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                break;
                            default:
                                Log.e("EditStyledText", "--- onShowAlignAlertDialog: got illigal align.");
                                break;
                        }
                        i.this.o.setAlignment(alignment);
                    }
                });
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$aa.class */
        public class aa extends h {
            public aa() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                boolean z;
                if (b.this.f2227b.f == 0 || b.this.f2227b.f == 5) {
                    b.this.f2227b.f = b.this.d;
                    b.this.a();
                    z = true;
                } else {
                    z = false;
                }
                return z;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected boolean d() {
                boolean z = true;
                if (b.this.f2227b.f == 0 || b.this.f2227b.f == 5) {
                    b.this.f2227b.f = b.this.d;
                    f();
                    b.this.b();
                } else if (b.this.f2227b.f != b.this.d) {
                    b.this.f2227b.h();
                    b.this.f2227b.f = b.this.d;
                    b.this.b();
                } else {
                    z = false;
                }
                return z;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$b$b  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$b.class */
        public final class C0057b extends h {
            public C0057b() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                i iVar = b.this.c;
                Log.d("EditStyledText", "--- onShowBackgroundColorAlertDialog");
                if (!iVar.a()) {
                    return true;
                }
                int[] iArr = new int[iVar.h.length];
                for (int i = 0; i < iArr.length; i++) {
                    iArr[i] = Integer.parseInt((String) iVar.h[i], 16) - 16777216;
                }
                iVar.a(1, iVar.c, iArr);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$c.class */
        public final class c extends h {
            public c() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                EditStyledText.g(b.this.f2226a);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$d.class */
        public final class d extends h {
            public d() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                Object[] spans;
                e eVar = b.this.f2227b;
                Log.d("EditStyledText.EditorManager", "--- onClearStyles");
                Editable text = eVar.n.getText();
                Log.d("EditStyledText", "--- onClearStyles");
                int length = text.length();
                if (text instanceof Editable) {
                    Editable editable = text;
                    for (Object obj : editable.getSpans(0, length, Object.class)) {
                        if ((obj instanceof ParagraphStyle) || (obj instanceof QuoteSpan) || ((obj instanceof CharacterStyle) && !(obj instanceof UnderlineSpan))) {
                            if ((obj instanceof ImageSpan) || (obj instanceof d.b)) {
                                editable.replace(editable.getSpanStart(obj), editable.getSpanEnd(obj), BuildConfig.FLAVOR);
                            }
                            editable.removeSpan(obj);
                        }
                    }
                }
                eVar.n.setBackgroundDrawable(eVar.n.g);
                eVar.l = 16777215;
                Editable text2 = eVar.n.getText();
                int i = 0;
                while (i < text2.length()) {
                    int i2 = i;
                    if (text2.charAt(i) == 8288) {
                        text2.replace(i, i + 1, BuildConfig.FLAVOR);
                        i2 = i - 1;
                    }
                    i = i2 + 1;
                }
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$e.class */
        public final class e extends s {
            public e() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.s, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                if (super.a()) {
                    return true;
                }
                i.a(b.this.c);
                return true;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean c() {
                if (super.c()) {
                    return true;
                }
                int i = b.this.f2227b.k;
                b.this.f2227b.b(b.this.f2227b.j, false);
                if (!b.this.f2227b.d) {
                    b.this.f2227b.a(i, false);
                    b.this.f2227b.h();
                    return true;
                }
                f();
                i.a(b.this.c);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$f.class */
        public final class f extends aa {
            public f() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.aa, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean d() {
                if (super.d()) {
                    return true;
                }
                b.this.f2227b.g();
                b.this.f2227b.h();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$g.class */
        public final class g extends aa {
            public g() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.aa, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean d() {
                if (super.d()) {
                    return true;
                }
                e eVar = b.this.f2227b;
                eVar.g();
                eVar.n.getText().delete(Math.min(eVar.h, eVar.i), Math.max(eVar.h, eVar.i));
                b.this.f2227b.h();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$h.class */
        public class h {

            /* renamed from: b  reason: collision with root package name */
            Object[] f2235b;

            public h() {
            }

            protected boolean a() {
                return d();
            }

            protected boolean b() {
                return false;
            }

            protected boolean c() {
                return d();
            }

            protected boolean d() {
                return e();
            }

            protected boolean e() {
                return b();
            }

            protected final boolean f() {
                EditStyledText.f(b.this.f2226a);
                b.this.f2227b.g = 3;
                return true;
            }

            protected final Object g() {
                Object obj;
                if (this.f2235b == null || this.f2235b.length < 0) {
                    Log.d("EditModeActions", "--- Number of the parameter is out of bound.");
                    obj = null;
                } else {
                    obj = this.f2235b[0];
                }
                return obj;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$i.class */
        public final class i extends h {
            public i() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                b.this.f2227b.e();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$j.class */
        public final class j extends h {
            public j() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                int i;
                e eVar = b.this.f2227b;
                Log.d("EditStyledText.EditorManager", "--- onInsertHorizontalLine:");
                int selectionStart = eVar.n.getSelectionStart();
                if (selectionStart <= 0 || eVar.n.getText().charAt(selectionStart - 1) == '\n') {
                    i = selectionStart;
                } else {
                    i = selectionStart + 1;
                    eVar.n.getText().insert(selectionStart, "\n");
                }
                int i2 = i + 1;
                eVar.a(new d.b(eVar.n.getWidth(), eVar.n.getText()), i);
                eVar.n.getText().insert(i2, "\n");
                eVar.n.setSelection(i2 + 1);
                EditStyledText.a(eVar.n);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$k.class */
        public final class k extends h {
            public k() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                Object g = g();
                if (g == null) {
                    EditStyledText.h(b.this.f2226a);
                    return true;
                } else if (g instanceof Uri) {
                    e eVar = b.this.f2227b;
                    eVar.a(new d.C0058d(eVar.n.getContext(), (Uri) g, eVar.n.a(300)), eVar.n.getSelectionStart());
                    return true;
                } else if (!(g instanceof Integer)) {
                    return true;
                } else {
                    e eVar2 = b.this.f2227b;
                    eVar2.a(new d.C0058d(eVar2.n.getContext(), ((Integer) g).intValue(), EditStyledText.d()), eVar2.n.getSelectionStart());
                    return true;
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$l.class */
        public final class l extends s {
            public l() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.s, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                boolean z = false;
                if (super.a()) {
                    return true;
                }
                final i iVar = b.this.c;
                Log.d("EditStyledText", "--- onShowMarqueeAlertDialog");
                Log.d("EditStyledText", "--- checkMarqueeAlertParams");
                if (iVar.f2268a == null) {
                    Log.e("EditStyledText", "--- builder is null.");
                } else if (iVar.f == null) {
                    Log.e("EditStyledText", "--- Marquee alert params are null.");
                } else {
                    z = true;
                }
                if (!z) {
                    return true;
                }
                iVar.a(iVar.f, iVar.m, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        Log.d("EditStyledText", "mBuilder.onclick:" + i);
                        i.this.o.setMarquee(i);
                    }
                });
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$m.class */
        public final class m extends h {
            public m() {
                super();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$n.class */
        public final class n extends h {
            public n() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                boolean z;
                DynamicDrawableSpan[] dynamicDrawableSpanArr;
                e eVar = b.this.f2227b;
                int min = Math.min(eVar.n.getSelectionStart(), eVar.n.getSelectionEnd());
                int max = Math.max(eVar.n.getSelectionStart(), eVar.n.getSelectionEnd());
                Selection.setSelection(eVar.n.getText(), max);
                ClipboardManager clipboardManager = (ClipboardManager) EditStyledText.this.getContext().getSystemService("clipboard");
                eVar.c = true;
                eVar.n.getText().replace(min, max, clipboardManager.getText());
                CharSequence text = clipboardManager.getText();
                Log.d("EditStyledText", "--- isClipBoardChanged:" + ((Object) text));
                if (eVar.q != null) {
                    int length = text.length();
                    SpannableStringBuilder a2 = e.a(eVar.q);
                    Log.d("EditStyledText", "--- clipBoard:" + length + "," + ((Object) a2) + ((Object) text));
                    if (length == a2.length()) {
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            } else if (text.charAt(i) != a2.charAt(i)) {
                                z = true;
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        z = true;
                    }
                } else {
                    z = true;
                }
                if (!z) {
                    Log.d("EditStyledText", "--- handlePaste: startPasteImage");
                    for (DynamicDrawableSpan dynamicDrawableSpan : (DynamicDrawableSpan[]) eVar.q.getSpans(0, eVar.q.length(), DynamicDrawableSpan.class)) {
                        int spanStart = eVar.q.getSpanStart(dynamicDrawableSpan);
                        if (dynamicDrawableSpan instanceof d.b) {
                            eVar.a(new d.b(eVar.n.getWidth(), eVar.n.getText()), spanStart + min);
                        } else if (dynamicDrawableSpan instanceof d.C0058d) {
                            eVar.a(new d.C0058d(eVar.n.getContext(), ((d.C0058d) dynamicDrawableSpan).f2258a, eVar.n.a(300)), min + spanStart);
                        }
                    }
                }
                b.this.f2227b.h();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$o.class */
        public final class o extends h {
            public o() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                EditStyledText.i(b.this.f2226a);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$p.class */
        public final class p extends h {
            public p() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                b.this.f2227b.h();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$q.class */
        public final class q extends h {
            public q() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                return false;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                if (e.a(b.this.f2227b)) {
                    Log.e("EditModeActions", "Selection is off, but selected");
                }
                e eVar = b.this.f2227b;
                Log.d("EditStyledText.EditorManager", "--- setSelectStartPos");
                eVar.h = eVar.n.getSelectionStart();
                eVar.g = 1;
                EditStyledText.d(b.this.f2226a);
                return true;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean e() {
                if (e.a(b.this.f2227b)) {
                    Log.e("EditModeActions", "Selection now start, but selected");
                }
                e eVar = b.this.f2227b;
                if (eVar.n.getSelectionEnd() == eVar.h) {
                    eVar.b(eVar.n.getSelectionStart());
                } else {
                    eVar.b(eVar.n.getSelectionEnd());
                }
                EditStyledText.d(b.this.f2226a);
                if (b.this.f2227b.f == 5) {
                    return true;
                }
                b.this.b(b.this.f2227b.f);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$r.class */
        public final class r extends h {
            public r() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                e eVar = b.this.f2227b;
                Selection.selectAll(eVar.n.getText());
                eVar.h = eVar.n.getSelectionStart();
                eVar.i = eVar.n.getSelectionEnd();
                eVar.f = 5;
                eVar.g = 3;
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$s.class */
        public class s extends h {
            public s() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected boolean a() {
                boolean z;
                if (d()) {
                    z = true;
                } else {
                    EditStyledText.d(b.this.f2226a);
                    z = false;
                }
                return z;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                boolean z = true;
                if (b.this.f2227b.f == 0 || b.this.f2227b.f == 5) {
                    b.this.f2227b.f = b.this.d;
                    e eVar = b.this.f2227b;
                    int selectionStart = b.this.f2226a.getSelectionStart();
                    int selectionEnd = b.this.f2226a.getSelectionEnd();
                    eVar.h = selectionStart;
                    eVar.i = selectionEnd;
                    f();
                    b.this.b();
                } else if (b.this.f2227b.f != b.this.d) {
                    Log.d("EditModeActions", "--- setspanactionbase" + b.this.f2227b.f + "," + b.this.d);
                    if (!b.this.f2227b.d) {
                        b.this.f2227b.h();
                        b.this.f2227b.f = b.this.d;
                    } else {
                        b.this.f2227b.f = 0;
                        b.this.f2227b.g = 0;
                    }
                    b.this.b();
                } else {
                    z = false;
                }
                return z;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean d() {
                boolean z;
                if (b.this.f2227b.f == 0 || b.this.f2227b.f == 5) {
                    b.this.f2227b.f = b.this.d;
                    f();
                    b.this.b();
                    z = true;
                } else {
                    z = e();
                }
                return z;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean e() {
                boolean z;
                if (b.this.f2227b.f == 0 || b.this.f2227b.f == 5) {
                    b.this.f2227b.f = b.this.d;
                    b.this.a();
                    z = true;
                } else {
                    z = b();
                }
                return z;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$t.class */
        public final class t extends h {
            public t() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                EditStyledText.j(b.this.f2226a);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$u.class */
        public final class u extends s {
            public u() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.s, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                if (super.a()) {
                    return true;
                }
                i.b(b.this.c);
                return true;
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean c() {
                if (super.c()) {
                    return true;
                }
                int i = b.this.f2227b.j;
                b.this.f2227b.a(b.this.f2227b.k, false);
                if (!b.this.f2227b.d) {
                    b.this.f2227b.b(i, false);
                    b.this.f2227b.h();
                    return true;
                }
                f();
                i.b(b.this.c);
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$v.class */
        public final class v extends h {
            public v() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                e eVar = b.this.f2227b;
                eVar.h();
                eVar.a(eVar.n.getSelectionStart(), eVar.n.getSelectionEnd());
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$w.class */
        public final class w extends h {
            public w() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean b() {
                b.this.f2227b.f();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$x.class */
        public final class x extends s {
            public x() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.s, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                if (super.a()) {
                    return true;
                }
                e eVar = b.this.f2227b;
                if (eVar.g != 2 && eVar.g != 3) {
                    return true;
                }
                eVar.c(0);
                eVar.h();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$y.class */
        public final class y extends s {
            public y() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.s, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean a() {
                if (super.a()) {
                    return true;
                }
                e eVar = b.this.f2227b;
                if (eVar.g != 2 && eVar.g != 3) {
                    return true;
                }
                eVar.c(1);
                eVar.h();
                return true;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b$z.class */
        public final class z extends aa {
            public z() {
                super();
            }

            @Override // com.android.ex.editstyledtext.EditStyledText.b.aa, com.android.ex.editstyledtext.EditStyledText.b.h
            protected final boolean d() {
                if (super.d()) {
                    return true;
                }
                Object g = g();
                if (g != null && (g instanceof Integer)) {
                    b.this.f2226a.onTextContextMenuItem(((Integer) g).intValue());
                }
                b.this.f2227b.h();
                return true;
            }
        }

        b(EditStyledText editStyledText, e eVar, i iVar) {
            this.f2226a = editStyledText;
            this.f2227b = eVar;
            this.c = iVar;
            this.f.put(0, this.g);
            this.f.put(1, this.h);
            this.f.put(2, this.i);
            this.f.put(5, this.j);
            this.f.put(7, this.k);
            this.f.put(11, this.l);
            this.f.put(12, this.m);
            this.f.put(13, this.n);
            this.f.put(14, this.o);
            this.f.put(15, this.p);
            this.f.put(16, this.q);
            this.f.put(17, this.r);
            this.f.put(18, this.s);
            this.f.put(19, this.t);
            this.f.put(20, this.u);
            this.f.put(21, this.v);
            this.f.put(22, this.w);
            this.f.put(23, this.x);
            this.f.put(6, this.y);
            this.f.put(8, this.z);
            this.f.put(9, this.A);
            this.f.put(10, this.B);
            this.f.put(4, this.C);
            this.f.put(3, this.D);
        }

        private h c(int i2) {
            return this.f.containsKey(Integer.valueOf(i2)) ? this.f.get(Integer.valueOf(i2)) : null;
        }

        public final void a() {
            b(5);
        }

        public final void a(int i2) {
            c(i2).f2235b = null;
            this.d = i2;
            b(i2);
        }

        public final boolean b() {
            return b(this.d);
        }

        public final boolean b(int i2) {
            boolean z2 = false;
            Log.d("EditModeActions", "--- do the next action: " + i2 + "," + this.f2227b.g);
            h c2 = c(i2);
            if (c2 != null) {
                switch (this.f2227b.g) {
                    case 0:
                        z2 = c2.b();
                        break;
                    case 1:
                        z2 = c2.e();
                        break;
                    case 2:
                        z2 = c2.d();
                        break;
                    case 3:
                        if (!this.f2227b.d) {
                            z2 = c2.a();
                            break;
                        } else {
                            z2 = c2.c();
                            break;
                        }
                }
            } else {
                Log.e("EditModeActions", "--- invalid action error.");
            }
            return z2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c.class */
    public interface c {
        boolean a();

        boolean b();

        boolean c();

        boolean d();
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$d.class */
    public static final class d {

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$d$a.class */
        public static final class a extends ShapeDrawable {
            private static boolean c = false;

            /* renamed from: a  reason: collision with root package name */
            private Spannable f2253a;

            /* renamed from: b  reason: collision with root package name */
            private int f2254b;

            public a(int i, Spannable spannable) {
                super(new RectShape());
                this.f2253a = spannable;
                this.f2254b = i;
                b(-16777216);
                a(i);
            }

            private void b(int i) {
                if (c) {
                    Log.d("EditStyledTextSpan", "--- renewColor:" + i);
                }
                getPaint().setColor(i);
            }

            public final void a(int i) {
                if (c) {
                    Log.d("EditStyledTextSpan", "--- renewBounds:" + i);
                }
                int i2 = i;
                if (i > 20) {
                    i2 = i - 20;
                }
                this.f2254b = i2;
                setBounds(0, 0, i2, 20);
            }

            @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
            public final void draw(Canvas canvas) {
                b bVar;
                Spannable spannable = this.f2253a;
                b[] bVarArr = (b[]) spannable.getSpans(0, spannable.length(), b.class);
                if (bVarArr.length > 0) {
                    int length = bVarArr.length;
                    for (int i = 0; i < length; i++) {
                        bVar = bVarArr[i];
                        if (bVar.getDrawable() == this) {
                            break;
                        }
                    }
                }
                Log.e("EditStyledTextSpan", "---renewBounds: Couldn't find");
                bVar = null;
                Spannable spannable2 = this.f2253a;
                ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannable2.getSpans(spannable2.getSpanStart(bVar), spannable2.getSpanEnd(bVar), ForegroundColorSpan.class);
                if (c) {
                    Log.d("EditStyledTextSpan", "--- renewColor:" + foregroundColorSpanArr.length);
                }
                if (foregroundColorSpanArr.length > 0) {
                    b(foregroundColorSpanArr[foregroundColorSpanArr.length - 1].getForegroundColor());
                }
                canvas.drawRect(new Rect(0, 9, this.f2254b, 11), getPaint());
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$d$b.class */
        public static class b extends DynamicDrawableSpan {

            /* renamed from: a  reason: collision with root package name */
            a f2255a;

            public b(int i, Spannable spannable) {
                super(0);
                this.f2255a = new a(i, spannable);
            }

            @Override // android.text.style.DynamicDrawableSpan
            public Drawable getDrawable() {
                return this.f2255a;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$d$c.class */
        public static class c extends CharacterStyle {

            /* renamed from: a  reason: collision with root package name */
            int f2256a;

            /* renamed from: b  reason: collision with root package name */
            int f2257b;

            public c(int i, int i2) {
                this.f2256a = i;
                if (!(i == 0 || i == 1)) {
                    Log.e("EditStyledTextSpan", "--- Invalid type of MarqueeSpan");
                }
                this.f2257b = a(i, i2);
            }

            static int a(int i, int i2) {
                int i3;
                int i4;
                int i5;
                int alpha = Color.alpha(i2);
                int red = Color.red(i2);
                int green = Color.green(i2);
                int blue = Color.blue(i2);
                int i6 = alpha;
                if (alpha == 0) {
                    i6 = 128;
                }
                switch (i) {
                    case 0:
                        if (red > 128) {
                            i5 = red / 2;
                            i4 = green;
                        } else {
                            i5 = (255 - red) / 2;
                            i4 = green;
                        }
                        i3 = Color.argb(i6, i5, i4, blue);
                        break;
                    case 1:
                        if (green > 128) {
                            i4 = green / 2;
                            i5 = red;
                        } else {
                            i4 = (255 - green) / 2;
                            i5 = red;
                        }
                        i3 = Color.argb(i6, i5, i4, blue);
                        break;
                    case 2:
                        i3 = 16777215;
                        break;
                    default:
                        Log.e("EditStyledText", "--- getMarqueeColor: got illigal marquee ID.");
                        i3 = 16777215;
                        break;
                }
                return i3;
            }

            @Override // android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.bgColor = this.f2257b;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$d$d  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$d$d.class */
        public static final class C0058d extends ImageSpan {

            /* renamed from: a  reason: collision with root package name */
            Uri f2258a;

            /* renamed from: b  reason: collision with root package name */
            public int f2259b = -1;
            public int c = -1;
            private Drawable d;
            private Context e;
            private final int f;

            public C0058d(Context context, int i, int i2) {
                super(context, i);
                this.e = context;
                this.f = i2;
            }

            public C0058d(Context context, Uri uri, int i) {
                super(context, uri);
                this.e = context;
                this.f2258a = uri;
                this.f = i;
            }

            @Override // android.text.style.ImageSpan, android.text.style.DynamicDrawableSpan
            public final Drawable getDrawable() {
                Drawable drawable;
                Bitmap decodeStream;
                if (this.d != null) {
                    drawable = this.d;
                } else {
                    if (this.f2258a != null) {
                        System.gc();
                        try {
                            InputStream openInputStream = this.e.getContentResolver().openInputStream(this.f2258a);
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inJustDecodeBounds = true;
                            BitmapFactory.decodeStream(openInputStream, null, options);
                            openInputStream.close();
                            InputStream openInputStream2 = this.e.getContentResolver().openInputStream(this.f2258a);
                            int i = options.outWidth;
                            int i2 = options.outHeight;
                            this.f2259b = i;
                            this.c = i2;
                            if (options.outWidth > this.f) {
                                i = this.f;
                                i2 = (i2 * this.f) / options.outWidth;
                                decodeStream = BitmapFactory.decodeStream(openInputStream2, new Rect(0, 0, i, i2), null);
                            } else {
                                decodeStream = BitmapFactory.decodeStream(openInputStream2);
                            }
                            this.d = new BitmapDrawable(this.e.getResources(), decodeStream);
                            this.d.setBounds(0, 0, i, i2);
                            openInputStream2.close();
                        } catch (Exception e) {
                            Log.e("EditStyledTextSpan", "Failed to loaded content " + this.f2258a, e);
                            drawable = null;
                        } catch (OutOfMemoryError e2) {
                            Log.e("EditStyledTextSpan", "OutOfMemoryError");
                            drawable = null;
                        }
                    } else {
                        this.d = super.getDrawable();
                        Drawable drawable2 = this.d;
                        Log.d("EditStyledTextSpan", "--- rescaleBigImage:");
                        if (this.f >= 0) {
                            int intrinsicWidth = drawable2.getIntrinsicWidth();
                            int intrinsicHeight = drawable2.getIntrinsicHeight();
                            Log.d("EditStyledTextSpan", "--- rescaleBigImage:" + intrinsicWidth + "," + intrinsicHeight + "," + this.f);
                            int i3 = intrinsicHeight;
                            int i4 = intrinsicWidth;
                            if (intrinsicWidth > this.f) {
                                i4 = this.f;
                                i3 = (intrinsicHeight * this.f) / i4;
                            }
                            drawable2.setBounds(0, 0, i4, i3);
                        }
                        this.f2259b = this.d.getIntrinsicWidth();
                        this.c = this.d.getIntrinsicHeight();
                    }
                    drawable = this.d;
                }
                return drawable;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$e.class */
    public final class e {

        /* renamed from: a  reason: collision with root package name */
        boolean f2260a = false;

        /* renamed from: b  reason: collision with root package name */
        boolean f2261b = false;
        boolean c = false;
        boolean d = false;
        boolean e = false;
        int f = 0;
        int g = 0;
        int h = 0;
        int i = 0;
        int j = 16777215;
        int k = 0;
        int l = 16777215;
        BackgroundColorSpan m;
        EditStyledText n;
        b o;
        SoftKeyReceiver p;
        SpannableStringBuilder q;

        e(EditStyledText editStyledText, i iVar) {
            this.n = editStyledText;
            this.o = new b(this.n, this, iVar);
            this.p = new SoftKeyReceiver(this.n);
        }

        static int a(Editable editable, int i) {
            int i2 = i;
            while (i2 > 0 && editable.charAt(i2 - 1) != '\n') {
                i2--;
            }
            Log.d("EditStyledText.EditorManager", "--- findLineStart:" + i + "," + editable.length() + "," + i2);
            return i2;
        }

        static SpannableStringBuilder a(SpannableStringBuilder spannableStringBuilder) {
            DynamicDrawableSpan[] dynamicDrawableSpanArr;
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
            for (DynamicDrawableSpan dynamicDrawableSpan : (DynamicDrawableSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), DynamicDrawableSpan.class)) {
                if ((dynamicDrawableSpan instanceof d.b) || (dynamicDrawableSpan instanceof d.C0058d)) {
                    spannableStringBuilder2.replace(spannableStringBuilder2.getSpanStart(dynamicDrawableSpan), spannableStringBuilder2.getSpanEnd(dynamicDrawableSpan), (CharSequence) BuildConfig.FLAVOR);
                }
            }
            return spannableStringBuilder2;
        }

        private static void a(CharSequence charSequence) {
            Object[] spans;
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                int length = spannable.length();
                Log.d("EditStyledText", "--- dumpSpannableString, txt:" + ((Object) spannable) + ", len:" + length);
                for (Object obj : spannable.getSpans(0, length, Object.class)) {
                    Log.d("EditStyledText", "--- dumpSpannableString, class:" + obj + "," + spannable.getSpanStart(obj) + "," + spannable.getSpanEnd(obj) + "," + spannable.getSpanFlags(obj));
                }
            }
        }

        private void a(Object obj, int i, int i2) {
            Log.d("EditStyledText.EditorManager", "--- setStyledTextSpan:" + this.f + "," + i + "," + i2);
            int min = Math.min(i, i2);
            int max = Math.max(i, i2);
            this.n.getText().setSpan(obj, min, max, 33);
            Selection.setSelection(this.n.getText(), max);
        }

        static /* synthetic */ boolean a(e eVar) {
            return eVar.g == 2 || eVar.g == 3;
        }

        private static int b(Editable editable, int i) {
            int i2;
            int i3 = i;
            while (true) {
                i2 = i3;
                if (i3 >= editable.length()) {
                    break;
                } else if (editable.charAt(i3) == '\n') {
                    i2 = i3 + 1;
                    break;
                } else {
                    i3++;
                }
            }
            Log.d("EditStyledText.EditorManager", "--- findLineEnd:" + i + "," + editable.length() + "," + i2);
            return i2;
        }

        private boolean j() {
            boolean z = true;
            Log.d("EditStyledText.EditorManager", "--- waitingNext:" + this.h + "," + this.i + "," + this.g);
            if (this.h == this.i && this.g == 3) {
                Log.d("EditStyledText.EditorManager", "--- waitSelection");
                this.d = true;
                if (this.h == this.i) {
                    this.g = 1;
                } else {
                    this.g = 2;
                }
                EditStyledText.b(this.n.getText());
            } else {
                Log.d("EditStyledText.EditorManager", "--- resumeSelection");
                this.d = false;
                this.g = 3;
                EditStyledText.a(this.n.getText());
                z = false;
            }
            return z;
        }

        public final void a() {
            Log.d("EditStyledText.EditorManager", "--- onClickView");
            if (this.g == 1 || this.g == 2) {
                this.o.a();
                EditStyledText.a(this.n);
            }
        }

        public final void a(int i) {
            this.o.a(i);
            EditStyledText.a(this.n);
        }

        public final void a(int i, int i2) {
            Log.d("EditStyledText.EditorManager", "--- showsoftkey");
            if (this.n.isFocused() && !this.f2261b) {
                this.p.f2223a = Selection.getSelectionStart(this.n.getText());
                this.p.f2224b = Selection.getSelectionEnd(this.n.getText());
                if (((InputMethodManager) EditStyledText.this.getContext().getSystemService("input_method")).showSoftInput(this.n, 0, this.p) && this.p != null) {
                    Selection.setSelection(EditStyledText.this.getText(), i, i2);
                }
            }
        }

        public final void a(int i, boolean z) {
            Log.d("EditStyledText.EditorManager", "--- setItemSize");
            if (j()) {
                this.k = i;
            } else if (this.g == 2 || this.g == 3) {
                if (i > 0) {
                    if (this.h != this.i) {
                        a(new AbsoluteSizeSpan(i), this.h, this.i);
                    } else {
                        Log.e("EditStyledText.EditorManager", "---changeSize: Size of the span is zero");
                    }
                }
                if (z) {
                    h();
                }
            }
        }

        public final void a(Editable editable, int i, int i2, int i3) {
            Object[] spans;
            Log.d("EditStyledText.EditorManager", "updateSpanPrevious:" + i + "," + i2 + "," + i3);
            int i4 = i + i3;
            int min = Math.min(i, i4);
            int max = Math.max(i, i4);
            for (Object obj : editable.getSpans(min, min, Object.class)) {
                if ((obj instanceof ForegroundColorSpan) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof d.c) || (obj instanceof AlignmentSpan)) {
                    int spanStart = editable.getSpanStart(obj);
                    int spanEnd = editable.getSpanEnd(obj);
                    Log.d("EditStyledText.EditorManager", "spantype:" + obj.getClass() + "," + spanStart);
                    int b2 = ((obj instanceof d.c) || (obj instanceof AlignmentSpan)) ? b(this.n.getText(), max) : this.c ? spanEnd : max;
                    if (spanEnd < b2) {
                        Log.d("EditStyledText.EditorManager", "updateSpanPrevious: extend span");
                        editable.setSpan(obj, spanStart, b2, 33);
                    }
                } else if (obj instanceof d.b) {
                    int spanStart2 = editable.getSpanStart(obj);
                    int spanEnd2 = editable.getSpanEnd(obj);
                    if (i2 > i3) {
                        editable.replace(spanStart2, spanEnd2, BuildConfig.FLAVOR);
                        editable.removeSpan(obj);
                    } else if (spanEnd2 == i4 && i4 < editable.length() && this.n.getText().charAt(i4) != '\n') {
                        this.n.getText().insert(i4, "\n");
                    }
                }
            }
        }

        final void a(DynamicDrawableSpan dynamicDrawableSpan, int i) {
            Log.d("EditStyledText.EditorManager", "--- insertImageSpan:");
            if (dynamicDrawableSpan.getDrawable() != null) {
                this.n.getText().insert(i, "￼");
                this.n.getText().setSpan(dynamicDrawableSpan, i, i + 1, 33);
                EditStyledText.a(this.n);
                return;
            }
            Log.e("EditStyledText.EditorManager", "--- insertImageSpan: null span was inserted");
            EditStyledText.d(this.n);
        }

        final void a(Object obj) {
            int min = Math.min(this.h, this.i);
            int max = Math.max(this.h, this.i);
            int selectionStart = this.n.getSelectionStart();
            int a2 = a(this.n.getText(), min);
            int b2 = b(this.n.getText(), max);
            if (a2 == b2) {
                this.n.getText().insert(b2, "\n");
                a(obj, a2, b2 + 1);
            } else {
                a(obj, a2, b2);
            }
            Selection.setSelection(this.n.getText(), selectionStart);
        }

        public final void a(boolean z) {
            Log.d("EditStyledText.EditorManager", "--- onClickSelectAll");
            if (this.f2260a) {
                this.o.a(11);
            }
            if (z) {
                EditStyledText.a(this.n);
            }
        }

        public final void b() {
            Log.d("EditStyledText.EditorManager", "--- onFixSelectedItem");
            f();
            EditStyledText.a(this.n);
        }

        public final void b(int i) {
            Log.d("EditStyledText.EditorManager", "--- setSelectedEndPos:" + i);
            this.i = i;
            Log.d("EditStyledText.EditorManager", "--- onSelect:" + this.h + "," + this.i);
            if (this.h < 0 || this.h > this.n.getText().length() || this.i < 0 || this.i > this.n.getText().length()) {
                Log.e("EditStyledText.EditorManager", "Select is on, but cursor positions are illigal.:" + this.n.getText().length() + "," + this.h + "," + this.i);
            } else if (this.h < this.i) {
                this.n.setSelection(this.h, this.i);
                this.g = 2;
            } else if (this.h > this.i) {
                this.n.setSelection(this.i, this.h);
                this.g = 2;
            } else {
                this.g = 1;
            }
        }

        public final void b(int i, boolean z) {
            Log.d("EditStyledText.EditorManager", "--- setItemColor");
            if (j()) {
                this.j = i;
            } else if (this.g == 2 || this.g == 3) {
                if (i != 16777215) {
                    if (this.h != this.i) {
                        a(new ForegroundColorSpan(i), this.h, this.i);
                    } else {
                        Log.e("EditStyledText.EditorManager", "---changeColor: Size of the span is zero");
                    }
                }
                if (z) {
                    h();
                }
            }
        }

        public final void c() {
            d.c[] cVarArr;
            Log.d("EditStyledText.EditorManager", "--- onRefreshStyles");
            Editable text = this.n.getText();
            int length = text.length();
            int width = this.n.getWidth();
            d.b[] bVarArr = (d.b[]) text.getSpans(0, length, d.b.class);
            for (d.b bVar : bVarArr) {
                bVar.f2255a.a(width);
            }
            for (d.c cVar : (d.c[]) text.getSpans(0, length, d.c.class)) {
                cVar.f2257b = d.c.a(cVar.f2256a, this.n.f2221a.l);
            }
            if (bVarArr.length > 0) {
                text.replace(0, 1, new StringBuilder().append(text.charAt(0)).toString());
            }
        }

        final void c(int i) {
            Log.d("EditStyledText.EditorManager", "--- addMarquee:" + i);
            a(new d.c(i, this.n.f2221a.l));
        }

        public final void d() {
            Log.d("EditStyledText", "--- unsetTextComposingMask");
            if (this.m != null) {
                this.n.getText().removeSpan(this.m);
                this.m = null;
            }
        }

        final void e() {
            Log.d("EditStyledText.EditorManager", "--- handleCancel");
            this.f = 0;
            this.g = 0;
            this.f2260a = false;
            this.j = 16777215;
            this.k = 0;
            this.d = false;
            this.f2261b = false;
            this.c = false;
            this.e = false;
            i();
            this.n.setOnClickListener(null);
            Log.d("EditStyledText.EditorManager", "--- unblockSoftKey:");
            this.f2261b = false;
        }

        final void f() {
            Log.d("EditStyledText.EditorManager", "--- handleComplete:" + this.h + "," + this.i);
            if (this.f2260a) {
                if (this.h == this.i) {
                    Log.d("EditStyledText.EditorManager", "--- cancel handle complete:" + this.h);
                    h();
                    return;
                }
                if (this.g == 2) {
                    this.g = 3;
                }
                this.o.b(this.f);
                EditStyledText.a(this.n.getText());
            }
        }

        final void g() {
            this.q = (SpannableStringBuilder) this.n.getText().subSequence(Math.min(this.h, this.i), Math.max(this.h, this.i));
            SpannableStringBuilder a2 = a(this.q);
            ((ClipboardManager) EditStyledText.this.getContext().getSystemService("clipboard")).setText(a2);
            a((CharSequence) a2);
            a((CharSequence) this.q);
        }

        final void h() {
            e();
            this.f2260a = true;
            EditStyledText.a(this.n);
        }

        final void i() {
            Log.d("EditStyledText.EditorManager", "--- offSelect");
            EditStyledText.a(this.n.getText());
            int selectionStart = this.n.getSelectionStart();
            this.n.setSelection(selectionStart, selectionStart);
            this.g = 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$f.class */
    private final class f implements MenuItem.OnMenuItemClickListener {
        private f() {
        }

        /* synthetic */ f(EditStyledText editStyledText, byte b2) {
            this();
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return EditStyledText.this.onTextContextMenuItem(menuItem.getItemId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$g.class */
    public static final class g extends ArrowKeyMovementMethod {

        /* renamed from: a  reason: collision with root package name */
        e f2263a;

        /* renamed from: b  reason: collision with root package name */
        String f2264b = "StyledTextArrowKeyMethod";

        g(e eVar) {
            this.f2263a = eVar;
        }

        private int a(TextView textView) {
            return textView.getSelectionStart() == this.f2263a.h ? textView.getSelectionEnd() : textView.getSelectionStart();
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        protected final boolean down(TextView textView, Spannable spannable) {
            Log.d(this.f2264b, "--- down:");
            Layout layout = textView.getLayout();
            int a2 = a(textView);
            int lineForOffset = layout.getLineForOffset(a2);
            if (lineForOffset >= layout.getLineCount() - 1) {
                return true;
            }
            this.f2263a.b(layout.getParagraphDirection(lineForOffset) == layout.getParagraphDirection(lineForOffset + 1) ? layout.getOffsetForHorizontal(lineForOffset + 1, layout.getPrimaryHorizontal(a2)) : layout.getLineStart(lineForOffset + 1));
            this.f2263a.a();
            return true;
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        protected final boolean left(TextView textView, Spannable spannable) {
            Log.d(this.f2264b, "--- left:");
            this.f2263a.b(textView.getLayout().getOffsetToLeftOf(a(textView)));
            this.f2263a.a();
            return true;
        }

        @Override // android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public final boolean onKeyDown(TextView textView, Spannable spannable, int i, KeyEvent keyEvent) {
            boolean z = true;
            Log.d(this.f2264b, "---onkeydown:" + i);
            this.f2263a.d();
            if (this.f2263a.g == 1 || this.f2263a.g == 2) {
                Log.d(this.f2264b, "--- executeDown: " + i);
                switch (i) {
                    case 19:
                        z = up(textView, spannable) | false;
                        break;
                    case 20:
                        z = down(textView, spannable) | false;
                        break;
                    case 21:
                        z = left(textView, spannable) | false;
                        break;
                    case 22:
                        z = right(textView, spannable) | false;
                        break;
                    case 23:
                        this.f2263a.b();
                        break;
                    default:
                        z = false;
                        break;
                }
            } else {
                z = super.onKeyDown(textView, spannable, i, keyEvent);
            }
            return z;
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        protected final boolean right(TextView textView, Spannable spannable) {
            Log.d(this.f2264b, "--- right:");
            this.f2263a.b(textView.getLayout().getOffsetToRightOf(a(textView)));
            this.f2263a.a();
            return true;
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        protected final boolean up(TextView textView, Spannable spannable) {
            Log.d(this.f2264b, "--- up:");
            Layout layout = textView.getLayout();
            int a2 = a(textView);
            int lineForOffset = layout.getLineForOffset(a2);
            if (lineForOffset <= 0) {
                return true;
            }
            this.f2263a.b(layout.getParagraphDirection(lineForOffset) == layout.getParagraphDirection(lineForOffset - 1) ? layout.getOffsetForHorizontal(lineForOffset - 1, layout.getPrimaryHorizontal(a2)) : layout.getLineStart(lineForOffset - 1));
            this.f2263a.a();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$h.class */
    public final class h {

        /* renamed from: a  reason: collision with root package name */
        EditStyledText f2265a;

        /* renamed from: b  reason: collision with root package name */
        j f2266b;

        public h(EditStyledText editStyledText, j jVar) {
            this.f2265a = editStyledText;
            this.f2266b = jVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i.class */
    public static final class i {

        /* renamed from: a  reason: collision with root package name */
        AlertDialog.Builder f2268a;

        /* renamed from: b  reason: collision with root package name */
        AlertDialog f2269b;
        CharSequence c;
        CharSequence d;
        CharSequence e;
        CharSequence f;
        CharSequence[] g;
        CharSequence[] h;
        CharSequence[] i;
        CharSequence[] j;
        CharSequence[] k;
        CharSequence[] l;
        CharSequence[] m;
        CharSequence n;
        EditStyledText o;

        public i(EditStyledText editStyledText) {
            this.o = editStyledText;
        }

        static /* synthetic */ void a(i iVar) {
            Log.d("EditStyledText", "--- onShowForegroundColorAlertDialog");
            if (iVar.a()) {
                int[] iArr = new int[iVar.h.length];
                for (int i = 0; i < iArr.length; i++) {
                    iArr[i] = Integer.parseInt((String) iVar.h[i], 16) - 16777216;
                }
                iVar.a(0, iVar.c, iArr);
            }
        }

        static /* synthetic */ void b(i iVar) {
            boolean z = false;
            Log.d("EditStyledText", "--- onShowSizeAlertDialog");
            Log.d("EditStyledText", "--- checkParams");
            if (iVar.f2268a == null) {
                Log.e("EditStyledText", "--- builder is null.");
            } else if (iVar.d == null || iVar.i == null || iVar.j == null || iVar.k == null) {
                Log.e("EditStyledText", "--- size alert params are null.");
            } else if (iVar.i.length == iVar.j.length || iVar.k.length == iVar.j.length) {
                z = true;
            } else {
                Log.e("EditStyledText", "--- the length of size alert params are different.");
            }
            if (z) {
                iVar.a(iVar.d, iVar.i, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.11
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        Log.d("EditStyledText", "mBuilder.onclick:" + i);
                        i.this.o.setItemSize(i.this.o.a(Integer.parseInt((String) i.this.j[i])));
                    }
                });
            }
        }

        final void a(int i, CharSequence charSequence, int[] iArr) {
            LinearLayout linearLayout = null;
            int a2 = this.o.a(50);
            int a3 = this.o.a(2);
            int a4 = this.o.a(15);
            this.f2268a.setTitle(charSequence);
            this.f2268a.setIcon(0);
            this.f2268a.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
            this.f2268a.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    i.this.o.b();
                }
            });
            this.f2268a.setItems((CharSequence[]) null, (DialogInterface.OnClickListener) null);
            LinearLayout linearLayout2 = new LinearLayout(this.o.getContext());
            linearLayout2.setOrientation(1);
            linearLayout2.setGravity(1);
            linearLayout2.setPadding(a4, a4, a4, a4);
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (i2 % 5 == 0) {
                    linearLayout = new LinearLayout(this.o.getContext());
                    linearLayout2.addView(linearLayout);
                }
                Button button = new Button(this.o.getContext());
                button.setHeight(a2);
                button.setWidth(a2);
                button.setBackgroundDrawable(new a(iArr[i2], a2, a2, a3));
                button.setDrawingCacheBackgroundColor(iArr[i2]);
                if (i == 0) {
                    button.setOnClickListener(new View.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            i.this.o.setItemColor(view.getDrawingCacheBackgroundColor());
                            if (i.this.f2269b != null) {
                                i.this.f2269b.setView(null);
                                i.this.f2269b.dismiss();
                                i.this.f2269b = null;
                                return;
                            }
                            Log.e("EditStyledText", "--- buildAndShowColorDialogue: can't find alertDialog");
                        }
                    });
                } else if (i == 1) {
                    button.setOnClickListener(new View.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.7
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            i.this.o.setBackgroundColor(view.getDrawingCacheBackgroundColor());
                            if (i.this.f2269b != null) {
                                i.this.f2269b.setView(null);
                                i.this.f2269b.dismiss();
                                i.this.f2269b = null;
                                return;
                            }
                            Log.e("EditStyledText", "--- buildAndShowColorDialogue: can't find alertDialog");
                        }
                    });
                }
                linearLayout.addView(button);
            }
            if (i == 1) {
                this.f2268a.setPositiveButton(this.n, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.8
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        i.this.o.setBackgroundColor(16777215);
                    }
                });
            } else if (i == 0) {
                this.f2268a.setPositiveButton(this.n, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.9
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        i.this.o.setItemColor(-16777216);
                    }
                });
            }
            this.f2268a.setView(linearLayout2);
            this.f2268a.setCancelable(true);
            this.f2268a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.10
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    i.this.o.b();
                }
            });
            this.f2269b = this.f2268a.show();
        }

        final void a(CharSequence charSequence, CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.f2268a.setTitle(charSequence);
            this.f2268a.setIcon(0);
            this.f2268a.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
            this.f2268a.setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    i.this.o.b();
                }
            });
            this.f2268a.setItems(charSequenceArr, onClickListener);
            this.f2268a.setView((View) null);
            this.f2268a.setCancelable(true);
            this.f2268a.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.ex.editstyledtext.EditStyledText.i.4
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    Log.d("EditStyledText", "--- oncancel");
                    i.this.o.b();
                }
            });
            this.f2268a.show();
        }

        final boolean a() {
            boolean z = false;
            Log.d("EditStyledText", "--- checkParams");
            if (this.f2268a == null) {
                Log.e("EditStyledText", "--- builder is null.");
            } else if (this.c == null || this.g == null || this.h == null) {
                Log.e("EditStyledText", "--- color alert params are null.");
            } else if (this.g.length != this.h.length) {
                Log.e("EditStyledText", "--- the length of color alert params are different.");
            } else {
                z = true;
            }
            return z;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$j.class */
    public interface j {
        Spanned a(String str, Html.ImageGetter imageGetter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$k.class */
    public final class k implements j {
        private k() {
        }

        /* synthetic */ k(EditStyledText editStyledText, byte b2) {
            this();
        }

        @Override // com.android.ex.editstyledtext.EditStyledText.j
        public final Spanned a(String str, Html.ImageGetter imageGetter) {
            return Html.fromHtml(str, imageGetter, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$l.class */
    public static final class l extends InputConnectionWrapper {

        /* renamed from: a  reason: collision with root package name */
        EditStyledText f2282a;

        public l(InputConnection inputConnection, EditStyledText editStyledText) {
            super(inputConnection, true);
            this.f2282a = editStyledText;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public final boolean commitText(CharSequence charSequence, int i) {
            Log.d("EditStyledText", "--- commitText:");
            this.f2282a.f2221a.d();
            return super.commitText(charSequence, i);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public final boolean finishComposingText() {
            Log.d("EditStyledText", "--- finishcomposing:");
            if (!this.f2282a.f2221a.f2261b && !this.f2282a.a() && !this.f2282a.f2221a.f2260a) {
                this.f2282a.c();
            }
            return super.finishComposingText();
        }
    }

    public EditStyledText(Context context) {
        super(context);
        e();
    }

    public EditStyledText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e();
    }

    public EditStyledText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i2) {
        if (this.e <= 0.0f) {
            this.e = getContext().getResources().getDisplayMetrics().density;
        }
        float f2 = i2;
        if (this.e <= 0.0f) {
            this.e = getContext().getResources().getDisplayMetrics().density;
        }
        return (int) ((f2 * this.e) + 0.5d);
    }

    static /* synthetic */ void a(Spannable spannable) {
        spannable.removeSpan(k);
    }

    static /* synthetic */ void a(EditStyledText editStyledText) {
        if (editStyledText.f != null) {
            Iterator<c> it = editStyledText.f.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    static /* synthetic */ void b(Spannable spannable) {
        spannable.setSpan(k, 0, 0, 16777233);
    }

    static /* synthetic */ int d() {
        return 300;
    }

    static /* synthetic */ void d(EditStyledText editStyledText) {
        if (editStyledText.f != null) {
            Iterator<c> it = editStyledText.f.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    private void e() {
        this.i = new h(this, new k(this, (byte) 0));
        this.j = new i(this);
        this.f2221a = new e(this, this.j);
        setMovementMethod(new g(this.f2221a));
        this.g = getBackground();
        requestFocus();
    }

    private void f() {
        this.f2221a.a(1);
    }

    static /* synthetic */ void f(EditStyledText editStyledText) {
        if (editStyledText.h != null && !editStyledText.f2221a.e) {
            editStyledText.h.finishComposingText();
            editStyledText.f2221a.e = true;
        }
    }

    private void g() {
        this.f2221a.a(7);
    }

    static /* synthetic */ void g(EditStyledText editStyledText) {
        if (editStyledText.f != null) {
            Iterator<c> it = editStyledText.f.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    static /* synthetic */ void h(EditStyledText editStyledText) {
        if (editStyledText.f != null) {
            Iterator<c> it = editStyledText.f.iterator();
            while (it.hasNext() && !it.next().c()) {
            }
        }
    }

    static /* synthetic */ void i(EditStyledText editStyledText) {
        if (editStyledText.f != null) {
            Iterator<c> it = editStyledText.f.iterator();
            while (it.hasNext() && !it.next().b()) {
            }
        }
    }

    static /* synthetic */ void j(EditStyledText editStyledText) {
        if (editStyledText.f != null) {
            Iterator<c> it = editStyledText.f.iterator();
            while (it.hasNext() && !it.next().d()) {
            }
        }
    }

    public final boolean a() {
        boolean z;
        if (this.f != null) {
            Iterator<c> it = this.f.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                z2 = it.next().a() | z2;
            }
        } else {
            z = false;
        }
        return z;
    }

    public final void b() {
        this.f2221a.a(20);
    }

    public final void c() {
        this.f2221a.a(21);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f2221a != null) {
            this.f2221a.c();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onCreateContextMenu(ContextMenu contextMenu) {
        super.onCreateContextMenu(contextMenu);
        f fVar = new f(this, (byte) 0);
        if (f2220b != null) {
            contextMenu.add(0, 16776961, 0, f2220b).setOnMenuItemClickListener(fVar);
        }
        e eVar = this.f2221a;
        Editable text = eVar.n.getText();
        int length = text.length();
        if ((((ParagraphStyle[]) text.getSpans(0, length, ParagraphStyle.class)).length > 0 || ((QuoteSpan[]) text.getSpans(0, length, QuoteSpan.class)).length > 0 || ((CharacterStyle[]) text.getSpans(0, length, CharacterStyle.class)).length > 0 || eVar.l != 16777215) && c != null) {
            contextMenu.add(0, 16776962, 0, c).setOnMenuItemClickListener(fVar);
        }
        e eVar2 = this.f2221a;
        if (eVar2.q != null && eVar2.q.length() > 0 && e.a(eVar2.q).length() == 0) {
            contextMenu.add(0, 16908322, 0, d).setOnMenuItemClickListener(fVar).setAlphabeticShortcut('v');
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        this.h = new l(super.onCreateInputConnection(editorInfo), this);
        return this.h;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        if (z) {
            b();
        } else if (!a()) {
            c();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedStyledTextState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedStyledTextState savedStyledTextState = (SavedStyledTextState) parcelable;
        super.onRestoreInstanceState(savedStyledTextState.getSuperState());
        setBackgroundColor(savedStyledTextState.f2222a);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedStyledTextState savedStyledTextState = new SavedStyledTextState(super.onSaveInstanceState());
        savedStyledTextState.f2222a = this.f2221a.l;
        return savedStyledTextState;
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        Object[] spans;
        int i5;
        if (this.f2221a != null) {
            e eVar = this.f2221a;
            Editable text = getText();
            Log.d("EditStyledText.EditorManager", "updateSpanNext:" + i2 + "," + i3 + "," + i4);
            int i6 = i2 + i4;
            int min = Math.min(i2, i6);
            int max = Math.max(i2, i6);
            for (Object obj : text.getSpans(max, max, Object.class)) {
                if ((obj instanceof d.c) || (obj instanceof AlignmentSpan)) {
                    int spanStart = text.getSpanStart(obj);
                    int spanEnd = text.getSpanEnd(obj);
                    Log.d("EditStyledText.EditorManager", "spantype:" + obj.getClass() + "," + spanEnd);
                    if ((((obj instanceof d.c) || (obj instanceof AlignmentSpan)) ? e.a(eVar.n.getText(), min) : min) < spanStart && i3 > i4) {
                        text.removeSpan(obj);
                    } else if (spanStart > min) {
                        text.setSpan(obj, min, spanEnd, 33);
                    }
                } else if ((obj instanceof d.b) && text.getSpanStart(obj) == i6 && i6 > 0 && eVar.n.getText().charAt(i6 - 1) != '\n') {
                    eVar.n.getText().insert(i6, "\n");
                    eVar.n.setSelection(i6);
                }
            }
            this.f2221a.a(getText(), i2, i3, i4);
            if (i4 > i3) {
                e eVar2 = this.f2221a;
                Log.d("EditStyledText", "--- setTextComposingMask:" + i2 + "," + i6);
                int min2 = Math.min(i2, i6);
                int max2 = Math.max(i2, i6);
                if (!eVar2.d || eVar2.j == 16777215) {
                    EditStyledText editStyledText = eVar2.n;
                    if (min2 < 0 || min2 > editStyledText.getText().length()) {
                        i5 = -16777216;
                    } else {
                        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) editStyledText.getText().getSpans(min2, min2, ForegroundColorSpan.class);
                        i5 = foregroundColorSpanArr.length > 0 ? foregroundColorSpanArr[0].getForegroundColor() : -16777216;
                    }
                } else {
                    i5 = eVar2.j;
                }
                int i7 = eVar2.n.f2221a.l;
                Log.d("EditStyledText", "--- fg:" + Integer.toHexString(i5) + ",bg:" + Integer.toHexString(i7) + "," + eVar2.d + ",," + eVar2.f);
                if (i5 == i7) {
                    int i8 = Integer.MIN_VALUE | ((i7 | (-16777216)) ^ (-1));
                    if (eVar2.m == null || eVar2.m.getBackgroundColor() != i8) {
                        eVar2.m = new BackgroundColorSpan(i8);
                    }
                    eVar2.n.getText().setSpan(eVar2.m, min2, max2, 33);
                }
            } else if (i3 < i4) {
                this.f2221a.d();
            }
            if (this.f2221a.d) {
                if (i4 > i3) {
                    this.f2221a.a();
                    this.f2221a.b();
                } else if (i4 < i3) {
                    this.f2221a.a(22);
                }
            }
        }
        super.onTextChanged(charSequence, i2, i3, i4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i2) {
        boolean z;
        boolean z2 = getSelectionStart() != getSelectionEnd();
        switch (i2) {
            case 16776961:
                this.f2221a.a(12);
                z = true;
                break;
            case 16776962:
                this.f2221a.o.a(14);
                z = true;
                break;
            case 16776963:
                b();
                z = true;
                break;
            case 16776964:
                c();
                z = true;
                break;
            case 16908319:
                this.f2221a.a(true);
                z = true;
                break;
            case 16908320:
                if (z2) {
                    g();
                } else {
                    this.f2221a.a(false);
                    g();
                }
                z = true;
                break;
            case 16908321:
                if (z2) {
                    f();
                } else {
                    this.f2221a.a(false);
                    f();
                }
                z = true;
                break;
            case 16908322:
                this.f2221a.a(2);
                z = true;
                break;
            case 16908328:
                e eVar = this.f2221a;
                Log.d("EditStyledText.EditorManager", "--- onClickSelect");
                eVar.f = 5;
                if (eVar.g == 0) {
                    eVar.o.a();
                } else {
                    eVar.i();
                    eVar.o.a();
                }
                a(eVar.n);
                e eVar2 = this.f2221a;
                Log.d("EditStyledText.EditorManager", "--- blockSoftKey:");
                Log.d("EditStyledText.EditorManager", "--- hidesoftkey");
                if (eVar2.n.isFocused()) {
                    eVar2.p.f2223a = Selection.getSelectionStart(eVar2.n.getText());
                    eVar2.p.f2224b = Selection.getSelectionEnd(eVar2.n.getText());
                    ((InputMethodManager) eVar2.n.getContext().getSystemService("input_method")).hideSoftInputFromWindow(eVar2.n.getWindowToken(), 0, eVar2.p);
                }
                eVar2.f2261b = true;
                z = super.onTextContextMenuItem(i2);
                break;
            case 16908329:
                this.f2221a.b();
                z = super.onTextContextMenuItem(i2);
                break;
            default:
                z = super.onTextContextMenuItem(i2);
                break;
        }
        return z;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent;
        if (motionEvent.getAction() == 1) {
            cancelLongPress();
            boolean z = this.f2221a.f2260a;
            if (!z) {
                b();
            }
            int selectionStart = Selection.getSelectionStart(getText());
            int selectionEnd = Selection.getSelectionEnd(getText());
            onTouchEvent = super.onTouchEvent(motionEvent);
            if (isFocused() && this.f2221a.g == 0) {
                if (z) {
                    this.f2221a.a(Selection.getSelectionStart(getText()), Selection.getSelectionEnd(getText()));
                } else {
                    this.f2221a.a(selectionStart, selectionEnd);
                }
            }
            this.f2221a.a();
            this.f2221a.d();
        } else {
            onTouchEvent = super.onTouchEvent(motionEvent);
        }
        if (this.f != null) {
            Iterator<c> it = this.f.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        return onTouchEvent;
    }

    public void setAlignAlertParams(CharSequence charSequence, CharSequence[] charSequenceArr) {
        i iVar = this.j;
        iVar.e = charSequence;
        iVar.l = charSequenceArr;
    }

    public void setAlignment(Layout.Alignment alignment) {
        e eVar = this.f2221a;
        if (eVar.g == 2 || eVar.g == 3) {
            eVar.a(new AlignmentSpan.Standard(alignment));
            eVar.h();
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (i2 != 16777215) {
            super.setBackgroundColor(i2);
        } else {
            setBackgroundDrawable(this.g);
        }
        this.f2221a.l = i2;
        this.f2221a.c();
    }

    public void setBuilder(AlertDialog.Builder builder) {
        this.j.f2268a = builder;
    }

    public void setColorAlertParams(CharSequence charSequence, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, CharSequence charSequence2) {
        i iVar = this.j;
        iVar.c = charSequence;
        iVar.g = charSequenceArr;
        iVar.h = charSequenceArr2;
        iVar.n = charSequence2;
    }

    public void setContextMenuStrings(CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3) {
        f2220b = charSequence;
        c = charSequence2;
        d = charSequence3;
    }

    public void setHtml(String str) {
        final h hVar = this.i;
        hVar.f2265a.setText(hVar.f2266b.a(str, new Html.ImageGetter() { // from class: com.android.ex.editstyledtext.EditStyledText.h.1
            @Override // android.text.Html.ImageGetter
            public final Drawable getDrawable(String str2) {
                BitmapDrawable bitmapDrawable;
                Bitmap decodeStream;
                Log.d("EditStyledText", "--- sethtml: src=" + str2);
                if (str2.startsWith("content://")) {
                    Uri parse = Uri.parse(str2);
                    try {
                        System.gc();
                        InputStream openInputStream = h.this.f2265a.getContext().getContentResolver().openInputStream(parse);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeStream(openInputStream, null, options);
                        openInputStream.close();
                        InputStream openInputStream2 = h.this.f2265a.getContext().getContentResolver().openInputStream(parse);
                        int i2 = options.outWidth;
                        int i3 = options.outHeight;
                        if (options.outWidth > EditStyledText.this.a(300)) {
                            i2 = EditStyledText.this.a(300);
                            i3 = (i3 * EditStyledText.this.a(300)) / options.outWidth;
                            decodeStream = BitmapFactory.decodeStream(openInputStream2, new Rect(0, 0, i2, i3), null);
                        } else {
                            decodeStream = BitmapFactory.decodeStream(openInputStream2);
                        }
                        BitmapDrawable bitmapDrawable2 = new BitmapDrawable(h.this.f2265a.getContext().getResources(), decodeStream);
                        bitmapDrawable2.setBounds(0, 0, i2, i3);
                        openInputStream2.close();
                        bitmapDrawable = bitmapDrawable2;
                    } catch (Exception e2) {
                        Log.e("EditStyledText", "--- set html: Failed to loaded content " + parse, e2);
                        bitmapDrawable = null;
                    } catch (OutOfMemoryError e3) {
                        Log.e("EditStyledText", "OutOfMemoryError");
                        h.this.f2265a.setHint(5);
                        bitmapDrawable = null;
                    }
                } else {
                    bitmapDrawable = null;
                }
                return bitmapDrawable;
            }
        }));
    }

    public void setItemColor(int i2) {
        this.f2221a.b(i2, true);
    }

    public void setItemSize(int i2) {
        this.f2221a.a(i2, true);
    }

    public void setMarquee(int i2) {
        e eVar = this.f2221a;
        if (eVar.g == 2 || eVar.g == 3) {
            eVar.c(i2);
            eVar.h();
        }
    }

    public void setMarqueeAlertParams(CharSequence charSequence, CharSequence[] charSequenceArr) {
        i iVar = this.j;
        iVar.f = charSequence;
        iVar.m = charSequenceArr;
    }

    public void setSizeAlertParams(CharSequence charSequence, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, CharSequence[] charSequenceArr3) {
        i iVar = this.j;
        iVar.d = charSequence;
        iVar.i = charSequenceArr;
        iVar.j = charSequenceArr2;
        iVar.k = charSequenceArr3;
    }

    public void setStyledTextHtmlConverter(j jVar) {
        this.i.f2266b = jVar;
    }
}
