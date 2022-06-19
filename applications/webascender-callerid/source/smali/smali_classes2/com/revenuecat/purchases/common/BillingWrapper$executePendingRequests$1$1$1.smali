.class final Lcom/revenuecat/purchases/common/BillingWrapper$executePendingRequests$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revenuecat/purchases/common/BillingWrapper;->executePendingRequests()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lkotlin/w/b/l;


# direct methods
.method constructor <init>(Lkotlin/w/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/revenuecat/purchases/common/BillingWrapper$executePendingRequests$1$1$1;->$it:Lkotlin/w/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/common/BillingWrapper$executePendingRequests$1$1$1;->$it:Lkotlin/w/b/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
