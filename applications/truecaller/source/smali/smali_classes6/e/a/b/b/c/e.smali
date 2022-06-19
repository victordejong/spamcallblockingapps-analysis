.class public final Le/a/b/b/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/c/e;->a:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/b/b/c/e;->a:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
