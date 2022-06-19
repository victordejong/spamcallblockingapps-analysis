.class public final Le/d/d/g$a;
.super Ljava/io/BufferedReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/d/d/g$a;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    iget-wide v5, p0, Le/d/d/g$a;->a:J

    sub-long/2addr v3, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Le/d/d/g$a;->a:J

    .line 6
    iput-object v2, p0, Le/d/d/g$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Le/d/d/g$a;->b:Z

    .line 8
    :cond_0
    iget-object v0, p0, Le/d/d/g$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/d/d/g$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/d/d/g$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Le/d/d/g$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Le/d/d/g$a;->b:Z

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 8
    iget-wide v5, p0, Le/d/d/g$a;->a:J

    sub-long/2addr v3, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Le/d/d/g$a;->a:J

    return-object v2
.end method
