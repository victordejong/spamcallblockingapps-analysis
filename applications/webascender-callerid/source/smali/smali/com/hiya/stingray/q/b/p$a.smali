.class Lcom/hiya/stingray/q/b/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/p;->d(Ljava/util/Set;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/hiya/stingray/q/c/i/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/util/Set;

.field final synthetic g:Lcom/hiya/stingray/q/b/p;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/p;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/p$a;->g:Lcom/hiya/stingray/q/b/p;

    iput-object p2, p0, Lcom/hiya/stingray/q/b/p$a;->f:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/p$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/q/b/p$a;->g:Lcom/hiya/stingray/q/b/p;

    iget-object v1, p0, Lcom/hiya/stingray/q/b/p$a;->f:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/b/p;->c(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "No number exists. Call log could\'ve been deleted"

    .line 3
    invoke-static {v1, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/p$a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
