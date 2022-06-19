.class public final Le/a/e/a/t3$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/t3$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaLinkPreviewDialog$onViewCreated$1$1"
    f = "QaLinkPreviewDialog.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/e/a/t3$a;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e/a/t3$a;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iput-object p2, p0, Le/a/e/a/t3$a$a;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/t3$a$a;

    iget-object v1, p0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object v2, p0, Le/a/e/a/t3$a$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/e/a/t3$a$a;-><init>(Le/a/e/a/t3$a;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/t3$a$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/t3$a$a;

    iget-object v1, p0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object v2, p0, Le/a/e/a/t3$a$a;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/e/a/t3$a$a;-><init>(Le/a/e/a/t3$a;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/t3$a$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/e/a/t3$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/a/t3$a$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/e/a/t3$a$a;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/e/a/t3$a$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    new-instance v3, Le/a/a/v0/c;

    iget-object v1, p0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object v1, v1, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    .line 5
    sget v4, Le/a/e/a/t3;->e:I

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v1

    const-string v4, "(TrueApp.getApp())"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v1

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 8
    iget-object v5, p0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object v5, v5, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    .line 9
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v4

    invoke-interface {v4}, Le/a/j2;->g6()Le/a/a/k/a/g2/a;

    move-result-object v4

    const-string v5, "(TrueApp.getApp()).objectsGraph.previewManager()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {v3, v1, v4}, Le/a/a/v0/c;-><init>(Le/a/q2/a;Le/a/a/k/a/g2/a;)V

    .line 12
    iget-object v4, p0, Le/a/e/a/t3$a$a;->h:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    iput-object p1, p0, Le/a/e/a/t3$a$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/e/a/t3$a$a;->f:I

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Le/a/c/p/a;->b0(Le/a/a/v0/a;Ljava/lang/String;Ljava/lang/Long;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 13
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    .line 14
    iget-object v1, p0, Le/a/e/a/t3$a$a;->g:Le/a/e/a/t3$a;

    iget-object v1, v1, Le/a/e/a/t3$a;->a:Le/a/e/a/t3;

    .line 15
    sget v2, Le/a/e/a/t3;->e:I

    .line 16
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v1

    invoke-interface {v1}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v1

    const/4 v2, 0x0

    .line 17
    new-instance v3, Le/a/e/a/t3$a$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/e/a/t3$a$a$a;-><init>(Le/a/e/a/t3$a$a;Lcom/truecaller/messaging/linkpreviews/LinkMetaData;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
