.class public Le/a/f4/f/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/f4/f/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/a/f4/f/c$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J
    .annotation runtime Le/m/e/d0/b;
        value = "i"
    .end annotation
.end field

.field public b:Lcom/truecaller/network/notification/NotificationType;
    .annotation runtime Le/m/e/d0/b;
        value = "t"
    .end annotation
.end field

.field public c:Lcom/truecaller/network/notification/NotificationScope;
    .annotation runtime Le/m/e/d0/b;
        value = "s"
    .end annotation
.end field

.field public d:J
    .annotation runtime Le/m/e/d0/b;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/network/notification/NotificationType;->UNSUPPORTED:Lcom/truecaller/network/notification/NotificationType;

    iput-object v0, p0, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    .line 3
    sget-object v0, Lcom/truecaller/network/notification/NotificationScope;->GLOBAL:Lcom/truecaller/network/notification/NotificationScope;

    iput-object v0, p0, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Le/a/f4/f/c$a$a;

    .line 2
    iget-object v0, p0, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    sget-object v1, Lcom/truecaller/network/notification/NotificationType;->SOFTWARE_UPDATE:Lcom/truecaller/network/notification/NotificationType;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p1, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    .line 4
    :cond_1
    iget-wide v0, p1, Le/a/f4/f/c$a$a;->d:J

    iget-wide v4, p0, Le/a/f4/f/c$a$a;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    if-gez v0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p1, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    iget v0, v0, Lcom/truecaller/network/notification/NotificationScope;->value:I

    iget-object v1, p0, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    iget v1, v1, Lcom/truecaller/network/notification/NotificationScope;->value:I

    if-le v0, v1, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    if-ge v0, v1, :cond_5

    const/4 v2, -0x2

    goto :goto_1

    .line 6
    :cond_5
    iget-wide v0, p1, Le/a/f4/f/c$a$a;->a:J

    iget-wide v2, p0, Le/a/f4/f/c$a$a;->a:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    const/4 v2, 0x3

    goto :goto_1

    :cond_6
    if-gez p1, :cond_7

    const/4 v2, -0x3

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Le/a/f4/f/c$a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Le/a/f4/f/c$a$a;

    if-eq p1, p0, :cond_0

    .line 3
    iget-wide v2, p1, Le/a/f4/f/c$a$a;->a:J

    iget-wide v4, p0, Le/a/f4/f/c$a$a;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p1, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    iget-object v2, p0, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    iget-object v2, p0, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    if-ne v0, v2, :cond_1

    iget-wide v2, p1, Le/a/f4/f/c$a$a;->d:J

    iget-wide v4, p0, Le/a/f4/f/c$a$a;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Le/a/f4/f/c$a$a;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x193

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-wide v3, p0, Le/a/f4/f/c$a$a;->d:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Envelope{id="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/f4/f/c$a$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f4/f/c$a$a;->b:Lcom/truecaller/network/notification/NotificationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f4/f/c$a$a;->c:Lcom/truecaller/network/notification/NotificationScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/f4/f/c$a$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
