.class public Lw3/c/a/a/a/j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile g:Lw3/c/a/a/a/j/c;


# instance fields
.field public final a:Ljava/lang/StringBuffer;

.field public final b:Ljava/lang/Object;

.field public final c:Lw3/c/a/a/a/j/c;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lw3/c/a/a/a/j/c;->q:Lw3/c/a/a/a/j/c;

    sput-object v0, Lw3/c/a/a/a/j/b;->g:Lw3/c/a/a/a/j/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lw3/c/a/a/a/j/c;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lw3/c/a/a/a/j/c;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lw3/c/a/a/a/j/b;->g:Lw3/c/a/a/a/j/c;

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4
    iput-object p3, p0, Lw3/c/a/a/a/j/b;->a:Ljava/lang/StringBuffer;

    .line 5
    iput-object p2, p0, Lw3/c/a/a/a/j/b;->c:Lw3/c/a/a/a/j/c;

    .line 6
    iput-object p1, p0, Lw3/c/a/a/a/j/b;->b:Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 8
    iget-boolean v0, p2, Lw3/c/a/a/a/j/c;->b:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1}, Lw3/c/a/a/a/j/c;->v(Ljava/lang/Object;)V

    .line 10
    iget-boolean v0, p2, Lw3/c/a/a/a/j/c;->c:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lw3/c/a/a/a/j/c;->u(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :cond_2
    :goto_0
    iget-boolean v0, p2, Lw3/c/a/a/a/j/c;->d:Z

    if-eqz v0, :cond_3

    .line 14
    invoke-static {p1}, Lw3/c/a/a/a/j/c;->v(Ljava/lang/Object;)V

    const/16 v0, 0x40

    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_3
    iget-object v0, p2, Lw3/c/a/a/a/j/c;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget-boolean v0, p2, Lw3/c/a/a/a/j/c;->h:Z

    if-eqz v0, :cond_4

    .line 19
    iget-object p2, p2, Lw3/c/a/a/a/j/c;->i:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lw3/c/a/a/a/j/b;->d:Z

    .line 21
    iput-boolean p2, p0, Lw3/c/a/a/a/j/b;->e:Z

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lw3/c/a/a/a/j/b;->f:Ljava/lang/Class;

    if-eqz p4, :cond_6

    if-eqz p1, :cond_6

    .line 23
    invoke-virtual {p4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified class is not a superclass of the object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    :goto_1
    iput-object p4, p0, Lw3/c/a/a/a/j/b;->f:Ljava/lang/Class;

    .line 26
    iput-boolean p5, p0, Lw3/c/a/a/a/j/b;->e:Z

    .line 27
    iput-boolean p6, p0, Lw3/c/a/a/a/j/b;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object p1, p0, Lw3/c/a/a/a/j/b;->b:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lw3/c/a/a/a/j/b;->c:Lw3/c/a/a/a/j/c;

    .line 4
    iget-object v4, p0, Lw3/c/a/a/a/j/b;->a:Ljava/lang/StringBuffer;

    .line 5
    iget-object v5, v0, Lw3/c/a/a/a/j/c;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_2

    .line 7
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-lez v2, :cond_0

    const-string v7, ","

    .line 8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v6, :cond_1

    .line 9
    invoke-virtual {v0, v4}, Lw3/c/a/a/a/j/c;->q(Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v4, v1, v6, v3}, Lw3/c/a/a/a/j/c;->p(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, v0, Lw3/c/a/a/a/j/c;->k:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    .line 12
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 13
    invoke-static {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 14
    array-length v0, p1

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_8

    aget-object v5, p1, v4

    .line 15
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 18
    iget-boolean v7, p0, Lw3/c/a/a/a/j/b;->e:Z

    if-nez v7, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 20
    iget-boolean v7, p0, Lw3/c/a/a/a/j/b;->d:Z

    if-nez v7, :cond_6

    :goto_3
    move v7, v2

    goto :goto_4

    :cond_6
    move v7, v3

    :goto_4
    if-eqz v7, :cond_7

    .line 21
    :try_start_0
    iget-object v7, p0, Lw3/c/a/a/a/j/b;->b:Ljava/lang/Object;

    .line 22
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    iget-object v7, p0, Lw3/c/a/a/a/j/b;->c:Lw3/c/a/a/a/j/c;

    iget-object v8, p0, Lw3/c/a/a/a/j/b;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v7, v8, v6, v5, v1}, Lw3/c/a/a/a/j/c;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected IllegalAccessException: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lw3/c/a/a/a/j/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/c/a/a/a/j/b;->c:Lw3/c/a/a/a/j/c;

    .line 3
    iget-object v0, v0, Lw3/c/a/a/a/j/c;->l:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lw3/c/a/a/a/j/b;->a(Ljava/lang/Class;)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lw3/c/a/a/a/j/b;->f:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lw3/c/a/a/a/j/b;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lw3/c/a/a/a/j/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lw3/c/a/a/a/j/b;->a:Ljava/lang/StringBuffer;

    .line 12
    iget-object v1, p0, Lw3/c/a/a/a/j/b;->c:Lw3/c/a/a/a/j/c;

    .line 13
    iget-object v1, v1, Lw3/c/a/a/a/j/c;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 15
    :cond_2
    iget-object v1, p0, Lw3/c/a/a/a/j/b;->c:Lw3/c/a/a/a/j/c;

    .line 16
    iget-object v2, p0, Lw3/c/a/a/a/j/b;->a:Ljava/lang/StringBuffer;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 19
    iget-object v4, v1, Lw3/c/a/a/a/j/c;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v3, :cond_5

    if-lez v4, :cond_5

    if-lt v3, v4, :cond_5

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_4

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v6

    .line 20
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v7

    iget-object v8, v1, Lw3/c/a/a/a/j/c;->i:Ljava/lang/String;

    add-int/lit8 v9, v4, -0x1

    sub-int/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_5

    sub-int/2addr v3, v4

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 22
    :cond_5
    iget-object v1, v1, Lw3/c/a/a/a/j/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-static {v0}, Lw3/c/a/a/a/j/c;->x(Ljava/lang/Object;)V

    .line 24
    :goto_3
    iget-object v0, p0, Lw3/c/a/a/a/j/b;->a:Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
