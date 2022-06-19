.class public final Le/a/r1$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.field public final a:Le/a/r1$f;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/r1$f$a;->a:Le/a/r1$f;

    .line 3
    iput p3, p0, Le/a/r1$f$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/r1$f$a;->b:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/r1$f$a;->a:Le/a/r1$f;

    .line 3
    iget-object v0, v0, Le/a/r1$f;->b:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->a8(Le/a/r1;)Le/a/p5/h0;

    move-result-object v0

    .line 4
    sget v1, Le/a/k/o/h;->a:I

    const-string v1, "resourceProvider"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Le/a/b0/a/b/a;

    invoke-direct {v1, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    return-object v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/r1$f$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/r1$f$a;->a:Le/a/r1$f;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget v1, Le/a/k/o/h;->a:I

    iget-object v0, v0, Le/a/r1$f;->b:Le/a/r1;

    .line 11
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v1, "registry"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Le/a/u3/g;->X4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x13b

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/16 v1, 0x32

    .line 15
    invoke-interface {v0, v1}, Le/a/u3/i;->getInt(I)I

    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 17
    :cond_2
    iget-object v0, p0, Le/a/r1$f$a;->a:Le/a/r1$f;

    .line 18
    new-instance v1, Le/a/k/a/k/f;

    iget-object v2, v0, Le/a/r1$f;->b:Le/a/r1;

    .line 19
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 20
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v3, v0, Le/a/r1$f;->b:Le/a/r1;

    .line 21
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 22
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    .line 23
    iget-object v0, v0, Le/a/r1$f;->a:Landroid/view/View;

    .line 24
    sget v4, Le/a/k/o/h;->a:I

    const-string v4, "view"

    .line 25
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    check-cast v0, Le/a/k/a/k/c;

    .line 27
    invoke-direct {v1, v2, v3, v0}, Le/a/k/a/k/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/k/a/k/c;)V

    return-object v1

    .line 28
    :cond_3
    iget-object v0, p0, Le/a/r1$f$a;->a:Le/a/r1$f;

    .line 29
    new-instance v7, Le/a/k/a/k/z/h;

    iget-object v1, v0, Le/a/r1$f;->b:Le/a/r1;

    .line 30
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 31
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v1, v0, Le/a/r1$f;->b:Le/a/r1;

    .line 32
    iget-object v1, v1, Le/a/r1;->r6:Ljavax/inject/Provider;

    .line 33
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/k/c/q;

    iget-object v1, v0, Le/a/r1$f;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/k/a/k/d;

    iget-object v1, v0, Le/a/r1$f;->b:Le/a/r1;

    .line 34
    iget-object v1, v1, Le/a/r1;->t6:Ljavax/inject/Provider;

    .line 35
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/k/q/e;

    iget-object v6, v0, Le/a/r1$f;->f:Ljavax/inject/Provider;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/k/a/k/z/h;-><init>(Ls1/w/f;Le/a/k/c/q;Le/a/k/a/k/d;Le/a/k/q/e;Ljavax/inject/Provider;)V

    return-object v7
.end method
