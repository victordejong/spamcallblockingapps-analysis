.class public final Ls1/a/a/a/v0/j/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/b/k;",
        "Ls1/a/a/a/v0/b/k;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/j/c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/b;->b:Ls1/a/a/a/v0/j/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/k;

    check-cast p2, Ls1/a/a/a/v0/b/k;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/j/b;->b:Ls1/a/a/a/v0/j/c;

    iget-object v0, v0, Ls1/a/a/a/v0/j/c;->b:Ls1/a/a/a/v0/b/a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ls1/a/a/a/v0/j/b;->b:Ls1/a/a/a/v0/j/c;

    iget-object p1, p1, Ls1/a/a/a/v0/j/c;->c:Ls1/a/a/a/v0/b/a;

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
