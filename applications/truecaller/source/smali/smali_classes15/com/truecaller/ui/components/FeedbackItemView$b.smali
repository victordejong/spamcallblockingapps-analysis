.class public Lcom/truecaller/ui/components/FeedbackItemView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/components/FeedbackItemView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/FeedbackItemView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FeedbackItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView$b;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView$b;->a:Lcom/truecaller/ui/components/FeedbackItemView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/truecaller/ui/components/FeedbackItemView;->i:Z

    .line 3
    iget-object v0, p1, Lcom/truecaller/ui/components/FeedbackItemView;->j:Lcom/truecaller/ui/components/FeedbackItemView$c;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView;->a:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 5
    check-cast v0, Lcom/truecaller/ui/FeedbackDialogActivity;

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/FeedbackDialogActivity;->pa(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V

    :cond_0
    return-void
.end method
