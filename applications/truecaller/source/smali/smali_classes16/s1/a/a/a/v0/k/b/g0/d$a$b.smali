.class public final Ls1/a/a/a/v0/k/b/g0/d$a$b;
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
        "Ls1/a/a/a/v0/b/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a$b;->b:Ls1/a/a/a/v0/k/b/g0/d$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a$b;->b:Ls1/a/a/a/v0/k/b/g0/d$a;

    sget-object v1, Ls1/a/a/a/v0/j/y/d;->n:Ls1/a/a/a/v0/j/y/d;

    sget-object v2, Ls1/a/a/a/v0/j/y/i;->a:Ls1/a/a/a/v0/j/y/i$a;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/j/y/i$a;->a:Ls1/z/b/l;

    .line 4
    sget-object v3, Ls1/a/a/a/v0/c/a/d;->e:Ls1/a/a/a/v0/c/a/d;

    invoke-virtual {v0, v1, v2, v3}, Ls1/a/a/a/v0/k/b/g0/h;->i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
