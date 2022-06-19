.class public final Ls1/a/a/a/v0/m/g0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/h0;

.field public final synthetic c:Ls1/a/a/a/v0/m/l1/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/h0;Ls1/a/a/a/v0/m/l1/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/g0;->b:Ls1/a/a/a/v0/m/h0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/g0;->c:Ls1/a/a/a/v0/m/l1/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/g0;->c:Ls1/a/a/a/v0/m/l1/e;

    iget-object v1, p0, Ls1/a/a/a/v0/m/g0;->b:Ls1/a/a/a/v0/m/h0;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/m/h0;->d:Ls1/z/b/a;

    .line 3
    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    return-object v0
.end method
