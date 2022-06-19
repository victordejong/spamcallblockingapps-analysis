.class public final Ls1/a/a/a/v0/b/j1/b/w;
.super Ls1/a/a/a/v0/b/j1/b/y;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/n;


# instance fields
.field public final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/y;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/w;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/w;->a:Ljava/lang/reflect/Field;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v0

    return v0
.end method

.method public getType()Ls1/a/a/a/v0/d/a/f0/v;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/w;->a:Ljava/lang/reflect/Field;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/c0;

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/b/j1/b/c0;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 5
    :cond_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    new-instance v1, Ls1/a/a/a/v0/b/j1/b/g0;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/g0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/s;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public j()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/w;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
