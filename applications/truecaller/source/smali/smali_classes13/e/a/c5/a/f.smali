.class public final Le/a/c5/a/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/c5/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/c5/a/d;",
        ">;",
        "Le/a/c5/a/c;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Le/a/c5/a/h;

.field public final i:Le/a/c5/a/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/c5/a/h;Le/a/c5/a/g;)V
    .locals 1
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
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "facebookSignInProxy"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "facebookProfileResponseParser"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/c5/a/f;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/c5/a/f;->g:Ls1/w/f;

    iput-object p3, p0, Le/a/c5/a/f;->h:Le/a/c5/a/h;

    iput-object p4, p0, Le/a/c5/a/f;->i:Le/a/c5/a/g;

    const-string p1, "email"

    .line 2
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/c5/a/f;->d:Ljava/util/List;

    const-string p1, "id,first_name,middle_name,last_name,email,location,picture.width(500).height(500)"

    .line 3
    iput-object p1, p0, Le/a/c5/a/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/social_login/SocialAccountProfile;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/c5/a/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Le/a/c5/a/d;->q(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    :cond_0
    return-void
.end method

.method public final Jj(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/c5/a/f;->h:Le/a/c5/a/h;

    check-cast v0, Le/a/c5/a/j;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v6, Le/a/c5/a/e;

    invoke-direct {v6, p0, v0, v1}, Le/a/c5/a/e;-><init>(Le/a/c5/a/f;Lcom/facebook/AccessToken;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, v1, p1}, Le/a/c5/a/f;->Ij(Lcom/truecaller/social_login/SocialAccountProfile;Z)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/c5/a/d;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/c5/a/f;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Le/a/c5/a/d;->ma(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/c5/a/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Le/a/c5/a/f;->Jj(Z)V

    return-void
.end method
