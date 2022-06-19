.class public final Ls1/a/a/a/v0/j/y/h;
.super Ls1/a/a/a/v0/j/y/a;
.source "SourceFile"


# instance fields
.field public final b:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/j/y/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/z/b/a<",
            "+",
            "Ls1/a/a/a/v0/j/y/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getScope"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/j/y/a;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/j/y/h$a;

    invoke-direct {v0, p2}, Ls1/a/a/a/v0/j/y/h$a;-><init>(Ls1/z/b/a;)V

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/j/y/h;->b:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public i()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/j/y/h;->b:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/j/y/i;

    return-object v0
.end method
