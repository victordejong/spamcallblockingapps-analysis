.class public final Le/a/a/o/s/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/o/s/a;
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
.field public final a:Le/a/a/o/s/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/o/s/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/o/s/a$b;->a:Le/a/a/o/s/a;

    .line 3
    iput p2, p0, Le/a/a/o/s/a$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/o/s/a$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/o/s/a$b;->a:Le/a/a/o/s/a;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v10, Le/a/a/o/s/c;

    iget-object v4, v1, Le/a/a/o/s/a;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/a/o/s/i;

    iget-object v4, v1, Le/a/a/o/s/a;->e:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le/a/a/o/s/h;

    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v7

    .line 5
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v8, Le/a/a/i1/c;

    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v12

    .line 7
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v13

    .line 9
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v14

    .line 11
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v15

    .line 13
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v4

    .line 15
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v9, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v9

    .line 17
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v11, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v11

    .line 19
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v18, v11

    move-object v11, v8

    move-object/from16 v16, v4

    move-object/from16 v17, v9

    .line 20
    invoke-direct/range {v11 .. v18}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    .line 21
    new-instance v9, Le/a/a/v;

    .line 22
    iget-object v4, v1, Le/a/a/o/s/a;->b:Le/a/a/o/s/g;

    iget-object v11, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v11

    .line 23
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "context"

    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v4, Le/a/p5/i0;

    invoke-static {v11, v3}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v3

    invoke-direct {v4, v3}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 26
    iget-object v3, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->m6()Le/a/l4/c;

    move-result-object v3

    .line 27
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v1, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v1

    .line 29
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-direct {v9, v4, v3, v1}, Le/a/a/v;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    move-object v4, v10

    .line 31
    invoke-direct/range {v4 .. v9}, Le/a/a/o/s/c;-><init>(Le/a/a/o/s/i;Le/a/a/o/s/h;Le/a/a/o/p;Le/a/a/i1/b;Le/a/a/u;)V

    return-object v10

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/o/s/a$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 33
    :cond_1
    iget-object v1, v0, Le/a/a/o/s/a$b;->a:Le/a/a/o/s/a;

    .line 34
    new-instance v3, Le/a/a/o/s/l;

    iget-object v4, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 35
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v5, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v5

    .line 37
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v6, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v6

    .line 39
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v1, v1, Le/a/a/o/s/a;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->X6()Le/a/a/g/g;

    move-result-object v1

    .line 41
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/a/o/s/l;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/ContentResolver;Le/a/a/g/g;)V

    return-object v3
.end method
