.class public Le/a/p2/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/aftercall/AfterCallPromotionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/p2/h;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/p2/h;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p1, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->j:J

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4
    iget-object p1, p0, Le/a/p2/h;->a:Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
