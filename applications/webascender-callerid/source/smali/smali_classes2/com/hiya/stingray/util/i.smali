.class public Lcom/hiya/stingray/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/util/i$b;,
        Lcom/hiya/stingray/util/i$a;
    }
.end annotation


# direct methods
.method public static a(I)Lcom/hiya/stingray/util/i$a;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    return-object p0
.end method

.method public static b(I)Lcom/hiya/stingray/util/i$b;
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/hiya/stingray/util/i$b;->MISSED:Lcom/hiya/stingray/util/i$b;

    return-object p0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/hiya/stingray/util/i$b;->REJECTED:Lcom/hiya/stingray/util/i$b;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/hiya/stingray/util/i$b;->UNRECOGNIZED:Lcom/hiya/stingray/util/i$b;

    return-object p0
.end method
