.class final Lcom/hiya/stingray/manager/u3$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->x()Li/c/b0/b/p;
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
        "Li/c/b0/b/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/u3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$v;->a:Lcom/hiya/stingray/manager/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/q<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$v;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->v()Lcom/hiya/stingray/manager/u3$l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/b/q;->onSuccess(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Li/c/b0/b/q;->onComplete()V

    return-void
.end method
