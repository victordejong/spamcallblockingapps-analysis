.class final Lu/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:[B

.field final j:[B

.field final k:I


# direct methods
.method constructor <init>(Lu/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lu/f;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/f$c;->f:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lu/f;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/f$c;->g:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lu/f;->i:[B

    iput-object v0, p0, Lu/f$c;->i:[B

    .line 5
    iget-object v0, p1, Lu/f;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/f$c;->h:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lu/f;->j:[B

    iput-object v0, p0, Lu/f$c;->j:[B

    .line 7
    iget p1, p1, Lu/f;->k:I

    iput p1, p0, Lu/f$c;->k:I

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lu/f;

    invoke-direct {v0, p0}, Lu/f;-><init>(Lu/f$c;)V
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
