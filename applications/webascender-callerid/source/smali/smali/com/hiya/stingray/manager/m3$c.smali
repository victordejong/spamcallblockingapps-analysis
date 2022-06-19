.class final Lcom/hiya/stingray/manager/m3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3;->g(Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/m3;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/hiya/stingray/manager/m3$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/m3;Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$c;->a:Lcom/hiya/stingray/manager/m3;

    iput-object p2, p0, Lcom/hiya/stingray/manager/m3$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hiya/stingray/manager/m3$c;->c:Lcom/hiya/stingray/manager/m3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/f0<",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/t/g1/a;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$c;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/m3;->a(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    const-class v1, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/m3$c;->b:Ljava/lang/String;

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->i(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    sget-object v1, Lio/realm/l0;->DESCENDING:Lio/realm/l0;

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lio/realm/RealmQuery;->z(Ljava/lang/String;Lio/realm/l0;)Lio/realm/RealmQuery;

    invoke-virtual {v0}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lio/realm/i0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/e;

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/m3$c;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v1}, Lcom/hiya/stingray/manager/m3;->d(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/t/i1/o0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/i1/o0;->b(Lcom/hiya/stingray/q/c/i/e;)Lcom/hiya/stingray/t/g1/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onSuccess(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/manager/m3$c;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {p1}, Lcom/hiya/stingray/manager/m3;->b(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/manager/l2;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$c;->c:Lcom/hiya/stingray/manager/m3$a;

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1, v2}, Lcom/hiya/stingray/manager/l2;->b(Lcom/hiya/stingray/manager/l2;Lcom/hiya/stingray/manager/m3$a;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm is not available to find a PhoneEvent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
