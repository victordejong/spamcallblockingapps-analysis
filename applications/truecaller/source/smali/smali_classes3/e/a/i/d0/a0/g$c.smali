.class public final Le/a/i/d0/a0/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/BidResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/a0/g;->d(Lcom/criteo/publisher/model/AdUnit;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;


# direct methods
.method public constructor <init>(Lq3/a/n;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/g$c;->a:Lq3/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/criteo/publisher/Bid;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/criteo/publisher/Criteo;->enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V

    .line 3
    iget-object p1, p0, Le/a/i/d0/a0/g$c;->a:Lq3/a/n;

    new-instance v1, Le/a/i/d0/k;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-static {p1, v1}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/i/d0/a0/g$c;->a:Lq3/a/n;

    new-instance v0, Le/a/i/d0/i;

    sget-object v1, Le/a/i/d0/p;->d:Le/a/i/d0/p;

    invoke-direct {v0, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    invoke-static {p1, v0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
