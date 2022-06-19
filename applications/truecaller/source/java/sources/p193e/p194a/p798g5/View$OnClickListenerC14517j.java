package p193e.p194a.p798g5;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.data.entity.Contact;
import com.truecaller.tagger.C4604R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.d.y.n;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p798g5.p801d0.C14474e;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� Y2\u00020\u00012\u00020\u0002:\u0001ZB\u0007¢\u0006\u0004\bX\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u0017\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR(\u0010(\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b!\u0010\"\u0012\u0004\b'\u0010\u0005\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001d\u0010.\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R(\u0010?\u001a\b\u0012\u0004\u0012\u000208078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R(\u0010D\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b@\u0010\"\u0012\u0004\bC\u0010\u0005\u001a\u0004\bA\u0010$\"\u0004\bB\u0010&R(\u0010M\u001a\u00020E8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bF\u0010G\u0012\u0004\bL\u0010\u0005\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u0018\u0010Q\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001d\u0010W\u001a\u00020R8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V¨\u0006["}, d2 = {"Le/a/g5/j;", "Le/a/g5/l$d;", "Landroid/view/View$OnClickListener;", "Ls1/s;", "SA", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "v", "onClick", "(Landroid/view/View;)V", "", "m", "Ljava/lang/String;", "previousSuggestion", "Lq3/a/y;", "i", "Lq3/a/y;", "job", "Ls1/w/f;", "h", "Ls1/w/f;", "getIoContext", "()Ls1/w/f;", "setIoContext", "(Ls1/w/f;)V", "getIoContext$annotations", "ioContext", "Le/a/g5/d0/e;", "n", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "RA", "()Le/a/g5/d0/e;", "binding", "Le/a/q2/a;", "k", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/r2/f;", "Le/a/g5/n;", "e", "Le/a/r2/f;", "getTagDataSaver", "()Le/a/r2/f;", "setTagDataSaver", "(Le/a/r2/f;)V", "tagDataSaver", "g", "getUiContext", "setUiContext", "getUiContext$annotations", "uiContext", "Le/a/r2/l;", "f", "Le/a/r2/l;", "getActorThreads", "()Le/a/r2/l;", "setActorThreads", "(Le/a/r2/l;)V", "getActorThreads$annotations", "actorThreads", "Lcom/truecaller/data/entity/Contact;", "l", "Lcom/truecaller/data/entity/Contact;", AnalyticsConstants.CONTACT, "Lq3/a/i0;", "j", "Ls1/g;", "getCoroutineScope", "()Lq3/a/i0;", "coroutineScope", "<init>", "s", C22021b.f61237c, "tagger_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.g5.j */
/* loaded from: classes14-dex2jar.jar:e/a/g5/j.class */
public final class View$OnClickListenerC14517j extends AbstractC14475e implements View.OnClickListener {
    @Inject

    /* renamed from: e */
    public AbstractC19854f<AbstractC14535n> f41783e;
    @Inject

    /* renamed from: f */
    public AbstractC19870l f41784f;
    @Inject

    /* renamed from: g */
    public f f41785g;
    @Inject

    /* renamed from: h */
    public f f41786h;
    @Inject

    /* renamed from: k */
    public AbstractC19462a f41789k;

    /* renamed from: l */
    public Contact f41790l;

    /* renamed from: m */
    public String f41791m;

    /* renamed from: o */
    public static final /* synthetic */ l[] f41778o = {C22128a.m8621g0(View$OnClickListenerC14517j.class, "binding", "getBinding()Lcom/truecaller/tagger/databinding/ViewSuggestNameBinding;", 0)};

    /* renamed from: s */
    public static final C14519b f41782s = new C14519b(null);

    /* renamed from: p */
    public static final String f41779p = "nameSuggestion";

    /* renamed from: q */
    public static final String f41780q = AnalyticsConstants.CONTACT;

    /* renamed from: r */
    public static final String f41781r = "source";

    /* renamed from: i */
    public final y f41787i = d.n((p1) null, 1);

    /* renamed from: j */
    public final g f41788j = C25225a.m3978P1(new C14520c());

    /* renamed from: n */
    public final ViewBindingProperty f41792n = new C19350a(new C14518a());

    /* renamed from: e.a.g5.j$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/j$a.class */
    public static final class C14518a extends m implements s1.z.b.l<View$OnClickListenerC14517j, C14474e> {
        public C14518a() {
            super(1);
        }

        /* renamed from: d */
        public Object m20037d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4604R.C4606id.business_button;
            RadioButton radioButton = (RadioButton) requireView.findViewById(i);
            if (radioButton != null) {
                i = C4604R.C4606id.close_button;
                ImageView imageView = (ImageView) requireView.findViewById(i);
                if (imageView != null) {
                    i = C4604R.C4606id.name_text;
                    EditText editText = (EditText) requireView.findViewById(i);
                    if (editText != null) {
                        i = C4604R.C4606id.person_button;
                        RadioButton radioButton2 = (RadioButton) requireView.findViewById(i);
                        if (radioButton2 != null) {
                            i = C4604R.C4606id.radio_group;
                            RadioGroup radioGroup = (RadioGroup) requireView.findViewById(i);
                            if (radioGroup != null) {
                                i = C4604R.C4606id.save_button;
                                Button button = (Button) requireView.findViewById(i);
                                if (button != null) {
                                    i = C4604R.C4606id.title_text_view;
                                    TextView textView = (TextView) requireView.findViewById(i);
                                    if (textView != null) {
                                        return new C14474e((LinearLayout) requireView, radioButton, imageView, editText, radioButton2, radioGroup, button, textView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.g5.j$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/j$b.class */
    public static final class C14519b {
        public C14519b(s1.z.c.f fVar) {
        }
    }

    /* renamed from: e.a.g5.j$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/j$c.class */
    public static final class C14520c extends m implements a<i0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14520c() {
            super(0);
            View$OnClickListenerC14517j.this = r4;
        }

        public Object invoke() {
            View$OnClickListenerC14517j view$OnClickListenerC14517j = View$OnClickListenerC14517j.this;
            f fVar = view$OnClickListenerC14517j.f41785g;
            if (fVar != null) {
                return d.h(fVar.plus(view$OnClickListenerC14517j.f41787i));
            }
            s1.z.c.l.l("uiContext");
            throw null;
        }
    }

    /* renamed from: e.a.g5.j$d */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/j$d.class */
    public static final class C14521d<R> implements AbstractC19851d0<Contact> {
        public C14521d() {
            View$OnClickListenerC14517j.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Contact contact) {
            Contact contact2 = contact;
            View$OnClickListenerC14517j view$OnClickListenerC14517j = View$OnClickListenerC14517j.this;
            l[] lVarArr = View$OnClickListenerC14517j.f41778o;
            n3.r.a.l activity = view$OnClickListenerC14517j.getActivity();
            if (activity != null) {
                Intent intent = new Intent();
                intent.putExtra(AnalyticsConstants.CONTACT, contact2);
                activity.setResult(-1, intent);
                activity.finish();
            }
        }
    }

    @e(c = "com.truecaller.tagger.NameSuggestionFragment$onViewCreated$1$1", f = "NameSuggestionFragment.kt", l = {84}, m = "invokeSuspend")
    /* renamed from: e.a.g5.j$e */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/j$e.class */
    public static final class C14522e extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f41795e;

        /* renamed from: f */
        public final /* synthetic */ Contact f41796f;

        /* renamed from: g */
        public final /* synthetic */ View$OnClickListenerC14517j f41797g;

        @e(c = "com.truecaller.tagger.NameSuggestionFragment$onViewCreated$1$1$localName$1", f = "NameSuggestionFragment.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.g5.j$e$a */
        /* loaded from: classes14-dex2jar.jar:e/a/g5/j$e$a.class */
        public static final class C14523a extends i implements p<i0, s1.w.d<? super String>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C14523a(s1.w.d dVar) {
                super(2, dVar);
                C14522e.this = r5;
            }

            /* renamed from: i */
            public final s1.w.d<s> m20033i(Object obj, s1.w.d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C14523a(dVar);
            }

            /* renamed from: k */
            public final Object m20032k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C14523a(dVar).m20031s(s.a);
            }

            /* renamed from: s */
            public final Object m20031s(Object obj) {
                C25225a.m3932a3(obj);
                n3.r.a.l activity = C14522e.this.f41797g.getActivity();
                Context applicationContext = activity != null ? activity.getApplicationContext() : null;
                Context applicationContext2 = applicationContext.getApplicationContext();
                applicationContext2.getContentResolver();
                new C16487j(applicationContext);
                Contact contact = C14522e.this.f41796f;
                String str = null;
                if (C16461b.m17357o(contact)) {
                    str = null;
                    if (contact.getId() != null) {
                        Cursor query = applicationContext2.getContentResolver().query(C17891a1.C17904m.m15552a(), new String[]{"contact_name"}, "aggregated_contact_id=? AND contact_source=16", new String[]{String.valueOf(contact.getId())}, null);
                        str = null;
                        if (query != null) {
                            str = null;
                            try {
                                try {
                                    if (query.moveToFirst()) {
                                        str = query.getString(query.getColumnIndexOrThrow("contact_name"));
                                    }
                                } catch (SQLiteException e) {
                                    C10480a.m26061I1(e);
                                    str = null;
                                }
                            } finally {
                                query.close();
                            }
                        }
                    }
                }
                return str;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14522e(Contact contact, s1.w.d dVar, View$OnClickListenerC14517j view$OnClickListenerC14517j) {
            super(2, dVar);
            this.f41796f = contact;
            this.f41797g = view$OnClickListenerC14517j;
        }

        /* renamed from: i */
        public final s1.w.d<s> m20036i(Object obj, s1.w.d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14522e(this.f41796f, dVar, this.f41797g);
        }

        /* renamed from: k */
        public final Object m20035k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C14522e(this.f41796f, dVar, this.f41797g).m20034s(s.a);
        }

        /* renamed from: s */
        public final Object m20034s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f41795e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = this.f41797g.f41786h;
                if (fVar == null) {
                    s1.z.c.l.l("ioContext");
                    throw null;
                }
                C14523a c14523a = new C14523a(null);
                this.f41795e = 1;
                Object a4 = d.a4(fVar, c14523a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            String str = (String) obj;
            View$OnClickListenerC14517j view$OnClickListenerC14517j = this.f41797g;
            view$OnClickListenerC14517j.f41791m = str;
            C14474e m20039RA = view$OnClickListenerC14517j.m20039RA();
            EditText editText = m20039RA.f41685a;
            s1.z.c.l.d(editText, "nameText");
            Editable text = editText.getText();
            if (text != null) {
                if (text.length() > 0) {
                    m20039RA.f41685a.append(str);
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.g5.j$f */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/j$f.class */
    public static final class C14524f implements TextView.OnEditorActionListener {
        public C14524f() {
            View$OnClickListenerC14517j.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 6) {
                View$OnClickListenerC14517j view$OnClickListenerC14517j = View$OnClickListenerC14517j.this;
                l[] lVarArr = View$OnClickListenerC14517j.f41778o;
                view$OnClickListenerC14517j.m20038SA();
                return false;
            }
            return false;
        }
    }

    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l.AbstractC14530d
    /* renamed from: OA */
    public void mo20021OA() {
    }

    /* renamed from: RA */
    public final C14474e m20039RA() {
        return (C14474e) this.f41792n.m34468b(this, f41778o[0]);
    }

    /* renamed from: SA */
    public final void m20038SA() {
        EditText editText = m20039RA().f41685a;
        s1.z.c.l.d(editText, "binding.nameText");
        String obj = editText.getText().toString();
        int length = obj.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = s1.z.c.l.g(obj.charAt(!z ? i : length), 32) <= 0;
            if (!z) {
                if (!z2) {
                    z = true;
                } else {
                    i++;
                }
            } else if (!z2) {
                break;
            } else {
                length--;
            }
        }
        String obj2 = obj.subSequence(i, length + 1).toString();
        if (TextUtils.isEmpty(obj2) && TextUtils.isEmpty(this.f41791m)) {
            Toast.makeText((Context) getActivity(), C4604R.string.SuggestNameInvalidName, 0).show();
            return;
        }
        C14474e m20039RA = m20039RA();
        EditText editText2 = m20039RA.f41685a;
        s1.z.c.l.d(editText2, "nameText");
        editText2.setEnabled(false);
        RadioGroup radioGroup = m20039RA.f41686b;
        s1.z.c.l.d(radioGroup, "radioGroup");
        radioGroup.setEnabled(false);
        Button button = m20039RA.f41687c;
        s1.z.c.l.d(button, "saveButton");
        button.setEnabled(false);
        RadioGroup radioGroup2 = m20039RA().f41686b;
        s1.z.c.l.d(radioGroup2, "binding.radioGroup");
        int i2 = radioGroup2.getCheckedRadioButtonId() == C4604R.C4606id.business_button ? 2 : 1;
        AbstractC19854f<AbstractC14535n> abstractC19854f = this.f41783e;
        if (abstractC19854f == null) {
            s1.z.c.l.l("tagDataSaver");
            throw null;
        }
        AbstractC14535n mo11854a = abstractC19854f.mo11854a();
        Contact contact = this.f41790l;
        s1.z.c.l.c(contact);
        AbstractC19891x<Contact> mo20028a = mo11854a.mo20028a(contact, obj2, i2);
        AbstractC19870l abstractC19870l = this.f41784f;
        if (abstractC19870l == null) {
            s1.z.c.l.l("actorThreads");
            throw null;
        }
        mo20028a.mo11830e(abstractC19870l.mo11845d(), new C14521d());
        Toast.makeText((Context) getActivity(), C4604R.string.SuggestNameThanks, 1).show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        n3.r.a.l activity;
        s1.z.c.l.e(view, "v");
        int id = view.getId();
        if (id == C4604R.C4606id.save_button) {
            m20038SA();
        } else if (id != C4604R.C4606id.close_button || (activity = getActivity()) == null) {
        } else {
            activity.finish();
        }
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC14517j.super.onCreate(bundle);
        String str = f41779p;
        C19597a m8580q1 = C22128a.m8580q1(str, "viewId", str, null, null);
        AbstractC19462a abstractC19462a = this.f41789k;
        if (abstractC19462a != null) {
            n.B0(m8580q1, abstractC19462a);
        } else {
            s1.z.c.l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C4604R.layout.view_suggest_name, viewGroup, false);
    }

    public void onDestroy() {
        View$OnClickListenerC14517j.super.onDestroy();
        d.S((i0) this.f41788j.getValue(), (CancellationException) null, 1);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setTitle(C4604R.string.SuggestNameTitle);
        }
        Bundle arguments = getArguments();
        Contact contact = arguments != null ? (Contact) arguments.getParcelable(f41780q) : null;
        this.f41790l = contact;
        if (contact != null) {
            d.w2((i0) this.f41788j.getValue(), (f) null, (j0) null, new C14522e(contact, null, this), 3, (Object) null);
        }
        C14474e m20039RA = m20039RA();
        m20039RA.f41688d.setText(C4604R.string.BusinessProfile_SuggestBusinessName);
        m20039RA.f41685a.setHint(C4604R.string.SuggestNameTitle);
        C14474e m20039RA2 = m20039RA();
        EditText editText = m20039RA2.f41685a;
        s1.z.c.l.d(editText, "nameText");
        C19291g.m13500x(editText);
        m20039RA2.f41685a.setOnEditorActionListener(new C14524f());
        m20039RA2.f41687c.setOnClickListener(this);
        view.findViewById(C4604R.C4606id.close_button).setOnClickListener(this);
        C19286f.m13679Y(view, false, 0L, 3);
        View$OnClickListenerC14517j.super.onViewCreated(view, bundle);
    }
}
