.class public Lcom/truecaller/wizard/internal/components/EditText$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/wizard/internal/components/EditText;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/wizard/internal/components/EditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/wizard/internal/components/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText$a;->a:Lcom/truecaller/wizard/internal/components/EditText;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/wizard/internal/components/EditText$a;->a:Lcom/truecaller/wizard/internal/components/EditText;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
