package p193e.p194a.p682e.p683a;

import android.app.ProgressDialog;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.material.textfield.TextInputEditText;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import e.m.f.a.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p430q.C8582g0;
import q3.a.h1;
import q3.a.j0;
import q3.a.t0;
import s1.a.a.a.v0.f.d;
import s1.d0.h;
import s1.d0.i;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.u.z;
import s1.z.b.l;
import s1.z.c.m;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bV\u0010WJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J-\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00172\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR%\u0010#\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010(\u001a\n \u001e*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8��@��X\u0081.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R%\u00103\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010 \u001a\u0004\b2\u0010\"R%\u00108\u001a\n \u001e*\u0004\u0018\u000104048B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010 \u001a\u0004\b6\u00107R(\u0010A\u001a\b\u0012\u0004\u0012\u00020:098��@��X\u0081.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\"\u0010M\u001a\u00020F8��@��X\u0081.¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u001c\u0010Q\u001a\b\u0012\u0004\u0012\u00020\t0N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR\u001e\u0010U\u001a\n \u001e*\u0004\u0018\u00010R0R8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010T¨\u0006X"}, d2 = {"Le/a/e/a/y3;", "Ln3/b/a/q;", "Lcom/truecaller/data/entity/messaging/Participant;", "participant", "", "isOutgoing", "Lcom/truecaller/messaging/data/types/Message;", "RA", "(Lcom/truecaller/data/entity/messaging/Participant;Z)Lcom/truecaller/messaging/data/types/Message;", "", "mentionName", "Lcom/truecaller/messaging/data/types/Entity;", "SA", "(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lcom/google/android/material/textfield/TextInputEditText;", "kotlin.jvm.PlatformType", "h", "Ls1/g;", "getConversationsText", "()Lcom/google/android/material/textfield/TextInputEditText;", "conversationsText", "Landroid/widget/Button;", "g", "getAddButton", "()Landroid/widget/Button;", "addButton", "Le/a/a/i0;", "f", "Le/a/a/i0;", "getMessageSettings$truecaller_googlePlayRelease", "()Le/a/a/i0;", "setMessageSettings$truecaller_googlePlayRelease", "(Le/a/a/i0;)V", "messageSettings", "j", "getMessagesPerConversationText", "messagesPerConversationText", "Landroid/widget/CheckBox;", "i", "getExistingConversationsCheckBox", "()Landroid/widget/CheckBox;", "existingConversationsCheckBox", "Le/a/r2/f;", "Le/a/a/k/a/a/m;", "e", "Le/a/r2/f;", "getImGroupManager$truecaller_googlePlayRelease", "()Le/a/r2/f;", "setImGroupManager$truecaller_googlePlayRelease", "(Le/a/r2/f;)V", "imGroupManager", "Ljava/util/Random;", "a", "Ljava/util/Random;", "random", "Le/a/a/g/w;", "d", "Le/a/a/g/w;", "getReadMessageStorage$truecaller_googlePlayRelease", "()Le/a/a/g/w;", "setReadMessageStorage$truecaller_googlePlayRelease", "(Le/a/a/g/w;)V", "readMessageStorage", "", AbstractC2405c.f7629a, "Ljava/util/List;", "sampleNumbers", "Le/m/f/a/j;", C22021b.f61237c, "Le/m/f/a/j;", "phoneNumberUtil", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.y3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/y3.class */
public final class C12851y3 extends q {

    /* renamed from: k */
    public static final /* synthetic */ int f37372k = 0;
    @Inject

    /* renamed from: d */
    public AbstractC6248w f37376d;
    @Inject

    /* renamed from: e */
    public AbstractC19854f<AbstractC6485m> f37377e;
    @Inject

    /* renamed from: f */
    public AbstractC6392i0 f37378f;

    /* renamed from: a */
    public final Random f37373a = new Random();

    /* renamed from: b */
    public final j f37374b = j.q();

    /* renamed from: c */
    public final List<String> f37375c = new ArrayList();

