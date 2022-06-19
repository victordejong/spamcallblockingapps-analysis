.class public final Le/a/s/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/s/i;
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
.field public final a:Le/a/s/i;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/s/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 3
    iput p2, p0, Le/a/s/i$b;->b:I

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
    iget v0, p0, Le/a/s/i$b;->b:I

    const-string v1, "Cannot return null from a non-@Nullable component method"

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 3
    new-instance v9, Le/a/s/s/f;

    iget-object v2, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v2}, Le/a/s/e$a;->a()Ls1/w/f;

    move-result-object v4

    .line 4
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v2}, Le/a/s/e$a;->Z()Landroid/content/ContentResolver;

    move-result-object v5

    .line 6
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Le/a/s/i;->j()Le/a/s/s/d;

    move-result-object v6

    invoke-virtual {v0}, Le/a/s/i;->i()Le/a/s/o/e;

    move-result-object v7

    iget-object v0, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->k()Le/a/p5/c;

    move-result-object v8

    .line 8
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v3, 0xa

    move-object v2, v9

    .line 9
    invoke-direct/range {v2 .. v8}, Le/a/s/s/f;-><init>(ILs1/w/f;Landroid/content/ContentResolver;Le/a/s/s/c;Le/a/s/o/d;Le/a/p5/c;)V

    return-object v9

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/s/i$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 11
    :cond_1
    iget-object v0, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 12
    new-instance v2, Le/a/s/s/j;

    iget-object v3, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v3}, Le/a/s/e$a;->d2()Landroid/content/Context;

    move-result-object v3

    .line 13
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Le/a/s/i;->i()Le/a/s/o/e;

    move-result-object v4

    .line 15
    iget-object v5, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v5}, Le/a/s/e$a;->a4()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iget-object v0, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->r5()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "appName"

    .line 19
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appVersion"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Le/a/b0/b/j/e/b;

    invoke-direct {v1, v5, v0}, Le/a/b0/b/j/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {v2, v3, v4, v1}, Le/a/s/s/j;-><init>(Landroid/content/Context;Le/a/s/o/d;Le/a/b0/b/j/e/d;)V

    return-object v2

    .line 22
    :cond_2
    iget-object v0, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 23
    invoke-virtual {v0}, Le/a/s/i;->i()Le/a/s/o/e;

    move-result-object v0

    return-object v0

    .line 24
    :cond_3
    iget-object v0, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 25
    new-instance v8, Le/a/s/s/b;

    iget-object v2, v0, Le/a/s/i;->j:Ljavax/inject/Provider;

    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v3

    iget-object v2, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v2}, Le/a/s/e$a;->O2()Le/a/o4/g;

    move-result-object v4

    .line 26
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v0}, Le/a/s/i;->j()Le/a/s/s/d;

    move-result-object v5

    iget-object v2, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v2}, Le/a/s/e$a;->k()Le/a/p5/c;

    move-result-object v6

    .line 28
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v0, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->l()Le/a/e4/p;

    move-result-object v7

    .line 30
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v8

    .line 31
    invoke-direct/range {v2 .. v7}, Le/a/s/s/b;-><init>(Lo3/a;Le/a/o4/g;Le/a/s/s/c;Le/a/p5/c;Le/a/e4/p;)V

    return-object v8

    .line 32
    :cond_4
    iget-object v0, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 33
    new-instance v2, Le/a/s/r/d;

    iget-object v0, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v0

    .line 34
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-direct {v2, v0}, Le/a/s/r/d;-><init>(Ls1/w/f;)V

    return-object v2

    .line 36
    :cond_5
    iget-object v0, p0, Le/a/s/i$b;->a:Le/a/s/i;

    .line 37
    new-instance v2, Le/a/s/r/b;

    iget-object v3, v0, Le/a/s/i;->g:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/s/r/c;

    iget-object v0, v0, Le/a/s/i;->d:Le/a/s/e$a;

    invoke-interface {v0}, Le/a/s/e$a;->z()Le/a/d/f;

    move-result-object v0

    .line 38
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    invoke-direct {v2, v3, v0}, Le/a/s/r/b;-><init>(Le/a/s/r/c;Le/a/d/f;)V

    return-object v2
.end method
