.class public final Le/a/m4/c/d$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m4/c/d;->a(Lcom/truecaller/profile/data/dto/Profile;)Lq3/a/n0;
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
        "Le/a/b0/n/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.profile.data.ProfileNetworkHelperImpl$saveAsync$1"
    f = "ProfileNetworkHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/m4/c/d;

.field public final synthetic f:Lcom/truecaller/profile/data/dto/Profile;


# direct methods
.method public constructor <init>(Le/a/m4/c/d;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m4/c/d$d;->e:Le/a/m4/c/d;

    iput-object p2, p0, Le/a/m4/c/d$d;->f:Lcom/truecaller/profile/data/dto/Profile;

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

    new-instance p1, Le/a/m4/c/d$d;

    iget-object v0, p0, Le/a/m4/c/d$d;->e:Le/a/m4/c/d;

    iget-object v1, p0, Le/a/m4/c/d$d;->f:Lcom/truecaller/profile/data/dto/Profile;

    invoke-direct {p1, v0, v1, p2}, Le/a/m4/c/d$d;-><init>(Le/a/m4/c/d;Lcom/truecaller/profile/data/dto/Profile;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/m4/c/d$d;->e:Le/a/m4/c/d;

    iget-object v0, p0, Le/a/m4/c/d$d;->f:Lcom/truecaller/profile/data/dto/Profile;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    :try_start_0
    iget-object p2, p1, Le/a/m4/c/d;->a:Le/a/m4/c/f;

    .line 6
    invoke-interface {p2, v0}, Le/a/m4/c/f;->b(Lcom/truecaller/profile/data/dto/Profile;)Lx3/b;

    move-result-object p2

    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Le/a/m4/c/d;->f(Le/a/m4/c/d;Lx3/a0;)Le/a/b0/n/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/b0/n/h$f;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Le/a/b0/n/h$f;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object p1, Le/a/b0/n/h$d;->c:Le/a/b0/n/h$d;

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/m4/c/d$d;->e:Le/a/m4/c/d;

    .line 3
    iget-object p1, p1, Le/a/m4/c/d;->a:Le/a/m4/c/f;

    .line 4
    iget-object v0, p0, Le/a/m4/c/d$d;->f:Lcom/truecaller/profile/data/dto/Profile;

    invoke-interface {p1, v0}, Le/a/m4/c/f;->b(Lcom/truecaller/profile/data/dto/Profile;)Lx3/b;

    move-result-object p1

    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/m4/c/d$d;->e:Le/a/m4/c/d;

    invoke-static {v0, p1}, Le/a/m4/c/d;->f(Le/a/m4/c/d;Lx3/a0;)Le/a/b0/n/h;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Le/a/b0/n/h$f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Le/a/b0/n/h$f;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p1, Le/a/b0/n/h$d;->c:Le/a/b0/n/h$d;

    :goto_0
    return-object p1
.end method