    /* renamed from: g */
    public final g f37379g = C19286f.m13659t(this, C2752R.C2754id.add_button);

    /* renamed from: h */
    public final g f37380h = C19286f.m13659t(this, C2752R.C2754id.conversations_text);

    /* renamed from: i */
    public final g f37381i = C19286f.m13659t(this, C2752R.C2754id.existing_conversations_check_box);

    /* renamed from: j */
    public final g f37382j = C19286f.m13659t(this, C2752R.C2754id.messages_per_conversation_text);

    /* renamed from: e.a.e.a.y3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/y3$a.class */
    public static final class C12852a extends m implements l<Integer, CharSequence> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12852a() {
            super(1);
            C12851y3.this = r4;
        }

        /* renamed from: d */
        public Object m22596d(Object obj) {
            ((Number) obj).intValue();
            i iVar = new i(1, C12851y3.this.f37373a.nextInt(10) + 1);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(iVar, 10));
            z it = iVar.iterator();
            while (((h) it).hasNext()) {
                it.a();
                String a = f.a(C12851y3.this.f37373a.nextInt(10) + 1, true, false);
                s1.z.c.l.d(a, "RandomStringUtils.random…Int(MAX_WORD_LENGTH) + 1)");
                String lowerCase = a.toLowerCase();
                s1.z.c.l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                arrayList.add(lowerCase);
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            int i = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                if (i < 0) {
                    s1.u.i.N0();
                    throw null;
                }
                String str = (String) next;
                String str2 = str;
                if (i == 0) {
                    str2 = r.l(str);
                }
                arrayList2.add(str2);
                i++;
            }
            StringBuilder m8728C = C22128a.m8728C(s1.u.i.O(arrayList2, StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62));
            C12851y3 c12851y3 = C12851y3.this;
            List T = s1.u.i.T(new Character[]{'.', '?', '!'});
            m8728C.append(((Character) T.get(c12851y3.f37373a.nextInt(T.size()))).charValue());
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.e.a.y3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/y3$b.class */
    public static final class View$OnClickListenerC12853b implements View.OnClickListener {
        public View$OnClickListenerC12853b() {
            C12851y3.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12851y3 c12851y3 = C12851y3.this;
            TextInputEditText textInputEditText = (TextInputEditText) c12851y3.f37380h.getValue();
            s1.z.c.l.d(textInputEditText, "conversationsText");
            int m13806K = C19231g0.m13806K(String.valueOf(textInputEditText.getText()));
            TextInputEditText textInputEditText2 = (TextInputEditText) c12851y3.f37382j.getValue();
            s1.z.c.l.d(textInputEditText2, "messagesPerConversationText");
            int m13806K2 = C19231g0.m13806K(String.valueOf(textInputEditText2.getText()));
            CheckBox checkBox = (CheckBox) c12851y3.f37381i.getValue();
            s1.z.c.l.d(checkBox, "existingConversationsCheckBox");
            boolean isChecked = checkBox.isChecked();
            if ((m13806K > 0 || isChecked) && m13806K2 > 0) {
                ProgressDialog progressDialog = new ProgressDialog(c12851y3.getContext());
                progressDialog.setProgressStyle(1);
                progressDialog.setMax(m13806K * m13806K2);
                progressDialog.setProgress(0);
                progressDialog.setCancelable(false);
                progressDialog.setMessage("Adding IM messages...");
                progressDialog.show();
                d.w2(h1.a, t0.d, (j0) null, new C12828u3(c12851y3, isChecked, m13806K2, progressDialog, m13806K, null), 2, (Object) null);
            }
        }
    }

    /* renamed from: e.a.e.a.y3$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/y3$c.class */
    public static final class C12854c implements CompoundButton.OnCheckedChangeListener {
        public C12854c() {
            C12851y3.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            TextInputEditText textInputEditText = (TextInputEditText) C12851y3.this.f37380h.getValue();
            s1.z.c.l.d(textInputEditText, "conversationsText");
            textInputEditText.setEnabled(!z);
        }
    }

