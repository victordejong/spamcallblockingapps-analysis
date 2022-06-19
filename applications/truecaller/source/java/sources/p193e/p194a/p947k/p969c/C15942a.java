package p193e.p194a.p947k.p969c;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import s1.f0.q;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/a.class */
public final class C15942a implements AbstractC16076s1 {

    /* renamed from: a */
    public final g f44947a = C25225a.m3978P1(new C15943a(0, this));

    /* renamed from: b */
    public final g f44948b = C25225a.m3978P1(new C15943a(1, this));

    /* renamed from: c */
    public final f f44949c;

    /* renamed from: d */
    public final Context f44950d;

    /* renamed from: e */
    public final AbstractC19222c f44951e;

    /* renamed from: e.a.k.c.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/k/c/a$a.class */
    public static final class C15943a extends m implements a<File> {

        /* renamed from: b */
        public final /* synthetic */ int f44952b;

        /* renamed from: c */
        public final /* synthetic */ Object f44953c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15943a(int i, Object obj) {
            super(0);
            this.f44952b = i;
            this.f44953c = obj;
        }

        public final Object invoke() {
            int i = this.f44952b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return new File(C15942a.m18116a((C15942a) this.f44953c), "recording_temp.mp4");
            }
            return new File(((C15942a) this.f44953c).f44950d.getFilesDir(), "VideoCallerId/Recordings");
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$deleteOlderVideoFiles$2", f = "VideoFileUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/a$b.class */
    public static final class C15944b extends i implements l<d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f44955f;

        /* renamed from: e.a.k.c.a$b$a */
        /* loaded from: classes6-dex2jar.jar:e/a/k/c/a$b$a.class */
        public static final class C15945a extends m implements l<File, CharSequence> {

            /* renamed from: c */
            public static final C15945a f44956c = new C15945a(0);

            /* renamed from: d */
            public static final C15945a f44957d = new C15945a(1);

            /* renamed from: b */
            public final /* synthetic */ int f44958b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15945a(int i) {
                super(1);
                this.f44958b = i;
            }

            /* renamed from: d */
            public final Object m18108d(Object obj) {
                int i = this.f44958b;
                if (i == 0) {
                    File file = (File) obj;
                    s1.z.c.l.d(file, "it");
                    String name = file.getName();
                    s1.z.c.l.d(name, "it.name");
                    return name;
                } else if (i != 1) {
                    throw null;
                } else {
                    File file2 = (File) obj;
                    s1.z.c.l.d(file2, "it");
                    String name2 = file2.getName();
                    s1.z.c.l.d(name2, "it.name");
                    return name2;
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15944b(String str, d dVar) {
            super(1, dVar);
            C15942a.this = r5;
            this.f44955f = str;
        }

        /* renamed from: d */
        public final Object m18111d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C15944b(this.f44955f, dVar).m18109s(s.a);
        }

        /* renamed from: l */
        public final d<s> m18110l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15944b(this.f44955f, dVar);
        }

