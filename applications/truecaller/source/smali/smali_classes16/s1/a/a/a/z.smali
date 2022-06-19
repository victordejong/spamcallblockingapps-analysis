.class public abstract Ls1/a/a/a/z;
.super Ls1/a/a/a/g;
.source "SourceFile"

# interfaces
.implements Ls1/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/z$a;,
        Ls1/a/a/a/z$b;,
        Ls1/a/a/a/z$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/g<",
        "TV;>;",
        "Ls1/a/l<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/Object;


# instance fields
.field public final b:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/a/a/a/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/k0<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/a/a/a/n;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls1/a/a/a/z;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/g;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    iput-object p2, p0, Ls1/a/a/a/z;->e:Ljava/lang/String;

    iput-object p3, p0, Ls1/a/a/a/z;->f:Ljava/lang/String;

    iput-object p5, p0, Ls1/a/a/a/z;->g:Ljava/lang/Object;

    .line 2
    new-instance p1, Ls1/a/a/a/z$e;

    invoke-direct {p1, p0}, Ls1/a/a/a/z$e;-><init>(Ls1/a/a/a/z;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy {\u2026y -> null\n        }\n    }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/z;->b:Ls1/a/a/a/l0;

    .line 3
    new-instance p1, Ls1/a/a/a/z$d;

    invoke-direct {p1, p0}, Ls1/a/a/a/z$d;-><init>(Ls1/a/a/a/z;)V

    invoke-static {p4, p1}, Le/q/f/a/d/a;->R1(Ljava/lang/Object;Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazySo\u2026or(name, signature)\n    }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/z;->c:Ls1/a/a/a/k0;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    invoke-static {p2}, Ls1/a/a/a/q0;->c(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v4

    .line 7
    sget-object v6, Ls1/z/c/b$a;->a:Ls1/z/c/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 8
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Ls1/a/a/a/u0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/u0/h<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/z;->l()Ls1/a/a/a/z$b;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/z$b;->b()Ls1/a/a/a/u0/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Ls1/a/a/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    return-object v0
.end method

.method public bridge synthetic e()Ls1/a/a/a/v0/b/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/s0;->a:Ls1/a/a/a/v0/f/b;

    .line 2
    instance-of v0, p1, Ls1/a/a/a/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ls1/a/a/a/z;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    instance-of v0, p1, Ls1/z/c/x;

    if-nez v0, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Ls1/z/c/x;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ls1/z/c/b;->compute()Ls1/a/b;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    instance-of v0, p1, Ls1/a/a/a/z;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    move-object v0, v1

    check-cast v0, Ls1/a/a/a/z;

    :goto_3
    const/4 p1, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget-object v1, p0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    iget-object v2, v0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    iget-object v1, p0, Ls1/a/a/a/z;->e:Ljava/lang/String;

    iget-object v2, v0, Ls1/a/a/a/z;->e:Ljava/lang/String;

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ls1/a/a/a/z;->f:Ljava/lang/String;

    iget-object v2, v0, Ls1/a/a/a/z;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ls1/a/a/a/z;->g:Ljava/lang/Object;

    iget-object v0, v0, Ls1/a/a/a/z;->g:Ljava/lang/Object;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x1

    :cond_5
    return p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z;->g:Ljava/lang/Object;

    sget v1, Ls1/z/c/b;->g:I

    sget-object v1, Ls1/z/c/b$a;->a:Ls1/z/c/b$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z;->e:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ls1/a/a/a/z;->e:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 4
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Ls1/a/a/a/z;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k0;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ls1/a/a/a/z;->b:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j()Ls1/a/a/a/v0/b/k0;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z;->c:Ls1/a/a/a/k0;

    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_descriptor()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/v0/b/k0;

    return-object v0
.end method

.method public abstract l()Ls1/a/a/a/z$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/z$b<",
            "TV;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/o0;->b:Ls1/a/a/a/o0;

    invoke-virtual {p0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/o0;->d(Ls1/a/a/a/v0/b/k0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
