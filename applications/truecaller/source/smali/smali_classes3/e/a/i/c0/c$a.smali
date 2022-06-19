.class public final Le/a/i/c0/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c0/c;->a(Ljava/lang/String;)V
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
    c = "com.truecaller.ads.leadgen.LeadgenPixelManagerImpl$recordPixel$1"
    f = "LeadgenPixelManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c0/c$a;->e:Ljava/lang/String;

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

    new-instance p1, Le/a/i/c0/c$a;

    iget-object v0, p0, Le/a/i/c0/c$a;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Le/a/i/c0/c$a;-><init>(Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/i/c0/c$a;->e:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Le/m/d/y/n;->K()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "%%gaid%%"

    invoke-static {v0, v3, p2, v1, v2}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p2, "url"

    .line 5
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-class p2, Le/a/i/c0/i;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 7
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->LEADGEN:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 8
    new-instance v2, Le/a/b0/b/g/b;

    invoke-direct {v2}, Le/a/b0/b/g/b;-><init>()V

    .line 9
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 10
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 12
    invoke-virtual {v1, p2}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 13
    invoke-virtual {v1, p2}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/c0/i;

    .line 14
    invoke-interface {p2, v0}, Le/a/i/c0/i;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p2

    .line 15
    invoke-static {p2}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Le/m/d/y/n;->K()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/i/c0/c$a;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "%%gaid%%"

    invoke-static {v0, v3, p1, v1, v2}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/a/i/c0/c$a;->e:Ljava/lang/String;

    :goto_0
    const-string v0, "url"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-class v0, Le/a/i/c0/i;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 5
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->LEADGEN:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 6
    new-instance v2, Le/a/b0/b/g/b;

    invoke-direct {v2}, Le/a/b0/b/g/b;-><init>()V

    .line 7
    sget-object v3, Lcom/truecaller/common/network/util/AuthRequirement;->REQUIRED:Lcom/truecaller/common/network/util/AuthRequirement;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Le/a/b0/b/g/b;->c(Le/a/b0/b/g/b;Lcom/truecaller/common/network/util/AuthRequirement;Ljava/lang/String;ILjava/lang/Object;)Le/a/b0/b/g/b;

    .line 8
    invoke-static {v2}, Le/a/b0/b/a/a;->a(Le/a/b0/b/g/b;)Lu3/e0;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 10
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 11
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c0/i;

    .line 12
    invoke-interface {v0, p1}, Le/a/i/c0/i;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 13
    invoke-static {p1}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
