.class public final Le/a/a/c/c/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/c/d;
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
.field public final a:Le/a/a/c/c/d;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/a/c/c/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/c/c/d$b;->a:Le/a/a/c/c/d;

    .line 3
    iput p2, p0, Le/a/a/c/c/d$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/c/c/d$b;->b:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, v0, Le/a/a/c/c/d$b;->a:Le/a/a/c/c/d;

    .line 3
    iget-object v1, v1, Le/a/a/c/c/d;->a:Le/a/a/c/c/v;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "Executors.newSingleThreadExecutor()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lq3/a/g1;

    invoke-direct {v2, v1}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v2

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/a/c/c/d$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 8
    :cond_1
    iget-object v1, v0, Le/a/a/c/c/d$b;->a:Le/a/a/c/c/d;

    .line 9
    new-instance v10, Le/a/a/c/c/z;

    iget-object v2, v1, Le/a/a/c/c/d;->a:Le/a/a/c/c/v;

    .line 10
    iget-object v3, v2, Le/a/a/c/c/v;->a:Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 11
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v2, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v2}, Le/a/j2;->z5()Le/a/a/c1/d;

    move-result-object v4

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 13
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iget-object v5, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v5}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v5

    .line 15
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v6, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v6

    .line 17
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v7, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v7}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 19
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v8, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v8}, Le/a/j2;->v7()Le/a/a/s0/d;

    move-result-object v8

    .line 21
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v9, v1, Le/a/a/c/c/d;->a:Le/a/a/c/c/v;

    iget-object v11, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->y0()Le/a/a/v0/a;

    move-result-object v13

    .line 23
    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v11, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v14

    .line 25
    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    iget-object v11, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v11}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v15

    .line 27
    invoke-static {v15, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v11, v1, Le/a/a/c/c/d;->d:Ljavax/inject/Provider;

    invoke-static {v11}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v11

    iget-object v1, v1, Le/a/a/c/c/d;->b:Le/a/j2;

    invoke-interface {v1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v1

    .line 29
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "linkMetaDataExtractor"

    invoke-static {v13, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "featuresRegistry"

    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uiContext"

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "linkPreviewContext"

    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "analytics"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v9, Le/a/a/c/c/u;

    move-object v12, v9

    move-object/from16 v16, v11

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Le/a/a/c/c/u;-><init>(Le/a/a/v0/a;Le/a/u3/g;Ls1/w/f;Lo3/a;Le/a/q2/a;)V

    move-object v2, v10

    .line 32
    invoke-direct/range {v2 .. v9}, Le/a/a/c/c/z;-><init>(Lcom/truecaller/messaging/conversation/draft/SharedTextDraftsArguments;Le/a/a/c1/d;Le/a/a/i0;Ls1/w/f;Le/a/p5/c0;Le/a/a/s0/d;Le/a/a/c/c/t;)V

    return-object v10
.end method
