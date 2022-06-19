.class public final Ls1/a/a/a/v0/i/d$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/i/d;-><init>(Ls1/a/a/a/v0/i/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/i/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/i/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/i/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/i/d$c;->b:Ls1/a/a/a/v0/i/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$c;->b:Ls1/a/a/a/v0/i/d;

    sget-object v1, Ls1/a/a/a/v0/i/e;->b:Ls1/a/a/a/v0/i/e;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "changeOptions"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v2, Ls1/a/a/a/v0/i/j;

    new-instance v3, Ls1/a/a/a/v0/i/j;

    invoke-direct {v3}, Ls1/a/a/a/v0/i/j;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v5, :cond_3

    aget-object v9, v4, v6

    const-string v10, "field"

    .line 7
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ls1/b0/b;

    if-nez v10, :cond_1

    const/4 v8, 0x0

    :cond_1
    check-cast v8, Ls1/b0/b;

    if-eqz v8, :cond_2

    .line 10
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "field.name"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x2

    const-string v13, "is"

    invoke-static {v10, v13, v7, v12}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 11
    new-instance v7, Ls1/z/c/w;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "get"

    invoke-static {v13}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Ls1/f0/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v12, v11}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v8, v0, v7}, Ls1/b0/b;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v7

    .line 13
    new-instance v8, Ls1/a/a/a/v0/i/k;

    invoke-direct {v8, v7, v7, v3}, Ls1/a/a/a/v0/i/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ls1/a/a/a/v0/i/j;)V

    .line 14
    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v1, v3}, Ls1/a/a/a/v0/i/e;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput-boolean v8, v3, Ls1/a/a/a/v0/i/j;->a:Z

    .line 17
    new-instance v0, Ls1/a/a/a/v0/i/d;

    invoke-direct {v0, v3}, Ls1/a/a/a/v0/i/d;-><init>(Ls1/a/a/a/v0/i/j;)V

    return-object v0
.end method
