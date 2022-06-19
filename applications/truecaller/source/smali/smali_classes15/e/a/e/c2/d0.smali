.class public Le/a/e/c2/d0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:Lcom/truecaller/ui/components/FeedbackItemView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FeedbackItemView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/d0;->c:Lcom/truecaller/ui/components/FeedbackItemView;

    iput-object p2, p0, Le/a/e/c2/d0;->a:Ljava/lang/String;

    iput-object p3, p0, Le/a/e/c2/d0;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c2/d0;->c:Lcom/truecaller/ui/components/FeedbackItemView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView;->c:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Le/a/e/c2/d0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Le/a/e/c2/d0;->c:Lcom/truecaller/ui/components/FeedbackItemView;

    .line 5
    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView;->b:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Le/a/e/c2/d0;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
