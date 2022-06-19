.class Lcom/hiya/stingray/manager/z3$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/z3$a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/g<",
        "Lcom/hiya/stingray/q/c/e;",
        "Lcom/hiya/stingray/t/n0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/z3$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/z3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/z3$a$b;->f:Lcom/hiya/stingray/manager/z3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/q/c/e;)Lcom/hiya/stingray/t/n0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/z3$a$b;->f:Lcom/hiya/stingray/manager/z3$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/z3$a;->a:Lcom/hiya/stingray/manager/z3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/z3;->a(Lcom/hiya/stingray/manager/z3;)Lcom/hiya/stingray/t/i1/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/z;->e(Lcom/hiya/stingray/q/c/e;)Lcom/hiya/stingray/t/n0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/q/c/e;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/z3$a$b;->a(Lcom/hiya/stingray/q/c/e;)Lcom/hiya/stingray/t/n0;

    move-result-object p1

    return-object p1
.end method
