.class public Ls1/a/a/a/v0/a/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/g;-><init>(Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "Ls1/a/a/a/v0/b/g0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/a/g$a;->a:Ls1/a/a/a/v0/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ls1/a/a/a/v0/b/g0;

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/a/g$a;->a:Ls1/a/a/a/v0/a/g;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v1, v2}, Ls1/a/a/a/v0/b/h1/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Ls1/a/a/a/v0/a/g$a;->a:Ls1/a/a/a/v0/a/g;

    .line 4
    iget-object v2, v2, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    .line 5
    sget-object v3, Ls1/a/a/a/v0/a/k;->m:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/b/h1/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ls1/a/a/a/v0/a/g$a;->a:Ls1/a/a/a/v0/a/g;

    .line 6
    iget-object v2, v2, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    .line 7
    sget-object v3, Ls1/a/a/a/v0/a/k;->n:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/b/h1/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Ls1/a/a/a/v0/a/g$a;->a:Ls1/a/a/a/v0/a/g;

    .line 8
    iget-object v2, v2, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    .line 9
    sget-object v3, Ls1/a/a/a/v0/a/k;->l:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v2, v3}, Ls1/a/a/a/v0/b/h1/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
