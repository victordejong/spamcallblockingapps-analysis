.class public Ls1/a/a/a/v0/b/f1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/c;


# instance fields
.field public final a:Ls1/a/a/a/v0/m/e0;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/b/r0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;Ljava/util/Map;Ls1/a/a/a/v0/b/r0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;",
            "Ls1/a/a/a/v0/b/r0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls1/a/a/a/v0/b/f1/d;->a:Ls1/a/a/a/v0/m/e0;

    .line 3
    iput-object p2, p0, Ls1/a/a/a/v0/b/f1/d;->b:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Ls1/a/a/a/v0/b/f1/d;->c:Ls1/a/a/a/v0/b/r0;

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/b/f1/d;->c(I)V

    throw v0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ls1/a/a/a/v0/b/f1/d;->c(I)V

    throw v0

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/b/f1/d;->c(I)V

    throw v0
.end method

.method public static synthetic c(I)V
    .locals 10

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptorImpl"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p0, v8, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    const-string v9, "annotationType"

    aput-object v9, v5, v7

    goto :goto_2

    :cond_2
    aput-object v6, v5, v7

    goto :goto_2

    :cond_3
    const-string v9, "source"

    aput-object v9, v5, v7

    goto :goto_2

    :cond_4
    const-string v9, "valueArguments"

    aput-object v9, v5, v7

    :goto_2
    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_5

    aput-object v6, v5, v8

    goto :goto_3

    :cond_5
    const-string v6, "getSource"

    aput-object v6, v5, v8

    goto :goto_3

    :cond_6
    const-string v6, "getAllValueArguments"

    aput-object v6, v5, v8

    goto :goto_3

    :cond_7
    const-string v6, "getType"

    aput-object v6, v5, v8

    :goto_3
    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_8

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_8
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/d;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ls1/a/a/a/v0/b/f1/d;->c(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public d()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->M0(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/f/b;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/d;->c:Ls1/a/a/a/v0/b/r0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ls1/a/a/a/v0/b/f1/d;->c(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getType()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/d;->a:Ls1/a/a/a/v0/m/e0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ls1/a/a/a/v0/b/f1/d;->c(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/i/c;->a:Ls1/a/a/a/v0/i/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ls1/a/a/a/v0/i/c;->r(Ls1/a/a/a/v0/b/f1/c;Ls1/a/a/a/v0/b/f1/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
