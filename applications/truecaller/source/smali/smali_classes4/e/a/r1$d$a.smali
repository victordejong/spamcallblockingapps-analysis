.class public final Le/a/r1$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1$d;
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
.field public final a:Le/a/r1$d;

.field public final b:I


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/r1$d$a;->a:Le/a/r1$d;

    .line 3
    iput p3, p0, Le/a/r1$d$a;->b:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/r1$d$a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/r1$d$a;->a:Le/a/r1$d;

    .line 3
    new-instance v1, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;

    iget-object v2, v0, Le/a/r1$d;->d:Le/a/r1;

    .line 4
    iget-object v2, v2, Le/a/r1;->k4:Ljavax/inject/Provider;

    .line 5
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/e/c;

    iget-object v0, v0, Le/a/r1$d;->d:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 7
    invoke-static {v0}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;-><init>(Le/a/c/e/c;Ls1/w/f;)V

    return-object v1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Le/a/r1$d$a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/r1$d$a;->a:Le/a/r1$d;

    .line 10
    new-instance v1, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;

    iget-object v0, v0, Le/a/r1$d;->d:Le/a/r1;

    .line 11
    iget-object v0, v0, Le/a/r1;->k4:Ljavax/inject/Provider;

    .line 12
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/e/c;

    invoke-direct {v1, v0}, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;-><init>(Le/a/c/e/c;)V

    return-object v1

    .line 13
    :cond_2
    new-instance v0, Lo3/b/a/c/c/c$d;

    invoke-direct {v0}, Lo3/b/a/c/c/c$d;-><init>()V

    return-object v0
.end method
