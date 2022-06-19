.class public final Ln3/m0/r$a;
.super Ln3/m0/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/m0/z$a<",
        "Ln3/m0/r$a;",
        "Ln3/m0/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ln3/m0/z$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ln3/m0/z;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/m0/z$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-object v0, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 2
    iget-boolean v0, v0, Ln3/m0/d;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Ln3/m0/r;

    invoke-direct {v0, p0}, Ln3/m0/r;-><init>(Ln3/m0/r$a;)V

    return-object v0
.end method

.method public d()Ln3/m0/z$a;
    .locals 0

    return-object p0
.end method
