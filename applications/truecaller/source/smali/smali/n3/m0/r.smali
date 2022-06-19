.class public final Ln3/m0/r;
.super Ln3/m0/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/r$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/m0/r$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Ln3/m0/z$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-object p1, p1, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Ln3/m0/z;-><init>(Ljava/util/UUID;Ln3/m0/c0/s/p;Ljava/util/Set;)V

    return-void
.end method
