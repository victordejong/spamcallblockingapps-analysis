.class final Lcom/google/common/collect/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/e0$b0<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/e0$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/e0$i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0$a;->d()Lcom/google/common/collect/e0$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$i;)Lcom/google/common/collect/e0$b0;
    .locals 0

    .line 1
    check-cast p2, Lcom/google/common/collect/e0$e;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e0$a;->c(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$e;)Lcom/google/common/collect/e0$b0;

    return-object p0
.end method

.method public c(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/e0$e;)Lcom/google/common/collect/e0$b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/collect/e0$e;",
            ")",
            "Lcom/google/common/collect/e0$b0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/e0$e;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public d()Lcom/google/common/collect/e0$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
