.class public final Le/a/c/a/m/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/m/a/b;
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
.field public final a:Le/a/c/a/m/a/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/m/a/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 3
    iput p2, p0, Le/a/c/a/m/a/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/c/a/m/a/b$b;->b:I

    const-string v2, "smartSmsFeatureFilter"

    const-string v3, "uiContext"

    const-string v4, "ioContext"

    const-string v5, "ioCoroutineContext"

    const-string v6, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/c/a/m/a/b$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 4
    iget-object v3, v1, Le/a/c/a/m/a/b;->g:Le/a/c/a/m/a/c;

    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->l1()Le/a/c/b0/d;

    move-result-object v8

    .line 5
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v9

    .line 7
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->M1()Le/a/c/i/i/a;

    move-result-object v10

    .line 9
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->J0()Le/a/c/w/a;

    move-result-object v11

    .line 11
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->j5()Le/a/c/w/o0/g;

    move-result-object v12

    .line 13
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "updatesRepository"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "parseManager"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backupRepository"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Le/a/c/a/m/b/x$a;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Le/a/c/a/m/b/x$a;-><init>(Le/a/c/b0/d;Ls1/w/f;Le/a/c/i/i/a;Le/a/c/w/a;Le/a/c/w/o0/g;)V

    return-object v1

    .line 16
    :pswitch_1
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 17
    iget-object v4, v1, Le/a/c/a/m/a/b;->g:Le/a/c/a/m/a/c;

    iget-object v7, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v7}, Le/a/c/l/a/a;->j5()Le/a/c/w/o0/g;

    move-result-object v7

    .line 18
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    iget-object v8, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v8}, Le/a/c/l/a/a;->M()Le/a/c/t/a;

    move-result-object v8

    .line 20
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v9, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v9}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v9

    .line 22
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v1, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v1

    .line 24
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "qaManager"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v2, Le/a/c/a/m/b/o$a;

    invoke-direct {v2, v7, v8, v9, v1}, Le/a/c/a/m/b/o$a;-><init>(Le/a/c/w/o0/g;Le/a/c/t/a;Ls1/w/f;Ls1/w/f;)V

    return-object v2

    .line 27
    :pswitch_2
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 28
    iget-object v2, v1, Le/a/c/a/m/a/b;->g:Le/a/c/a/m/a/c;

    iget-object v4, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v8

    .line 29
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v4, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v9

    .line 31
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->e1()Le/a/c/v/a;

    move-result-object v10

    .line 33
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    new-instance v11, Le/a/c/v/f/b/a;

    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->B()Le/a/c/j/b;

    move-result-object v4

    .line 35
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    iget-object v7, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v7}, Le/a/c/l/a/a;->Y3()Le/a/c/j/e;

    move-result-object v7

    .line 37
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-direct {v11, v4, v7}, Le/a/c/v/f/b/a;-><init>(Le/a/c/j/b;Le/a/c/j/e;)V

    .line 39
    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->Y5()Le/a/c/i/l/f/a;

    move-result-object v12

    .line 40
    invoke-static {v12, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reminderManager"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionHandler"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "smartNotificationManager"

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v1, Le/a/c/a/m/b/i$a;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Le/a/c/a/m/b/i$a;-><init>(Ls1/w/f;Ls1/w/f;Le/a/c/v/a;Le/a/c/v/f/b/a;Le/a/c/i/l/f/a;)V

    return-object v1

    .line 43
    :pswitch_3
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 44
    iget-object v2, v1, Le/a/c/a/m/a/b;->g:Le/a/c/a/m/a/c;

    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->x2()Le/a/c/i/f/a;

    move-result-object v1

    .line 45
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ftsRepository"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v2, Le/a/c/a/m/b/c$a;

    invoke-direct {v2, v1}, Le/a/c/a/m/b/c$a;-><init>(Le/a/c/i/f/a;)V

    return-object v2

    .line 48
    :pswitch_4
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 49
    iget-object v2, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v3, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v3}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v3

    .line 50
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v1

    .line 52
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insightConfig"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v2, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    invoke-direct {v2, v3, v1}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;-><init>(Ls1/w/f;Le/a/c/c0/o;)V

    return-object v2

    .line 55
    :pswitch_5
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 56
    new-instance v2, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v3

    .line 57
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iget-object v1, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v1

    .line 59
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-direct {v2, v3, v1}, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;-><init>(Le/a/c/e/c;Ls1/w/f;)V

    return-object v2

    .line 61
    :pswitch_6
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 62
    new-instance v2, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;

    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v1

    .line 63
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-direct {v2, v1}, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;-><init>(Le/a/c/c0/o;)V

    return-object v2

    .line 65
    :pswitch_7
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 66
    iget-object v2, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v3

    .line 67
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v4, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 69
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v5, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v5

    .line 71
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v1

    .line 73
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-static {v2, v3, v4, v5, v1}, Le/a/c/p/a;->e2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;)Le/a/c/a/c/f/j;

    move-result-object v1

    return-object v1

    .line 75
    :pswitch_8
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 76
    iget-object v2, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v3

    .line 77
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v1, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v1

    .line 79
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "businessInsightsManager"

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v2, Le/a/c/a/d/d/a;

    invoke-direct {v2, v3, v1}, Le/a/c/a/d/d/a;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    return-object v2

    .line 82
    :pswitch_9
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 83
    iget-object v7, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v2, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v8

    .line 84
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v2, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v9

    .line 86
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    iget-object v2, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v10

    .line 88
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v2, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v11

    .line 90
    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    iget-object v2, v1, Le/a/c/a/m/a/b;->q:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/c/a/d/d/a;

    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v13

    .line 92
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-static/range {v7 .. v13}, Le/a/c/p/a;->c2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/d/d/a;Le/a/c/e/c;)Le/a/c/a/c/f/b;

    move-result-object v1

    return-object v1

    .line 94
    :pswitch_a
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 95
    iget-object v2, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v3

    .line 96
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v4, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 98
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iget-object v5, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v5

    .line 100
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v1, v1, Le/a/c/a/m/a/b;->b:Le/a/c/h/k/a;

    invoke-interface {v1}, Le/a/c/h/k/a;->A1()Le/a/c/h/e;

    move-result-object v1

    .line 102
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-static {v2, v3, v4, v5, v1}, Le/a/c/p/a;->o2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/h/e;)Le/a/c/a/c/f/g;

    move-result-object v1

    return-object v1

    .line 104
    :pswitch_b
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 105
    new-instance v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object v3, v1, Le/a/c/a/m/a/b;->p:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Le/a/c/a/c/f/g;

    iget-object v3, v1, Le/a/c/a/m/a/b;->r:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Le/a/c/a/c/f/b;

    iget-object v3, v1, Le/a/c/a/m/a/b;->s:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/a/c/a/c/f/j;

    .line 106
    new-instance v11, Le/a/c/a/i/j;

    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v3

    .line 107
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-direct {v11, v3}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 109
    new-instance v3, Le/a/c/a/c/f/o;

    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v13

    .line 110
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    iget-object v4, v1, Le/a/c/a/m/a/b;->b:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->R3()Le/a/c/h/i;

    move-result-object v14

    .line 112
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v15

    .line 114
    invoke-static {v15, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v4

    .line 116
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    iget-object v5, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->x6()Le/a/c/b/e;

    move-result-object v5

    .line 118
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    iget-object v7, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v7}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v7

    .line 120
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    .line 121
    invoke-direct/range {v12 .. v18}, Le/a/c/a/c/f/o;-><init>(Le/a/c/c0/o;Le/a/c/h/i;Le/a/c/e/c;Le/a/c/b/j;Le/a/c/b/e;Ls1/w/f;)V

    .line 122
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v13

    .line 123
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v14

    .line 125
    invoke-static {v14, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v4, v1, Le/a/c/a/m/a/b;->u:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Le/a/c/a/c/f/y;

    iget-object v4, v1, Le/a/c/a/m/a/b;->k:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Le/a/c/a/i/h;

    iget-object v4, v1, Le/a/c/a/m/a/b;->l:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Le/a/c/a/c/h/j;

    iget-object v4, v1, Le/a/c/a/m/a/b;->w:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Le/a/c/a/i/a;

    iget-object v4, v1, Le/a/c/a/m/a/b;->b:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->h4()Le/a/c/h/d;

    move-result-object v4

    .line 127
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v5, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 129
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    new-instance v12, Le/a/c/a/c/f/x;

    iget-object v7, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v7}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v7

    .line 131
    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v0, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->O0()Le/a/c/b/h;

    move-result-object v0

    .line 133
    invoke-static {v0, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v20, v5

    .line 134
    iget-object v5, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 135
    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v19, v4

    .line 136
    iget-object v4, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v4

    .line 137
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-direct {v12, v7, v0, v5, v4}, Le/a/c/a/c/f/x;-><init>(Le/a/c/c0/o;Le/a/c/b/h;Ls1/w/f;Le/a/c/e/c;)V

    .line 139
    iget-object v0, v1, Le/a/c/a/m/a/b;->x:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Le/a/c/a/c/h/k;

    move-object v7, v2

    move-object v0, v12

    move-object v12, v3

    move-object/from16 v21, v0

    invoke-direct/range {v7 .. v22}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;-><init>(Le/a/c/a/c/f/g;Le/a/c/a/c/f/b;Le/a/c/a/c/f/j;Le/a/c/a/i/j;Le/a/c/a/c/f/o;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/f/y;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/a/i/a;Le/a/c/h/d;Ls1/w/f;Le/a/c/a/c/f/x;Le/a/c/a/c/h/k;)V

    return-object v2

    .line 140
    :pswitch_c
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 141
    new-instance v2, Le/a/c/a/a/g;

    .line 142
    const-class v3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object v1, v1, Le/a/c/a/m/a/b;->z:Ljavax/inject/Provider;

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 143
    invoke-direct {v2, v1}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 144
    :pswitch_d
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 145
    iget-object v2, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v3, v1, Le/a/c/a/m/a/b;->b:Le/a/c/h/k/a;

    invoke-interface {v3}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v3

    .line 146
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    iget-object v4, v1, Le/a/c/a/m/a/b;->c:Le/a/b0/m/b/a;

    invoke-interface {v4}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v4

    .line 148
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iget-object v5, v1, Le/a/c/a/m/a/b;->k:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/a/i/h;

    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v1

    .line 150
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    invoke-static {v2, v3, v4, v5, v1}, Le/a/c/p/a;->k2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)Le/a/c/a/c/h/l/d;

    move-result-object v1

    return-object v1

    .line 152
    :pswitch_e
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 153
    iget-object v2, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v3, v1, Le/a/c/a/m/a/b;->b:Le/a/c/h/k/a;

    invoke-interface {v3}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v3

    .line 154
    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    iget-object v4, v1, Le/a/c/a/m/a/b;->c:Le/a/b0/m/b/a;

    invoke-interface {v4}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v4

    .line 156
    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v5, v1, Le/a/c/a/m/a/b;->k:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/a/i/h;

    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v1

    .line 158
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    invoke-static {v2, v3, v4, v5, v1}, Le/a/c/p/a;->j2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)Le/a/c/a/c/h/l/c;

    move-result-object v1

    return-object v1

    .line 160
    :pswitch_f
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 161
    iget-object v1, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    .line 162
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v1, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    invoke-direct {v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;-><init>()V

    return-object v1

    .line 164
    :pswitch_10
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 165
    new-instance v2, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v1

    .line 166
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    invoke-direct {v2, v1}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v2

    .line 168
    :pswitch_11
    iget-object v1, v0, Le/a/c/a/m/a/b$b;->a:Le/a/c/a/m/a/b;

    .line 169
    iget-object v7, v1, Le/a/c/a/m/a/b;->e:Le/a/c/a/c/e/a;

    iget-object v2, v1, Le/a/c/a/m/a/b;->b:Le/a/c/h/k/a;

    invoke-interface {v2}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v8

    .line 170
    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    iget-object v2, v1, Le/a/c/a/m/a/b;->c:Le/a/b0/m/b/a;

    invoke-interface {v2}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v9

    .line 172
    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-object v2, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->b3()Le/a/c/x/a;

    move-result-object v10

    .line 174
    invoke-static {v10, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    iget-object v2, v1, Le/a/c/a/m/a/b;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/c/a/i/h;

    iget-object v2, v1, Le/a/c/a/m/a/b;->l:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/c/a/c/h/j;

    iget-object v2, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v13

    .line 176
    invoke-static {v13, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    iget-object v2, v1, Le/a/c/a/m/a/b;->m:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Le/a/c/a/c/h/l/c;

    iget-object v2, v1, Le/a/c/a/m/a/b;->n:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Le/a/c/a/c/h/l/d;

    iget-object v2, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v2

    .line 178
    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iget-object v1, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->B()Le/a/c/j/b;

    move-result-object v1

    .line 180
    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    .line 181
    invoke-static/range {v7 .. v17}, Le/a/c/p/a;->a2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/b/j;Le/a/c/a/c/h/l/c;Le/a/c/a/c/h/l/d;Le/a/c/e/c;Le/a/c/j/b;)Le/a/c/a/a/a/c;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
