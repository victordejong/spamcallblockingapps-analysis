.class public final Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;
.super Lcom/truecaller/insights/models/pdo/SmsBackup;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\n\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;",
        "Lcom/truecaller/insights/models/pdo/SmsBackup;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "isIM",
        "Z",
        "()Z",
        "<init>",
        "(Z)V",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final isIM:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;-><init>(ZILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/truecaller/insights/models/pdo/SmsBackup;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;->isIM:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.ExtendedSmsBackup"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;

    .line 3
    iget-boolean v2, p0, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;->isIM:Z

    iget-boolean v0, v0, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;->isIM:Z

    if-eq v2, v0, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;->isIM:Z

    invoke-static {v1}, Lb;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isIM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;->isIM:Z

    return v0
.end method
