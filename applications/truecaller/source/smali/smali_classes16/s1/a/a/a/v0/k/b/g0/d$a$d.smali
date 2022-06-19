.class public final Ls1/a/a/a/v0/k/b/g0/d$a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d$a;-><init>(Ls1/a/a/a/v0/k/b/g0/d;Ls1/a/a/a/v0/m/l1/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/m/e0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a$d;->b:Ls1/a/a/a/v0/k/b/g0/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a$d;->b:Ls1/a/a/a/v0/k/b/g0/d$a;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d$a;->i:Ls1/a/a/a/v0/m/l1/e;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d$a;->j:Ls1/a/a/a/v0/k/b/g0/d;

    .line 4
    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/m/l1/e;->f(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
