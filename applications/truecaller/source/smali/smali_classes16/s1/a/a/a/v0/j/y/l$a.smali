.class public final Ls1/a/a/a/v0/j/y/l$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/j/y/l;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;)V
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
        "Ls1/a/a/a/v0/b/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/j/y/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/y/l;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/l$a;->b:Ls1/a/a/a/v0/j/y/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/b/q0;

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/j/y/l$a;->b:Ls1/a/a/a/v0/j/y/l;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/j/y/l;->c:Ls1/a/a/a/v0/b/e;

    .line 3
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->s0(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/q0;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Ls1/a/a/a/v0/j/y/l$a;->b:Ls1/a/a/a/v0/j/y/l;

    .line 4
    iget-object v2, v2, Ls1/a/a/a/v0/j/y/l;->c:Ls1/a/a/a/v0/b/e;

    .line 5
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->t0(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/q0;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
