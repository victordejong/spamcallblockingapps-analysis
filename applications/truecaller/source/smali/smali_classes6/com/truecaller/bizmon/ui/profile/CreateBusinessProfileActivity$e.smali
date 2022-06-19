.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ua(Ljava/lang/String;)V
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
    c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeLogo$1"
    f = "CreateBusinessProfileActivity.kt"
    l = {
        0x241,
        0x245
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iput-object p2, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->g:Ljava/lang/String;

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

    new-instance p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "Uri.parse(logo)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    const-string v5, "uri"

    .line 5
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, v1, v4, v2}, Le/a/p5/s0/f;->c(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v3

    .line 10
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, v4

    :goto_4
    if-eqz p1, :cond_8

    .line 12
    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {v1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ra()Ls1/w/f;

    move-result-object v1

    new-instance v5, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;

    invoke-direct {v5, p1, v4, p0}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;-><init>(Ljava/lang/String;Ls1/w/d;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;)V

    iput v3, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->e:I

    invoke-static {v1, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 13
    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-static {p1}, Le/a/b0/q/s;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 14
    :catch_0
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ra()Ls1/w/f;

    move-result-object p1

    new-instance v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$a;

    invoke-direct {v1, p0, v4}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$a;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;Ls1/w/d;)V

    iput v2, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 15
    :cond_9
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
