.class public final Ls1/a/a/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/i;


# static fields
.field public static final synthetic e:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/k0;

.field public final b:Ls1/a/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/g<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ls1/a/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/v;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/v;->e:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/g;ILs1/a/i$a;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/g<",
            "*>;I",
            "Ls1/a/i$a;",
            "Ls1/z/b/a<",
            "+",
            "Ls1/a/a/a/v0/b/h0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeDescriptor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v;->b:Ls1/a/a/a/g;

    iput p2, p0, Ls1/a/a/a/v;->c:I

    iput-object p3, p0, Ls1/a/a/a/v;->d:Ls1/a/i$a;

    .line 2
    invoke-static {p4}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v;->a:Ls1/a/a/a/k0;

    .line 3
    new-instance p1, Ls1/a/a/a/v$a;

    invoke-direct {p1, p0}, Ls1/a/a/a/v$a;-><init>(Ls1/a/a/a/v;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v;->b:Ls1/a/a/a/g;

    check-cast p1, Ls1/a/a/a/v;

    iget-object v1, p1, Ls1/a/a/a/v;->b:Ls1/a/a/a/g;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ls1/a/a/a/v;->c:I

    iget p1, p1, Ls1/a/a/a/v;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v;->a:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/v;->e:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ls1/a/a/a/v0/b/h0;

    .line 4
    instance-of v1, v0, Ls1/a/a/a/v0/b/b1;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Ls1/a/a/a/v0/b/b1;

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {v0}, Ls1/a/a/a/v0/b/b1;->b()Ls1/a/a/a/v0/b/a;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a;->u0()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 6
    :cond_1
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "valueParameter.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v1, v0, Ls1/a/a/a/v0/f/e;->b:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v;->b:Ls1/a/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Ls1/a/a/a/v;->c:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/o0;->b:Ls1/a/a/a/o0;

    const-string v0, "parameter"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v;->d:Ls1/a/i$a;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "parameter #"

    .line 6
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget v2, p0, Ls1/a/a/a/v;->c:I

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/a/a/a/v;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "extension receiver parameter"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "instance parameter"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " of "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Ls1/a/a/a/v;->b:Ls1/a/a/a/g;

    .line 13
    invoke-virtual {v1}, Ls1/a/a/a/g;->e()Ls1/a/a/a/v0/b/b;

    move-result-object v1

    .line 14
    instance-of v2, v1, Ls1/a/a/a/v0/b/k0;

    if-eqz v2, :cond_3

    check-cast v1, Ls1/a/a/a/v0/b/k0;

    invoke-static {v1}, Ls1/a/a/a/o0;->d(Ls1/a/a/a/v0/b/k0;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_3
    instance-of v2, v1, Ls1/a/a/a/v0/b/v;

    if-eqz v2, :cond_4

    check-cast v1, Ls1/a/a/a/v0/b/v;

    invoke-static {v1}, Ls1/a/a/a/o0;->c(Ls1/a/a/a/v0/b/v;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal callable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
