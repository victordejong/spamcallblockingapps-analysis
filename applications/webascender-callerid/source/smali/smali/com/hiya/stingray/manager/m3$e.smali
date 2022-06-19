.class final Lcom/hiya/stingray/manager/m3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3;->h()Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/m3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/m3;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$e;->a:Lcom/hiya/stingray/manager/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 7

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/i/e;

    iget-object v1, p0, Lcom/hiya/stingray/manager/m3$e;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v1}, Lcom/hiya/stingray/manager/m3;->a(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/q/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, v0}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmQuery;->c()J

    move-result-wide v2

    const/16 v4, 0x7d0

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 3
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v4

    .line 4
    invoke-virtual {v1, v0}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    sget-object v4, Lio/realm/l0;->ASCENDING:Lio/realm/l0;

    const-string v5, "time"

    invoke-virtual {v0, v5, v4}, Lio/realm/RealmQuery;->z(Ljava/lang/String;Lio/realm/l0;)Lio/realm/RealmQuery;

    invoke-virtual {v0}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v0

    .line 5
    new-instance v4, Lcom/hiya/stingray/manager/m3$e$a;

    invoke-direct {v4, v2, v3, v0}, Lcom/hiya/stingray/manager/m3$e$a;-><init>(JLio/realm/i0;)V

    invoke-virtual {v1, v4}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    .line 6
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm is not available to limit PhoneEvents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
