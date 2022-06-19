.class public final Le/a/m4/c/d$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m4/c/d;->d(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)Lq3/a/n0;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$uploadImageAsync$1"
    f = "ProfileNetworkHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/m4/c/d;

.field public final synthetic f:Lu3/j0;

.field public final synthetic g:Lcom/truecaller/common/profile/ImageSource;


# direct methods
.method public constructor <init>(Le/a/m4/c/d;Lu3/j0;Lcom/truecaller/common/profile/ImageSource;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m4/c/d$e;->e:Le/a/m4/c/d;

    iput-object p2, p0, Le/a/m4/c/d$e;->f:Lu3/j0;

    iput-object p3, p0, Le/a/m4/c/d$e;->g:Lcom/truecaller/common/profile/ImageSource;

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

    new-instance p1, Le/a/m4/c/d$e;

    iget-object v0, p0, Le/a/m4/c/d$e;->e:Le/a/m4/c/d;

    iget-object v1, p0, Le/a/m4/c/d$e;->f:Lu3/j0;

    iget-object v2, p0, Le/a/m4/c/d$e;->g:Lcom/truecaller/common/profile/ImageSource;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/m4/c/d$e;-><init>(Le/a/m4/c/d;Lu3/j0;Lcom/truecaller/common/profile/ImageSource;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/m4/c/d$e;->e:Le/a/m4/c/d;

    iget-object v0, p0, Le/a/m4/c/d$e;->f:Lu3/j0;

    iget-object v1, p0, Le/a/m4/c/d$e;->g:Lcom/truecaller/common/profile/ImageSource;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->IMAGES:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/m4/c/a;

    invoke-static {p2, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/m4/c/a;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 9
    :cond_2
    :goto_0
    invoke-interface {p2, v0, v1}, Le/a/m4/c/a;->a(Lu3/j0;I)Lx3/b;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    :try_start_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v0, "response"

    .line 11
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 13
    check-cast p1, Lu3/l0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->IMAGES:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v0, Le/a/m4/c/a;

    invoke-static {p1, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/m4/c/a;

    iget-object v0, p0, Le/a/m4/c/d$e;->f:Lu3/j0;

    iget-object v1, p0, Le/a/m4/c/d$e;->e:Le/a/m4/c/d;

    iget-object v2, p0, Le/a/m4/c/d$e;->g:Lcom/truecaller/common/profile/ImageSource;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 v2, 0x0

    .line 6
    :cond_2
    :goto_0
    invoke-interface {p1, v0, v2}, Le/a/m4/c/a;->a(Lu3/j0;I)Lx3/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    const-string v1, "response"

    .line 8
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 10
    check-cast p1, Lu3/l0;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_3
    return-object v0
.end method
