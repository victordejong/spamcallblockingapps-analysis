.class public final Ls1/a/a/a/v0/d/a/d0/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/d/a/d0/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/h;

.field public final synthetic c:Ls1/a/a/a/v0/b/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/g;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/a;->b:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/a;->c:Ls1/a/a/a/v0/b/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/a;->b:Ls1/a/a/a/v0/d/a/d0/h;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/a;->c:Ls1/a/a/a/v0/b/g;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v1

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/d/a/d0/e;

    move-result-object v0

    return-object v0
.end method
