.class public final Le/a/e3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/a;


# instance fields
.field public final a:Le/a/e3/j/b;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e3/j/f;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e3/k/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/e3/i/b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Le/a/e3/k/p;


# direct methods
.method public constructor <init>(Le/a/e3/j/b;Lo3/a;Lo3/a;Lo3/a;Le/a/e3/k/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e3/j/b;",
            "Lo3/a<",
            "Le/a/e3/j/f;",
            ">;",
            "Lo3/a<",
            "Le/a/e3/k/i;",
            ">;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/e3/i/b;",
            ">;>;",
            "Le/a/e3/k/p;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callAlertNotificationHandler"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertNotificationUI"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertSimSupport"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAlertNetwork"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callSilenceHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/b;->a:Le/a/e3/j/b;

    iput-object p2, p0, Le/a/e3/b;->b:Lo3/a;

    iput-object p3, p0, Le/a/e3/b;->c:Lo3/a;

    iput-object p4, p0, Le/a/e3/b;->d:Lo3/a;

    iput-object p5, p0, Le/a/e3/b;->e:Le/a/e3/k/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e3/b;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e3/j/f;

    invoke-interface {v0, p1}, Le/a/e3/j/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/b;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e3/k/i;

    invoke-interface {v0, p1}, Le/a/e3/k/i;->b(I)Z

    move-result p1

    return p1
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/b;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e3/k/i;

    invoke-interface {v0, p1}, Le/a/e3/k/i;->c(I)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e3/b;->e:Le/a/e3/k/p;

    invoke-interface {v0, p1, p2}, Le/a/e3/k/p;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Number;",
            ")",
            "Le/a/r2/x<",
            "Le/a/e3/e/b;",
            ">;"
        }
    .end annotation

    const-string v0, "callState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e3/b;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e3/i/b;

    invoke-interface {v0, p1, p2}, Le/a/e3/i/b;->e(Ljava/lang/String;Lcom/truecaller/data/entity/Number;)Le/a/r2/x;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/e3/g/a;->g:Le/a/e3/g/a$b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/e3/g/a;

    invoke-direct {v0}, Le/a/e3/g/a;-><init>()V

    const-class v1, Le/a/e3/g/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public g(Le/a/e3/e/a;Z)V
    .locals 22

    move-object/from16 v11, p1

    const-string v0, "callAlertNotification"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p0

    .line 1
    iget-object v0, v15, Le/a/e3/b;->a:Le/a/e3/j/b;

    move-object v1, v0

    check-cast v1, Le/a/e3/j/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notification"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v4, v11, Le/a/e3/e/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 4
    iget-object v9, v11, Le/a/e3/e/a;->c:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 5
    iget-object v10, v11, Le/a/e3/e/a;->d:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 6
    iget-object v0, v11, Le/a/e3/e/a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v0, 0x3e8

    int-to-long v5, v0

    mul-long v13, v2, v5

    .line 8
    iget-object v12, v11, Le/a/e3/e/a;->h:Ljava/lang/String;

    .line 9
    iget-object v2, v11, Le/a/e3/e/a;->j:Ljava/lang/String;

    .line 10
    iget-object v3, v11, Le/a/e3/e/a;->i:Ljava/lang/String;

    .line 11
    iget-object v6, v11, Le/a/e3/e/a;->k:Ljava/lang/Long;

    .line 12
    iget-object v7, v11, Le/a/e3/e/a;->l:Ljava/lang/Long;

    .line 13
    iget-object v5, v11, Le/a/e3/e/a;->m:Ljava/lang/String;

    .line 14
    iget-object v0, v11, Le/a/e3/e/a;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Handling call alert notification: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    sget-object v17, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v15, v1, Le/a/e3/j/c;->f:Ls1/w/f;

    const/16 v18, 0x0

    new-instance v19, Le/a/e3/j/d;

    move-object/from16 v0, v19

    const/16 v16, 0x0

    move-object/from16 v11, p1

    move-object/from16 v20, v15

    move/from16 v15, p2

    invoke-direct/range {v0 .. v16}, Le/a/e3/j/d;-><init>(Le/a/e3/j/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Le/a/e3/e/a;Ljava/lang/String;JZLs1/w/d;)V

    const/4 v0, 0x2

    const/16 v21, 0x0

    move-object/from16 v16, v17

    move-object/from16 v17, v20

    move/from16 v20, v0

    invoke-static/range {v16 .. v21}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_1
    return-void
.end method
