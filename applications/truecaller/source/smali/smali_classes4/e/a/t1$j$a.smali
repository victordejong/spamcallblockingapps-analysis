.class public final Le/a/t1$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1$j;
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
.field public final a:Le/a/t1$j;


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/t1$j$a;->a:Le/a/t1$j;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/t1$j$a;->a:Le/a/t1$j;

    .line 2
    new-instance v13, Le/a/e/c/c2;

    iget-object v2, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 3
    iget-object v2, v2, Le/a/t1;->b:Le/a/j2;

    .line 4
    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 5
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 7
    iget-object v4, v4, Le/a/t1;->b:Le/a/j2;

    .line 8
    invoke-interface {v4}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v4

    .line 9
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v5, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 11
    iget-object v5, v5, Le/a/t1;->b:Le/a/j2;

    .line 12
    invoke-interface {v5}, Le/a/j2;->H()Le/a/b0/p/d;

    move-result-object v5

    .line 13
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v6, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 15
    iget-object v6, v6, Le/a/t1;->b:Le/a/j2;

    .line 16
    invoke-interface {v6}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v6

    .line 17
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v7, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 19
    iget-object v7, v7, Le/a/t1;->b:Le/a/j2;

    .line 20
    invoke-interface {v7}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v7

    .line 21
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v8, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 23
    iget-object v8, v8, Le/a/t1;->b:Le/a/j2;

    .line 24
    invoke-interface {v8}, Le/a/j2;->l5()Le/a/a0/n;

    move-result-object v8

    .line 25
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v9, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 27
    iget-object v9, v9, Le/a/t1;->b:Le/a/j2;

    .line 28
    invoke-interface {v9}, Le/a/j2;->t4()Le/a/k5/a;

    move-result-object v9

    .line 29
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v10, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 31
    iget-object v10, v10, Le/a/t1;->b:Le/a/j2;

    .line 32
    invoke-interface {v10}, Le/a/j2;->p3()Le/a/x4/g;

    move-result-object v10

    .line 33
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    new-instance v11, Le/a/x4/l/b;

    iget-object v12, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 35
    iget-object v12, v12, Le/a/t1;->b:Le/a/j2;

    .line 36
    invoke-interface {v12}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v12

    .line 37
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v14, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 39
    iget-object v14, v14, Le/a/t1;->b:Le/a/j2;

    .line 40
    invoke-interface {v14}, Le/a/j2;->p3()Le/a/x4/g;

    move-result-object v14

    .line 41
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v15, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 43
    iget-object v15, v15, Le/a/t1;->b:Le/a/j2;

    .line 44
    invoke-interface {v15}, Le/a/j2;->L7()Le/a/x4/e;

    move-result-object v15

    .line 45
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v0, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 47
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 48
    invoke-interface {v0}, Le/a/j2;->k0()Le/a/x4/l/c;

    move-result-object v0

    .line 49
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    invoke-direct {v11, v12, v14, v15, v0}, Le/a/x4/l/b;-><init>(Ls1/w/f;Le/a/x4/g;Le/a/x4/e;Le/a/x4/l/c;)V

    .line 51
    iget-object v0, v1, Le/a/t1$j;->a:Le/a/t1;

    .line 52
    iget-object v0, v0, Le/a/t1;->b:Le/a/j2;

    .line 53
    invoke-interface {v0}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v12

    .line 54
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v13

    .line 55
    invoke-direct/range {v2 .. v12}, Le/a/e/c/c2;-><init>(Ls1/w/f;Le/a/g5/p;Le/a/b0/p/d;Le/a/l4/c;Le/a/l/p2/v0;Le/a/a0/n;Le/a/k5/a;Le/a/x4/g;Le/a/x4/l/b;Le/a/z2/a;)V

    return-object v13
.end method
