.class public final Lcom/hiya/stingray/manager/a2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final a:Li/c/b0/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/m<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Li/c/b0/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Li/c/b0/b/m<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/hiya/stingray/manager/a2;->a:Li/c/b0/b/m;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/manager/a2;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/a2;->a:Li/c/b0/b/m;

    sget-object p2, Lkotlin/r;->a:Lkotlin/r;

    invoke-interface {p1, p2}, Li/c/b0/b/k;->onNext(Ljava/lang/Object;)V

    return-void
.end method
