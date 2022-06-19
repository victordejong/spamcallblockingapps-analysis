.class public final Lu3/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lu3/z;

.field public final b:Lu3/j0;


# direct methods
.method public constructor <init>(Lu3/z;Lu3/j0;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/d0$c;->a:Lu3/z;

    iput-object p2, p0, Lu3/d0$c;->b:Lu3/j0;

    return-void
.end method

.method public static final a(Lu3/z;Lu3/j0;)Lu3/d0$c;
    .locals 3

    const-string v0, "body"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {p0, v0}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const-string v0, "Content-Length"

    .line 2
    invoke-virtual {p0, v0}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    new-instance v0, Lu3/d0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lu3/d0$c;-><init>(Lu3/z;Lu3/j0;Ls1/z/c/f;)V

    return-object v0

    .line 4
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$c;
    .locals 9

    const-string v0, "name"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "body"

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form-data; name="

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Lu3/d0;->l:Lu3/d0$b;

    invoke-virtual {v2, v1, p0}, Lu3/d0$b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "; filename="

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v2, v1, p1}, Lu3/d0$b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "Content-Disposition"

    .line 8
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {p0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x13

    if-ge v4, v5, :cond_4

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7e

    const/16 v7, 0x21

    const/4 v8, 0x1

    if-le v7, v5, :cond_1

    goto :goto_1

    :cond_1
    if-lt v6, v5, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v8

    const/4 p1, 0x2

    aput-object v1, p0, p1

    const-string p1, "Unexpected char %#04x at %d in header name: %s"

    invoke-static {p1, p0}, Lu3/p0/c;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {p0}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v3, [Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    check-cast p0, [Ljava/lang/String;

    const/4 p1, 0x0

    .line 16
    new-instance v0, Lu3/z;

    invoke-direct {v0, p0, p1}, Lu3/z;-><init>([Ljava/lang/String;Ls1/z/c/f;)V

    .line 17
    invoke-static {v0, p2}, Lu3/d0$c;->a(Lu3/z;Lu3/j0;)Lu3/d0$c;

    move-result-object p0

    return-object p0

    .line 18
    :cond_5
    new-instance p0, Ls1/p;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p0
.end method
