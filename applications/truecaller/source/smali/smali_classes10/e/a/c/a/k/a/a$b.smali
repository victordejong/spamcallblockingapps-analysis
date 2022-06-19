.class public final Le/a/c/a/k/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/a/k/a/a;
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
.field public final a:Le/a/c/a/k/a/a;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/c/a/k/a/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 3
    iput p2, p0, Le/a/c/a/k/a/a$b;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/c/a/k/a/a$b;->b:I

    const-string v1, "ioContext"

    const-string v2, "messageFetcher"

    const-string v3, "Cannot return null from a non-@Nullable component method"

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/c/a/k/a/a$b;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 4
    iget-object v0, v0, Le/a/c/a/k/a/a;->a:Le/a/c/a/k/a/b;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    invoke-direct {v0}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;-><init>()V

    return-object v0

    .line 7
    :pswitch_1
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 8
    iget-object v1, v0, Le/a/c/a/k/a/a;->a:Le/a/c/a/k/a/b;

    iget-object v2, v0, Le/a/c/a/k/a/a;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/a/i/h;

    iget-object v4, v0, Le/a/c/a/k/a/a;->b:Le/a/c/h/k/a;

    invoke-interface {v4}, Le/a/c/h/k/a;->t()Le/a/c/h/h;

    move-result-object v4

    .line 9
    invoke-static {v4, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v5, v0, Le/a/c/a/k/a/a;->n:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/a/c/h/j;

    iget-object v0, v0, Le/a/c/a/k/a/a;->c:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v0

    .line 11
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lifeCycleAwareAnalyticsLogger"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageLocator"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toolTipController"

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "featuresRegistry"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v1, Le/a/c/a/k/d/b;

    invoke-direct {v1, v2, v4, v5, v0}, Le/a/c/a/k/d/b;-><init>(Le/a/c/a/i/h;Le/a/c/h/h;Le/a/c/a/c/h/j;Le/a/u3/g;)V

    return-object v1

    .line 14
    :pswitch_2
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 15
    new-instance v1, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v0, v0, Le/a/c/a/k/a/a;->d:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v0

    .line 16
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    invoke-direct {v1, v0}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v1

    .line 18
    :pswitch_3
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 19
    iget-object v4, v0, Le/a/c/a/k/a/a;->a:Le/a/c/a/k/a/b;

    iget-object v5, v0, Le/a/c/a/k/a/a;->b:Le/a/c/h/k/a;

    invoke-interface {v5}, Le/a/c/h/k/a;->H3()Le/a/c/h/g;

    move-result-object v5

    .line 20
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    iget-object v0, v0, Le/a/c/a/k/a/a;->c:Le/a/b0/c;

    invoke-interface {v0}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v0

    .line 22
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Le/a/c/a/k/b/e;

    invoke-direct {v1, v5, v0}, Le/a/c/a/k/b/e;-><init>(Le/a/c/h/g;Ls1/w/f;)V

    return-object v1

    .line 25
    :pswitch_4
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 26
    iget-object v4, v0, Le/a/c/a/k/a/a;->a:Le/a/c/a/k/a/b;

    iget-object v5, v0, Le/a/c/a/k/a/a;->b:Le/a/c/h/k/a;

    invoke-interface {v5}, Le/a/c/h/k/a;->H3()Le/a/c/h/g;

    move-result-object v5

    .line 27
    invoke-static {v5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v6, v0, Le/a/c/a/k/a/a;->c:Le/a/b0/c;

    invoke-interface {v6}, Le/a/b0/c;->B1()Ls1/w/f;

    move-result-object v6

    .line 29
    invoke-static {v6, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iget-object v0, v0, Le/a/c/a/k/a/a;->d:Le/a/c/l/a/a;

    invoke-interface {v0}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v0

    .line 31
    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insightsStatusProvider"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Le/a/c/a/k/b/b;

    iget-object v2, v4, Le/a/c/a/k/a/b;->a:Ljava/lang/Long;

    invoke-direct {v1, v5, v6, v0, v2}, Le/a/c/a/k/b/b;-><init>(Le/a/c/h/g;Ls1/w/f;Le/a/c/b/j;Ljava/lang/Long;)V

    return-object v1

    .line 34
    :pswitch_5
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 35
    new-instance v1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-object v2, v0, Le/a/c/a/k/a/a;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/c/a/k/b/b;

    iget-object v2, v0, Le/a/c/a/k/a/a;->g:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/c/a/k/b/e;

    iget-object v2, v0, Le/a/c/a/k/a/a;->i:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Le/a/c/a/i/h;

    .line 36
    new-instance v8, Le/a/c/a/i/j;

    iget-object v2, v0, Le/a/c/a/k/a/a;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->c5()Le/a/c/e/c;

    move-result-object v2

    .line 37
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-direct {v8, v2}, Le/a/c/a/i/j;-><init>(Le/a/c/e/c;)V

    .line 39
    iget-object v2, v0, Le/a/c/a/k/a/a;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->E2()Le/a/c/c0/o;

    move-result-object v9

    .line 40
    invoke-static {v9, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    iget-object v2, v0, Le/a/c/a/k/a/a;->d:Le/a/c/l/a/a;

    invoke-interface {v2}, Le/a/c/l/a/a;->w0()Le/a/c/b/j;

    move-result-object v10

    .line 42
    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iget-object v0, v0, Le/a/c/a/k/a/a;->b:Le/a/c/h/k/a;

    invoke-interface {v0}, Le/a/c/h/k/a;->h4()Le/a/c/h/d;

    move-result-object v11

    .line 44
    invoke-static {v11, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v1

    .line 45
    invoke-direct/range {v4 .. v11}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;-><init>(Le/a/c/a/k/b/b;Le/a/c/a/k/b/e;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;Le/a/c/b/j;Le/a/c/h/d;)V

    return-object v1

    .line 46
    :pswitch_6
    iget-object v0, p0, Le/a/c/a/k/a/a$b;->a:Le/a/c/a/k/a/a;

    .line 47
    new-instance v1, Le/a/c/a/a/g;

    .line 48
    const-class v2, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    iget-object v0, v0, Le/a/c/a/k/a/a;->k:Ljavax/inject/Provider;

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Le/a/c/a/a/g;-><init>(Ljava/util/Map;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
