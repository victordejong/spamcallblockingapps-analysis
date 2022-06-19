.class Lcom/hiya/stingray/q/b/s$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/s;->g(Ljava/util/Map;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Li/c/b0/b/v<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/e;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/q/b/s;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/s$f;->f:Lcom/hiya/stingray/q/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/s$f;->f:Lcom/hiya/stingray/q/b/s;

    invoke-static {v0}, Lcom/hiya/stingray/q/b/s;->e(Lcom/hiya/stingray/q/b/s;)Lcom/hiya/stingray/q/b/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/u;->e(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/b/s$f;->a(Ljava/util/ArrayList;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