        /* renamed from: s */
        public final Object m18109s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            File file = new File(this.f44955f);
            if (!Boolean.valueOf(file.exists()).booleanValue()) {
                file = null;
            }
            if (file != null) {
                long longValue = new Long(file.lastModified()).longValue();
                File[] listFiles = C15942a.m18116a(C15942a.this).listFiles();
                if (listFiles != null) {
                    C25225a.m3990M1(listFiles, null, null, null, 0, null, C15945a.f44956c, 31);
                }
                File[] listFiles2 = C15942a.m18116a(C15942a.this).listFiles();
                if (listFiles2 != null) {
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : listFiles2) {
                        if (Boolean.valueOf(file2.lastModified() < longValue).booleanValue()) {
                            arrayList.add(file2);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((File) it.next()).delete();
                    }
                }
                File[] listFiles3 = C15942a.m18116a(C15942a.this).listFiles();
                if (listFiles3 != null) {
                    C25225a.m3990M1(listFiles3, null, null, null, 0, null, C15945a.f44957d, 31);
                }
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl", f = "VideoFileUtil.kt", l = {131}, m = "deleteOlderVideoFiles")
    /* renamed from: e.a.k.c.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/a$c.class */
    public static final class C15946c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44959d;

        /* renamed from: e */
        public int f44960e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15946c(d dVar) {
            super(dVar);
            C15942a.this = r4;
        }

        /* renamed from: s */
        public final Object m18107s(Object obj) {
            this.f44959d = obj;
            this.f44960e |= Integer.MIN_VALUE;
            return C15942a.this.m18113d(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl", f = "VideoFileUtil.kt", l = {178}, m = "shouldMirrorPlayback")
    /* renamed from: e.a.k.c.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/a$d.class */
    public static final class C15947d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44962d;

        /* renamed from: e */
        public int f44963e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15947d(d dVar) {
            super(dVar);
            C15942a.this = r4;
        }

        /* renamed from: s */
        public final Object m18106s(Object obj) {
            this.f44962d = obj;
            this.f44963e |= Integer.MIN_VALUE;
            return C15942a.this.m18112e(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$shouldMirrorPlayback$2", f = "VideoFileUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.a$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/a$e.class */
    public static final class C15948e extends i implements l<d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ File f44966f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15948e(File file, d dVar) {
            super(1, dVar);
            C15942a.this = r5;
            this.f44966f = file;
        }

        /* renamed from: d */
        public final Object m18105d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            C15942a c15942a = C15942a.this;
            File file = this.f44966f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Objects.requireNonNull(c15942a);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(c15942a.f44950d, Uri.fromFile(file));
            String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
            boolean z = false;
            Integer num = null;
            if (extractMetadata != null) {
                Integer h = q.h(extractMetadata);
                num = null;
                if (h != null) {
                    num = null;
                    if (h.intValue() > 0) {
                        num = h;
                    }
                }
            }
            mediaMetadataRetriever.release();
            if ((num != null && num.intValue() == 270) || (num != null && num.intValue() == 180)) {
                z = true;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: l */
        public final d<s> m18104l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15948e(this.f44966f, dVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x007a, code lost:
            if (r5.intValue() != 270) goto L17;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m18103s(java.lang.Object r5) {
            /*
                r4 = this;
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                e.a.k.c.a r0 = p193e.p194a.p947k.p969c.C15942a.this
                r6 = r0
                r0 = r4
                java.io.File r0 = r0.f44966f
                r5 = r0
                r0 = r6
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                android.media.MediaMetadataRetriever r0 = new android.media.MediaMetadataRetriever
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = r7
                r1 = r6
                android.content.Context r1 = r1.f44950d
                r2 = r5
                android.net.Uri r2 = android.net.Uri.fromFile(r2)
                r0.setDataSource(r1, r2)
                r0 = r7
                r1 = 24
                java.lang.String r0 = r0.extractMetadata(r1)
                r8 = r0
                r0 = 0
                r6 = r0
                r0 = 1
                r9 = r0
                r0 = r6
                r5 = r0
                r0 = r8
                if (r0 == 0) goto L64
                r0 = r8
                java.lang.Integer r0 = s1.f0.q.h(r0)
                r8 = r0
                r0 = r6
                r5 = r0
                r0 = r8
                if (r0 == 0) goto L64
                r0 = r8
                int r0 = r0.intValue()
                if (r0 <= 0) goto L57
                r0 = 1
                r10 = r0
                goto L5a
            L57:
                r0 = 0
                r10 = r0
            L5a:
                r0 = r6
                r5 = r0
                r0 = r10
                if (r0 == 0) goto L64
                r0 = r8
                r5 = r0
            L64:
                r0 = r7
                r0.release()
                r0 = r5
                if (r0 != 0) goto L6f
                goto L7d
            L6f:
                r0 = r9
                r11 = r0
                r0 = r5
                int r0 = r0.intValue()
                r1 = 270(0x10e, float:3.78E-43)
                if (r0 == r1) goto L98
            L7d:
                r0 = r5
                if (r0 != 0) goto L84
                goto L95
            L84:
                r0 = r5
                int r0 = r0.intValue()
                r1 = 180(0xb4, float:2.52E-43)
                if (r0 != r1) goto L95
                r0 = r9
                r11 = r0
                goto L98
            L95:
                r0 = 0
                r11 = r0
            L98:
                r0 = r11
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15942a.C15948e.m18103s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C15942a(@Named("IO") f fVar, Context context, AbstractC19222c abstractC19222c) {
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC19222c, "clock");
        this.f44949c = fVar;
        this.f44950d = context;
        this.f44951e = abstractC19222c;
    }

    /* renamed from: a */
    public static final File m18116a(C15942a c15942a) {
        return (File) c15942a.f44947a.getValue();
    }

    /* renamed from: b */
    public static final File m18115b(C15942a c15942a) {
        return (File) c15942a.f44948b.getValue();
    }

    /* renamed from: c */
    public static final Long m18114c(C15942a c15942a, File file) {
        Objects.requireNonNull(c15942a);
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(c15942a.f44950d, Uri.fromFile(file));
        String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
        Long l = null;
        if (extractMetadata != null) {
            Long j = q.j(extractMetadata);
            l = null;
            if (j != null) {
                l = null;
                if (j.longValue() > 0) {
                    l = j;
                }
            }
        }
        mediaMetadataRetriever.release();
        return l;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009d  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m18113d(java.lang.String r7, s1.w.d<? super s1.s> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C15942a.C15946c
            if (r0 == 0) goto L28
            r0 = r8
            e.a.k.c.a$c r0 = (p193e.p194a.p947k.p969c.C15942a.C15946c) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f44960e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44960e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.k.c.a$c r0 = new e.a.k.c.a$c
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f44959d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f44960e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L91
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            e.a.k.c.a$b r0 = new e.a.k.c.a$b
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f44960e = r1
            r0 = r6
            s1.w.f r0 = r0.f44949c
            e.a.k.c.z1 r1 = new e.a.k.c.z1
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L91
            r0 = r11
            return r0
        L91:
            r0 = r7
            s1.s r0 = (s1.s) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L9d
            goto La1
        L9d:
            s1.s r0 = s1.s.a
            r7 = r0
        La1:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15942a.m18113d(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a3  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m18112e(java.io.File r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            r6 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C15942a.C15947d
            if (r0 == 0) goto L28
            r0 = r8
            e.a.k.c.a$d r0 = (p193e.p194a.p947k.p969c.C15942a.C15947d) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f44963e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44963e = r1
            r0 = r9
            r8 = r0
            goto L32
        L28:
            e.a.k.c.a$d r0 = new e.a.k.c.a$d
            r1 = r0
            r2 = r6
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L32:
            r0 = r8
            java.lang.Object r0 = r0.f44962d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f44963e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L60
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L91
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            e.a.k.c.a$e r0 = new e.a.k.c.a$e
            r1 = r0
            r2 = r6
            r3 = r7
            r4 = 0
            r1.<init>(r3, r4)
            r7 = r0
            r0 = r8
            r1 = 1
            r0.f44963e = r1
            r0 = r6
            s1.w.f r0 = r0.f44949c
            e.a.k.c.z1 r1 = new e.a.k.c.z1
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r2 = r8
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r11
            if (r0 != r1) goto L91
            r0 = r11
            return r0
        L91:
            r0 = r7
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto La3
            r0 = r7
            boolean r0 = r0.booleanValue()
            r12 = r0
            goto La6
        La3:
            r0 = 0
            r12 = r0
        La6:
            r0 = r12
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15942a.m18112e(java.io.File, s1.w.d):java.lang.Object");
    }
}
