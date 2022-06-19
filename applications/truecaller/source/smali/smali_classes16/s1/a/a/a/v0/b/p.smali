.class public abstract Ls1/a/a/a/v0/b/p;
.super Ls1/a/a/a/v0/b/r;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/b/e1;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e1;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/r;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/p;->a:Ls1/a/a/a/v0/b/e1;

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/b/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/p;->a:Ls1/a/a/a/v0/b/e1;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/p;->a:Ls1/a/a/a/v0/b/e1;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/e1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/b/r;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/p;->a:Ls1/a/a/a/v0/b/e1;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/e1;->c()Ls1/a/a/a/v0/b/e1;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/b/q;->h(Ls1/a/a/a/v0/b/e1;)Ls1/a/a/a/v0/b/r;

    move-result-object v0

    const-string v1, "DescriptorVisibilities.t\u2026ity(delegate.normalize())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
