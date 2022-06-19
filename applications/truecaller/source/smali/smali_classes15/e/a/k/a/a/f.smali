.class public Le/a/k/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/k/a/a/g;


# direct methods
.method public constructor <init>(Le/a/k/a/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/k/a/a/f;->a:Le/a/k/a/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k/a/a/f;->a:Le/a/k/a/a/g;

    .line 2
    iget-boolean v0, p1, Le/a/k/a/a/g;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/k/a/a/g;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/k/a/a/g;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/a/a/k;

    check-cast p1, Lcom/truecaller/videocallerid/ui/onboarding/VideoIdOnboardingBottomSheetActivity;

    invoke-interface {v0, p1}, Le/a/k/a/a/k;->E(Lcom/truecaller/videocallerid/ui/onboarding/VideoIdOnboardingBottomSheetActivity;)V

    :cond_0
    return-void
.end method
