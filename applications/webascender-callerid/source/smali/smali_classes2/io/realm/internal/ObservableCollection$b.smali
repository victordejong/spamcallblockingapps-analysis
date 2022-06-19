.class public Lio/realm/internal/ObservableCollection$b;
.super Lio/realm/internal/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/ObservableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/internal/j$b<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Ljava/lang/Object;Lio/realm/internal/OsCollectionChangeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/internal/OsCollectionChangeSet;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/j$b;->b:Ljava/lang/Object;

    instance-of v1, v0, Lio/realm/v;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/realm/v;

    new-instance v1, Lio/realm/internal/p;

    invoke-direct {v1, p2}, Lio/realm/internal/p;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-interface {v0, p1, v1}, Lio/realm/v;->a(Ljava/lang/Object;Lio/realm/u;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, v0, Lio/realm/a0;

    if-eqz p2, :cond_1

    .line 4
    check-cast v0, Lio/realm/a0;

    invoke-interface {v0, p1}, Lio/realm/a0;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported listener type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/realm/internal/j$b;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
