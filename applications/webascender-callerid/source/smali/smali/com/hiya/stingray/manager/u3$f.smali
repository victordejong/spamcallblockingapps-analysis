.class public final Lcom/hiya/stingray/manager/u3$f;
.super Lcom/hiya/stingray/manager/u3$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/hiya/stingray/manager/u3$f;-><init>(Lcom/android/billingclient/api/g;ILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/billingclient/api/g;)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/g;->b()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$d;-><init>(Lcom/android/billingclient/api/g;Ljava/lang/String;ZZILkotlin/w/c/g;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/g;ILkotlin/w/c/g;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/u3$f;-><init>(Lcom/android/billingclient/api/g;)V

    return-void
.end method
