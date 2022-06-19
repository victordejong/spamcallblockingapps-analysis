.class public final Ls1/a/a/a/v0/j/y/m$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/j/y/m;-><init>(Ls1/a/a/a/v0/j/y/i;Ls1/a/a/a/v0/m/d1;)V
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
.field public final synthetic b:Ls1/a/a/a/v0/j/y/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/y/m;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/m$a;->b:Ls1/a/a/a/v0/j/y/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/m$a;->b:Ls1/a/a/a/v0/j/y/m;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/j/y/m;->e:Ls1/a/a/a/v0/j/y/i;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v3, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->m1(Ls1/a/a/a/v0/j/y/k;Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;ILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/j/y/m;->h(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
