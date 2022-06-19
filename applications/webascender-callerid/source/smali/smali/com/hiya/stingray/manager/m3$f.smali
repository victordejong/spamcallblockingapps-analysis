.class final Lcom/hiya/stingray/manager/m3$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/m3;->i()Li/c/b0/b/e;
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

    iput-object p1, p0, Lcom/hiya/stingray/manager/m3$f;->a:Lcom/hiya/stingray/manager/m3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/m3$f;->a:Lcom/hiya/stingray/manager/m3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/m3;->a(Lcom/hiya/stingray/manager/m3;)Lcom/hiya/stingray/q/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/m3$f$a;

    invoke-direct {v1, v0}, Lcom/hiya/stingray/manager/m3$f$a;-><init>(Lio/realm/y;)V

    invoke-virtual {v0, v1}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    .line 3
    invoke-interface {p1}, Li/c/b0/b/f;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm is not available to mar all PhoneEvents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/f;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
