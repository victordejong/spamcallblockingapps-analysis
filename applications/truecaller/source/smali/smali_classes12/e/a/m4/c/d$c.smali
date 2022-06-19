.class public final Le/a/m4/c/d$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m4/c/d;->b()Lq3/a/n0;
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
        "Le/a/m4/c/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$getProfileAsync$1"
    f = "ProfileNetworkHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/m4/c/d;


# direct methods
.method public constructor <init>(Le/a/m4/c/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m4/c/d$c;->e:Le/a/m4/c/d;

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

    new-instance p1, Le/a/m4/c/d$c;

    iget-object v0, p0, Le/a/m4/c/d$c;->e:Le/a/m4/c/d;

    invoke-direct {p1, v0, p2}, Le/a/m4/c/d$c;-><init>(Le/a/m4/c/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/m4/c/d$c;->e:Le/a/m4/c/d;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    :try_start_0
    iget-object p1, p1, Le/a/m4/c/d;->a:Le/a/m4/c/f;

    .line 6
    invoke-interface {p1}, Le/a/m4/c/f;->a()Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 7
    new-instance p2, Le/a/m4/c/h;

    .line 8
    iget-object v0, p1, Lx3/a0;->a:Lu3/k0;

    .line 9
    iget v0, v0, Lu3/k0;->e:I

    .line 10
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 11
    check-cast p1, Lcom/truecaller/profile/data/dto/ProfileResponse;

    invoke-direct {p2, v0, p1}, Le/a/m4/c/h;-><init>(ILcom/truecaller/profile/data/dto/ProfileResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    new-instance p2, Le/a/m4/c/h;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Le/a/m4/c/h;-><init>(ILcom/truecaller/profile/data/dto/ProfileResponse;)V

    :goto_0
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/m4/c/d$c;->e:Le/a/m4/c/d;

    .line 3
    iget-object p1, p1, Le/a/m4/c/d;->a:Le/a/m4/c/f;

    .line 4
    invoke-interface {p1}, Le/a/m4/c/f;->a()Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 5
    new-instance v0, Le/a/m4/c/h;

    .line 6
    iget-object v1, p1, Lx3/a0;->a:Lu3/k0;

    .line 7
    iget v1, v1, Lu3/k0;->e:I

    .line 8
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 9
    check-cast p1, Lcom/truecaller/profile/data/dto/ProfileResponse;

    invoke-direct {v0, v1, p1}, Le/a/m4/c/h;-><init>(ILcom/truecaller/profile/data/dto/ProfileResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    new-instance v0, Le/a/m4/c/h;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/m4/c/h;-><init>(ILcom/truecaller/profile/data/dto/ProfileResponse;)V

    :goto_0
    return-object v0
.end method
