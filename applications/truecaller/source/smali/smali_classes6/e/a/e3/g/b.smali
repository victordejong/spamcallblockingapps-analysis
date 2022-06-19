.class public final Le/a/e3/g/b;
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
    c = "com.truecaller.call_alert.debug.NotificationDebugDialog$showBusinessCard$1"
    f = "NotificationDebugDialog.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/e3/g/a;


# direct methods
.method public constructor <init>(Le/a/e3/g/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/e3/g/b;

    iget-object v0, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-direct {p1, v0, p2}, Le/a/e3/g/b;-><init>(Le/a/e3/g/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e3/g/b;

    iget-object v0, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-direct {p1, v0, p2}, Le/a/e3/g/b;-><init>(Le/a/e3/g/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e3/g/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/e3/g/b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

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
    iget-object p1, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    .line 5
    iget-object p1, p1, Le/a/e3/g/a;->c:Ls1/w/f;

    if-eqz p1, :cond_8

    .line 6
    new-instance v2, Le/a/e3/g/b$b;

    invoke-direct {v2, p0, v3}, Le/a/e3/g/b$b;-><init>(Le/a/e3/g/b;Ls1/w/d;)V

    iput v4, p0, Le/a/e3/g/b;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "requireContext()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    const-string v3, "No cached business card is found"

    invoke-static {p1, v1, v3, v1, v2}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    return-object v0

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;->getCard()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object p1

    const-string v2, "card"

    .line 10
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getBadgesList()Ljava/util/List;

    move-result-object v2

    const-string v5, "it"

    .line 11
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 12
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v6, v2

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    if-eqz v6, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 14
    sget-object v12, Le/a/e3/g/b$a;->b:Le/a/e3/g/b$a;

    const/16 v13, 0x1e

    const-string v7, ","

    invoke-static/range {v6 .. v13}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    .line 15
    :goto_2
    iget-object v5, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    .line 16
    iget-object v6, v5, Le/a/e3/g/a;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v7, Le/a/e3/g/a;->f:[Ls1/a/l;

    aget-object v1, v7, v1

    invoke-virtual {v6, v5, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v1

    check-cast v1, Le/a/e3/f/a;

    .line 17
    iget-object v5, v1, Le/a/e3/f/a;->d:Landroid/widget/TextView;

    const-string v6, "firstName"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getFirstName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No first name"

    invoke-static {v6, v7, v8}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v5, v1, Le/a/e3/f/a;->f:Landroid/widget/TextView;

    const-string v6, "lastName"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getLastName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No last name"

    invoke-static {v6, v7, v8}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v5, v1, Le/a/e3/f/a;->g:Landroid/widget/TextView;

    const-string v6, "phoneNumber"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getPhoneNumber()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number"

    invoke-static {v6, v7, v8}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v5, v1, Le/a/e3/f/a;->a:Landroid/widget/TextView;

    const-string v6, "badges"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    const-string v7, "No badge"

    invoke-static {v6, v2, v7}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, v1, Le/a/e3/f/a;->b:Landroid/widget/TextView;

    const-string v5, "city"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getCity()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No city"

    invoke-static {v5, v6, v7}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v2, v1, Le/a/e3/f/a;->c:Landroid/widget/TextView;

    const-string v5, "company"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getCompany()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No company"

    invoke-static {v5, v6, v7}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v2, v1, Le/a/e3/f/a;->e:Landroid/widget/TextView;

    const-string v5, "jobTitle"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getJobTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No job title"

    invoke-static {v5, v6, v7}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, v1, Le/a/e3/f/a;->h:Landroid/widget/TextView;

    const-string v2, "videoId"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/e3/g/b;->f:Le/a/e3/g/a;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getVideosList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v4, v5

    .line 25
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object p1, v3

    :goto_3
    if-eqz p1, :cond_7

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/Video;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/Video;->getVideoId()Ljava/lang/String;

    move-result-object v3

    :cond_7
    const-string p1, "No video found"

    invoke-static {v2, v3, p1}, Le/a/e3/g/a;->OA(Le/a/e3/g/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_8
    const-string p1, "ioContext"

    .line 27
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
