.class final Lcom/hiya/stingray/manager/m3$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3$f;->a(Li/c/b0/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/y;


# direct methods
.method constructor <init>(Lio/realm/y;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$f$a;->a:Lio/realm/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/manager/m3$f$a;->a:Lio/realm/y;

    const-class v0, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {p1, v0}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "shouldSend"

    invoke-virtual {p1, v1, v0}, Lio/realm/RealmQuery;->g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    invoke-virtual {p1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object p1

    const-string v0, "realm.where(RealmPhoneSe\u2026ULD_SEND, true).findAll()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->i0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/i/e;

    .line 3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/i/e;->h1(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$f$a;->a:Lio/realm/y;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/realm/n;

    invoke-virtual {v0, p1, v1}, Lio/realm/y;->K0(Ljava/lang/Iterable;[Lio/realm/n;)Ljava/util/List;

    return-void
.end method
