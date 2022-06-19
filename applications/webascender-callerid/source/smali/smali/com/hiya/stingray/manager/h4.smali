.class public Lcom/hiya/stingray/manager/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/a/q;

.field private final b:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/a/q;Lcom/hiya/stingray/manager/o2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/h4;->a:Lcom/hiya/stingray/q/a/q;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/h4;->b:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method private synthetic c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/h4;->b:Lcom/hiya/stingray/manager/o2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->M(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/h4;->b:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/o2;->N(Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/h4;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/h4;->a:Lcom/hiya/stingray/q/a/q;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/q;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/h4;->a:Lcom/hiya/stingray/q/a/q;

    invoke-interface {v0}, Lcom/hiya/stingray/q/a/q;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/manager/h4;->c()V

    return-void
.end method

.method public e(Lcom/google/android/gms/common/api/j;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/h4;->a:Lcom/hiya/stingray/q/a/q;

    invoke-interface {v0, p1}, Lcom/hiya/stingray/q/a/q;->b(Lcom/google/android/gms/common/api/j;)Li/c/b0/b/e;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/x0;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/x0;-><init>(Lcom/hiya/stingray/manager/h4;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->n(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
