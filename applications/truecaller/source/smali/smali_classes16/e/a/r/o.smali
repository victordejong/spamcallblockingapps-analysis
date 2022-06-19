.class public final Le/a/r/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/v/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Landroid/content/Context;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a4/e<",
            "Lcom/truecaller/TrueApp;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/service/SyncPhoneBookService$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Le/a/y2/q/a;

.field public final i:Le/a/b0/k/f;

.field public final j:Le/a/n4/a;

.field public final k:Le/a/b0/o/a;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/truecaller/clevertap/CleverTapManager;

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/f;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/v2/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/y2/q/a;Le/a/b0/k/f;Le/a/n4/a;Le/a/b0/o/a;Le/a/r2/f;Lcom/truecaller/clevertap/CleverTapManager;Lo3/a;Lo3/a;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/a4/e<",
            "Lcom/truecaller/TrueApp;",
            ">;>;",
            "Lo3/a<",
            "Lcom/truecaller/service/SyncPhoneBookService$a;",
            ">;",
            "Lo3/a<",
            "Le/a/o4/e;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;>;",
            "Le/a/y2/q/a;",
            "Le/a/b0/k/f;",
            "Le/a/n4/a;",
            "Le/a/b0/o/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Lcom/truecaller/clevertap/CleverTapManager;",
            "Lo3/a<",
            "Le/a/b0/e/f;",
            ">;",
            "Lo3/a<",
            "Le/a/v2/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "uiContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInitManager"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneBookTrigger"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushIdManager"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configManager"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageUtil"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promotionSettings"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attestationManager"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Le/a/r/o;->a:Ls1/w/f;

    iput-object v2, v0, Le/a/r/o;->b:Ls1/w/f;

    iput-object v3, v0, Le/a/r/o;->c:Landroid/content/Context;

    iput-object v4, v0, Le/a/r/o;->d:Lo3/a;

    iput-object v5, v0, Le/a/r/o;->e:Lo3/a;

    iput-object v6, v0, Le/a/r/o;->f:Lo3/a;

    iput-object v7, v0, Le/a/r/o;->g:Lo3/a;

    iput-object v8, v0, Le/a/r/o;->h:Le/a/y2/q/a;

    iput-object v9, v0, Le/a/r/o;->i:Le/a/b0/k/f;

    iput-object v10, v0, Le/a/r/o;->j:Le/a/n4/a;

    iput-object v11, v0, Le/a/r/o;->k:Le/a/b0/o/a;

    iput-object v12, v0, Le/a/r/o;->l:Le/a/r2/f;

    iput-object v13, v0, Le/a/r/o;->m:Lcom/truecaller/clevertap/CleverTapManager;

    iput-object v14, v0, Le/a/r/o;->n:Lo3/a;

    iput-object v15, v0, Le/a/r/o;->o:Lo3/a;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/o$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/o$a;

    iget v1, v0, Le/a/r/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/o$a;

    invoke-direct {v0, p0, p1}, Le/a/r/o$a;-><init>(Le/a/r/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/o$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/o$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Le/a/r/o$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/r/o;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/o;->b:Ls1/w/f;

    new-instance v2, Le/a/r/o$b;

    invoke-direct {v2, p0, v3}, Le/a/r/o$b;-><init>(Le/a/r/o;Ls1/w/d;)V

    iput-object p0, v0, Le/a/r/o$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/r/o$a;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    sget-object v4, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v5, v0, Le/a/r/o;->a:Ls1/w/f;

    const/4 v6, 0x0

    new-instance v7, Le/a/r/o$c;

    invoke-direct {v7, v0, v3}, Le/a/r/o$c;-><init>(Le/a/r/o;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
