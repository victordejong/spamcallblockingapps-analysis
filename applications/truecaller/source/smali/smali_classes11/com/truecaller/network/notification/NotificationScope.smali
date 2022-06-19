.class public final enum Lcom/truecaller/network/notification/NotificationScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/network/notification/NotificationScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/network/notification/NotificationScope;

.field public static final enum GLOBAL:Lcom/truecaller/network/notification/NotificationScope;

.field public static final enum LOCAL:Lcom/truecaller/network/notification/NotificationScope;

.field public static final enum PERSONAL:Lcom/truecaller/network/notification/NotificationScope;


# instance fields
.field public final stringValue:Ljava/lang/String;

.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/truecaller/network/notification/NotificationScope;

    const-string v1, "LOCAL"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/truecaller/network/notification/NotificationScope;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/truecaller/network/notification/NotificationScope;->LOCAL:Lcom/truecaller/network/notification/NotificationScope;

    .line 2
    new-instance v1, Lcom/truecaller/network/notification/NotificationScope;

    const-string v3, "GLOBAL"

    const/4 v4, 0x1

    const-string v5, "global"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/truecaller/network/notification/NotificationScope;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/network/notification/NotificationScope;->GLOBAL:Lcom/truecaller/network/notification/NotificationScope;

    .line 3
    new-instance v3, Lcom/truecaller/network/notification/NotificationScope;

    const-string v5, "PERSONAL"

    const/4 v6, 0x2

    const-string v7, "personal"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/truecaller/network/notification/NotificationScope;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/truecaller/network/notification/NotificationScope;->PERSONAL:Lcom/truecaller/network/notification/NotificationScope;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/network/notification/NotificationScope;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/truecaller/network/notification/NotificationScope;->$VALUES:[Lcom/truecaller/network/notification/NotificationScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/network/notification/NotificationScope;->value:I

    .line 3
    iput-object p4, p0, Lcom/truecaller/network/notification/NotificationScope;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcom/truecaller/network/notification/NotificationScope;
    .locals 4

    .line 2
    invoke-static {}, Lcom/truecaller/network/notification/NotificationScope;->values()[Lcom/truecaller/network/notification/NotificationScope;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 3
    iget v3, v2, Lcom/truecaller/network/notification/NotificationScope;->value:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown NotificationScope value, "

    invoke-static {v1, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/network/notification/NotificationScope;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/network/notification/NotificationScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/network/notification/NotificationScope;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/network/notification/NotificationScope;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/network/notification/NotificationScope;->$VALUES:[Lcom/truecaller/network/notification/NotificationScope;

    invoke-virtual {v0}, [Lcom/truecaller/network/notification/NotificationScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/network/notification/NotificationScope;

    return-object v0
.end method
