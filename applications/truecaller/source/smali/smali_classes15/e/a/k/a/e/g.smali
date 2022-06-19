.class public final Le/a/k/a/e/g;
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
    c = "com.truecaller.videocallerid.ui.manageincomingvideo.ManageIncomingVideoSettingPresenter$onHiddenContactClicked$1"
    f = "ManageIncomingVideoSettingPresenter.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/a/e/i;

.field public final synthetic g:Le/a/k/a/e/a;


# direct methods
.method public constructor <init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/g;->f:Le/a/k/a/e/i;

    iput-object p2, p0, Le/a/k/a/e/g;->g:Le/a/k/a/e/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/k/a/e/g;

    iget-object v0, p0, Le/a/k/a/e/g;->f:Le/a/k/a/e/i;

    iget-object v1, p0, Le/a/k/a/e/g;->g:Le/a/k/a/e/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/e/g;-><init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/a/e/g;

    iget-object v0, p0, Le/a/k/a/e/g;->f:Le/a/k/a/e/i;

    iget-object v1, p0, Le/a/k/a/e/g;->g:Le/a/k/a/e/a;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/a/e/g;-><init>(Le/a/k/a/e/i;Le/a/k/a/e/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/a/e/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/a/e/g;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/k/a/e/g;->f:Le/a/k/a/e/i;

    .line 5
    iget-object p1, p1, Le/a/k/a/e/i;->f:Le/a/k/j;

    .line 6
    iget-object v1, p0, Le/a/k/a/e/g;->g:Le/a/k/a/e/a;

    .line 7
    iget-object v1, v1, Le/a/k/a/e/a;->b:Ljava/lang/String;

    .line 8
    iput v2, p0, Le/a/k/a/e/g;->e:I

    check-cast p1, Le/a/k/k;

    invoke-virtual {p1, v1, p0}, Le/a/k/k;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v2, p1

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_3

    .line 9
    iget-object p1, p0, Le/a/k/a/e/g;->f:Le/a/k/a/e/i;

    .line 10
    iget-object p1, p1, Le/a/k/a/e/i;->f:Le/a/k/j;

    .line 11
    check-cast p1, Le/a/k/k;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "contact"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v9, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 14
    iget-object p1, p1, Le/a/k/k;->g:Landroid/content/Context;

    .line 15
    sget-object v3, Lcom/truecaller/details_view/analytics/SourceType;->VideoCallerIdHiddenContact:Lcom/truecaller/details_view/analytics/SourceType;

    .line 16
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x40

    move-object v0, v9

    move-object v1, p1

    .line 17
    invoke-static/range {v0 .. v8}, Le/a/v/p/n;->c(Le/a/v/p/n;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZLjava/lang/Boolean;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {v9, p1, v0}, Le/a/v/p/n;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 20
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
