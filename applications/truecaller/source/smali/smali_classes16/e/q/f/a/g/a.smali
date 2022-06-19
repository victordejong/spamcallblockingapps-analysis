.class public final enum Le/q/f/a/g/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/q/f/a/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Le/q/f/a/g/a;

.field public static final enum c:Le/q/f/a/g/a;

.field public static final enum d:Le/q/f/a/g/a;

.field public static final enum e:Le/q/f/a/g/a;

.field public static final enum f:Le/q/f/a/g/a;

.field public static final enum g:Le/q/f/a/g/a;

.field public static final enum h:Le/q/f/a/g/a;

.field public static final enum i:Le/q/f/a/g/a;

.field public static final synthetic j:[Le/q/f/a/g/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/q/f/a/g/a;

    const-string v1, "PREPAID"

    const/4 v2, 0x0

    const-string v3, "prepaid_bill"

    invoke-direct {v0, v1, v2, v3}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Le/q/f/a/g/a;->b:Le/q/f/a/g/a;

    .line 2
    new-instance v1, Le/q/f/a/g/a;

    const-string v3, "PAYMENTDUE"

    const/4 v4, 0x1

    const-string v5, "payment_due"

    invoke-direct {v1, v3, v4, v5}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Le/q/f/a/g/a;->c:Le/q/f/a/g/a;

    .line 3
    new-instance v3, Le/q/f/a/g/a;

    const-string v5, "BILLSTATUS"

    const/4 v6, 0x2

    const-string v7, "bill_status"

    invoke-direct {v3, v5, v6, v7}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Le/q/f/a/g/a;->d:Le/q/f/a/g/a;

    .line 4
    new-instance v5, Le/q/f/a/g/a;

    const-string v7, "LOANSTATUS"

    const/4 v8, 0x3

    const-string v9, "loan_status"

    invoke-direct {v5, v7, v8, v9}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Le/q/f/a/g/a;->e:Le/q/f/a/g/a;

    .line 5
    new-instance v7, Le/q/f/a/g/a;

    const-string v9, "COMMUTE"

    const/4 v10, 0x4

    const-string v11, "commute"

    invoke-direct {v7, v9, v10, v11}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Le/q/f/a/g/a;->f:Le/q/f/a/g/a;

    .line 6
    new-instance v9, Le/q/f/a/g/a;

    const-string v11, "RECHARGEEXPIRY"

    const/4 v12, 0x5

    const-string v13, "recharge_expiry"

    invoke-direct {v9, v11, v12, v13}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Le/q/f/a/g/a;->g:Le/q/f/a/g/a;

    .line 7
    new-instance v11, Le/q/f/a/g/a;

    const-string v13, "PAYMENTNOTIF"

    const/4 v14, 0x6

    const-string v15, "payment_notif"

    invoke-direct {v11, v13, v14, v15}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Le/q/f/a/g/a;->h:Le/q/f/a/g/a;

    .line 8
    new-instance v13, Le/q/f/a/g/a;

    const-string v15, "NOTIF"

    const/4 v14, 0x7

    const-string v12, "notif"

    invoke-direct {v13, v15, v14, v12}, Le/q/f/a/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Le/q/f/a/g/a;->i:Le/q/f/a/g/a;

    const/16 v12, 0x8

    new-array v12, v12, [Le/q/f/a/g/a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Le/q/f/a/g/a;->j:[Le/q/f/a/g/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Le/q/f/a/g/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/q/f/a/g/a;
    .locals 1

    .line 1
    const-class v0, Le/q/f/a/g/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/q/f/a/g/a;

    return-object p0
.end method

.method public static values()[Le/q/f/a/g/a;
    .locals 1

    .line 1
    sget-object v0, Le/q/f/a/g/a;->j:[Le/q/f/a/g/a;

    invoke-virtual {v0}, [Le/q/f/a/g/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/q/f/a/g/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/q/f/a/g/a;->a:Ljava/lang/String;

    return-object v0
.end method
