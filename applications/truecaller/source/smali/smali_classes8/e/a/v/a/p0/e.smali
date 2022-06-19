.class public final Le/a/v/a/p0/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/p0/d;


# direct methods
.method public constructor <init>(Le/a/v/a/p0/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/p0/e;->b:Le/a/v/a/p0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/p0/e;->b:Le/a/v/a/p0/d;

    .line 2
    iget-object v0, v0, Le/a/v/a/p0/d;->t:Le/a/v/k/s;

    .line 3
    iget-object v0, v0, Le/a/v/k/s;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
