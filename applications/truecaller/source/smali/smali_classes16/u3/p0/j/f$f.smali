.class public final Lu3/p0/j/f$f;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/j/f;->J(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/j/f;

.field public final synthetic f:I

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;IJ)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/f$f;->e:Lu3/p0/j/f;

    iput p6, p0, Lu3/p0/j/f$f;->f:I

    iput-wide p7, p0, Lu3/p0/j/f$f;->g:J

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f$f;->e:Lu3/p0/j/f;

    .line 2
    iget-object v0, v0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 3
    iget v1, p0, Lu3/p0/j/f$f;->f:I

    iget-wide v2, p0, Lu3/p0/j/f$f;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lu3/p0/j/p;->c(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lu3/p0/j/f$f;->e:Lu3/p0/j/f;

    .line 5
    sget-object v2, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {v1, v2, v2, v0}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
