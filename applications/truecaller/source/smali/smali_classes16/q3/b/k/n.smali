.class public final Lq3/b/k/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/b/i/d;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectInstance"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lq3/b/k/n;->b:Ljava/lang/Object;

    .line 2
    sget-object p2, Lq3/b/i/i$d;->a:Lq3/b/i/i$d;

    const/4 v0, 0x0

    new-array v0, v0, [Lq3/b/i/d;

    .line 3
    sget-object v1, Lq3/b/i/g;->b:Lq3/b/i/g;

    invoke-static {p1, p2, v0, v1}, Ls1/a/a/a/v0/f/d;->M(Ljava/lang/String;Lq3/b/i/h;[Lq3/b/i/d;Ls1/z/b/l;)Lq3/b/i/d;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lq3/b/k/n;->a:Lq3/b/i/d;

    return-void
.end method


# virtual methods
.method public a()Lq3/b/i/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/n;->a:Lq3/b/i/d;

    return-object v0
.end method

.method public b(Lq3/b/j/e;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/e;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lq3/b/k/n;->a:Lq3/b/i/d;

    .line 2
    invoke-interface {p1, p2}, Lq3/b/j/e;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lq3/b/k/n;->a:Lq3/b/i/d;

    .line 4
    invoke-interface {p1, p2}, Lq3/b/j/c;->b(Lq3/b/i/d;)V

    return-void
.end method

.method public d(Lq3/b/j/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/b/j/d;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/k/n;->a:Lq3/b/i/d;

    .line 2
    invoke-interface {p1, v0}, Lq3/b/j/d;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lq3/b/k/n;->a:Lq3/b/i/d;

    .line 4
    invoke-interface {p1, v0}, Lq3/b/j/b;->b(Lq3/b/i/d;)V

    .line 5
    iget-object p1, p0, Lq3/b/k/n;->b:Ljava/lang/Object;

    return-object p1
.end method
