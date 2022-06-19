.class public Lcom/criteo/publisher/logging/RemoteLogRecords$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/logging/RemoteLogRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "version"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "bundleId"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "deviceId"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "sessionId"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Le/m/e/d0/b;
        value = "profileId"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "exception"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "logId"
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "deviceOs"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundleId"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    iput-object p6, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    iget v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    if-ne v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    .line 15
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RemoteLogContext(version="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bundleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->e:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exceptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->g:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceOs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->h:Ljava/lang/String;

    const-string v2, ")"

    .line 16
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