    /* renamed from: OA */
    public static final void m22602OA(C12851y3 c12851y3, ContentResolver contentResolver, ArrayList arrayList) {
        Objects.requireNonNull(c12851y3);
        if (arrayList.isEmpty()) {
            return;
        }
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", arrayList);
        arrayList.clear();
    }

    /* renamed from: PA */
    public static final s1.w.f m22601PA(C12851y3 c12851y3) {
        return C18334g0.m15209q(c12851y3.getContext()).mo12378g();
    }

    /* renamed from: QA */
    public static final void m22600QA(C12851y3 c12851y3, List list, Entity entity, int i) {
        Objects.requireNonNull(c12851y3);
        ContentValues contentValues = new ContentValues();
        entity.mo34994c(contentValues);
        ContentProviderOperation build = ContentProviderOperation.newInsert(C8582g0.m28296x()).withValueBackReference("message_id", i).withValues(contentValues).build();
        s1.z.c.l.d(build, "it");
        list.add(build);
    }

    /* renamed from: TA */
    public static int m22597TA(C12851y3 c12851y3, List list, Message message, Integer num, Long l, Integer num2, Long l2, int i) {
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            l = null;
        }
        if ((i & 16) != 0) {
            num2 = null;
        }
        if ((i & 32) != 0) {
            l2 = null;
        }
        Objects.requireNonNull(c12851y3);
        int size = list.size();
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(C8582g0.m28295y());
        b bVar = message.f13384e;
        s1.z.c.l.d(bVar, "message.date");
        ContentProviderOperation.Builder withValue = newInsert.withValue("date", Long.valueOf(((e) bVar).a));
        b bVar2 = message.f13383d;
        s1.z.c.l.d(bVar2, "message.dateSent");
        ContentProviderOperation.Builder withValue2 = withValue.withValue("date_sent", Long.valueOf(((e) bVar2).a)).withValue(UpdateKey.STATUS, Integer.valueOf(message.f13386g)).withValue("seen", Boolean.valueOf(message.f13387h)).withValue("read", Boolean.valueOf(message.f13388i)).withValue("locked", Boolean.valueOf(message.f13389j)).withValue("transport", Integer.valueOf(message.f13390k)).withValue("analytics_id", message.f13396q).withValue("raw_address", message.f13398s);
        TransportInfo transportInfo = message.f13393n;
        Objects.requireNonNull(transportInfo, "null cannot be cast to non-null type com.truecaller.messaging.transport.im.ImTransportInfo");
        ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_id", imTransportInfo.f13729b);
        contentValues.put("info5", (Integer) 0);
        contentValues.put("info1", Integer.valueOf(imTransportInfo.f13731d));
        contentValues.put("info2", Integer.valueOf(imTransportInfo.f13732e));
        contentValues.put("info3", Integer.valueOf(imTransportInfo.f13733f));
        contentValues.put("info4", Integer.valueOf(imTransportInfo.f13734g));
        contentValues.put("info6", Integer.valueOf(imTransportInfo.f13735h));
        contentValues.put("info7", Integer.valueOf(imTransportInfo.f13736i));
        ContentProviderOperation.Builder withValues = withValue2.withValues(contentValues);
        if (l != null) {
            withValues.withValue("conversation_id", l);
        } else if (num == null) {
            throw new IllegalStateException("Specify either conversationId or conversationIndex");
        } else {
            withValues.withValueBackReference("conversation_id", num.intValue());
        }
        if (l2 != null) {
            withValues.withValue("participant_id", l2);
        } else if (num2 == null) {
            throw new IllegalStateException("Specify either participantId or participantIndex");
        } else {
            withValues.withValueBackReference("participant_id", num2.intValue());
        }
        ContentProviderOperation build = withValues.build();
        s1.z.c.l.d(build, "it");
        list.add(build);
        TransportInfo transportInfo2 = message.f13393n;
        Reaction[] reactionArr = ((ImTransportInfo) transportInfo2).f13738k;
        Objects.requireNonNull(transportInfo2, "null cannot be cast to non-null type com.truecaller.messaging.transport.im.ImTransportInfo");
        String str = ((ImTransportInfo) transportInfo2).f13729b;
        if (reactionArr != null) {
            for (Reaction reaction : reactionArr) {
                ContentProviderOperation build2 = ContentProviderOperation.newInsert(C8582g0.m28331J(str)).withValue("emoji", reaction.f13454d).withValue("send_date", Long.valueOf(reaction.f13455e)).withValue("from_peer_id", reaction.f13453c).build();
                s1.z.c.l.d(build2, "it");
                list.add(build2);
            }
        }
        return size;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: RA */
    public final Message m22599RA(Participant participant, boolean z) {
        Reaction[] reactionArr;
        Reaction[] reactionArr2;
        Message.C4209b c4209b = new Message.C4209b();
        c4209b.f13423c = participant;
        c4209b.f13428h = true;
        c4209b.f13429i = true;
        c4209b.m35009d(System.currentTimeMillis());
        c4209b.m35010c(System.currentTimeMillis());
        c4209b.f13438r = participant.f11571d;
        String str = participant.f11570c;
        String valueOf = String.valueOf(this.f37373a.nextInt());
        s1.z.c.l.e(valueOf, "rawId");
        List list = null;
        if (str != null) {
            int nextInt = this.f37373a.nextInt();
            List U = v.U("��,��,��,��,��,��,��", new String[]{","}, false, 0, 6);
            reactionArr = new Reaction[]{new Reaction(-1L, -1L, str, (String) U.get(this.f37373a.nextInt(U.size() - 1)), System.currentTimeMillis(), 0, 0L, null, 192), new Reaction(-1L, -1L, String.valueOf(nextInt), (String) U.get(this.f37373a.nextInt(U.size() - 1)), System.currentTimeMillis(), 0, 0L, null, 192)};
        } else {
            reactionArr = null;
        }
        if (reactionArr != null) {
            list = C25225a.m3892i3(reactionArr);
        }
        if (list != null) {
            Object[] array = list.toArray(new Reaction[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            reactionArr2 = (Reaction[]) array;
        } else {
            reactionArr2 = null;
        }
        ImTransportInfo imTransportInfo = new ImTransportInfo(0L, valueOf, z, 3, 3, 4, 4, 0, 0, 0L, reactionArr2, 0L, 0, 0, null, null, 0, -1, null);
        c4209b.f13431k = 2;
        c4209b.f13434n = imTransportInfo;
        c4209b.f13427g = z ? 1 : 0;
        Message m35012a = c4209b.m35012a();
        s1.z.c.l.d(m35012a, "Message.Builder()\n      …e 0)\n            .build()");
        return m35012a;
    }

    /* renamed from: SA */
    public final Entity m22598SA(String str) {
        boolean z = true;
        String O = s1.u.i.O(new i(1, this.f37373a.nextInt(5) + 1), StringConstant.SPACE, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new C12852a(), 30);
        if (str.length() <= 0) {
            z = false;
        }
        String str2 = O;
        if (z) {
            StringBuilder m8728C = C22128a.m8728C(O);
            m8728C.append(" @" + str);
            str2 = m8728C.toString();
            s1.z.c.l.d(str2, "StringBuilder().apply(builderAction).toString()");
        }
        return Entity.C4195a.m35042a(Entity.f13305h, 0L, "text/plain", 0, str2, false, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262133);
    }

    public void onCreate(Bundle bundle) {
        C12851y3.super.onCreate(bundle);
        AbstractC16444k2.f46188a.m17389a().mo11381l(this);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_mock_im, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C12851y3.super.onViewCreated(view, bundle);
        ((Button) this.f37379g.getValue()).setOnClickListener(new View$OnClickListenerC12853b());
        ((CheckBox) this.f37381i.getValue()).setOnCheckedChangeListener(new C12854c());
    }
}
