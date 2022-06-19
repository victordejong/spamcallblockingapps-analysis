.class public final Le/a/c/a/m/c/t;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.insights.ui.qa.view.PdoViewerActivity$setupForMsgId$1"
    f = "PdoViewerActivity.kt"
    l = {
        0x54,
        0x58,
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    iput-wide p2, p0, Le/a/c/a/m/c/t;->i:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/t;

    iget-object v0, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    iget-wide v1, p0, Le/a/c/a/m/c/t;->i:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/a/m/c/t;-><init>(Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/m/c/t;

    iget-object v0, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    iget-wide v1, p0, Le/a/c/a/m/c/t;->i:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/c/a/m/c/t;-><init>(Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/m/c/t;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/c/a/m/c/t;->g:I

    const/4 v3, 0x0

    const-string v4, "binding.result"

    const-string v5, "qaManager"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_0

    iget-object v1, p0, Le/a/c/a/m/c/t;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/c/a/m/c/t;->e:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/c/a/m/c/t;->e:Ljava/lang/Object;

    check-cast v2, Le/m/e/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Le/a/c/a/m/c/t;->f:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    iget-object v8, p0, Le/a/c/a/m/c/t;->e:Ljava/lang/Object;

    check-cast v8, Le/m/e/k;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Le/m/e/l;

    invoke-direct {p1}, Le/m/e/l;-><init>()V

    .line 5
    iput-boolean v8, p1, Le/m/e/l;->k:Z

    .line 6
    invoke-virtual {p1}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p1

    .line 7
    iget-object v2, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 8
    iget-object v9, v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->a:Le/a/c/t/a;

    if-eqz v9, :cond_b

    .line 9
    iget-wide v10, p0, Le/a/c/a/m/c/t;->i:J

    iput-object p1, p0, Le/a/c/a/m/c/t;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/c/a/m/c/t;->f:Ljava/lang/Object;

    iput v8, p0, Le/a/c/a/m/c/t;->g:I

    invoke-interface {v9, v10, v11, p0}, Le/a/c/t/a;->g(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4

    return-object v1

    :cond_4
    move-object v13, v8

    move-object v8, p1

    move-object p1, v13

    :goto_0
    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 10
    iput-object p1, v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->f:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 11
    iget-object p1, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 12
    iget-object v2, p1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->f:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object p1

    .line 14
    iget-object p1, p1, Le/a/c/a/g/d;->e:Landroid/widget/TextView;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 15
    iget-object v2, v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->f:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 16
    invoke-virtual {v8, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p1, p1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->a:Le/a/c/t/a;

    if-eqz p1, :cond_a

    .line 18
    iget-wide v9, p0, Le/a/c/a/m/c/t;->i:J

    iput-object v8, p0, Le/a/c/a/m/c/t;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/c/a/m/c/t;->f:Ljava/lang/Object;

    iput v7, p0, Le/a/c/a/m/c/t;->g:I

    invoke-interface {p1, v9, v10, p0}, Le/a/c/t/a;->d(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, v8

    .line 19
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 20
    iget-object v5, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 21
    sget v7, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->h:I

    .line 22
    invoke-virtual {v5}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object v5

    .line 23
    iget-object v5, v5, Le/a/c/a/g/d;->e:Landroid/widget/TextView;

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_2
    iget-object p1, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 25
    sget v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->h:I

    .line 26
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object p1

    .line 27
    iget-object v2, p1, Le/a/c/a/g/d;->b:Landroid/widget/TextView;

    const-string p1, "binding.applyFilter"

    const-string v4, "applyFilterOnPdo: "

    invoke-static {v2, p1, v4}, Le/d/c/a/a;->B(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Le/a/c/a/m/c/t;->h:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 28
    iget-object v7, v4, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->b:Le/a/c/w/o0/g;

    if-eqz v7, :cond_9

    .line 29
    iget-object v8, v4, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->f:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    if-eqz v8, :cond_8

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 30
    iput-object v2, p0, Le/a/c/a/m/c/t;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/c/a/m/c/t;->f:Ljava/lang/Object;

    iput v6, p0, Le/a/c/a/m/c/t;->g:I

    move-object v10, p0

    invoke-static/range {v7 .. v12}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p1

    move-object p1, v3

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-object v0

    :cond_9
    const-string p1, "smartSmsFeatureFilter"

    .line 31
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 32
    :cond_a
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_b
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
