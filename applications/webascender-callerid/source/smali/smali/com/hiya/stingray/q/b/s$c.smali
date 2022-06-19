.class Lcom/hiya/stingray/q/b/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/s;->i(Lcom/hiya/stingray/q/b/s$g;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/c<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/a;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/f;",
        ">;",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/q/b/s;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/s$c;->a:Lcom/hiya/stingray/q/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/f;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/s$c;->a:Lcom/hiya/stingray/q/b/s;

    invoke-static {v0, p1, p2}, Lcom/hiya/stingray/q/b/s;->c(Lcom/hiya/stingray/q/b/s;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/b/s$c;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
