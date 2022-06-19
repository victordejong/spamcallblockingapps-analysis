.class public final Lu3/p0/j/f$d$a;
.super Lu3/p0/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/p0/j/f$d;->i(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lu3/p0/j/o;

.field public final synthetic f:Lu3/p0/j/f$d;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/o;Lu3/p0/j/f$d;Lu3/p0/j/o;ILjava/util/List;Z)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/f$d$a;->e:Lu3/p0/j/o;

    iput-object p6, p0, Lu3/p0/j/f$d$a;->f:Lu3/p0/j/f$d;

    iput-object p9, p0, Lu3/p0/j/f$d$a;->g:Ljava/util/List;

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/j/f$d$a;->f:Lu3/p0/j/f$d;

    iget-object v0, v0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 2
    iget-object v0, v0, Lu3/p0/j/f;->b:Lu3/p0/j/f$c;

    .line 3
    iget-object v1, p0, Lu3/p0/j/f$d$a;->e:Lu3/p0/j/o;

    invoke-virtual {v0, v1}, Lu3/p0/j/f$c;->b(Lu3/p0/j/o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 5
    sget-object v1, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    const-string v2, "Http2Connection.Listener failure for "

    .line 6
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lu3/p0/j/f$d$a;->f:Lu3/p0/j/f$d;

    iget-object v3, v3, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 7
    iget-object v3, v3, Lu3/p0/j/f;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lu3/p0/l/h;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 9
    :try_start_1
    iget-object v1, p0, Lu3/p0/j/f$d$a;->e:Lu3/p0/j/o;

    sget-object v2, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    invoke-virtual {v1, v2, v0}, Lu3/p0/j/o;->c(Lu3/p0/j/b;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
