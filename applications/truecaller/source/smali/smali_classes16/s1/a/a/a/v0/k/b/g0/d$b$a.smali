.class public final Ls1/a/a/a/v0/k/b/g0/d$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d$b;-><init>(Ls1/a/a/a/v0/k/b/g0/d;)V
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
        "Ls1/a/a/a/v0/b/w0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$b$a;->b:Ls1/a/a/a/v0/k/b/g0/d$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$b$a;->b:Ls1/a/a/a/v0/k/b/g0/d$b;

    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/d$b;->d:Ls1/a/a/a/v0/k/b/g0/d;

    invoke-static {v0}, Le/q/f/a/d/a;->M(Ls1/a/a/a/v0/b/i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
