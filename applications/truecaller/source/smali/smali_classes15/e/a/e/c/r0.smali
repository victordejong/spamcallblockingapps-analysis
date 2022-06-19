.class public final synthetic Le/a/e/c/r0;
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

    iput-object p1, p0, Le/a/e/c/r0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/e/c/r0;->a:Le/a/e/c/s1;

    .line 1
    sget-object v1, Le/a/e/c/s1;->W1:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Le/a/e/c/s1;->v0:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    :cond_0
    return-void
.end method
