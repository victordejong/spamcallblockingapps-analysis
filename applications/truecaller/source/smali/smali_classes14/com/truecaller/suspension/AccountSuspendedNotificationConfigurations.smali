.class public final enum Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B-\u0008\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006j\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;",
        "",
        "",
        "daysInterval",
        "I",
        "getDaysInterval",
        "()I",
        "id",
        "getId",
        "title",
        "getTitle",
        "content",
        "getContent",
        "<init>",
        "(Ljava/lang/String;IIIII)V",
        "IMMEDIATE",
        "ONE_DAY",
        "ONE_WEEK",
        "WEEKLY",
        "account-suspension_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

.field public static final enum IMMEDIATE:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

.field public static final enum ONE_DAY:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

.field public static final enum ONE_WEEK:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

.field public static final enum WEEKLY:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;


# instance fields
.field private final content:I

.field private final daysInterval:I

.field private final id:I

.field private final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    new-instance v8, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    .line 1
    sget v9, Lcom/truecaller/suspension/R$string;->account_suspension_notification_is_blocked:I

    sget v10, Lcom/truecaller/suspension/R$string;->account_suspension_notification_unblock:I

    const-string v2, "IMMEDIATE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    move v6, v9

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;-><init>(Ljava/lang/String;IIIII)V

    sput-object v8, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->IMMEDIATE:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v8, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    const-string v2, "ONE_DAY"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v8

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;-><init>(Ljava/lang/String;IIIII)V

    sput-object v8, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->ONE_DAY:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    const/4 v1, 0x1

    aput-object v8, v0, v1

    new-instance v1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    .line 3
    sget v7, Lcom/truecaller/suspension/R$string;->account_suspension_notification_disabled:I

    sget v8, Lcom/truecaller/suspension/R$string;->account_suspension_notification_use:I

    const-string v10, "ONE_WEEK"

    const/4 v11, 0x2

    const/4 v12, 0x2

    const/4 v13, 0x6

    move-object v9, v1

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->ONE_WEEK:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    const-string v3, "WEEKLY"

    const/4 v4, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x7

    move-object v2, v1

    .line 4
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->WEEKLY:Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->$VALUES:[Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->id:I

    iput p4, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->daysInterval:I

    iput p5, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->title:I

    iput p6, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->content:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;
    .locals 1

    const-class v0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;
    .locals 1

    sget-object v0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->$VALUES:[Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    invoke-virtual {v0}, [Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;

    return-object v0
.end method


# virtual methods
.method public final getContent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->content:I

    return v0
.end method

.method public final getDaysInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->daysInterval:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->id:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/suspension/AccountSuspendedNotificationConfigurations;->title:I

    return v0
.end method
