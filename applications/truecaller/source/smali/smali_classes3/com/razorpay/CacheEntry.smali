.class public Lcom/razorpay/CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public data:Ljava/lang/String;

.field public expiryTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/razorpay/CacheEntry;->data:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/razorpay/CacheEntry;->expiryTime:J

    return-void
.end method
