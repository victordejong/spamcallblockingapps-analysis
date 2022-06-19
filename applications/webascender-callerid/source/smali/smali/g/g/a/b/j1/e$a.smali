.class final Lg/g/a/b/j1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/b/j1/e;->j()Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/a/b/j1/e;


# direct methods
.method constructor <init>(Lg/g/a/b/j1/e;)V
    .locals 0

    iput-object p1, p0, Lg/g/a/b/j1/e$a;->f:Lg/g/a/b/j1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lg/g/a/b/j1/e$a;->f:Lg/g/a/b/j1/e;

    invoke-static {v0}, Lg/g/a/b/j1/e;->c(Lg/g/a/b/j1/e;)Lg/g/a/e/e/m;

    move-result-object v0

    const-string v1, "HiyaTokenProvider"

    invoke-interface {v0, v1}, Lg/g/a/e/e/m;->a(Ljava/lang/String;)Lg/g/a/e/e/n;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lg/g/a/e/e/n;->start()V

    .line 3
    iget-object v1, p0, Lg/g/a/b/j1/e$a;->f:Lg/g/a/b/j1/e;

    invoke-static {v1, v0}, Lg/g/a/b/j1/e;->b(Lg/g/a/b/j1/e;Lg/g/a/e/e/n;)Lkotlin/l;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/l;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;

    invoke-virtual {v1}, Lkotlin/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 4
    iget-object v3, p0, Lg/g/a/b/j1/e$a;->f:Lg/g/a/b/j1/e;

    invoke-static {v3, v2, v1}, Lg/g/a/b/j1/e;->a(Lg/g/a/b/j1/e;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "generateJws"

    .line 5
    invoke-interface {v0, v2}, Lg/g/a/e/e/n;->c(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Lg/g/a/e/e/n;->a()V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/j1/e$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
