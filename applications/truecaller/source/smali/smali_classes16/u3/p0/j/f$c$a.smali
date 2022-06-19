.class public final Lu3/p0/j/f$c$a;
.super Lu3/p0/j/f$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/j/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu3/p0/j/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lu3/p0/j/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu3/p0/j/o;->c(Lu3/p0/j/b;Ljava/io/IOException;)V

    return-void
.end method
