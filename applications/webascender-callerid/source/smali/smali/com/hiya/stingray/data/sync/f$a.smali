.class final Lcom/hiya/stingray/data/sync/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/data/sync/f;->g(Landroid/app/job/JobParameters;)Z
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
        "TT;",
        "Li/c/b0/b/i0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/data/sync/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/data/sync/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/data/sync/f$a;->f:Lcom/hiya/stingray/data/sync/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "PostCallOperation: There are no events to send."

    .line 2
    invoke-static {v1, v0}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PostCallOperation: Starting to send "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PhoneEvents."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lr/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/data/sync/f$a;->f:Lcom/hiya/stingray/data/sync/f;

    invoke-static {v0}, Lcom/hiya/stingray/data/sync/f;->a(Lcom/hiya/stingray/data/sync/f;)Lcom/hiya/stingray/manager/g2;

    move-result-object v0

    const-string v1, "it"

    .line 6
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->k0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/g2;->e(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/data/sync/f$a;->f:Lcom/hiya/stingray/data/sync/f;

    invoke-static {v1}, Lcom/hiya/stingray/data/sync/f;->c(Lcom/hiya/stingray/data/sync/f;)Lcom/hiya/stingray/manager/m3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/m3;->i()Li/c/b0/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e;->d(Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object v0

    .line 8
    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/e;->g(Li/c/b0/b/i0;)Li/c/b0/b/e0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/data/sync/f$a;->a(Ljava/util/List;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
