.class public Lio/realm/i0;
.super Lio/realm/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/w<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/realm/w;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/realm/w;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/w;->f:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/w;->i:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->k()V

    const/4 v0, 0x1

    return v0
.end method

.method public y0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/w;->f:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/w;->i:Lio/realm/internal/OsResults;

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->i()Z

    move-result v0

    return v0
.end method
