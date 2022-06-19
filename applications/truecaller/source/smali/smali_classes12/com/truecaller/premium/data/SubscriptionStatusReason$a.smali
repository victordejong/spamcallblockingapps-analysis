.class public final Lcom/truecaller/premium/data/SubscriptionStatusReason$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/premium/data/SubscriptionStatusReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/truecaller/premium/data/SubscriptionStatusReason;
    .locals 5

    .line 1
    invoke-static {}, Lcom/truecaller/premium/data/SubscriptionStatusReason;->values()[Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, p1, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/truecaller/premium/data/SubscriptionStatusReason;->NONE:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    :goto_2
    return-object v2
.end method
