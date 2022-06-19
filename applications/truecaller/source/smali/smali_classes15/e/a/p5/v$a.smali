.class public final Le/a/p5/v$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/v;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroidx/lifecycle/LiveData;

.field public final synthetic c:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/v$a;->b:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Le/a/p5/v$a;->c:Ls1/z/b/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/p5/v$a;->b:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Le/a/p5/v$a;->c:Ls1/z/b/l;

    if-eqz v1, :cond_0

    new-instance v2, Le/a/p5/x;

    invoke-direct {v2, v1}, Le/a/p5/x;-><init>(Ls1/z/b/l;)V

    move-object v1, v2

    :cond_0
    check-cast v1, Ln3/v/l0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
