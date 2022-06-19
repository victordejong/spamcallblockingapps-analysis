.class public final Lu3/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lv3/i;

.field public b:Lu3/c0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/d0$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UUID.randomUUID().toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "boundary"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object p2, Lv3/i;->e:Lv3/i$a;

    invoke-virtual {p2, p1}, Lv3/i$a;->c(Ljava/lang/String;)Lv3/i;

    move-result-object p1

    iput-object p1, p0, Lu3/d0$a;->a:Lv3/i;

    .line 5
    sget-object p1, Lu3/d0;->g:Lu3/c0;

    iput-object p1, p0, Lu3/d0$a;->b:Lu3/c0;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu3/d0$a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lu3/d0$a;
    .locals 9

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$toRequestBody"

    .line 2
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    array-length v2, p2

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    array-length v0, p2

    int-to-long v3, v0

    int-to-long v5, v1

    int-to-long v7, v2

    invoke-static/range {v3 .. v8}, Lu3/p0/c;->c(JJJ)V

    .line 8
    new-instance v0, Lu3/j0$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p2, v3, v2, v1}, Lu3/j0$a$a;-><init>([BLu3/c0;II)V

    .line 9
    invoke-static {p1, v3, v0}, Lu3/d0$c;->b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$c;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lu3/d0$a;->c(Lu3/d0$c;)Lu3/d0$a;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lu3/d0$c;->b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu3/d0$a;->c(Lu3/d0$c;)Lu3/d0$a;

    return-object p0
.end method

.method public final c(Lu3/d0$c;)Lu3/d0$a;
    .locals 1

    const-string v0, "part"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/d0$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final d()Lu3/d0;
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/d0$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lu3/d0;

    iget-object v1, p0, Lu3/d0$a;->a:Lv3/i;

    iget-object v2, p0, Lu3/d0$a;->b:Lu3/c0;

    iget-object v3, p0, Lu3/d0$a;->c:Ljava/util/List;

    invoke-static {v3}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lu3/d0;-><init>(Lv3/i;Lu3/c0;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lu3/c0;)Lu3/d0$a;
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lu3/c0;->b:Ljava/lang/String;

    const-string v1, "multipart"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lu3/d0$a;->b:Lu3/c0;

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
