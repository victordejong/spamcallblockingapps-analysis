.class public final Lu3/p0/j/f$e;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/j/f;->I(ILu3/p0/j/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/j/f;

.field public final synthetic f:I

.field public final synthetic g:Lu3/p0/j/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f;ILu3/p0/j/b;)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/f$e;->e:Lu3/p0/j/f;

    iput p6, p0, Lu3/p0/j/f$e;->f:I

    iput-object p7, p0, Lu3/p0/j/f$e;->g:Lu3/p0/j/b;

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f$e;->e:Lu3/p0/j/f;

    iget v1, p0, Lu3/p0/j/f$e;->f:I

    iget-object v2, p0, Lu3/p0/j/f$e;->g:Lu3/p0/j/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "statusCode"

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {v0, v1, v2}, Lu3/p0/j/p;->l(ILu3/p0/j/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lu3/p0/j/f$e;->e:Lu3/p0/j/f;

    .line 5
    sget-object v2, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {v1, v2, v2, v0}, Lu3/p0/j/f;->b(Lu3/p0/j/b;Lu3/p0/j/b;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
