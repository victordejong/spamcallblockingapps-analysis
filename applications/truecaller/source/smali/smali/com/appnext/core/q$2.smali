.class public final Lcom/appnext/core/q$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic eo:Lcom/appnext/core/f$a;

.field public final synthetic ep:Lcom/appnext/core/q;


# direct methods
.method public constructor <init>(Lcom/appnext/core/q;Lcom/appnext/core/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/q$2;->ep:Lcom/appnext/core/q;

    iput-object p2, p0, Lcom/appnext/core/q$2;->eo:Lcom/appnext/core/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/q$2;->ep:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;)Lcom/appnext/core/f$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/f$a;->error(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/q$2;->eo:Lcom/appnext/core/f$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/appnext/core/f$a;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMarket(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/core/q$2;->ep:Lcom/appnext/core/q;

    invoke-static {v0}, Lcom/appnext/core/q;->a(Lcom/appnext/core/q;)Lcom/appnext/core/f$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/q$2;->eo:Lcom/appnext/core/f$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/appnext/core/f$a;->onMarket(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
