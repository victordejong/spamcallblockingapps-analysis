.class public final synthetic Le/i/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/criteo/publisher/BidResponseListener;

.field public final synthetic b:Lcom/criteo/publisher/Bid;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/k;->a:Lcom/criteo/publisher/BidResponseListener;

    iput-object p2, p0, Le/i/b/k;->b:Lcom/criteo/publisher/Bid;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/i/b/k;->a:Lcom/criteo/publisher/BidResponseListener;

    iget-object v1, p0, Le/i/b/k;->b:Lcom/criteo/publisher/Bid;

    .line 1
    invoke-interface {v0, v1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    return-void
.end method
