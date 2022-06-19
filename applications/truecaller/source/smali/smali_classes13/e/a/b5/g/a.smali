.class public Le/a/b5/g/a;
.super Le/a/b5/a;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Landroid/app/Activity;

.field public final g:Landroidx/fragment/app/Fragment;

.field public final h:Le/j/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "email"

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/b5/g/a;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/truecaller/social/SocialNetworkType;->FACEBOOK:Lcom/truecaller/social/SocialNetworkType;

    invoke-direct {p0, v0}, Le/a/b5/a;-><init>(Lcom/truecaller/social/SocialNetworkType;)V

    .line 2
    iput-object p1, p0, Le/a/b5/g/a;->f:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Le/a/b5/g/a;->g:Landroidx/fragment/app/Fragment;

    .line 4
    new-instance p1, Lcom/facebook/internal/t;

    invoke-direct {p1}, Lcom/facebook/internal/t;-><init>()V

    .line 5
    iput-object p1, p0, Le/a/b5/g/a;->h:Le/j/y;

    .line 6
    invoke-static {}, Lcom/facebook/login/v;->b()Lcom/facebook/login/v;

    move-result-object p2

    new-instance v0, Le/a/b5/g/a$a;

    invoke-direct {v0, p0}, Le/a/b5/g/a$a;-><init>(Le/a/b5/g/a;)V

    .line 7
    sget-object v1, Lcom/facebook/internal/t$c;->b:Lcom/facebook/internal/t$c;

    invoke-virtual {v1}, Lcom/facebook/internal/t$c;->a()I

    move-result v1

    new-instance v2, Lcom/facebook/login/f;

    invoke-direct {v2, p2, v0}, Lcom/facebook/login/f;-><init>(Lcom/facebook/login/v;Le/j/a0;)V

    const-string p2, "callback"

    .line 8
    invoke-static {v2, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p1, Lcom/facebook/internal/t;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Le/a/b5/g/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    .line 2
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 3
    invoke-virtual/range {v2 .. v7}, Le/a/b5/a;->p(IIIILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 4
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/b5/g/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0xc

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 2
    invoke-virtual/range {v1 .. v6}, Le/a/b5/a;->p(IIIILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 3
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 4
    iget-object v1, p0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/b5/g/a;->s()Z

    move-result p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    const-string p1, "fields"

    const-string v0, "id,first_name,last_name,email,location,hometown,gender,picture.width(500).height(500),link"

    .line 2
    invoke-static {p1, v0}, Le/d/c/a/a;->X0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 3
    new-instance p1, Lcom/facebook/GraphRequest;

    .line 4
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    sget-object v0, Le/j/v;->f:Le/j/v$a;

    invoke-virtual {v0}, Le/j/v$a;->a()Le/j/v;

    move-result-object v0

    .line 5
    iget-object v2, v0, Le/j/v;->c:Lcom/facebook/AccessToken;

    .line 6
    sget-object v5, Le/j/m0;->a:Le/j/m0;

    const-string v3, "me"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    move-object v1, p1

    .line 7
    invoke-direct/range {v1 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Le/j/m0;Lcom/facebook/GraphRequest$b;Ljava/lang/String;I)V

    .line 8
    new-instance v0, Le/a/b5/g/a$b;

    invoke-direct {v0, p0}, Le/a/b5/g/a$b;-><init>(Le/a/b5/g/a;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->k(Lcom/facebook/GraphRequest$b;)V

    .line 9
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->d()Le/j/j0;

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Le/a/b5/g/a;->g:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/facebook/login/v;->b()Lcom/facebook/login/v;

    move-result-object p1

    iget-object v0, p0, Le/a/b5/g/a;->f:Landroid/app/Activity;

    sget-object v1, Le/a/b5/g/a;->i:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/v;->d(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/facebook/login/v;->b()Lcom/facebook/login/v;

    move-result-object p1

    iget-object v0, p0, Le/a/b5/g/a;->g:Landroidx/fragment/app/Fragment;

    sget-object v1, Le/a/b5/g/a;->i:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcom/facebook/login/v;->e(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    :try_end_0
    .catch Le/j/c0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    .line 4
    invoke-virtual {p0, v0, p1}, Le/a/b5/a;->n(ILjava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/login/v;->b()Lcom/facebook/login/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/v;->f()V

    .line 2
    invoke-virtual {p0}, Le/a/b5/g/a;->s()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const-string v0, "onActivityResult("

    const-string v1, ","

    .line 1
    invoke-static {v0, p1, v1, p2, v1}, Le/d/c/a/a;->F(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/b5/g/a;->h:Le/j/y;

    invoke-interface {v0, p1, p2, p3}, Le/j/y;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final s()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    sget-object v0, Le/j/v;->f:Le/j/v$a;

    invoke-virtual {v0}, Le/j/v$a;->a()Le/j/v;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/j/v;->c:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
