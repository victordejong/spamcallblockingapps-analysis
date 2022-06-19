.class public Lio/realm/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/u;


# instance fields
.field private final f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/realm/internal/OsCollectionChangeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->f()Z

    move-result v0

    .line 3
    invoke-virtual {p1}, Lio/realm/internal/OsCollectionChangeSet;->c()Ljava/lang/Throwable;

    move-result-object p1

    iput-object p1, p0, Lio/realm/internal/p;->f:Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lio/realm/u$b;->ERROR:Lio/realm/u$b;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lio/realm/u$b;->INITIAL:Lio/realm/u$b;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/realm/u$b;->UPDATE:Lio/realm/u$b;

    :goto_0
    return-void
.end method
