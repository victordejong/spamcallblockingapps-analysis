.class public final Le/a/c/a/c/e/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/c/e/b;
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
.field public final a:Le/a/c/a/c/e/b;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/c/e/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 3
    iput p2, p0, Le/a/c/a/c/e/b$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/c/a/c/e/b$b;->b:I

    const-string v2, "ioContext"

    const-string v3, "Cannot return null from a non-@Nullable component method"

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, v0, Le/a/c/a/c/e/b$b;->b:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    .line 3
    :pswitch_0
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 4
    iget-object v4, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v5, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 5
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v1

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "insightConfig"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;

    invoke-direct {v2, v5, v1}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;-><init>(Ls1/w/f;Le/a/c/c0/o;)V

    return-object v2

    .line 10
    :pswitch_1
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 11
    new-instance v2, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v4

    .line 12
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iget-object v1, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v1

    .line 14
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    invoke-direct {v2, v4, v1}, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;-><init>(Le/a/c/e/c;Ls1/w/f;)V

    return-object v2

    .line 16
    :pswitch_2
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 17
    new-instance v2, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;

    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v1

    .line 18
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    invoke-direct {v2, v1}, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;-><init>(Le/a/c/c0/o;)V

    return-object v2

    .line 20
    :pswitch_3
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 21
    iget-object v2, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v4

    .line 22
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v5, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 24
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v6, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v6}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v6

    .line 26
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v1

    .line 28
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    invoke-static {v2, v4, v5, v6, v1}, Le/a/c/p/a;->e2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;)Le/a/c/a/c/f/j;

    move-result-object v1

    return-object v1

    .line 30
    :pswitch_4
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 31
    iget-object v4, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v5, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v5}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v5

    .line 32
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    iget-object v1, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v1

    .line 34
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "businessInsightsManager"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v2, Le/a/c/a/d/d/a;

    invoke-direct {v2, v5, v1}, Le/a/c/a/d/d/a;-><init>(Le/a/c/q/d;Ls1/w/f;)V

    return-object v2

    .line 37
    :pswitch_5
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 38
    iget-object v4, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v2, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v5

    .line 39
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iget-object v2, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v6

    .line 41
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    iget-object v2, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v7

    .line 43
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iget-object v2, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v8

    .line 45
    invoke-static {v8, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iget-object v2, v1, Le/a/c/a/c/e/b;->n:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/c/a/d/d/a;

    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v10

    .line 47
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    invoke-static/range {v4 .. v10}, Le/a/c/p/a;->c2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/d/d/a;Le/a/c/e/c;)Le/a/c/a/c/f/b;

    move-result-object v1

    return-object v1

    .line 49
    :pswitch_6
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 50
    iget-object v2, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c2()Le/a/c/q/d;

    move-result-object v4

    .line 51
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    iget-object v5, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v5}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v5

    .line 53
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v6, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v6}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v6

    .line 55
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v1, v1, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v1}, Le/a/c/h/k/a;->A1()Le/a/c/h/e;

    move-result-object v1

    .line 57
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    invoke-static {v2, v4, v5, v6, v1}, Le/a/c/p/a;->o2(Le/a/c/a/c/e/a;Le/a/c/q/d;Ls1/w/f;Le/a/c/b/j;Le/a/c/h/e;)Le/a/c/a/c/f/g;

    move-result-object v1

    return-object v1

    .line 59
    :pswitch_7
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 60
    new-instance v2, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object v4, v1, Le/a/c/a/c/e/b;->m:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/c/a/c/f/g;

    iget-object v4, v1, Le/a/c/a/c/e/b;->o:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Le/a/c/a/c/f/b;

    iget-object v4, v1, Le/a/c/a/c/e/b;->p:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Le/a/c/a/c/f/j;

    .line 61
    new-instance v8, Le/a/c/a/i/j;

    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v4

    .line 62
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    invoke-direct {v8, v4}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 64
    new-instance v16, Le/a/c/a/c/f/o;

    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v10

    .line 65
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iget-object v4, v1, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->R3()Le/a/c/h/i;

    move-result-object v11

    .line 67
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v12

    .line 69
    invoke-static {v12, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v13

    .line 71
    invoke-static {v13, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->x6()Le/a/c/b/e;

    move-result-object v14

    .line 73
    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v4, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v15

    .line 75
    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v9, v16

    .line 76
    invoke-direct/range {v9 .. v15}, Le/a/c/a/c/f/o;-><init>(Le/a/c/c0/o;Le/a/c/h/i;Le/a/c/e/c;Le/a/c/b/j;Le/a/c/b/e;Ls1/w/f;)V

    .line 77
    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v10

    .line 78
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v11

    .line 80
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iget-object v4, v1, Le/a/c/a/c/e/b;->r:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Le/a/c/a/c/f/y;

    iget-object v4, v1, Le/a/c/a/c/e/b;->h:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Le/a/c/a/i/h;

    iget-object v4, v1, Le/a/c/a/c/e/b;->i:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Le/a/c/a/c/h/j;

    iget-object v4, v1, Le/a/c/a/c/e/b;->t:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Le/a/c/a/i/a;

    iget-object v4, v1, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->h4()Le/a/c/h/d;

    move-result-object v9

    .line 82
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    iget-object v4, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v4}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v4

    .line 84
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    new-instance v0, Le/a/c/a/c/f/x;

    move-object/from16 v17, v4

    iget-object v4, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v4}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v4

    .line 86
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v18, v9

    .line 87
    iget-object v9, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v9}, Le/a/c/l/a/a;->O0()Le/a/c/b/h;

    move-result-object v9

    .line 88
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v19, v15

    .line 89
    iget-object v15, v1, Le/a/c/a/c/e/b;->e:Le/a/b0/c;

    invoke-interface {v15}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v15

    .line 90
    invoke-static {v15, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v20, v14

    .line 91
    iget-object v14, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v14}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v14

    .line 92
    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-direct {v0, v4, v9, v15, v14}, Le/a/c/a/c/f/x;-><init>(Le/a/c/c0/o;Le/a/c/b/h;Ls1/w/f;Le/a/c/e/c;)V

    .line 94
    iget-object v1, v1, Le/a/c/a/c/e/b;->u:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/a/c/h/k;

    move-object/from16 v3, v17

    move-object v4, v2

    move-object/from16 v17, v18

    move-object/from16 v9, v16

    move-object/from16 v14, v20

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v19}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;-><init>(Le/a/c/a/c/f/g;Le/a/c/a/c/f/b;Le/a/c/a/c/f/j;Le/a/c/a/i/j;Le/a/c/a/c/f/o;Le/a/c/b/j;Le/a/c/c0/o;Le/a/c/a/c/f/y;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/a/i/a;Le/a/c/h/d;Ls1/w/f;Le/a/c/a/c/f/x;Le/a/c/a/c/h/k;)V

    return-object v2

    .line 95
    :pswitch_8
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 96
    new-instance v2, Le/a/c/a/a/g;

    .line 97
    const-class v3, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    iget-object v1, v1, Le/a/c/a/c/e/b;->w:Ljavax/inject/Provider;

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 98
    invoke-direct {v2, v1}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v2

    .line 99
    :pswitch_9
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 100
    iget-object v2, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v4, v1, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v4

    .line 101
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v5, v1, Le/a/c/a/c/e/b;->b:Le/a/b0/m/b/a;

    invoke-interface {v5}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v5

    .line 103
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    iget-object v6, v1, Le/a/c/a/c/e/b;->h:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/a/i/h;

    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v1

    .line 105
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    invoke-static {v2, v4, v5, v6, v1}, Le/a/c/p/a;->k2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)Le/a/c/a/c/h/l/d;

    move-result-object v1

    return-object v1

    .line 107
    :pswitch_a
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 108
    iget-object v2, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v4, v1, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v4

    .line 109
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iget-object v5, v1, Le/a/c/a/c/e/b;->b:Le/a/b0/m/b/a;

    invoke-interface {v5}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v5

    .line 111
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v6, v1, Le/a/c/a/c/e/b;->h:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/a/i/h;

    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v1

    .line 113
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    invoke-static {v2, v4, v5, v6, v1}, Le/a/c/p/a;->j2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;)Le/a/c/a/c/h/l/c;

    move-result-object v1

    return-object v1

    .line 115
    :pswitch_b
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 116
    iget-object v1, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    .line 117
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    invoke-direct {v1}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;-><init>()V

    return-object v1

    .line 119
    :pswitch_c
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 120
    new-instance v2, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v1

    .line 121
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    invoke-direct {v2, v1}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v2

    .line 123
    :pswitch_d
    iget-object v1, v0, Le/a/c/a/c/e/b$b;->a:Le/a/c/a/c/e/b;

    .line 124
    iget-object v4, v1, Le/a/c/a/c/e/b;->d:Le/a/c/a/c/e/a;

    iget-object v2, v1, Le/a/c/a/c/e/b;->a:Le/a/c/h/k/a;

    invoke-interface {v2}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v5

    .line 125
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iget-object v2, v1, Le/a/c/a/c/e/b;->b:Le/a/b0/m/b/a;

    invoke-interface {v2}, Le/a/b0/m/b/a;->u()Le/a/b0/m/c/a;

    move-result-object v6

    .line 127
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iget-object v2, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->b3()Le/a/c/x/a;

    move-result-object v7

    .line 129
    invoke-static {v7, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    iget-object v2, v1, Le/a/c/a/c/e/b;->h:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le/a/c/a/i/h;

    iget-object v2, v1, Le/a/c/a/c/e/b;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Le/a/c/a/c/h/j;

    iget-object v2, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v10

    .line 131
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v2, v1, Le/a/c/a/c/e/b;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Le/a/c/a/c/h/l/c;

    iget-object v2, v1, Le/a/c/a/c/e/b;->k:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Le/a/c/a/c/h/l/d;

    iget-object v2, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v13

    .line 133
    invoke-static {v13, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    iget-object v1, v1, Le/a/c/a/c/e/b;->c:Le/a/c/l/a/a;

    invoke-interface {v1}, Le/a/c/l/a/a;->B()Le/a/c/j/b;

    move-result-object v14

    .line 135
    invoke-static {v14, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    invoke-static/range {v4 .. v14}, Le/a/c/p/a;->a2(Le/a/c/a/c/e/a;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/x/a;Le/a/c/a/i/h;Le/a/c/a/c/h/j;Le/a/c/b/j;Le/a/c/a/c/h/l/c;Le/a/c/a/c/h/l/d;Le/a/c/e/c;Le/a/c/j/b;)Le/a/c/a/a/a/c;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
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
