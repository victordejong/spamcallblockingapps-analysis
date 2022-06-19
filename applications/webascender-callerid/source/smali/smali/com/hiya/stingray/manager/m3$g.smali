.class final Lcom/hiya/stingray/manager/m3$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3;->j()Li/c/b0/b/e;
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

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$g;->a:Lcom/hiya/stingray/manager/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$g;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/m3;->a(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/manager/m3$g;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v2}, Lcom/hiya/stingray/manager/m3;->c(Lcom/hiya/stingray/manager/m3;)J

    move-result-wide v2

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Lio/realm/RealmQuery;->x(Ljava/lang/String;J)Lio/realm/RealmQuery;

    invoke-virtual {v1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/hiya/stingray/manager/m3$g$a;

    invoke-direct {v2, v1}, Lcom/hiya/stingray/manager/m3$g$a;-><init>(Lio/realm/i0;)V

    invoke-virtual {v0, v2}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    .line 5
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm is not available to mark PhoneEvents as expired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
