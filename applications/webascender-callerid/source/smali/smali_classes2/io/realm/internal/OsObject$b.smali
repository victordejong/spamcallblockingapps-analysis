.class public Lio/realm/internal/OsObject$b;
.super Lio/realm/internal/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/OsObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/e0;",
        ">",
        "Lio/realm/internal/j$b<",
        "TT;",
        "Lio/realm/g0<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/e0;Lio/realm/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/g0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/internal/j$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/e0;Lio/realm/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/realm/s;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/internal/j$b;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/g0;

    invoke-interface {v0, p1, p2}, Lio/realm/g0;->a(Lio/realm/e0;Lio/realm/s;)V

    return-void
.end method
