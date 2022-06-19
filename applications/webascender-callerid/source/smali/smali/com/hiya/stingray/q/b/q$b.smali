.class Lcom/hiya/stingray/q/b/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/q;->c()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/i/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/q;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/q$b;->f:Lcom/hiya/stingray/q/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/q$b;->f:Lcom/hiya/stingray/q/b/q;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/q;->a(Lcom/hiya/stingray/q/b/q;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-class v1, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Lio/realm/RealmQuery;->r(Ljava/lang/String;J)Lio/realm/RealmQuery;

    .line 5
    invoke-virtual {v1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lio/realm/y;->u0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lio/realm/y;->close()V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/q$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
