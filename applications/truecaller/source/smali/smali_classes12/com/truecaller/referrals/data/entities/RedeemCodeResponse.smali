.class public Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "message"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "referrerName"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "status"
    .end annotation
.end field

.field public d:I
    .annotation runtime Le/m/e/d0/b;
        value = "durationDays"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "RedeemCodeResponse{status=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->c:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", daysOfPro="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->d:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
