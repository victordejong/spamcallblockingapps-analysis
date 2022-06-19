.class public abstract Lw3/b/a/e0/h;
.super Lw3/b/a/e0/d;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/c0;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lw3/b/a/c0;


# instance fields
.field public final a:Lw3/b/a/v;

.field public final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/e0/h$a;

    invoke-direct {v0}, Lw3/b/a/e0/h$a;-><init>()V

    sput-object v0, Lw3/b/a/e0/h;->c:Lw3/b/a/c0;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lw3/b/a/e0/d;-><init>()V

    .line 7
    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object v0

    iput-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 8
    sget-object v0, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 9
    sget-object v1, Lw3/b/a/e0/h;->c:Lw3/b/a/c0;

    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/f0/b;->n(Lw3/b/a/c0;J)[I

    move-result-object p1

    const/16 p2, 0x8

    new-array p2, p2, [I

    .line 10
    iput-object p2, p0, Lw3/b/a/e0/h;->b:[I

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 11
    invoke-static {p1, v0, p2, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(JJLw3/b/a/v;Lw3/b/a/a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lw3/b/a/e0/d;-><init>()V

    const/4 p5, 0x0

    .line 2
    invoke-virtual {p0, p5}, Lw3/b/a/e0/h;->l(Lw3/b/a/v;)Lw3/b/a/v;

    move-result-object p6

    .line 3
    invoke-static {p5}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v0

    .line 4
    iput-object p6, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lw3/b/a/a;->o(Lw3/b/a/c0;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/e0/h;->b:[I

    return-void
.end method

.method public constructor <init>(JLw3/b/a/v;Lw3/b/a/a;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lw3/b/a/e0/d;-><init>()V

    .line 13
    invoke-virtual {p0, p3}, Lw3/b/a/e0/h;->l(Lw3/b/a/v;)Lw3/b/a/v;

    move-result-object p3

    .line 14
    invoke-static {p4}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p4

    .line 15
    iput-object p3, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 16
    invoke-virtual {p4, p0, p1, p2}, Lw3/b/a/a;->n(Lw3/b/a/c0;J)[I

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/e0/h;->b:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lw3/b/a/v;Lw3/b/a/a;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lw3/b/a/e0/d;-><init>()V

    .line 18
    invoke-static {}, Lw3/b/a/g0/d;->a()Lw3/b/a/g0/d;

    move-result-object v0

    .line 19
    iget-object v0, v0, Lw3/b/a/g0/d;->d:Lw3/b/a/g0/e;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lw3/b/a/g0/e;->b(Ljava/lang/Class;)Lw3/b/a/g0/c;

    move-result-object v0

    check-cast v0, Lw3/b/a/g0/k;

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    .line 20
    invoke-interface {v0, p1}, Lw3/b/a/g0/k;->e(Ljava/lang/Object;)Lw3/b/a/v;

    move-result-object p2

    .line 21
    :cond_1
    invoke-virtual {p0, p2}, Lw3/b/a/e0/h;->l(Lw3/b/a/v;)Lw3/b/a/v;

    move-result-object p2

    .line 22
    iput-object p2, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 23
    instance-of v1, p0, Lw3/b/a/w;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {p0}, Lw3/b/a/e0/d;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lw3/b/a/e0/h;->b:[I

    .line 25
    invoke-static {p3}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p2

    .line 26
    move-object p3, p0

    check-cast p3, Lw3/b/a/w;

    invoke-interface {v0, p3, p1, p2}, Lw3/b/a/g0/k;->b(Lw3/b/a/w;Ljava/lang/Object;Lw3/b/a/a;)V

    goto :goto_1

    .line 27
    :cond_2
    new-instance v0, Lw3/b/a/t;

    invoke-direct {v0, p1, p2, p3}, Lw3/b/a/t;-><init>(Ljava/lang/Object;Lw3/b/a/v;Lw3/b/a/a;)V

    invoke-virtual {v0}, Lw3/b/a/e0/d;->k()[I

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/e0/h;->b:[I

    :goto_1
    return-void

    .line 28
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "No period converter found for type: "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-nez p1, :cond_4

    const-string p1, "null"

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>([ILw3/b/a/v;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lw3/b/a/e0/d;-><init>()V

    .line 30
    iput-object p2, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 31
    iput-object p1, p0, Lw3/b/a/e0/h;->b:[I

    return-void
.end method


# virtual methods
.method public g()Lw3/b/a/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    return-object v0
.end method

.method public getValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public l(Lw3/b/a/v;)Lw3/b/a/v;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public q(Lw3/b/a/k;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->b:[I

    .line 2
    iget-object v1, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 3
    invoke-virtual {v1, p1}, Lw3/b/a/v;->c(Lw3/b/a/k;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Period does not support field \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    aput p2, v0, v1

    :goto_0
    return-void
.end method
