.class public Lcom/truecaller/wizard/internal/components/EditText$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/wizard/internal/components/EditText;->setIcon(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Lcom/truecaller/wizard/internal/components/EditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/wizard/internal/components/EditText;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText$b;->b:Lcom/truecaller/wizard/internal/components/EditText;

    iput-object p2, p0, Lcom/truecaller/wizard/internal/components/EditText$b;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText$b;->b:Lcom/truecaller/wizard/internal/components/EditText;

    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/EditText$b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText$b;->b:Lcom/truecaller/wizard/internal/components/EditText;

    iget-object v0, p0, Lcom/truecaller/wizard/internal/components/EditText$b;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    .line 4
    sget v2, Lcom/truecaller/wizard/internal/components/EditText;->i:I

    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/truecaller/wizard/internal/components/EditText;->c(Landroid/graphics/drawable/Drawable;Z)Landroid/animation/Animator;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method
