.class public Lcom/criteo/publisher/logging/RemoteLogRecords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/logging/RemoteLogRecords$b;,
        Lcom/criteo/publisher/logging/RemoteLogRecords$a;,
        Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0097\u0008\u0018\u0000:\u0003\u001d\u001e\u001fB\u001d\u0012\u0006\u0010\u0013\u001a\u00020\u000c\u0012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0002\u001a\u00020\u0001H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001a\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u00d6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J*\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0013\u001a\u00020\u000c8\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u000eR\"\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcom/criteo/publisher/logging/RemoteLogRecords;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;",
        "component1",
        "()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;",
        "",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogRecord;",
        "component2",
        "()Ljava/util/List;",
        "context",
        "logRecords",
        "copy",
        "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)Lcom/criteo/publisher/logging/RemoteLogRecords;",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;",
        "getContext",
        "Ljava/util/List;",
        "getLogRecords",
        "<init>",
        "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)V",
        "RemoteLogContext",
        "RemoteLogLevel",
        "RemoteLogRecord",
        "publisher-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;
    .annotation runtime Le/m/e/d0/b;
        value = "context"
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "errors"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/RemoteLogRecords$a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$a;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logRecords"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    iput-object p2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/criteo/publisher/logging/RemoteLogRecords$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    .line 4
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
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "RemoteLogRecords(context="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    const-string v2, ")"

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
