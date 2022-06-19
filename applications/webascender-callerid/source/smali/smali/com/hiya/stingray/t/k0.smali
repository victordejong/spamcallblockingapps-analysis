.class public Lcom/hiya/stingray/t/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/q/c/e;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/t/k0;->a:Lcom/hiya/stingray/q/c/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/k0;->a:Lcom/hiya/stingray/q/c/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/t/k0;->a:Lcom/hiya/stingray/q/c/e;

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/util/p;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Contacts phone numbers are null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/k0;->a:Lcom/hiya/stingray/q/c/e;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
