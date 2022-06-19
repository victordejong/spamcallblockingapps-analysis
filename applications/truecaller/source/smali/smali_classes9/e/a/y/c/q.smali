.class public final Le/a/y/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/c/q$a;,
        Le/a/y/c/q$c;,
        Le/a/y/c/q$b;
    }
.end annotation


# instance fields
.field public final a:Lu3/e0;


# direct methods
.method public constructor <init>(Lu3/e0;)V
    .locals 1

    const-string v0, "httpClient"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/c/q;->a:Lu3/e0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Lu3/d0$c;)Lx3/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lu3/j0;",
            ">;",
            "Lu3/d0$c;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-class v0, Le/a/y/c/q$b;

    const-string v1, "url"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "partMap"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "file"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->FLASH:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 4
    iget-object v2, p0, Le/a/y/c/q;->a:Lu3/e0;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->d(Lu3/e0;)Le/a/b0/b/a/b;

    .line 5
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Le/a/y/c/q$b;

    .line 7
    invoke-interface {v0, p1, p2, p3}, Le/a/y/c/q$b;->a(Ljava/lang/String;Ljava/util/Map;Lu3/d0$c;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lx3/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Lcom/truecaller/flashsdk/models/MediaUrl;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->FLASH:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/y/c/q$b;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/c/q$b;

    invoke-interface {v0}, Le/a/y/c/q$b;->b()Lx3/b;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lx3/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->PUSHID:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/y/c/q$a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/c/q$a;

    invoke-interface {v0, p1}, Le/a/y/c/q$a;->a(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/truecaller/flashsdk/models/FlashRequest;)Lx3/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/flashsdk/models/FlashRequest;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "flashRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->FLASH:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/y/c/q$c;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/c/q$c;

    invoke-interface {v0, p1}, Le/a/y/c/q$c;->a(Lcom/truecaller/flashsdk/models/FlashRequest;)Lx3/b;

    move-result-object p1

    return-object p1
.end method
