.class public final Ls1/a/a/a/v$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v;-><init>(Ls1/a/a/a/g;ILs1/a/i$a;Ls1/z/b/a;)V
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
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v$a;->b:Ls1/a/a/a/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v$a;->b:Ls1/a/a/a/v;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v;->a:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/v;->e:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ls1/a/a/a/v0/b/h0;

    .line 5
    invoke-static {v0}, Ls1/a/a/a/s0;->b(Ls1/a/a/a/v0/b/f1/a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
