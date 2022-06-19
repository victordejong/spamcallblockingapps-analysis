.class public final Lcom/google/android/gms/internal/firebase-auth-api/fi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/ol;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/ol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ol;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->o(Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/ho;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V
    .locals 10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->p()Lcom/google/firebase/auth/i0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4274

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/auth/internal/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/jg;

    invoke-direct {v1, p1, p0, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/jg;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/i0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->n(Lcom/google/android/gms/internal/firebase-auth-api/jg;)V

    return-void

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/en;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Bearer"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/en;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ho;->p()Lcom/google/firebase/auth/i0;

    move-result-object v7

    move-object v2, p0

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->o(Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/um;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/um;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/rg;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/rg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/ml;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/vn;)V

    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->g(Lcom/google/android/gms/internal/firebase-auth-api/um;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/mm;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->n(Lcom/google/android/gms/internal/firebase-auth-api/mm;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/xm;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/sg;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/sg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/xm;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V

    invoke-virtual {v0, p4, v8}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->h(Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/gms/internal/firebase-auth-api/fi;)Lcom/google/android/gms/internal/firebase-auth-api/ol;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    return-object p0
.end method

.method private final m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/en;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->G1(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/en;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->y1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/nl;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->A1()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/tm;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/tm;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/ei;

    .line 7
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ei;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->a(Lcom/google/android/gms/internal/firebase-auth-api/tm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method private final n(Lcom/google/android/gms/internal/firebase-auth-api/mm;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/qg;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/qg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->o(Lcom/google/android/gms/internal/firebase-auth-api/mm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method private final o(Lcom/google/android/gms/internal/firebase-auth-api/en;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/ml;)V
    .locals 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/en;->B1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/um;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/um;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v12, Lcom/google/android/gms/internal/firebase-auth-api/tg;

    move-object v2, v12

    move-object v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p3

    move-object v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object v10, p1

    .line 5
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/tg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/ml;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/i0;Lcom/google/android/gms/internal/firebase-auth-api/yj;Lcom/google/android/gms/internal/firebase-auth-api/en;)V

    invoke-virtual {v11, v1, v12}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->g(Lcom/google/android/gms/internal/firebase-auth-api/um;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method private final p(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/xh;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/xh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->j(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->E1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/pg;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/pg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/mm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/mm;-><init>(Lcom/google/firebase/auth/d;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->n(Lcom/google/android/gms/internal/firebase-auth-api/mm;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/im;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/im;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/ug;

    .line 4
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ug;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->i(Lcom/google/android/gms/internal/firebase-auth-api/im;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final C(Ljava/lang/String;Lcom/google/firebase/auth/a;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/bn;

    .line 3
    invoke-virtual {p2}, Lcom/google/firebase/auth/a;->G1()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;-><init>(I)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->d(Lcom/google/firebase/auth/a;)Lcom/google/android/gms/internal/firebase-auth-api/bn;

    .line 6
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/vg;

    .line 7
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/vg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->j(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final D(Ljava/lang/String;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/bn;

    const/4 v1, 0x4

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;-><init>(I)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->d(Lcom/google/firebase/auth/a;)Lcom/google/android/gms/internal/firebase-auth-api/bn;

    .line 6
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->p(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/pn;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/pn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/wg;

    .line 4
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/wg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->f(Lcom/google/android/gms/internal/firebase-auth-api/pn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/pn;

    .line 4
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/pn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/yg;

    .line 5
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/yg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->f(Lcom/google/android/gms/internal/firebase-auth-api/pn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final G(Lcom/google/android/gms/internal/firebase-auth-api/sn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zg;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->k(Lcom/google/android/gms/internal/firebase-auth-api/sn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final H(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/oo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ah;

    .line 3
    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ah;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->l(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/oo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/bh;

    .line 5
    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/android/gms/internal/firebase-auth-api/bh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final J(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/oo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/dh;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, p3, v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/dh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/oo;Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final K(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/fh;

    .line 4
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/fh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/hh;

    .line 3
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/hh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/jh;

    .line 4
    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/jh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/lh;

    .line 4
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/lh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final O(Lcom/google/android/gms/internal/firebase-auth-api/zn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/mh;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/mh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->p(Lcom/google/android/gms/internal/firebase-auth-api/zn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final P(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/om;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/ph;

    const/4 v0, 0x0

    .line 3
    invoke-direct {p1, p0, p2, v0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ph;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/om;Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/qm;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/qh;

    .line 3
    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/qh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->t(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/qm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/firebase-auth-api/bo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/rh;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/rh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->s(Lcom/google/android/gms/internal/firebase-auth-api/bo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->p(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/th;

    .line 3
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/th;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/vh;

    .line 3
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/vh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/wh;

    .line 2
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/wh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->n(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final q(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/tm;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/tm;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/xg;

    .line 4
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/xg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->a(Lcom/google/android/gms/internal/firebase-auth-api/tm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/firebase-auth-api/io;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/nh;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/nh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->b(Lcom/google/android/gms/internal/firebase-auth-api/io;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final s(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/fo;->B1(Z)Lcom/google/android/gms/internal/firebase-auth-api/fo;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/yh;

    .line 4
    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/yh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->c(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final t(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/xn;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/xn;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zh;

    .line 3
    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->d(Lcom/google/android/gms/internal/firebase-auth-api/xn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Lcom/google/firebase/auth/x;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ai;

    .line 4
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ai;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/firebase/auth/x;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/bi;

    .line 4
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/bi;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/ci;

    .line 4
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ci;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->m(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/vn;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/vn;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/vn;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/vn;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/di;

    .line 6
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/firebase-auth-api/di;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->h(Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/xn;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/xn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/ng;

    .line 5
    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/firebase-auth-api/ng;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->d(Lcom/google/android/gms/internal/firebase-auth-api/xn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method

.method public final z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p5}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/mo;

    .line 4
    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/mo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a:Lcom/google/android/gms/internal/firebase-auth-api/ol;

    new-instance p3, Lcom/google/android/gms/internal/firebase-auth-api/og;

    .line 5
    invoke-direct {p3, p0, p5}, Lcom/google/android/gms/internal/firebase-auth-api/og;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/fi;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/ol;->e(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/mo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V

    return-void
.end method
