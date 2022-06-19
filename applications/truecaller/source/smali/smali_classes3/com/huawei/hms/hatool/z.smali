.class public Lcom/huawei/hms/hatool/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/hatool/z;->a:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/hms/hatool/z;->b:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "FormalHASDK_2.2.0.312"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/hatool/k1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    invoke-static {}, Lcom/huawei/hms/hatool/z;->a()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    iput p1, p0, Lcom/huawei/hms/hatool/z;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/hatool/z;->a:Z

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p2, 0x6

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "=> "

    invoke-static {p2, v0, p3}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FormalHASDK"

    invoke-virtual {p0, p1, p3, p2}, Lcom/huawei/hms/hatool/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/hatool/z;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/hms/hatool/z;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
