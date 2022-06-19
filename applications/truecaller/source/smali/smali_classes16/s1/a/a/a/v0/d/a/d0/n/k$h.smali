.class public final Ls1/a/a/a/v0/d/a/d0/n/k$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/k;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ls1/a/a/a/v0/f/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$h;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$h;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    sget-object v1, Ls1/a/a/a/v0/j/y/d;->q:Ls1/a/a/a/v0/j/y/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/k;->i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
