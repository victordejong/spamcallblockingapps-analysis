.class public abstract Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/auth/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$a;,
        Lcom/google/firebase/auth/FirebaseAuth$b;
    }
.end annotation


# instance fields
.field private a:Lcom/google/firebase/c;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

.field private f:Lcom/google/firebase/auth/g;

.field private g:Lcom/google/firebase/auth/internal/w0;

.field private final h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/Object;

.field private k:Ljava/lang/String;

.field private final l:Lcom/google/firebase/auth/internal/z;

.field private final m:Lcom/google/firebase/auth/internal/f0;

.field private final n:Lcom/google/firebase/auth/internal/j0;

.field private o:Lcom/google/firebase/auth/internal/b0;

.field private p:Lcom/google/firebase/auth/internal/c0;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/c;->l()Lcom/google/firebase/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/sk;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/tk;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v1

    .line 5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/uk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/tk;)Lcom/google/android/gms/internal/firebase-auth-api/vj;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/z;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/auth/internal/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/google/firebase/auth/internal/f0;->a()Lcom/google/firebase/auth/internal/f0;

    move-result-object v2

    .line 8
    invoke-static {}, Lcom/google/firebase/auth/internal/j0;->a()Lcom/google/firebase/auth/internal/j0;

    move-result-object v3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/c;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/z;

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/firebase/auth/internal/z;

    new-instance p1, Lcom/google/firebase/auth/internal/w0;

    .line 12
    invoke-direct {p1}, Lcom/google/firebase/auth/internal/w0;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lcom/google/firebase/auth/internal/w0;

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/auth/internal/f0;

    iput-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/firebase/auth/internal/f0;

    .line 14
    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/auth/internal/j0;

    iput-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/firebase/auth/internal/j0;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 18
    invoke-static {}, Lcom/google/firebase/auth/internal/c0;->a()Lcom/google/firebase/auth/internal/c0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/firebase/auth/internal/c0;

    .line 19
    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/z;->b()Lcom/google/firebase/auth/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {v1, p1}, Lcom/google/firebase/auth/internal/z;->d(Lcom/google/firebase/auth/g;)Lcom/google/android/gms/internal/firebase-auth-api/en;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->t(Lcom/google/firebase/auth/g;Lcom/google/android/gms/internal/firebase-auth-api/en;ZZ)V

    .line 22
    :cond_0
    invoke-virtual {v2, p0}, Lcom/google/firebase/auth/internal/f0;->d(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/c;->i()Lcom/google/firebase/c;

    move-result-object v0

    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/c;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/c;->f(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/s$b;)Lcom/google/firebase/auth/s$b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->r(Ljava/lang/String;Lcom/google/firebase/auth/s$b;)Lcom/google/firebase/auth/s$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/vj;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    return-object p0
.end method

.method static synthetic q(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/auth/internal/w0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lcom/google/firebase/auth/internal/w0;

    return-object p0
.end method

.method private final r(Ljava/lang/String;Lcom/google/firebase/auth/s$b;)Lcom/google/firebase/auth/s$b;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lcom/google/firebase/auth/internal/w0;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/w0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lcom/google/firebase/auth/internal/w0;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/w0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/firebase/auth/r0;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/auth/r0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/s$b;)V

    return-object p1

    :cond_0
    return-object p2
.end method

.method private final s(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/b;->b(Ljava/lang/String;)Lcom/google/firebase/auth/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/firebase/auth/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final A(Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/g;",
            "Lcom/google/firebase/auth/c;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/auth/c;->z1()Lcom/google/firebase/auth/c;

    move-result-object v3

    .line 4
    instance-of p2, v3, Lcom/google/firebase/auth/d;

    if-eqz p2, :cond_2

    .line 5
    check-cast v3, Lcom/google/firebase/auth/d;

    .line 6
    invoke-virtual {v3}, Lcom/google/firebase/auth/d;->A1()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 8
    invoke-virtual {v3}, Lcom/google/firebase/auth/d;->B1()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v3}, Lcom/google/firebase/auth/d;->C1()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->B1()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/google/firebase/auth/t0;

    invoke-direct {v10, p0}, Lcom/google/firebase/auth/t0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    .line 11
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->o(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/auth/d;->D1()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->s(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42b0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    new-instance v1, Lcom/google/firebase/auth/t0;

    .line 15
    invoke-direct {v1, p0}, Lcom/google/firebase/auth/t0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p2, v0, p1, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->p(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    instance-of p2, v3, Lcom/google/firebase/auth/q;

    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 17
    move-object v7, v3

    check-cast v7, Lcom/google/firebase/auth/q;

    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    new-instance v9, Lcom/google/firebase/auth/t0;

    invoke-direct {v9, p0}, Lcom/google/firebase/auth/t0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->r(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/q;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 18
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->B1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/auth/t0;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/t0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v2, p1

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->k(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final B(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p2

    move-object/from16 v4, p4

    .line 1
    invoke-virtual {v1, p2, p3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-ltz v3, :cond_0

    const-wide/16 v1, 0x78

    cmp-long v3, v4, v1

    if-gtz v3, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/sn;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/xj;->a()Z

    move-result v10

    move-object v2, v1

    move-object v3, p1

    move/from16 v6, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    .line 3
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/sn;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p5

    .line 4
    invoke-direct {p0, p1, v3}, Lcom/google/firebase/auth/FirebaseAuth;->r(Ljava/lang/String;Lcom/google/firebase/auth/s$b;)Lcom/google/firebase/auth/s$b;

    move-result-object v9

    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    move-object v8, v1

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 5
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->l(Lcom/google/firebase/c;Lcom/google/android/gms/internal/firebase-auth-api/sn;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    return-void

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final C(Lcom/google/firebase/auth/r;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->b()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->h()Lcom/google/firebase/auth/o;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/h;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->g()Lcom/google/firebase/auth/s$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/auth/internal/h;->B1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->k()Lcom/google/firebase/auth/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/t;->C1()Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->e()Lcom/google/firebase/auth/s$b;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->j()Landroid/app/Activity;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 11
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->b(Ljava/lang/String;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/firebase/auth/internal/j0;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->j()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/xj;->a()Z

    move-result v4

    .line 14
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/firebase/auth/internal/j0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;Z)Lcom/google/android/gms/tasks/g;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/auth/q0;

    invoke-direct {v2, v0, p1}, Lcom/google/firebase/auth/q0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/r;)V

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-void

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->b()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->c()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->e()Lcom/google/firebase/auth/s$b;

    move-result-object v9

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->j()Landroid/app/Activity;

    move-result-object v10

    .line 21
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->f()Ljava/util/concurrent/Executor;

    move-result-object v11

    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/auth/r;->g()Lcom/google/firebase/auth/s$a;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_5

    .line 23
    invoke-static {v5, v9, v10, v11}, Lcom/google/android/gms/internal/firebase-auth-api/vl;->b(Ljava/lang/String;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    iget-object p1, v4, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/firebase/auth/internal/j0;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/xj;->a()Z

    move-result v0

    .line 24
    invoke-virtual {p1, v4, v5, v10, v0}, Lcom/google/firebase/auth/internal/j0;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;Z)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/p0;

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/google/firebase/auth/p0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;Lcom/google/firebase/auth/s$b;Landroid/app/Activity;Ljava/util/concurrent/Executor;Z)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/g;->d(Lcom/google/android/gms/tasks/c;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method public final D(Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/g;",
            "Lcom/google/firebase/auth/c;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/auth/c;->z1()Lcom/google/firebase/auth/c;

    move-result-object p2

    new-instance v2, Lcom/google/firebase/auth/t0;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/t0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 4
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->e(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Lcom/google/firebase/auth/c;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->z(Lcom/google/firebase/auth/g;Z)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/firebase/c;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    return-object v0
.end method

.method public c()Lcom/google/firebase/auth/g;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    return-object v0
.end method

.method public d()Lcom/google/firebase/auth/f;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lcom/google/firebase/auth/internal/w0;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i(Lcom/google/firebase/auth/c;)Lcom/google/android/gms/tasks/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/c;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/c;->z1()Lcom/google/firebase/auth/c;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/google/firebase/auth/d;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lcom/google/firebase/auth/d;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->H1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->B1()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->C1()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/auth/s0;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/s0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->m(Lcom/google/firebase/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->D1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    new-instance v2, Lcom/google/firebase/auth/s0;

    .line 12
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/s0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->n(Lcom/google/firebase/c;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/google/firebase/auth/q;

    if-eqz v0, :cond_3

    .line 14
    check-cast p1, Lcom/google/firebase/auth/q;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/s0;

    .line 15
    invoke-direct {v3, p0}, Lcom/google/firebase/auth/s0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->q(Lcom/google/firebase/c;Lcom/google/firebase/auth/q;Ljava/lang/String;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    new-instance v3, Lcom/google/firebase/auth/s0;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/firebase/auth/s0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->j(Lcom/google/firebase/c;Lcom/google/firebase/auth/c;Ljava/lang/String;Lcom/google/firebase/auth/internal/k0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->u()V

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/firebase/auth/internal/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/b0;->b()V

    :cond_0
    return-void
.end method

.method final t(Lcom/google/firebase/auth/g;Lcom/google/android/gms/internal/firebase-auth-api/en;ZZ)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    invoke-virtual {v3}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    if-nez p4, :cond_3

    const/4 p4, 0x1

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p4}, Lcom/google/firebase/auth/g;->I1()Lcom/google/android/gms/internal/firebase-auth-api/en;

    move-result-object p4

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object p4

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    xor-int/2addr p4, v2

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_2
    xor-int/2addr v2, v0

    move p4, v2

    move v2, v1

    .line 8
    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    if-nez v0, :cond_5

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    goto :goto_4

    .line 9
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->A1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/g;->F1(Ljava/util/List;)Lcom/google/firebase/auth/g;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->D1()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->G1()Lcom/google/firebase/auth/g;

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->z1()Lcom/google/firebase/auth/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/l;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/firebase/auth/g;->M1(Ljava/util/List;)V

    :goto_4
    if-eqz p3, :cond_7

    .line 14
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/firebase/auth/internal/z;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/internal/z;->a(Lcom/google/firebase/auth/g;)V

    :cond_7
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/g;->J1(Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->x(Lcom/google/firebase/auth/g;)V

    :cond_9
    if-eqz p4, :cond_a

    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    .line 18
    invoke-virtual {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->y(Lcom/google/firebase/auth/g;)V

    :cond_a
    if-eqz p3, :cond_b

    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/firebase/auth/internal/z;

    .line 19
    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/auth/internal/z;->c(Lcom/google/firebase/auth/g;Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    .line 20
    :cond_b
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->w()Lcom/google/firebase/auth/internal/b0;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    invoke-virtual {p2}, Lcom/google/firebase/auth/g;->I1()Lcom/google/android/gms/internal/firebase-auth-api/en;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/internal/b0;->a(Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    return-void
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/firebase/auth/internal/z;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/firebase/auth/internal/z;->e(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/g;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lcom/google/firebase/auth/internal/z;

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/firebase/auth/internal/z;->e(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->x(Lcom/google/firebase/auth/g;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->y(Lcom/google/firebase/auth/g;)V

    return-void
.end method

.method public final declared-synchronized v(Lcom/google/firebase/auth/internal/b0;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/firebase/auth/internal/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized w()Lcom/google/firebase/auth/internal/b0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/firebase/auth/internal/b0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/auth/internal/b0;

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/b0;-><init>(Lcom/google/firebase/c;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->v(Lcom/google/firebase/auth/internal/b0;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/firebase/auth/internal/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final x(Lcom/google/firebase/auth/g;)V
    .locals 4

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2d

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->L1()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_1
    new-instance v0, Lcom/google/firebase/n/b;

    invoke-direct {v0, p1}, Lcom/google/firebase/n/b;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/firebase/auth/internal/c0;

    new-instance v1, Lcom/google/firebase/auth/m0;

    .line 5
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/m0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/n/b;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/internal/c0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Lcom/google/firebase/auth/g;)V
    .locals 3

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->C1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2f

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/firebase/auth/internal/c0;

    new-instance v0, Lcom/google/firebase/auth/n0;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/n0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/auth/internal/c0;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final z(Lcom/google/firebase/auth/g;Z)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/g;",
            "Z)",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x4457

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bk;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/g;->I1()Lcom/google/android/gms/internal/firebase-auth-api/en;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->y1()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/q;->a(Ljava/lang/String;)Lcom/google/firebase/auth/i;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/vj;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/c;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/en;->A1()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/auth/o0;

    invoke-direct {v2, p0}, Lcom/google/firebase/auth/o0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 8
    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/vj;->i(Lcom/google/firebase/c;Lcom/google/firebase/auth/g;Ljava/lang/String;Lcom/google/firebase/auth/internal/d0;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
