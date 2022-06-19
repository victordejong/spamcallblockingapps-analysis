.class public final Le/a/r1$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$s;
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
.field public final a:Le/a/r1$s;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Le/a/r1$s;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Le/a/r1$s$a;->a:Le/a/r1$s;

    .line 3
    iput p5, p0, Le/a/r1$s$a;->b:I

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
    iget v0, p0, Le/a/r1$s$a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/r1$s$a;->a:Le/a/r1$s;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget v1, Le/a/k/o/h;->a:I

    iget-object v0, v0, Le/a/r1$s;->e:Le/a/r1;

    .line 5
    iget-object v0, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    const-string v1, "registry"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Le/a/u3/g;->X4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x13b

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/16 v1, 0x32

    .line 9
    invoke-interface {v0, v1}, Le/a/u3/i;->getInt(I)I

    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/r1$s$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 12
    :cond_1
    iget-object v0, p0, Le/a/r1$s$a;->a:Le/a/r1$s;

    .line 13
    new-instance v1, Le/a/k/a/k/f;

    iget-object v2, v0, Le/a/r1$s;->e:Le/a/r1;

    .line 14
    iget-object v2, v2, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 15
    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v3, v0, Le/a/r1$s;->e:Le/a/r1;

    .line 16
    iget-object v3, v3, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 17
    invoke-static {v3}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    .line 18
    iget-object v0, v0, Le/a/r1$s;->d:Landroid/view/View;

    .line 19
    sget v4, Le/a/k/o/h;->a:I

    const-string v4, "view"

    .line 20
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast v0, Le/a/k/a/k/c;

    .line 22
    invoke-direct {v1, v2, v3, v0}, Le/a/k/a/k/f;-><init>(Ls1/w/f;Ls1/w/f;Le/a/k/a/k/c;)V

    return-object v1

    .line 23
    :cond_2
    iget-object v0, p0, Le/a/r1$s$a;->a:Le/a/r1$s;

    .line 24
    new-instance v7, Le/a/k/a/k/z/h;

    iget-object v1, v0, Le/a/r1$s;->e:Le/a/r1;

    .line 25
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 26
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v1, v0, Le/a/r1$s;->e:Le/a/r1;

    .line 27
    iget-object v1, v1, Le/a/r1;->r6:Ljavax/inject/Provider;

    .line 28
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/k/c/q;

    iget-object v1, v0, Le/a/r1$s;->j:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/k/a/k/d;

    iget-object v1, v0, Le/a/r1$s;->e:Le/a/r1;

    .line 29
    iget-object v1, v1, Le/a/r1;->t6:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/k/q/e;

    iget-object v6, v0, Le/a/r1$s;->k:Ljavax/inject/Provider;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Le/a/k/a/k/z/h;-><init>(Ls1/w/f;Le/a/k/c/q;Le/a/k/a/k/d;Le/a/k/q/e;Ljavax/inject/Provider;)V

    return-object v7
.end method
