.class public Le/a/e/c2/e0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/FeedbackItemView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FeedbackItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/e0;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c2/e0;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/truecaller/ui/components/FeedbackItemView;->i:Z

    return-void
.end method
