.class public final Le/a/b/l/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/l/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/l/g$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/b/l/g$a;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->IMAGES:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/b/l/g$a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/l/g$a;

    iput-object v0, p0, Le/a/b/l/g;->a:Le/a/b/l/g$a;

    return-void
.end method


# virtual methods
.method public a(Lu3/j0;)Lx3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j0;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "picture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/g;->a:Le/a/b/l/g$a;

    invoke-interface {v0, p1}, Le/a/b/l/g$a;->a(Lu3/j0;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lu3/j0;)Lx3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j0;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "picture"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/g;->a:Le/a/b/l/g$a;

    invoke-interface {v0, p1}, Le/a/b/l/g$a;->b(Lu3/j0;)Lx3/b;

    move-result-object p1

    return-object p1
.end method

.method public c()Lx3/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b/l/g;->a:Le/a/b/l/g$a;

    invoke-interface {v0}, Le/a/b/l/g$a;->c()Lx3/b;

    move-result-object v0

    return-object v0
.end method

.method public d(Lu3/j0;)Lx3/b;
    .locals 1
    .param p1    # Lu3/j0;
        .annotation runtime Lx3/h0/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/j0;",
            ")",
            "Lx3/b<",
            "Lu3/l0;",
            ">;"
        }
    .end annotation

    const-string v0, "logo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/l/g;->a:Le/a/b/l/g$a;

    invoke-interface {v0, p1}, Le/a/b/l/g$a;->d(Lu3/j0;)Lx3/b;

    move-result-object p1

    return-object p1
.end method
