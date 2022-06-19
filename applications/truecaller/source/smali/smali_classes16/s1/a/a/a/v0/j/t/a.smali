.class public final Ls1/a/a/a/v0/j/t/a;
.super Ls1/a/a/a/v0/j/t/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/j/t/g<",
        "Ls1/a/a/a/v0/b/f1/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/f1/c;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/j/t/g;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/a0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 2
    check-cast p1, Ls1/a/a/a/v0/b/f1/c;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/c;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    return-object p1
.end method
