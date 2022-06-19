.class Lio/grpc/g1/g;
.super Lio/grpc/f1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/g1/g$b;,
        Lio/grpc/g1/g$a;
    }
.end annotation


# static fields
.field private static final q:Ln/f;


# instance fields
.field private final g:Lio/grpc/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0<",
            "**>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Lio/grpc/f1/e2;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Object;

.field private volatile l:I

.field private final m:Lio/grpc/g1/g$b;

.field private final n:Lio/grpc/g1/g$a;

.field private final o:Lio/grpc/a;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln/f;

    invoke-direct {v0}, Ln/f;-><init>()V

    sput-object v0, Lio/grpc/g1/g;->q:Ln/f;

    return-void
.end method

.method constructor <init>(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/g1/b;Lio/grpc/g1/h;Lio/grpc/g1/p;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/f1/e2;Lio/grpc/f1/k2;Lio/grpc/d;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/g1/b;",
            "Lio/grpc/g1/h;",
            "Lio/grpc/g1/p;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/f1/e2;",
            "Lio/grpc/f1/k2;",
            "Lio/grpc/d;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v7, p11

    .line 1
    new-instance v1, Lio/grpc/g1/o;

    invoke-direct {v1}, Lio/grpc/g1/o;-><init>()V

    const/4 v8, 0x0

    if-eqz p14, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/r0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    .line 3
    invoke-direct/range {v0 .. v6}, Lio/grpc/f1/a;-><init>(Lio/grpc/f1/m2;Lio/grpc/f1/e2;Lio/grpc/f1/k2;Lio/grpc/q0;Lio/grpc/d;Z)V

    const/4 v0, -0x1

    .line 4
    iput v0, v10, Lio/grpc/g1/g;->l:I

    .line 5
    new-instance v0, Lio/grpc/g1/g$a;

    invoke-direct {v0, p0}, Lio/grpc/g1/g$a;-><init>(Lio/grpc/g1/g;)V

    iput-object v0, v10, Lio/grpc/g1/g;->n:Lio/grpc/g1/g$a;

    .line 6
    iput-boolean v8, v10, Lio/grpc/g1/g;->p:Z

    const-string v0, "statsTraceCtx"

    .line 7
    invoke-static {v7, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Lio/grpc/f1/e2;

    iput-object v0, v10, Lio/grpc/g1/g;->i:Lio/grpc/f1/e2;

    move-object v0, p1

    .line 8
    iput-object v0, v10, Lio/grpc/g1/g;->g:Lio/grpc/r0;

    move-object/from16 v1, p9

    .line 9
    iput-object v1, v10, Lio/grpc/g1/g;->j:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 10
    iput-object v1, v10, Lio/grpc/g1/g;->h:Ljava/lang/String;

    .line 11
    invoke-virtual/range {p4 .. p4}, Lio/grpc/g1/h;->V()Lio/grpc/a;

    move-result-object v1

    iput-object v1, v10, Lio/grpc/g1/g;->o:Lio/grpc/a;

    .line 12
    new-instance v11, Lio/grpc/g1/g$b;

    .line 13
    invoke-virtual {p1}, Lio/grpc/r0;->c()Ljava/lang/String;

    move-result-object v9

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p6

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/grpc/g1/g$b;-><init>(Lio/grpc/g1/g;ILio/grpc/f1/e2;Ljava/lang/Object;Lio/grpc/g1/b;Lio/grpc/g1/p;Lio/grpc/g1/h;ILjava/lang/String;)V

    iput-object v11, v10, Lio/grpc/g1/g;->m:Lio/grpc/g1/g$b;

    return-void
.end method

.method static synthetic A(Lio/grpc/g1/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/grpc/g1/g;->p:Z

    return p0
.end method

.method static synthetic B(Lio/grpc/g1/g;)Lio/grpc/f1/k2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->v()Lio/grpc/f1/k2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lio/grpc/g1/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/grpc/g1/g;->p:Z

    return p1
.end method

.method static synthetic D(Lio/grpc/g1/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/grpc/g1/g;->l:I

    return p0
.end method

.method static synthetic E(Lio/grpc/g1/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/grpc/g1/g;->l:I

    return p1
.end method

.method static synthetic F(Lio/grpc/g1/g;)Lio/grpc/f1/e2;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/g;->i:Lio/grpc/f1/e2;

    return-object p0
.end method

.method static synthetic G(Lio/grpc/g1/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/g;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic H(Lio/grpc/g1/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/g;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I(Lio/grpc/g1/g;)Lio/grpc/g1/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/g;->m:Lio/grpc/g1/g$b;

    return-object p0
.end method

.method static synthetic J()Ln/f;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/g1/g;->q:Ln/f;

    return-object v0
.end method

.method static synthetic K(Lio/grpc/g1/g;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/f1/d;->r(I)V

    return-void
.end method

.method static synthetic L(Lio/grpc/g1/g;)Lio/grpc/f1/k2;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->v()Lio/grpc/f1/k2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lio/grpc/g1/g;)Lio/grpc/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/g1/g;->g:Lio/grpc/r0;

    return-object p0
.end method


# virtual methods
.method M()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public N()Lio/grpc/r0$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g;->g:Lio/grpc/r0;

    invoke-virtual {v0}, Lio/grpc/r0;->e()Lio/grpc/r0$d;

    move-result-object v0

    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/g1/g;->l:I

    return v0
.end method

.method P(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/g1/g;->k:Ljava/lang/Object;

    return-void
.end method

.method protected Q()Lio/grpc/g1/g$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g;->m:Lio/grpc/g1/g$b;

    return-object v0
.end method

.method R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/g1/g;->p:Z

    return v0
.end method

.method public a()Lio/grpc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g;->o:Lio/grpc/a;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/g1/g;->j:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic s()Lio/grpc/f1/d$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/g1/g;->Q()Lio/grpc/g1/g$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic t()Lio/grpc/f1/a$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/g1/g;->y()Lio/grpc/g1/g$a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic x()Lio/grpc/f1/a$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/g1/g;->Q()Lio/grpc/g1/g$b;

    move-result-object v0

    return-object v0
.end method

.method protected y()Lio/grpc/g1/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/g;->n:Lio/grpc/g1/g$a;

    return-object v0
.end method
