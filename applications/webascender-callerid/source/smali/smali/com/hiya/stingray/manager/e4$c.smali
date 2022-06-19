.class final Lcom/hiya/stingray/manager/e4$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/e4;->g(Lcom/hiya/stingray/t/c1;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Lcom/google/common/base/j<",
        "Lcom/hiya/stingray/t/g1/a;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/e4;

.field final synthetic g:Lcom/hiya/stingray/t/c1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/e4$c;->f:Lcom/hiya/stingray/manager/e4;

    iput-object p2, p0, Lcom/hiya/stingray/manager/e4$c;->g:Lcom/hiya/stingray/t/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/j;)Li/c/b0/b/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;)",
            "Li/c/b0/b/i;"
        }
    .end annotation

    const-string v0, "event"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/common/base/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/e4$c;->f:Lcom/hiya/stingray/manager/e4;

    iget-object v1, p0, Lcom/hiya/stingray/manager/e4$c;->g:Lcom/hiya/stingray/t/c1;

    invoke-virtual {p1}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/t/g1/a;

    invoke-static {v0, v1, p1}, Lcom/hiya/stingray/manager/e4;->d(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/manager/e4$c;->f:Lcom/hiya/stingray/manager/e4;

    iget-object v0, p0, Lcom/hiya/stingray/manager/e4$c;->g:Lcom/hiya/stingray/t/c1;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/hiya/stingray/manager/e4;->d(Lcom/hiya/stingray/manager/e4;Lcom/hiya/stingray/t/c1;Lcom/hiya/stingray/t/g1/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/base/j;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/e4$c;->a(Lcom/google/common/base/j;)Li/c/b0/b/i;

    move-result-object p1

    return-object p1
.end method
