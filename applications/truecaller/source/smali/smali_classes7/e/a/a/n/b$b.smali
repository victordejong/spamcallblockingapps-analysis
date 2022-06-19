.class public final Le/a/a/n/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/n/b;
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
.field public final a:Le/a/a/n/b;


# direct methods
.method public constructor <init>(Le/a/a/n/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/n/b$b;->a:Le/a/a/n/b;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/n/b$b;->a:Le/a/a/n/b;

    .line 2
    new-instance v13, Le/a/a/n/g;

    iget-object v2, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v3

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 3
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v4, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v4

    .line 5
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v5, v1, Le/a/a/n/b;->b:Le/a/a/n/d;

    .line 7
    iget-object v5, v5, Le/a/a/n/d;->a:Lcom/truecaller/messaging/data/types/Conversation;

    const-string v6, "Cannot return null from a non-@Nullable @Provides method"

    .line 8
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v7, v1, Le/a/a/n/b;->b:Le/a/a/n/d;

    .line 10
    iget-object v7, v7, Le/a/a/n/d;->b:Ljava/lang/String;

    .line 11
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v6, v1, Le/a/a/n/b;->b:Le/a/a/n/d;

    .line 13
    iget-boolean v8, v6, Le/a/a/n/d;->c:Z

    .line 14
    iget-object v6, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v9

    .line 15
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v10, Le/a/a/n/c;

    iget-object v6, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v6

    .line 17
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v11, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v11

    .line 19
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-direct {v10, v6, v11}, Le/a/a/n/c;-><init>(Le/a/q2/a;Le/a/q2/i0;)V

    .line 21
    new-instance v11, Le/a/a/i1/c;

    iget-object v6, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v15

    .line 22
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v6, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v6

    .line 24
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v12, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v12}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v12

    .line 26
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v14, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v14

    .line 28
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iget-object v0, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v0

    .line 30
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v16, v14

    .line 31
    iget-object v14, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v14

    .line 32
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v17, v14

    .line 33
    iget-object v14, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v14

    .line 34
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v21, v14

    move-object/from16 v18, v16

    move-object/from16 v20, v17

    move-object v14, v11

    move-object/from16 v16, v6

    move-object/from16 v17, v12

    move-object/from16 v19, v0

    .line 35
    invoke-direct/range {v14 .. v21}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    .line 36
    iget-object v0, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->F2()Le/a/a/o/f;

    move-result-object v0

    .line 37
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iget-object v1, v1, Le/a/a/n/b;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v12

    .line 39
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v13

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v0

    .line 40
    invoke-direct/range {v2 .. v12}, Le/a/a/n/g;-><init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/String;ZLe/a/p5/c;Le/a/a/n/c;Le/a/a/i1/b;Le/a/a/o/f;Le/a/a/o/p;)V

    return-object v13
.end method
