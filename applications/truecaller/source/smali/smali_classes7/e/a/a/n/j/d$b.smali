.class public final Le/a/a/n/j/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/n/j/d;
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
.field public final a:Le/a/a/n/j/d;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/n/j/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 3
    iput p2, p0, Le/a/a/n/j/d$b;->b:I

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
    iget v1, v0, Le/a/a/n/j/d$b;->b:I

    const-string v2, "Cannot return null from a non-@Nullable component method"

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    const-string v4, "context"

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 3
    new-instance v3, Le/a/a/n/j/g;

    iget-object v4, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/n/j/r;

    iget-object v5, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/n/j/o;

    iget-object v1, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v1

    .line 4
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v3, v4, v5, v1}, Le/a/a/n/j/g;-><init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/p5/c0;)V

    return-object v3

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/n/j/d$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 8
    new-instance v9, Le/a/a/n/j/a;

    iget-object v3, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/a/n/j/r;

    iget-object v3, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Le/a/a/n/j/o;

    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v6

    .line 9
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->d()Le/a/b0/o/a;

    move-result-object v7

    .line 11
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v1, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v8

    .line 13
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, v9

    .line 14
    invoke-direct/range {v3 .. v8}, Le/a/a/n/j/a;-><init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/o5/b0;Le/a/b0/o/a;Le/a/a/o/p;)V

    return-object v9

    .line 15
    :cond_2
    iget-object v1, v0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 16
    new-instance v3, Le/a/a/n/j/e;

    iget-object v5, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/a/n/j/r;

    iget-object v5, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Le/a/a/n/j/o;

    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v8

    .line 17
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    new-instance v17, Le/a/a/i1/c;

    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v10

    .line 19
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->Z5()Le/a/a/k/a/a/q;

    move-result-object v11

    .line 21
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v12

    .line 23
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v13

    .line 25
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v14

    .line 27
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v15

    .line 29
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v5, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v5

    .line 31
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v9, v17

    move-object/from16 v16, v5

    .line 32
    invoke-direct/range {v9 .. v16}, Le/a/a/i1/c;-><init>(Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/o5/b0;Le/a/u3/g;Le/a/h0/m;Le/a/a/i0;Le/a/p5/c;)V

    .line 33
    iget-object v5, v1, Le/a/a/n/j/d;->b:Le/a/a/n/j/l;

    iget-object v9, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v9}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v9

    .line 34
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v10, Le/a/p5/i0;

    invoke-direct {v10, v9}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object v1, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v11

    .line 38
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v5, v3

    move-object/from16 v9, v17

    .line 39
    invoke-direct/range {v5 .. v11}, Le/a/a/n/j/e;-><init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/o5/b0;Le/a/a/i1/b;Le/a/p5/h0;Le/a/a/o/p;)V

    return-object v3

    .line 40
    :cond_3
    iget-object v1, v0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 41
    new-instance v3, Le/a/a/n/j/i;

    iget-object v4, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/n/j/r;

    iget-object v5, v1, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/n/j/o;

    iget-object v6, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v6

    .line 42
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v1, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->s0()Le/a/a/o/p;

    move-result-object v1

    .line 44
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-direct {v3, v4, v5, v6, v1}, Le/a/a/n/j/i;-><init>(Le/a/a/n/j/r;Le/a/a/n/j/o;Le/a/o5/b0;Le/a/a/o/p;)V

    return-object v3

    .line 46
    :cond_4
    iget-object v1, v0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 47
    iget-object v3, v1, Le/a/a/n/j/d;->b:Le/a/a/n/j/l;

    iget-object v1, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v1

    .line 48
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v2, Le/a/a/c/s8/h;

    invoke-direct {v2, v1}, Le/a/a/c/s8/h;-><init>(Landroid/content/Context;)V

    return-object v2

    .line 51
    :cond_5
    iget-object v1, v0, Le/a/a/n/j/d$b;->a:Le/a/a/n/j/d;

    .line 52
    new-instance v18, Le/a/a/n/j/v;

    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 53
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v3, v1, Le/a/a/n/j/d;->b:Le/a/a/n/j/l;

    .line 55
    iget-object v5, v3, Le/a/a/n/j/l;->a:Lcom/truecaller/messaging/data/types/Conversation;

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    .line 56
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iget-object v6, v1, Le/a/a/n/j/d;->b:Le/a/a/n/j/l;

    .line 58
    iget-object v6, v6, Le/a/a/n/j/l;->b:Lcom/truecaller/messaging/mediamanager/AttachmentType;

    .line 59
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iget-object v3, v1, Le/a/a/n/j/d;->b:Le/a/a/n/j/l;

    .line 61
    iget-boolean v7, v3, Le/a/a/n/j/l;->c:Z

    .line 62
    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->Z()Landroid/content/ContentResolver;

    move-result-object v8

    .line 63
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    iget-object v3, v1, Le/a/a/n/j/d;->d:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/a/c/s8/j;

    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->a7()Le/a/r2/f;

    move-result-object v10

    .line 65
    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->h1()Le/a/a/i1/d;

    move-result-object v11

    .line 67
    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->B3()Le/a/a/n/h;

    move-result-object v12

    .line 69
    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    new-instance v13, Le/a/a/c/q5;

    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->j()Landroid/content/Context;

    move-result-object v3

    .line 71
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v14, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v14}, Le/a/j2;->k6()Ls1/w/f;

    move-result-object v14

    .line 73
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-direct {v13, v3, v14}, Le/a/a/c/q5;-><init>(Landroid/content/Context;Ls1/w/f;)V

    .line 75
    new-instance v14, Le/a/a/g/k0/b;

    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/j2;->k4()Le/a/b0/q/b;

    move-result-object v3

    .line 76
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-direct {v14, v3}, Le/a/a/g/k0/b;-><init>(Le/a/b0/q/b;)V

    .line 78
    new-instance v15, Le/a/a/n/c;

    iget-object v3, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v3}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v3

    .line 79
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v0

    .line 81
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-direct {v15, v3, v0}, Le/a/a/n/c;-><init>(Le/a/q2/a;Le/a/q2/i0;)V

    .line 83
    iget-object v0, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    .line 84
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v1, v1, Le/a/a/n/j/d;->a:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v1

    .line 86
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, v18

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 87
    invoke-direct/range {v3 .. v17}, Le/a/a/n/j/v;-><init>(Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;Lcom/truecaller/messaging/mediamanager/AttachmentType;ZLandroid/content/ContentResolver;Le/a/a/c/s8/j;Le/a/r2/f;Le/a/a/i1/d;Le/a/a/n/h;Le/a/a/c/p5;Le/a/a/g/k0/b;Le/a/a/n/c;Le/a/p5/c;Le/a/a/i0;)V

    return-object v18
.end method
