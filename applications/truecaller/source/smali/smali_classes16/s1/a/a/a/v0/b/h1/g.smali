.class public abstract Ls1/a/a/a/v0/b/h1/g;
.super Ls1/a/a/a/v0/b/h1/n;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/w0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/h1/g$c;
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/v0/m/j1;

.field public final f:Z

.field public final g:I

.field public final h:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/m/v0;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ls1/a/a/a/v0/m/l0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ls1/a/a/a/v0/l/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/j1;ZILs1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/u0;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    if-eqz p8, :cond_1

    if-eqz p9, :cond_0

    .line 1
    invoke-direct {p0, p2, p3, p4, p8}, Ls1/a/a/a/v0/b/h1/n;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)V

    .line 2
    iput-object p5, p0, Ls1/a/a/a/v0/b/h1/g;->e:Ls1/a/a/a/v0/m/j1;

    .line 3
    iput-boolean p6, p0, Ls1/a/a/a/v0/b/h1/g;->f:Z

    .line 4
    iput p7, p0, Ls1/a/a/a/v0/b/h1/g;->g:I

    .line 5
    new-instance p2, Ls1/a/a/a/v0/b/h1/g$a;

    invoke-direct {p2, p0, p1, p9}, Ls1/a/a/a/v0/b/h1/g$a;-><init>(Ls1/a/a/a/v0/b/h1/g;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/u0;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/g;->h:Ls1/a/a/a/v0/l/i;

    .line 6
    new-instance p2, Ls1/a/a/a/v0/b/h1/g$b;

    invoke-direct {p2, p0, p4}, Ls1/a/a/a/v0/b/h1/g$b;-><init>(Ls1/a/a/a/v0/b/h1/g;Ls1/a/a/a/v0/f/e;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/g;->i:Ls1/a/a/a/v0/l/i;

    .line 7
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/g;->j:Ls1/a/a/a/v0/l/m;

    return-void

    :cond_0
    const/4 p1, 0x6

    .line 8
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0

    :cond_1
    const/4 p1, 0x5

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0

    :cond_2
    const/4 p1, 0x4

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0

    :cond_3
    const/4 p1, 0x3

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0

    :cond_4
    const/4 p1, 0x2

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0

    :cond_5
    const/4 p1, 0x1

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0

    :cond_6
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    throw v0
.end method

.method public static synthetic X(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_2
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_3
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_9
    const-string v3, "getStorageManager"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_a
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_b
    const-string v3, "getDefaultType"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_c
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_d
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_e
    const-string v3, "getVariance"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    :pswitch_f
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_10
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract N0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end method

.method public a()Ls1/a/a/a/v0/b/h;
    .locals 0

    return-object p0
.end method

.method public a()Ls1/a/a/a/v0/b/k;
    .locals 0

    return-object p0
.end method

.method public a()Ls1/a/a/a/v0/b/w0;
    .locals 0

    return-object p0
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->h(Ls1/a/a/a/v0/b/w0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/g;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/h1/g$c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->k()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/b/h1/g;->g:I

    return v0
.end method

.method public k()Ls1/a/a/a/v0/m/j1;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g;->e:Ls1/a/a/a/v0/m/j1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public l0()Ls1/a/a/a/v0/l/m;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g;->j:Ls1/a/a/a/v0/l/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g;->h:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public t()Ls1/a/a/a/v0/m/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/g;->i:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/g;->X(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public v0()Ls1/a/a/a/v0/b/n;
    .locals 0

    return-object p0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/g;->f:Z

    return v0
.end method

.method public abstract w0(Ls1/a/a/a/v0/m/e0;)V
.end method
