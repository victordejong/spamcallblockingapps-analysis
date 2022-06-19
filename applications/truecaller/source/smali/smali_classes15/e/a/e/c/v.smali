.class public final synthetic Le/a/e/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/v;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/a/e/c/v;->a:Le/a/e/c/s1;

    .line 1
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    .line 3
    iget-object v3, v0, Le/a/e/c/s1;->m:Le/a/e/c/n2;

    iget-object v4, v0, Le/a/e/c/s1;->N1:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v3, v4}, Le/a/e/c/n2;->b(Lcom/truecaller/data/entity/Contact;)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v2, Le/a/e/c/u0;

    invoke-direct {v2, v0}, Le/a/e/c/u0;-><init>(Le/a/e/c/s1;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
