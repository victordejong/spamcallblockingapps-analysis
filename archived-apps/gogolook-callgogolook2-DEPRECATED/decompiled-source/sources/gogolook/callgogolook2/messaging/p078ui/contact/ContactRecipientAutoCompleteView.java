package gogolook.callgogolook2.messaging.p078ui.contact;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.util.Rfc822Tokenizer;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.TextView;
import com.android.p018ex.chips.RecipientEditTextView;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p081h.p093b.p099c.p100a.C5607h;
import p081h.p093b.p099c.p100a.p101j.AbstractC5610b;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12195p;
import p459j.p460a.p474c0.p499h.C12197q;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactRecipientAutoCompleteView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactRecipientAutoCompleteView.class */
public class ContactRecipientAutoCompleteView extends RecipientEditTextView {

    /* renamed from: k0 */
    public static final Executor f11617k0 = Executors.newSingleThreadExecutor();

    /* renamed from: i0 */
    public AbstractC4731d f11618i0;

    /* renamed from: j0 */
    public AsyncTaskC4729b f11619j0;

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactRecipientAutoCompleteView$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactRecipientAutoCompleteView$b.class */
    public class AsyncTaskC4729b extends AsyncTask<Void, C4730c, Integer> {
        public AsyncTaskC4729b() {
        }

        /* renamed from: a */
        public Integer doInBackground(Void... voidArr) {
            AbstractC5610b[] bVarArr;
            int i = 0;
            for (AbstractC5610b bVar : (AbstractC5610b[]) ContactRecipientAutoCompleteView.this.getText().getSpans(0, ContactRecipientAutoCompleteView.this.getText().length(), AbstractC5610b.class)) {
                C5607h d = bVar.mo25008d();
                i = i;
                if (d != null) {
                    if (d.m25016n()) {
                        if (!C5607h.m25037a(d.m25039a())) {
                            i = i;
                            if (!C12195p.m6835d(d)) {
                            }
                        }
                        Cursor a = C12197q.m6817d(ContactRecipientAutoCompleteView.this.getContext(), d.m25027c()).m9267a();
                        if (a != null && a.moveToNext()) {
                            publishProgress(new C4730c(ContactRecipientAutoCompleteView.this, bVar, C12197q.m6827a(a, true)));
                            i = i;
                        } else if (AbstractC12181l0.m6899a(d.m25027c())) {
                            publishProgress(new C4730c(ContactRecipientAutoCompleteView.this, bVar, C12195p.m6840a(d.m25027c())));
                            i = i;
                        } else {
                            publishProgress(new C4730c(ContactRecipientAutoCompleteView.this, bVar, null));
                        }
                    } else {
                        publishProgress(new C4730c(ContactRecipientAutoCompleteView.this, bVar, null));
                    }
                    i++;
                }
            }
            return Integer.valueOf(i);
        }

        /* renamed from: a */
        public void onPostExecute(Integer num) {
            ContactRecipientAutoCompleteView.this.f11619j0 = null;
            if (num.intValue() > 0) {
                ContactRecipientAutoCompleteView.this.f11618i0.mo27241a(num.intValue());
            }
        }

        /* renamed from: a */
        public void onProgressUpdate(C4730c... cVarArr) {
            for (C4730c cVar : cVarArr) {
                if (cVar.f11621a != null) {
                    Editable text = ContactRecipientAutoCompleteView.this.getText();
                    int spanStart = text.getSpanStart(cVar.f11621a);
                    int spanEnd = text.getSpanEnd(cVar.f11621a);
                    if (spanStart >= 0 && spanEnd >= 0) {
                        text.delete(spanStart, spanEnd);
                    }
                    C5607h hVar = cVar.f11622b;
                    if (hVar != null) {
                        ContactRecipientAutoCompleteView.this.m36982a(hVar);
                    }
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactRecipientAutoCompleteView$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactRecipientAutoCompleteView$c.class */
    public class C4730c {

        /* renamed from: a */
        public final AbstractC5610b f11621a;

        /* renamed from: b */
        public final C5607h f11622b;

        public C4730c(ContactRecipientAutoCompleteView contactRecipientAutoCompleteView, AbstractC5610b bVar, C5607h hVar) {
            this.f11621a = bVar;
            this.f11622b = hVar;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactRecipientAutoCompleteView$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactRecipientAutoCompleteView$d.class */
    public interface AbstractC4731d {
        /* renamed from: a */
        void mo27242a();

        /* renamed from: a */
        void mo27241a(int i);

        /* renamed from: a */
        void mo27240a(int i, int i2);
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.contact.ContactRecipientAutoCompleteView$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/contact/ContactRecipientAutoCompleteView$e.class */
    public class C4732e implements TextWatcher {

        /* renamed from: a */
        public int f11623a;

        public C4732e() {
            this.f11623a = 0;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int length = ((AbstractC5610b[]) editable.getSpans(0, editable.length(), AbstractC5610b.class)).length;
            if (length != this.f11623a) {
                if (ContactRecipientAutoCompleteView.this.f11618i0 != null && ContactRecipientAutoCompleteView.this.f11619j0 == null) {
                    ContactRecipientAutoCompleteView.this.f11618i0.mo27240a(this.f11623a, length);
                }
                this.f11623a = length;
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    public ContactRecipientAutoCompleteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Rect rect = new Rect(0, 0, 0, 0);
        getPaint().getTextBounds("a", 0, 1, rect);
        rect.height();
        setTokenizer(new Rfc822Tokenizer());
        addTextChangedListener(new C4732e());
        m36972a(false);
        setBackground(context.getResources().getDrawable(2131230815));
    }

    /* renamed from: F */
    public ArrayList<ParticipantData> m27252F() {
        AbstractC5610b[] bVarArr = (AbstractC5610b[]) getText().getSpans(0, getText().length(), AbstractC5610b.class);
        ArrayList<ParticipantData> arrayList = new ArrayList<>(bVarArr.length);
        for (AbstractC5610b bVar : bVarArr) {
            C5607h d = bVar.mo25008d();
            if (d != null && d.m25016n() && d.m25027c() != null && AbstractC12181l0.m6899a(d.m25027c())) {
                arrayList.add(ParticipantData.m27540a(bVar.mo25008d()));
            }
        }
        m27250H();
        return arrayList;
    }

    /* renamed from: G */
    public Set<String> m27251G() {
        HashSet hashSet = new HashSet();
        for (AbstractC5610b bVar : (AbstractC5610b[]) getText().getSpans(0, getText().length(), AbstractC5610b.class)) {
            C5607h d = bVar.mo25008d();
            if (!(d == null || !d.m25016n() || d.m25027c() == null)) {
                hashSet.add(C14108o4.m2474l(d.m25027c()));
            }
        }
        return hashSet;
    }

    /* renamed from: H */
    public final void m27250H() {
        AsyncTaskC4729b bVar = this.f11619j0;
        if (bVar != null && !bVar.isCancelled()) {
            this.f11619j0.cancel(false);
            this.f11619j0 = null;
        }
        this.f11619j0 = new AsyncTaskC4729b();
        this.f11619j0.executeOnExecutor(f11617k0, new Void[0]);
    }

    /* renamed from: a */
    public void m27249a(AbstractC4731d dVar) {
        this.f11618i0 = dVar;
    }

    @Override // com.android.p018ex.chips.RecipientEditTextView, android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            this.f11618i0.mo27242a();
        }
        return super.onEditorAction(textView, i, keyEvent);
    }
}
