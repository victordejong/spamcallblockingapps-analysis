.class public final Le/a/p5/s0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/g;


# instance fields
.field public final synthetic a:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/p5/s0/p;->a:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lu3/f;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/p5/s0/p;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/p5/s0/p;->a:Lq3/a/n;

    invoke-static {p2}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lu3/f;Lu3/k0;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/p5/s0/p;->a:Lq3/a/n;

    invoke-static {p1, p2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    return-void
.end method
