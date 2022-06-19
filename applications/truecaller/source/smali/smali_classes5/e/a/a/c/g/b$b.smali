.class public final Le/a/a/c/g/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/g/b;
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
.field public final a:Le/a/a/c/g/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/g/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/g/b$b;->a:Le/a/a/c/g/b;

    .line 3
    iput p2, p0, Le/a/a/c/g/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/c/g/b$b;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/c/g/b$b;->a:Le/a/a/c/g/b;

    .line 3
    iget-object v0, v0, Le/a/a/c/g/b;->a:Le/a/a/c/g/d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/a/c/g/b$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/a/c/g/b$b;->a:Le/a/a/c/g/b;

    .line 8
    iget-object v0, v0, Le/a/a/c/g/b;->a:Le/a/a/c/g/d;

    .line 9
    iget-object v0, v0, Le/a/a/c/g/d;->b:Ljava/lang/String;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 10
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/a/c/g/b$b;->a:Le/a/a/c/g/b;

    .line 12
    new-instance v10, Le/a/a/c/g/g;

    iget-object v1, v0, Le/a/a/c/g/b;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v2

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 13
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v3, v0, Le/a/a/c/g/b;->b:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    .line 15
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v4, v0, Le/a/a/c/g/b;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Le/a/a/c/g/b;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->W2()Le/a/a/k/a/a/d;

    move-result-object v5

    .line 17
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v6, v0, Le/a/a/c/g/b;->g:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    iget-object v7, v0, Le/a/a/c/g/b;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v7

    .line 19
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v8, v0, Le/a/a/c/g/b;->d:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/p5/h0;

    iget-object v0, v0, Le/a/a/c/g/b;->b:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v9

    .line 21
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v10

    .line 22
    invoke-direct/range {v1 .. v9}, Le/a/a/c/g/g;-><init>(Ls1/w/f;Ls1/w/f;Ljava/lang/String;Le/a/a/k/a/a/d;Landroid/os/Handler;Landroid/content/ContentResolver;Le/a/p5/h0;Le/a/a/i0;)V

    return-object v10

    .line 23
    :cond_3
    iget-object v0, p0, Le/a/a/c/g/b$b;->a:Le/a/a/c/g/b;

    .line 24
    iget-object v0, v0, Le/a/a/c/g/b;->a:Le/a/a/c/g/d;

    .line 25
    new-instance v1, Le/a/p5/i0;

    iget-object v0, v0, Le/a/a/c/g/d;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 26
    :cond_4
    iget-object v0, p0, Le/a/a/c/g/b$b;->a:Le/a/a/c/g/b;

    .line 27
    iget-object v1, v0, Le/a/a/c/g/b;->a:Le/a/a/c/g/d;

    iget-object v0, v0, Le/a/a/c/g/b;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/h0;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "resourceProvider"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Le/a/b0/a/b/a;

    invoke-direct {v1, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    return-object v1
.end method
