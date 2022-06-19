.class public final Le/a/m4/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m4/c/c;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/m4/c/f;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/m4/c/f;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m4/c/d;->a:Le/a/m4/c/f;

    iput-object p2, p0, Le/a/m4/c/d;->b:Ls1/w/f;

    return-void
.end method

.method public static final f(Le/a/m4/c/d;Lx3/a0;)Le/a/b0/n/h;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Lx3/a0;->a:Lu3/k0;

    .line 3
    iget p0, p0, Lu3/k0;->e:I

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_6

    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x193

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1a6

    if-eq p0, v0, :cond_1

    const/16 p1, 0x1f4

    if-eq p0, p1, :cond_0

    .line 4
    new-instance p1, Le/a/b0/n/h$f;

    invoke-direct {p1, p0}, Le/a/b0/n/h$f;-><init>(I)V

    goto :goto_2

    .line 5
    :cond_0
    sget-object p1, Le/a/b0/n/h$c;->c:Le/a/b0/n/h$c;

    goto :goto_2

    .line 6
    :cond_1
    new-instance p0, Le/a/b0/n/h$g;

    sget-object v0, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->Companion:Lcom/truecaller/common/profile/ProfileSaveErrorResponse$b;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->access$getGson$cp()Le/m/e/k;

    move-result-object v0

    .line 9
    iget-object p1, p1, Lx3/a0;->c:Lu3/l0;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->access$getType$cp()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, Le/m/e/k;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(response.e\u2026           type\n        )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/common/profile/ProfileSaveErrorResponse;->getErrors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    invoke-direct {p0, p1}, Le/a/b0/n/h$g;-><init>(Ljava/util/List;)V

    move-object p1, p0

    goto :goto_2

    .line 14
    :cond_4
    sget-object p1, Le/a/b0/n/h$b;->c:Le/a/b0/n/h$b;

    goto :goto_2

    .line 15
    :cond_5
    sget-object p1, Le/a/b0/n/h$a;->c:Le/a/b0/n/h$a;

    goto :goto_2

    .line 16
    :cond_6
    sget-object p1, Le/a/b0/n/h$e;->c:Le/a/b0/n/h$e;

    :goto_2
    return-object p1
.end method


# virtual methods
.method public a(Lcom/truecaller/profile/data/dto/Profile;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/profile/data/dto/Profile;",
            ")",
            "Lq3/a/n0<",
            "Le/a/b0/n/h;",
            ">;"
        }
    .end annotation

    const-string v0, "profile"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/m4/c/d$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/m4/c/d$d;-><init>(Le/a/m4/c/d;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public b()Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Le/a/m4/c/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/m4/c/d$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/m4/c/d$c;-><init>(Le/a/m4/c/d;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/m4/c/d$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Le/a/m4/c/d$a;-><init>(Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public d(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j0;",
            "Lcom/truecaller/common/profile/ImageSource;",
            ")",
            "Lq3/a/n0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "requestBody"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/m4/c/d$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/m4/c/d$e;-><init>(Le/a/m4/c/d;Lu3/j0;Lcom/truecaller/common/profile/ImageSource;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public e()Lq3/a/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/n0<",
            "Le/a/m4/c/i/a/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v3, Le/a/m4/c/d$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Le/a/m4/c/d$b;-><init>(Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m4/c/d;->b:Ls1/w/f;

    return-object v0
.end method
