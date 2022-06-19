.class final Lu/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final f:J

.field final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lu/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Lu/a;->f:J

    iput-wide v0, p0, Lu/a$a;->f:J

    .line 3
    iget-object p1, p1, Lu/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lu/a$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-wide v0, p0, Lu/a$a;->f:J

    iget-object v2, p0, Lu/a$a;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lu/a;->d(JLjava/lang/String;)Lu/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
