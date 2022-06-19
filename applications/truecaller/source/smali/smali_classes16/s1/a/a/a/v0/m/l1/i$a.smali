.class public final Ls1/a/a/a/v0/m/l1/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/m/l1/i;-><init>(Ls1/a/a/a/v0/m/y0;Ls1/z/b/a;Ls1/a/a/a/v0/m/l1/i;Ls1/a/a/a/v0/b/w0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/m/i1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/l1/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l1/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/l1/i$a;->b:Ls1/a/a/a/v0/m/l1/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/l1/i$a;->b:Ls1/a/a/a/v0/m/l1/i;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/m/l1/i;->c:Ls1/z/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
