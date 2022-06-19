.class public final Ls1/a/a/a/v0/d/a/d0/n/o$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/o;->m(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/j/y/i;",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/k0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/f/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/o$a;->b:Ls1/a/a/a/v0/f/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/j/y/i;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/o$a;->b:Ls1/a/a/a/v0/f/e;

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->f:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {p1, v0, v1}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
