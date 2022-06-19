.class public Le/a/p5/x0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T::",
        "Ln3/j0/a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field public a:Ln3/j0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "TR;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-TR;+TT;>;)V"
        }
    .end annotation

    const-string v0, "viewBinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/p5/x0/b;->b:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ls1/a/l<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/p5/x0/b;->a:Ln3/j0/a;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Le/a/p5/x0/b;->b:Ls1/z/b/l;

    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ln3/j0/a;

    .line 2
    iput-object p2, p0, Le/a/p5/x0/b;->a:Ln3/j0/a;

    :goto_0
    return-object p2
.end method
