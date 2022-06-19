.class public Ls1/a/a/a/v0/h/h$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Ls1/a/a/a/v0/h/p;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/h/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/v0/h/p;

.field public final d:Ls1/a/a/a/v0/h/h$e;

.field public final e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/h/p;Ljava/lang/Object;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/h/h$e;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Ls1/a/a/a/v0/h/p;",
            "Ls1/a/a/a/v0/h/h$e;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    iget-object v0, p4, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/h/y;->m:Ls1/a/a/a/v0/h/y;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$f;->a:Ls1/a/a/a/v0/h/p;

    .line 6
    iput-object p2, p0, Ls1/a/a/a/v0/h/h$f;->b:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Ls1/a/a/a/v0/h/h$f;->c:Ls1/a/a/a/v0/h/p;

    .line 8
    iput-object p4, p0, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 9
    const-class p1, Ls1/a/a/a/v0/h/i$a;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "valueOf"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const/4 p3, 0x0

    .line 10
    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p4, p2, p3

    .line 11
    :try_start_0
    invoke-virtual {p5, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$f;->e:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_0
    move-exception p2

    .line 13
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    add-int/lit8 v0, v0, 0x7

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Generated message class \""

    const-string v1, "\" missing method \""

    invoke-static {p5, v0, p4, v1, p1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\"."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_2
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Ls1/a/a/a/v0/h/h$f;->e:Ljava/lang/reflect/Method;

    :goto_1
    return-void

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/h/y;->a:Ls1/a/a/a/v0/h/z;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/h/z;->i:Ls1/a/a/a/v0/h/z;

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$f;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v2, v3

    .line 6
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 8
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 9
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/h/h$f;->d:Ls1/a/a/a/v0/h/h$e;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/h/h$e;->c:Ls1/a/a/a/v0/h/y;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/h/y;->a:Ls1/a/a/a/v0/h/z;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/h/z;->i:Ls1/a/a/a/v0/h/z;

    if-ne v0, v1, :cond_0

    .line 5
    check-cast p1, Ls1/a/a/a/v0/h/i$a;

    invoke-interface {p1}, Ls1/a/a/a/v0/h/i$a;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
