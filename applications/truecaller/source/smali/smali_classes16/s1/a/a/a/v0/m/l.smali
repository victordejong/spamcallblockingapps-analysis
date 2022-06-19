.class public final Ls1/a/a/a/v0/m/l;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/v0;",
        "Ljava/lang/Iterable<",
        "+",
        "Ls1/a/a/a/v0/m/e0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/i$e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/i$e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/l;->b:Ls1/a/a/a/v0/m/i$e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/v0;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/m/l;->b:Ls1/a/a/a/v0/m/i$e;

    iget-object v0, v0, Ls1/a/a/a/v0/m/i$e;->b:Ls1/a/a/a/v0/m/i;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ls1/a/a/a/v0/m/i;->f(Ls1/a/a/a/v0/m/i;Ls1/a/a/a/v0/m/v0;Z)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
