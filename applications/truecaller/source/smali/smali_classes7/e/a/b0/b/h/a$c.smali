.class public Le/a/b0/b/h/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/b/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "upgradePath"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "downloadLink"
    .end annotation
.end field

.field public c:I
    .annotation runtime Le/m/e/d0/b;
        value = "notifyFreqInDays"
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

    const-string v0, "UpgradeStatus{upgradePath=\'"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/b0/b/h/a$c;->a:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", downloadLink=\'"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Le/a/b0/b/h/a$c;->b:Ljava/lang/String;

    const-string v3, ", frequency="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Le/a/b0/b/h/a$c;->c:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
