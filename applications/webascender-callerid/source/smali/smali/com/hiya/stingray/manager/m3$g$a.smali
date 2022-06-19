.class final Lcom/hiya/stingray/manager/m3$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3$g;->a(Li/c/b0/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/i0;


# direct methods
.method constructor <init>(Lio/realm/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$g$a;->a:Lio/realm/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/manager/m3$g$a;->a:Lio/realm/i0;

    const-string v0, "expiredEvents"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/e;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->h1(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method
