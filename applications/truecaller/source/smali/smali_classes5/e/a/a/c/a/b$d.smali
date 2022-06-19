.class public final Le/a/a/c/a/b$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/b;->e(Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/a/b;


# direct methods
.method public constructor <init>(Le/a/a/c/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/b$d;->b:Le/a/a/c/a/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/a/b$d;->b:Le/a/a/c/a/b;

    .line 2
    iget-object v1, v0, Le/a/a/c/a/b;->f:Landroid/widget/TextView;

    .line 3
    iget-object v0, v0, Le/a/a/c/a/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object v0, p0, Le/a/a/c/a/b$d;->b:Le/a/a/c/a/b;

    .line 6
    iget-object v0, v0, Le/a/a/c/a/b;->g:Lcom/airbnb/lottie/LottieAnimationView;

    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 8
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
