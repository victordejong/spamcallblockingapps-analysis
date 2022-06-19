.class public final Le/p/a/y/j/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    return-void
.end method


# virtual methods
.method public a(Lv3/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lv3/i;->f()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Le/p/a/y/j/n$b;->c(III)V

    .line 3
    iget-object v0, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    invoke-virtual {v0, p1}, Lv3/f;->p0(Lv3/i;)Lv3/f;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/p/a/y/j/l;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/p/a/y/j/l;

    iget-object v3, v3, Le/p/a/y/j/l;->a:Lv3/i;

    invoke-virtual {v3}, Lv3/i;->p()Lv3/i;

    move-result-object v3

    .line 3
    sget-object v4, Le/p/a/y/j/n;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xf

    invoke-virtual {p0, v3, v4, v1}, Le/p/a/y/j/n$b;->c(III)V

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/p/a/y/j/l;

    iget-object v3, v3, Le/p/a/y/j/l;->b:Lv3/i;

    invoke-virtual {p0, v3}, Le/p/a/y/j/n$b;->a(Lv3/i;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v4, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    invoke-virtual {v4, v1}, Lv3/f;->B0(I)Lv3/f;

    .line 8
    invoke-virtual {p0, v3}, Le/p/a/y/j/n$b;->a(Lv3/i;)V

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/p/a/y/j/l;

    iget-object v3, v3, Le/p/a/y/j/l;->b:Lv3/i;

    invoke-virtual {p0, v3}, Le/p/a/y/j/n$b;->a(Lv3/i;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ge p1, p2, :cond_0

    .line 1
    iget-object p2, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lv3/f;->B0(I)Lv3/f;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lv3/f;->B0(I)Lv3/f;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lv3/f;->B0(I)Lv3/f;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Le/p/a/y/j/n$b;->a:Lv3/f;

    invoke-virtual {p2, p1}, Lv3/f;->B0(I)Lv3/f;

    return-void
.end method
