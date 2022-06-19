.class public abstract Le/k/a/c/d0/z/b0;
.super Le/k/a/c/j;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/j<",
        "TT;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:I


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Le/k/a/c/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/k/a/c/h;->d:Le/k/a/c/h;

    .line 2
    iget v0, v0, Le/k/a/c/h;->b:I

    .line 3
    sget-object v1, Le/k/a/c/h;->e:Le/k/a/c/h;

    .line 4
    iget v1, v1, Le/k/a/c/h;->b:I

    or-int/2addr v0, v1

    .line 5
    sput v0, Le/k/a/c/d0/z/b0;->c:I

    .line 6
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    .line 7
    iget v0, v0, Le/k/a/c/h;->b:I

    .line 8
    sget-object v0, Le/k/a/c/h;->w:Le/k/a/c/h;

    .line 9
    iget v0, v0, Le/k/a/c/h;->b:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/z/b0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/b0<",
            "*>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 10
    iget-object v0, p1, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    iput-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 11
    iget-object p1, p1, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    iput-object p1, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    if-nez p1, :cond_0

    .line 5
    const-class v0, Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 7
    :goto_0
    iput-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 8
    iput-object p1, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    return-void
.end method

.method public static final G(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final M(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->D(Le/k/a/c/g;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object v4, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    if-eq v0, v4, :cond_7

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    .line 5
    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v4, v5, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v1, :cond_7

    .line 9
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-array v1, v6, [Ljava/lang/Object;

    .line 10
    iget-object v4, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 11
    invoke-static {v4}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object v0, v1, v8

    const-string v0, "DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS"

    aput-object v0, v1, v7

    const-string v0, "Cannot deserialize instance of %s out of %s token: nested Arrays not allowed with %s"

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 13
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    :goto_0
    move-object v5, v0

    .line 15
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v6

    new-array v9, v2, [Ljava/lang/Object;

    move-object v4, p2

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Le/k/a/c/g;->I(Le/k/a/c/i;Le/k/a/b/m;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 16
    :cond_5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p1

    if-ne p1, v5, :cond_6

    return-object v0

    .line 18
    :cond_6
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->k0(Le/k/a/c/g;)V

    throw v3

    .line 19
    :cond_7
    :goto_1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_8

    goto :goto_2

    .line 20
    :cond_8
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    :goto_2
    move-object v5, v0

    .line 21
    sget-object v6, Le/k/a/b/m;->l:Le/k/a/b/m;

    const/4 v8, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    move-object v4, p2

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Le/k/a/c/g;->I(Le/k/a/c/i;Le/k/a/b/m;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3
.end method

.method public B(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Le/k/a/c/c0/b;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v4, ""

    const-string v5, "empty String (\"\")"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public C(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v1, Le/k/a/c/c0/b;->b:Le/k/a/c/c0/b;

    sget-object v2, Le/k/a/c/c0/d;->f:Le/k/a/c/c0/d;

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->i0()Le/k/a/c/d0/w;

    move-result-object v5

    .line 2
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v4

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->F1()Ljava/lang/String;

    move-result-object p1

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {v5}, Le/k/a/c/d0/w;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v5, p2, p1}, Le/k/a/c/d0/w;->t(Le/k/a/c/g;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object p1

    sget-object v0, Le/k/a/c/c0/d;->j:Le/k/a/c/c0/d;

    invoke-virtual {p2, p1, v4, v0}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p2, p1, v4}, Le/k/a/c/d0/z/b0;->B(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-static {p1}, Le/k/a/c/d0/z/b0;->G(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object p1

    sget-object v0, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    invoke-virtual {p2, p1, v4, v0}, Le/k/a/c/g;->r(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/b;)Le/k/a/c/c0/b;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p2, p1, v4}, Le/k/a/c/d0/z/b0;->B(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v5}, Le/k/a/c/d0/w;->e()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 14
    const-class v7, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v7, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v7

    if-ne v7, v1, :cond_3

    .line 15
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->U(Le/k/a/c/g;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p2, p1}, Le/k/a/c/d0/w;->q(Le/k/a/c/g;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    invoke-virtual {v5}, Le/k/a/c/d0/w;->f()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    const-class v7, Ljava/lang/Long;

    invoke-virtual {p2, v0, v7, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v0

    if-ne v0, v1, :cond_4

    .line 18
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->Y(Le/k/a/c/g;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v5, p2, v0, v1}, Le/k/a/c/d0/w;->r(Le/k/a/c/g;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :cond_4
    invoke-virtual {v5}, Le/k/a/c/d0/w;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    sget-object v0, Le/k/a/c/m0/f;->h:Le/k/a/c/m0/f;

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v7, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v0

    if-ne v0, v1, :cond_6

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {v5, p2, v6}, Le/k/a/c/d0/w;->o(Le/k/a/c/g;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "false"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {v5, p2, v3}, Le/k/a/c/d0/w;->o(Le/k/a/c/g;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_6
    iget-object v0, p2, Le/k/a/c/g;->g:Le/k/a/b/j;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v3

    const-string v7, "no String-argument constructor/factory method to deserialize from String value (\'%s\')"

    move-object v3, p2

    move-object v6, v0

    .line 27
    invoke-virtual/range {v3 .. v8}, Le/k/a/c/g;->E(Ljava/lang/Class;Le/k/a/c/d0/w;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public D(Le/k/a/c/g;)Le/k/a/c/c0/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object v0

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Le/k/a/c/c0/d;->h:Le/k/a/c/c0/d;

    invoke-virtual {p1, v0, v1, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object p1

    return-object p1
.end method

.method public final E(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/a/j0;Le/k/a/c/j;)Le/k/a/c/d0/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            "Le/k/a/a/j0;",
            "Le/k/a/c/j<",
            "*>;)",
            "Le/k/a/c/d0/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/a/j0;->c:Le/k/a/a/j0;

    if-ne p3, v0, :cond_1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p4}, Le/k/a/c/j;->m()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p1

    invoke-static {p1}, Le/k/a/c/d0/y/u;->a(Le/k/a/c/i;)Le/k/a/c/d0/y/u;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p2}, Le/k/a/c/d;->getType()Le/k/a/c/i;

    move-result-object p1

    .line 4
    new-instance p3, Le/k/a/c/d0/y/u;

    invoke-interface {p2}, Le/k/a/c/d;->d()Le/k/a/c/v;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Le/k/a/c/d0/y/u;-><init>(Le/k/a/c/v;Le/k/a/c/i;)V

    return-object p3

    .line 5
    :cond_1
    sget-object v0, Le/k/a/a/j0;->d:Le/k/a/a/j0;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_8

    if-nez p4, :cond_2

    return-object v1

    .line 6
    :cond_2
    instance-of p3, p4, Le/k/a/c/d0/d;

    if-eqz p3, :cond_4

    .line 7
    move-object p3, p4

    check-cast p3, Le/k/a/c/d0/d;

    .line 8
    iget-object p3, p3, Le/k/a/c/d0/d;->f:Le/k/a/c/d0/w;

    .line 9
    invoke-virtual {p3}, Le/k/a/c/d0/w;->j()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p2}, Le/k/a/c/d;->getType()Le/k/a/c/i;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const-string p4, "Cannot create empty instance of %s, no default Creator"

    .line 11
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 12
    invoke-virtual {p1, p2, p3}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p4}, Le/k/a/c/j;->i()Le/k/a/c/n0/a;

    move-result-object p2

    .line 14
    sget-object p3, Le/k/a/c/n0/a;->a:Le/k/a/c/n0/a;

    if-ne p2, p3, :cond_5

    .line 15
    sget-object p1, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    sget-object p1, Le/k/a/c/d0/y/t;->c:Le/k/a/c/d0/y/t;

    return-object p1

    .line 16
    :cond_5
    sget-object p3, Le/k/a/c/n0/a;->b:Le/k/a/c/n0/a;

    if-ne p2, p3, :cond_7

    .line 17
    invoke-virtual {p4, p1}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 18
    sget-object p1, Le/k/a/c/d0/y/t;->c:Le/k/a/c/d0/y/t;

    goto :goto_1

    .line 19
    :cond_6
    new-instance p2, Le/k/a/c/d0/y/t;

    invoke-direct {p2, p1}, Le/k/a/c/d0/y/t;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_1
    return-object p1

    .line 20
    :cond_7
    new-instance p1, Le/k/a/c/d0/y/s;

    invoke-direct {p1, p4}, Le/k/a/c/d0/y/s;-><init>(Le/k/a/c/j;)V

    return-object p1

    .line 21
    :cond_8
    sget-object p1, Le/k/a/a/j0;->b:Le/k/a/a/j0;

    if-ne p3, p1, :cond_9

    .line 22
    sget-object p1, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    sget-object p1, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    return-object p1

    :cond_9
    return-object v1
.end method

.method public F(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "null"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public H(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const-string v0, "false"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x46

    if-ne v1, v2, :cond_2

    const-string v1, "FALSE"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "False"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final I(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "NaN"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "-Infinity"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final K(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Infinity"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public L(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_0

    const-string v0, "true"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v2, 0x54

    if-ne v1, v2, :cond_2

    const-string v1, "TRUE"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "True"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final N(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v4, 0x3

    if-eq v2, v4, :cond_7

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    const/4 v4, 0x7

    if-eq v2, v4, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_0
    return-object v3

    :pswitch_1
    return-object v1

    :pswitch_2
    return-object v0

    :goto_0
    throw v3

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/b0;->x(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v2, Le/k/a/c/m0/f;->h:Le/k/a/c/m0/f;

    invoke-virtual {p0, p2, p1, v2, p3}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    .line 6
    sget-object v4, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v2, v4, :cond_2

    return-object v3

    .line 7
    :cond_2
    sget-object v4, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v2, v4, :cond_3

    return-object v1

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 10
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->L(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne v2, v0, :cond_5

    .line 11
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 12
    :cond_5
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->w(Le/k/a/c/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v3

    :cond_6
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "only \"true\" or \"false\" recognized"

    .line 13
    invoke-virtual {p2, p3, p1, v1, v0}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 14
    :cond_7
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 15
    :cond_8
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O(Le/k/a/b/j;Le/k/a/c/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_9

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    :pswitch_1
    return v5

    :pswitch_2
    return v3

    .line 3
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->x(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v1, Le/k/a/c/m0/f;->h:Le/k/a/c/m0/f;

    invoke-virtual {p0, p2, p1, v1, v0}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v1

    .line 6
    sget-object v4, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v1, v4, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return v5

    .line 8
    :cond_2
    sget-object v4, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v1, v4, :cond_3

    return v5

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    .line 11
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->L(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v3

    :cond_4
    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    .line 12
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->H(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v5

    .line 13
    :cond_5
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return v5

    :cond_6
    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "only \"true\"/\"True\"/\"TRUE\" or \"false\"/\"False\"/\"FALSE\" recognized"

    .line 15
    invoke-virtual {p2, v0, p1, v3, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 16
    :cond_7
    sget-object v1, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 18
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->O(Le/k/a/b/j;Le/k/a/c/g;)Z

    move-result v0

    .line 19
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return v0

    .line 20
    :cond_8
    :goto_0
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 21
    :cond_9
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final P(Le/k/a/b/j;Le/k/a/c/g;)B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_b

    const/16 v5, 0xb

    const/4 v6, 0x0

    if-eq v2, v5, :cond_a

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    .line 2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p2

    if-ne p2, v1, :cond_0

    return v6

    :cond_0
    if-ne p2, v0, :cond_1

    return v6

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->J()B

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->J()B

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v2, v5}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return v6

    :cond_4
    if-ne v2, v0, :cond_5

    return v6

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return v6

    .line 10
    :cond_6
    :try_start_0
    invoke-static {p1}, Le/k/a/b/w/f;->f(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_8

    const/16 v1, 0xff

    if-le v0, v1, :cond_7

    goto :goto_0

    :cond_7
    move v4, v6

    :cond_8
    :goto_0
    if-nez v4, :cond_9

    int-to-byte p1, v0

    return p1

    .line 11
    :cond_9
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "overflow, value cannot be represented as 8-bit value"

    invoke-virtual {p2, v0, p1, v2, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 12
    :catch_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "not a valid `byte` value"

    invoke-virtual {p2, v0, p1, v2, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 13
    :cond_a
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return v6

    .line 14
    :cond_b
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 16
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->P(Le/k/a/b/j;Le/k/a/c/g;)B

    move-result v0

    .line 17
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return v0

    .line 18
    :cond_c
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3

    .line 19
    :cond_d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 20
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3
.end method

.method public Q(Le/k/a/b/j;Le/k/a/c/g;)Ljava/util/Date;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    const/16 v5, 0xb

    if-eq v0, v5, :cond_5

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1
    :try_end_0
    .catch Le/k/a/b/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Le/k/a/b/v/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 4
    :catch_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "not a valid 64-bit `long` for creating `java.util.Date`"

    invoke-virtual {p2, v0, p1, v3, v1}, Le/k/a/c/g;->M(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object v0

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, p2, p1, v0, v5}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    move-object v2, v0

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p2, p1}, Le/k/a/c/g;->V(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v2

    :catch_1
    move-exception v0

    .line 14
    iget-object v4, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "not a valid representation (error: %s)"

    .line 16
    invoke-virtual {p2, v4, p1, v0, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 17
    :cond_5
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 18
    :cond_6
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->D(Le/k/a/c/g;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 19
    sget-object v5, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v5}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 20
    sget-object v6, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    if-eq v0, v6, :cond_a

    .line 21
    :cond_7
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v6

    .line 22
    sget-object v7, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v6, v7, :cond_9

    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    if-ne v0, v4, :cond_a

    .line 24
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    goto :goto_1

    .line 25
    :cond_8
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_a

    .line 26
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->Q(Le/k/a/b/j;Le/k/a/c/g;)Ljava/util/Date;

    move-result-object v0

    .line 27
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    move-object p1, v0

    :goto_1
    return-object p1

    .line 28
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    sget-object v6, Le/k/a/b/m;->l:Le/k/a/b/m;

    const/4 v8, 0x0

    new-array v9, v3, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v5

    move-object v4, p2

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Le/k/a/c/g;->I(Le/k/a/c/i;Le/k/a/b/m;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 30
    :cond_b
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 31
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method

.method public final R(Le/k/a/b/j;Le/k/a/c/g;)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->s(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_2
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 7
    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_3

    return-wide v3

    .line 8
    :cond_3
    sget-object v1, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_4

    return-wide v3

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return-wide v3

    :cond_5
    :try_start_0
    const-string v0, "2.2250738585072012e-308"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/high16 p1, 0x10000000000000L

    goto :goto_0

    .line 13
    :cond_6
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    .line 14
    :catch_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "not a valid `double` value (as String to convert)"

    invoke-virtual {p2, v0, p1, v3, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 15
    :cond_7
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return-wide v3

    .line 16
    :cond_8
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 18
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->R(Le/k/a/b/j;Le/k/a/c/g;)D

    move-result-wide v0

    .line 19
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return-wide v0

    .line 20
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 21
    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 22
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method

.method public final S(Le/k/a/b/j;Le/k/a/c/g;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->t0()F

    move-result p1

    return p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 6
    :cond_2
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v0, v1}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 7
    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_3

    return v3

    .line 8
    :cond_3
    sget-object v1, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return v3

    .line 12
    :cond_5
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 13
    :catch_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "not a valid `float` value"

    invoke-virtual {p2, v0, p1, v3, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 14
    :cond_6
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return v3

    .line 15
    :cond_7
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 17
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->S(Le/k/a/b/j;Le/k/a/c/g;)F

    move-result v0

    .line 18
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return v0

    .line 19
    :cond_8
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 20
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 21
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method

.method public final T(Le/k/a/b/j;Le/k/a/c/g;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/16 v3, 0xb

    const/4 v5, 0x0

    if-eq v2, v3, :cond_7

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p2

    if-ne p2, v1, :cond_0

    return v5

    :cond_0
    if-ne p2, v0, :cond_1

    return v5

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->s1()I

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v2, v3}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return v5

    :cond_4
    if-ne v2, v0, :cond_5

    return v5

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return v5

    .line 10
    :cond_6
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->U(Le/k/a/c/g;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 11
    :cond_7
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return v5

    .line 12
    :cond_8
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 14
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->T(Le/k/a/b/j;Le/k/a/c/g;)I

    move-result v0

    .line 15
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return v0

    .line 16
    :cond_9
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v4

    .line 17
    :cond_a
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v4
.end method

.method public final U(Le/k/a/c/g;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_3

    .line 2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-ltz v4, :cond_1

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    if-nez v4, :cond_2

    long-to-int p1, v2

    return p1

    .line 3
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "Overflow: numeric value (%s) out of range of int (%d -%d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const/high16 v6, -0x80000000

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5
    invoke-virtual {p1, v2, p2, v3, v4}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    .line 6
    :cond_3
    :try_start_1
    invoke-static {p2}, Le/k/a/b/w/f;->f(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 7
    :catch_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "not a valid `int` value"

    invoke-virtual {p1, v2, p2, v3, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public final V(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/16 v4, 0xb

    if-eq v2, v4, :cond_9

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    const/4 v4, 0x7

    if-eq v2, v4, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 2
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p3

    .line 4
    :goto_0
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p3

    if-ne p3, v1, :cond_2

    .line 6
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_2
    if-ne p3, v0, :cond_3

    .line 7
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->s1()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object p3

    .line 12
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 13
    invoke-virtual {p0, p2, p1, p3, v2}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p3

    if-ne p3, v1, :cond_6

    .line 14
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_6
    if-ne p3, v0, :cond_7

    .line 15
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 16
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->w(Le/k/a/c/g;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 18
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 19
    :cond_8
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->U(Le/k/a/c/g;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 21
    :cond_a
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 22
    :cond_b
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3
.end method

.method public final W(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Long;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/16 v4, 0xb

    if-eq v2, v4, :cond_9

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    const/4 v4, 0x7

    if-eq v2, v4, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 2
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p3

    .line 4
    :goto_0
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p3

    if-ne p3, v1, :cond_2

    .line 6
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_2
    if-ne p3, v0, :cond_3

    .line 7
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->B1()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 10
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Le/k/a/c/j;->o()Le/k/a/c/m0/f;

    move-result-object p3

    .line 12
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 13
    invoke-virtual {p0, p2, p1, p3, v2}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p3

    if-ne p3, v1, :cond_6

    .line 14
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_6
    if-ne p3, v0, :cond_7

    .line 15
    invoke-virtual {p0, p2}, Le/k/a/c/j;->j(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 16
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->w(Le/k/a/c/g;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 18
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 19
    :cond_8
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->Y(Le/k/a/c/g;Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    invoke-virtual {p0, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 21
    :cond_a
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 22
    :cond_b
    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3
.end method

.method public final X(Le/k/a/b/j;Le/k/a/c/g;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    const/16 v3, 0xb

    const-wide/16 v5, 0x0

    if-eq v2, v3, :cond_7

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 2
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p2

    if-ne p2, v1, :cond_0

    return-wide v5

    :cond_0
    if-ne p2, v0, :cond_1

    return-wide v5

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->B1()J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v2, v3}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-wide v5

    :cond_4
    if-ne v2, v0, :cond_5

    return-wide v5

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return-wide v5

    .line 10
    :cond_6
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->Y(Le/k/a/c/g;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    .line 11
    :cond_7
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return-wide v5

    .line 12
    :cond_8
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 14
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->X(Le/k/a/b/j;Le/k/a/c/g;)J

    move-result-wide v0

    .line 15
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return-wide v0

    .line 16
    :cond_9
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v4

    .line 17
    :cond_a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 18
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v4
.end method

.method public final Y(Le/k/a/c/g;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p2}, Le/k/a/b/w/f;->h(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 2
    :catch_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid `long` value"

    invoke-virtual {p1, v0, p2, v2, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final Z(Le/k/a/b/j;Le/k/a/c/g;)S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    const/4 v5, 0x3

    if-eq v2, v5, :cond_b

    const/16 v5, 0xb

    const/4 v6, 0x0

    if-eq v2, v5, :cond_a

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_c

    .line 2
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p2

    if-ne p2, v1, :cond_0

    return v6

    :cond_0
    if-ne p2, v0, :cond_1

    return v6

    .line 3
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->Q0()S

    move-result p1

    return p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->Q0()S

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, p2, p1, v2, v5}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return v6

    :cond_4
    if-ne v2, v0, :cond_5

    return v6

    .line 7
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->e0(Le/k/a/c/g;Ljava/lang/String;)V

    return v6

    .line 10
    :cond_6
    :try_start_0
    invoke-static {p1}, Le/k/a/b/w/f;->f(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_8

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_7

    goto :goto_0

    :cond_7
    move v4, v6

    :cond_8
    :goto_0
    if-nez v4, :cond_9

    int-to-short p1, v0

    return p1

    .line 11
    :cond_9
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "overflow, value cannot be represented as 16-bit value"

    invoke-virtual {p2, v0, p1, v2, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 12
    :catch_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "not a valid `short` value"

    invoke-virtual {p2, v0, p1, v2, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 13
    :cond_a
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    return v6

    .line 14
    :cond_b
    sget-object v0, Le/k/a/c/h;->t:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 15
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 16
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->Z(Le/k/a/b/j;Le/k/a/c/g;)S

    move-result v0

    .line 17
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->c0(Le/k/a/b/j;Le/k/a/c/g;)V

    return v0

    .line 18
    :cond_c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3

    .line 19
    :cond_d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 20
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3
.end method

.method public final a0(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Le/k/a/b/m;->o:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p2}, Le/k/a/c/g;->A()Le/k/a/b/a;

    move-result-object p2

    check-cast p1, [B

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Le/k/a/b/a;->g([BZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->F1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    const-class v0, Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 11
    :cond_5
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 12
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1
.end method

.method public b0(Le/k/a/c/g;ZLjava/lang/Enum;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Z",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "enable"

    goto :goto_0

    :cond_0
    const-string p2, "disable"

    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    const/4 p4, 0x1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->z()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p4

    const/4 p4, 0x2

    aput-object p2, v0, p4

    const/4 p2, 0x3

    invoke-virtual {p3}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, p2

    const/4 p2, 0x4

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Cannot coerce %s to Null value as %s (%s `%s.%s` to allow)"

    .line 2
    invoke-virtual {p1, p0, p2, v0}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public c0(Le/k/a/b/j;Le/k/a/c/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p1

    .line 2
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->k0(Le/k/a/c/g;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d0(Le/k/a/c/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/h;->h:Le/k/a/c/h;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Cannot coerce `null` to %s (disable `DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES` to allow)"

    .line 3
    invoke-virtual {p1, p0, v1, v0}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public final e0(Le/k/a/c/g;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/p;->D:Le/k/a/c/p;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/k/a/c/h;->h:Le/k/a/c/h;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p2, "empty String (\"\")"

    goto :goto_1

    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const-string p2, "String \"%s\""

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :goto_1
    invoke-virtual {p0, p1, v1, v0, p2}, Le/k/a/c/d0/z/b0;->b0(Le/k/a/c/g;ZLjava/lang/Enum;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/d0/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j<",
            "*>;)",
            "Le/k/a/c/d0/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Le/k/a/c/d;->getMetadata()Le/k/a/c/u;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/k/a/c/u;->g:Le/k/a/a/j0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Le/k/a/a/j0;->b:Le/k/a/a/j0;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object p1, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    sget-object p1, Le/k/a/c/d0/y/t;->b:Le/k/a/c/d0/y/t;

    return-object p1

    .line 5
    :cond_1
    sget-object v1, Le/k/a/a/j0;->c:Le/k/a/a/j0;

    if-ne v0, v1, :cond_4

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {p3}, Le/k/a/c/j;->m()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Le/k/a/c/i;->z()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object p1

    .line 9
    :cond_2
    invoke-static {p1}, Le/k/a/c/d0/y/u;->a(Le/k/a/c/i;)Le/k/a/c/d0/y/u;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-interface {p2}, Le/k/a/c/d;->getType()Le/k/a/c/i;

    move-result-object p1

    invoke-virtual {p1}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object p1

    .line 11
    new-instance p3, Le/k/a/c/d0/y/u;

    invoke-interface {p2}, Le/k/a/c/d;->d()Le/k/a/c/v;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Le/k/a/c/d0/y/u;-><init>(Le/k/a/c/v;Le/k/a/c/i;)V

    return-object p3

    .line 12
    :cond_4
    invoke-virtual {p0, p1, p2, v0, p3}, Le/k/a/c/d0/z/b0;->E(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/a/j0;Le/k/a/c/j;)Le/k/a/c/d0/r;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object p3
.end method

.method public g0(Le/k/a/c/g;Le/k/a/c/d;Le/k/a/c/j;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            "Le/k/a/c/j<",
            "*>;)",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g;->y()Le/k/a/c/b;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Le/k/a/c/d0/z/b0;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Le/k/a/c/b;->h(Le/k/a/c/g0/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Le/k/a/c/e;->g(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n0/i;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Le/k/a/c/g;->i()Le/k/a/c/m0/o;

    move-result-object v1

    invoke-interface {v0, v1}, Le/k/a/c/n0/i;->a(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object v1

    if-nez p3, :cond_0

    .line 7
    invoke-virtual {p1, v1, p2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p3

    .line 8
    :cond_0
    new-instance p1, Le/k/a/c/d0/z/a0;

    invoke-direct {p1, v0, v1, p3}, Le/k/a/c/d0/z/a0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/j;)V

    return-object p1

    :cond_1
    return-object p3
.end method

.method public h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 2
    invoke-interface {p2, p1, p3}, Le/k/a/c/d;->e(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    invoke-virtual {p1, p3}, Le/k/a/c/c0/l;->h(Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    return-object p1
.end method

.method public i0()Le/k/a/c/d0/w;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j0()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    return-object v0
.end method

.method public k0(Le/k/a/c/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->m:Le/k/a/b/m;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Attempted to unwrap \'%s\' value from an array (with `DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS`) but it contains more than one value"

    .line 3
    invoke-virtual {p1, p0, v0, v2, v1}, Le/k/a/c/g;->f0(Le/k/a/c/j;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public l0(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object p3

    .line 2
    :cond_0
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 3
    iget-object v0, v0, Le/k/a/c/f;->l:Le/k/a/c/n0/n;

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v0, Le/k/a/c/n0/n;->a:Ljava/lang/Object;

    .line 5
    check-cast v1, Le/k/a/c/d0/m;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Le/k/a/c/n0/n;->b:Le/k/a/c/n0/n;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Le/k/a/c/h;->g:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p1}, Le/k/a/b/j;->w2()Le/k/a/b/j;

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/j;->k()Ljava/util/Collection;

    move-result-object v8

    .line 10
    iget-object v3, p2, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 11
    sget p1, Le/k/a/c/e0/h;->f:I

    .line 12
    instance-of p1, p3, Ljava/lang/Class;

    if-eqz p1, :cond_3

    .line 13
    move-object p1, p3

    check-cast p1, Ljava/lang/Class;

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_1
    move-object v6, p1

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    .line 15
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Unrecognized field \"%s\" (class %s), not marked as ignorable"

    .line 16
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 17
    new-instance p1, Le/k/a/c/e0/h;

    .line 18
    invoke-virtual {v3}, Le/k/a/b/j;->P()Le/k/a/b/h;

    move-result-object v5

    move-object v2, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Le/k/a/c/e0/h;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/h;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V

    .line 19
    invoke-virtual {p1, p3, p4}, Le/k/a/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public m()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/c0/b;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Le/k/a/c/c0/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    if-eq p2, v0, :cond_0

    return-object p2

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p5, p2, v0

    const/4 p5, 0x1

    .line 2
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->z()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p5

    const-string p5, "Cannot coerce %s to %s (but could if coercion was enabled using `CoercionConfig`)"

    .line 3
    invoke-virtual {p1, p5, p2}, Le/k/a/c/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p1, p1, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 5
    new-instance p5, Le/k/a/c/e0/c;

    invoke-direct {p5, p1, p2, p4, p3}, Le/k/a/c/e0/c;-><init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    throw p5
.end method

.method public s(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->I(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->K(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->J(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x49

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->I(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7fc00000    # Float.NaN

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->K(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->J(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/high16 p1, -0x800000    # Float.NEGATIVE_INFINITY

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/c0/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    sget-object v1, Le/k/a/c/c0/d;->d:Le/k/a/c/c0/d;

    invoke-virtual {p2, v0, p3, v1}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object v6

    const-string v1, "Floating-point value ("

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, p3

    .line 5
    invoke-virtual/range {v2 .. v7}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    :cond_0
    return-object v0
.end method

.method public v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Ljava/lang/String;",
            "Le/k/a/c/m0/f;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/c0/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v0, Le/k/a/c/c0/d;->j:Le/k/a/c/c0/d;

    invoke-virtual {p1, p3, p4, v0}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object p3

    const-string v6, "empty String (\"\")"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    .line 3
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    return-object p3

    .line 4
    :cond_0
    invoke-static {p2}, Le/k/a/c/d0/z/b0;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, p3, p4, v0}, Le/k/a/c/g;->r(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/b;)Le/k/a/c/c0/b;

    move-result-object p3

    const-string v7, "blank String (all whitespace)"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    .line 6
    invoke-virtual/range {v2 .. v7}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    return-object p3

    .line 7
    :cond_1
    sget-object v1, Le/k/a/b/q;->e:Le/k/a/b/q;

    invoke-virtual {p1, v1}, Le/k/a/c/g;->Q(Le/k/a/b/q;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    sget-object p1, Le/k/a/c/c0/b;->b:Le/k/a/c/c0/b;

    return-object p1

    .line 9
    :cond_2
    sget-object v1, Le/k/a/c/c0/d;->f:Le/k/a/c/c0/d;

    invoke-virtual {p1, p3, p4, v1}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object p3

    if-eq p3, v0, :cond_3

    return-object p3

    :cond_3
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->z()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const-string p2, "Cannot coerce String value (\"%s\") to %s (but might if coercion using `CoercionConfig` was enabled)"

    .line 11
    invoke-virtual {p1, p0, p2, p3}, Le/k/a/c/g;->a0(Le/k/a/c/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public w(Le/k/a/c/g;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    sget-object p2, Le/k/a/c/p;->D:Le/k/a/c/p;

    invoke-virtual {p1, p2}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "String \"null\""

    .line 3
    invoke-virtual {p0, p1, v1, p2, v0}, Le/k/a/c/d0/z/b0;->b0(Le/k/a/c/g;ZLjava/lang/Enum;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public x(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Le/k/a/c/m0/f;->h:Le/k/a/c/m0/f;

    sget-object v2, Le/k/a/c/c0/d;->c:Le/k/a/c/c0/d;

    invoke-virtual {p2, v1, p3, v2}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v5

    .line 2
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x2

    if-eq v1, p2, :cond_3

    const/4 p2, 0x3

    if-eq v1, p2, :cond_2

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->D0()Le/k/a/b/j$b;

    move-result-object p2

    sget-object p3, Le/k/a/b/j$b;->a:Le/k/a/b/j$b;

    const/4 v0, 0x1

    if-ne p2, p3, :cond_1

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object v7

    const-string v1, "Integer value ("

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    .line 8
    invoke-virtual/range {v3 .. v8}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    return-object v0
.end method

.method public y(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p2, p2, Le/k/a/c/g;->d:I

    .line 2
    sget-object v0, Le/k/a/c/h;->d:Le/k/a/c/h;

    invoke-virtual {v0, p2}, Le/k/a/c/h;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->E()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Le/k/a/c/h;->e:Le/k/a/c/h;

    invoke-virtual {v0, p2}, Le/k/a/c/h;->d(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public z()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->j0()Le/k/a/c/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Le/k/a/c/i;->G()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3
    invoke-virtual {v0}, Le/k/a/c/i;->z()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Le/k/a/b/z/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 4
    :cond_1
    invoke-static {v0}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    const-class v3, Ljava/util/Map;

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    .line 8
    :cond_4
    invoke-static {v0}, Le/k/a/c/n0/g;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_5

    const-string v1, "element of "

    .line 9
    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v1, " value"

    .line 10
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
