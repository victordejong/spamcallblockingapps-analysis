.class public final Le/a/u4/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/u4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/u4/d;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/u4/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/u4/d$b;->a:Le/a/u4/d;

    .line 3
    iput p2, p0, Le/a/u4/d$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/u4/d$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u4/d$b;->a:Le/a/u4/d;

    .line 3
    new-instance v2, Le/a/u4/s/c;

    iget-object v3, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v3

    .line 4
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v4, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->Q3()Le/a/u4/m;

    move-result-object v4

    .line 6
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v5, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->c()Le/a/p5/a0;

    move-result-object v5

    .line 8
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v0, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-direct {v2, v3, v4, v5, v0}, Le/a/u4/s/c;-><init>(Le/a/p5/c0;Le/a/u4/m;Le/a/p5/a0;Le/a/q2/a;)V

    return-object v2

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/u4/d$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 13
    :cond_1
    iget-object v0, p0, Le/a/u4/d$b;->a:Le/a/u4/d;

    .line 14
    iget-object v0, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v1, Le/a/f4/g/p;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "autoSearch"

    invoke-direct {v1, v0, v3, v4}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 17
    iput v0, v1, Le/a/f4/g/p;->o:I

    .line 18
    iput-boolean v2, v1, Le/a/f4/g/p;->i:Z

    .line 19
    iput-boolean v2, v1, Le/a/f4/g/p;->j:Z

    .line 20
    iput-boolean v2, v1, Le/a/f4/g/p;->h:Z

    const/16 v0, 0x5b

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/f4/g/p;->c(Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v0

    return-object v0

    .line 22
    :cond_2
    iget-object v0, p0, Le/a/u4/d$b;->a:Le/a/u4/d;

    .line 23
    new-instance v9, Le/a/u4/i;

    iget-object v2, v0, Le/a/u4/d;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/f4/g/p;

    iget-object v2, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->R6()Le/a/k3/j/b;

    move-result-object v4

    .line 24
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v2, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object v5

    .line 26
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v2, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->F4()Le/a/f5/a;

    move-result-object v6

    .line 28
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v2, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v7

    .line 30
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iget-object v0, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v8

    .line 32
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v9

    .line 33
    invoke-direct/range {v2 .. v8}, Le/a/u4/i;-><init>(Le/a/f4/g/p;Le/a/k3/j/b;Le/a/r2/f;Le/a/f5/a;Le/a/q2/a;Le/a/u3/g;)V

    return-object v9

    .line 34
    :cond_3
    iget-object v0, p0, Le/a/u4/d$b;->a:Le/a/u4/d;

    .line 35
    new-instance v2, Le/a/u4/f;

    iget-object v0, v0, Le/a/u4/d;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v0

    .line 36
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    invoke-direct {v2, v0}, Le/a/u4/f;-><init>(Le/a/p5/c0;)V

    return-object v2
.end method
