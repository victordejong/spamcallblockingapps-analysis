.class public Ls1/a/a/a/v0/b/h1/p;
.super Ls1/a/a/a/v0/b/h1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/h1/p$a;
    }
.end annotation


# instance fields
.field public final h:Ls1/a/a/a/v0/m/v0;

.field public final i:Ls1/a/a/a/v0/j/y/i;

.field public final j:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Ls1/a/a/a/v0/b/f1/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/i;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/b/r0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    if-eqz p7, :cond_0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p7

    .line 1
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/b/h1/j;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Z)V

    .line 2
    iput-object p6, p0, Ls1/a/a/a/v0/b/h1/p;->k:Ls1/a/a/a/v0/b/f1/h;

    .line 3
    new-instance p2, Ls1/a/a/a/v0/m/o;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    invoke-static {p3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-direct {p2, p0, p4, p3, p1}, Ls1/a/a/a/v0/m/o;-><init>(Ls1/a/a/a/v0/b/e;Ljava/util/List;Ljava/util/Collection;Ls1/a/a/a/v0/l/m;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/p;->h:Ls1/a/a/a/v0/m/v0;

    .line 4
    new-instance p2, Ls1/a/a/a/v0/b/h1/p$a;

    invoke-direct {p2, p0, p1}, Ls1/a/a/a/v0/b/h1/p$a;-><init>(Ls1/a/a/a/v0/b/h1/p;Ls1/a/a/a/v0/l/m;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/p;->i:Ls1/a/a/a/v0/j/y/i;

    .line 5
    iput-object p5, p0, Ls1/a/a/a/v0/b/h1/p;->j:Ls1/a/a/a/v0/l/i;

    return-void

    :cond_0
    const/16 p1, 0xc

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_1
    const/16 p1, 0xb

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_2
    const/16 p1, 0xa

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_3
    const/16 p1, 0x9

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_4
    const/16 p1, 0x8

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_5
    const/4 p1, 0x6

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0
.end method

.method public static N0(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/i;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/b/h1/p;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;>;",
            "Ls1/a/a/a/v0/b/f1/h;",
            "Ls1/a/a/a/v0/b/r0;",
            ")",
            "Ls1/a/a/a/v0/b/h1/p;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p5, :cond_0

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    .line 2
    new-instance v0, Ls1/a/a/a/v0/b/h1/p;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Ls1/a/a/a/v0/b/h1/p;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/l/i;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/r0;)V

    return-object v0

    :cond_0
    const/4 p0, 0x5

    .line 3
    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_2
    const/4 p0, 0x1

    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0
.end method

.method public static synthetic v0(I)V
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

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_3
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "kotlinTypeRefiner"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    const-string v5, "supertype"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "containingClass"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "enumMemberNames"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "enumClass"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "getUnsubstitutedMemberScope"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_c
    const-string v3, "getSealedSubclasses"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "getDeclaredTypeParameters"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    const-string v3, "getAnnotations"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getVisibility"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getModality"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    const-string v3, "getKind"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getConstructors"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_14
    const-string v3, "getStaticScope"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_15
    aput-object v4, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "create"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_16
    aput-object v4, v2, v1

    goto :goto_4

    :pswitch_17
    const-string v3, "<init>"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xe
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xe
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public A0()Ls1/a/a/a/v0/b/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/b/h1/p;->i:Ls1/a/a/a/v0/j/y/i;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xe

    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0

    :cond_1
    const/16 p1, 0xd

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    throw v0
.end method

.method public c0()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x17

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p;->k:Ls1/a/a/a/v0/b/f1/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p;->h:Ls1/a/a/a/v0/m/v0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "enum entry "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/b;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x16

    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p;->v0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Ls1/a/a/a/v0/b/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/j/y/i$b;->b:Ls1/a/a/a/v0/j/y/i$b;

    return-object v0
.end method
