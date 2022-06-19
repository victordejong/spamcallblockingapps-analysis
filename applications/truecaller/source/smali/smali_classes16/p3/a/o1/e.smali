.class public Lp3/a/o1/e;
.super Lp3/a/n1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/e$b;,
        Lp3/a/o1/e$a;
    }
.end annotation


# static fields
.field public static final q:Lv3/f;


# instance fields
.field public final g:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "**>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;

.field public final i:Lp3/a/n1/r2;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/Object;

.field public volatile l:I

.field public final m:Lp3/a/o1/e$b;

.field public final n:Lp3/a/o1/e$a;

.field public final o:Lp3/a/a;

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    sput-object v0, Lp3/a/o1/e;->q:Lv3/f;

    return-void
.end method

.method public constructor <init>(Lp3/a/p0;Lp3/a/o0;Lp3/a/o1/b;Lp3/a/o1/f;Lp3/a/o1/m;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lp3/a/n1/r2;Lp3/a/n1/x2;Lp3/a/c;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/p0<",
            "**>;",
            "Lp3/a/o0;",
            "Lp3/a/o1/b;",
            "Lp3/a/o1/f;",
            "Lp3/a/o1/m;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lp3/a/n1/r2;",
            "Lp3/a/n1/x2;",
            "Lp3/a/c;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    move-object v7, p1

    move-object/from16 v8, p11

    .line 1
    new-instance v1, Lp3/a/o1/l;

    invoke-direct {v1}, Lp3/a/o1/l;-><init>()V

    const/4 v9, 0x0

    if-eqz p14, :cond_0

    .line 2
    iget-boolean v0, v7, Lp3/a/p0;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v9

    :goto_0
    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    .line 3
    invoke-direct/range {v0 .. v6}, Lp3/a/n1/a;-><init>(Lp3/a/n1/z2;Lp3/a/n1/r2;Lp3/a/n1/x2;Lp3/a/o0;Lp3/a/c;Z)V

    const/4 v0, -0x1

    .line 4
    iput v0, v10, Lp3/a/o1/e;->l:I

    .line 5
    new-instance v0, Lp3/a/o1/e$a;

    invoke-direct {v0, p0}, Lp3/a/o1/e$a;-><init>(Lp3/a/o1/e;)V

    iput-object v0, v10, Lp3/a/o1/e;->n:Lp3/a/o1/e$a;

    .line 6
    iput-boolean v9, v10, Lp3/a/o1/e;->p:Z

    const-string v0, "statsTraceCtx"

    .line 7
    invoke-static {v8, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v8, v10, Lp3/a/o1/e;->i:Lp3/a/n1/r2;

    .line 8
    iput-object v7, v10, Lp3/a/o1/e;->g:Lp3/a/p0;

    move-object/from16 v0, p9

    .line 9
    iput-object v0, v10, Lp3/a/o1/e;->j:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 10
    iput-object v0, v10, Lp3/a/o1/e;->h:Ljava/lang/String;

    move-object/from16 v9, p4

    .line 11
    iget-object v0, v9, Lp3/a/o1/f;->s:Lp3/a/a;

    .line 12
    iput-object v0, v10, Lp3/a/o1/e;->o:Lp3/a/a;

    .line 13
    new-instance v11, Lp3/a/o1/e$b;

    .line 14
    iget-object v12, v7, Lp3/a/p0;->b:Ljava/lang/String;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p8

    move-object v9, v12

    .line 15
    invoke-direct/range {v0 .. v9}, Lp3/a/o1/e$b;-><init>(Lp3/a/o1/e;ILp3/a/n1/r2;Ljava/lang/Object;Lp3/a/o1/b;Lp3/a/o1/m;Lp3/a/o1/f;ILjava/lang/String;)V

    iput-object v11, v10, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lp3/a/o1/e;->j:Ljava/lang/String;

    return-void
.end method

.method public p()Lp3/a/n1/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    return-object v0
.end method

.method public q()Lp3/a/n1/a$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/e;->n:Lp3/a/o1/e$a;

    return-object v0
.end method

.method public r()Lp3/a/n1/a$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/e;->m:Lp3/a/o1/e$b;

    return-object v0
.end method
