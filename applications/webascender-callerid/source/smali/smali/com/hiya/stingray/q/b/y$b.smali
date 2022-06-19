.class final Lcom/hiya/stingray/q/b/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/y;->c()Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/y;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/y;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/q/b/y$b;->f:Lcom/hiya/stingray/q/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/x0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/y$b;->f:Lcom/hiya/stingray/q/b/y;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/y;->a(Lcom/hiya/stingray/q/b/y;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/hiya/stingray/t/x0;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v1

    const-string v2, "realm\n                  \u2026               .findAll()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/s/k;->k0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lio/realm/y;->u0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const-string v2, "realm.copyFromRealm(infos)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lio/realm/y;->close()V

    return-object v1

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/y$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
