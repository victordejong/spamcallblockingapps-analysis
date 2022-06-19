.class public Le/m/a/g/q/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/a/g/q/g;


# direct methods
.method public constructor <init>(Le/m/a/g/q/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/q/f;->a:Le/m/a/g/q/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Le/m/a/g/q/f;->a:Le/m/a/g/q/g;

    invoke-virtual {p1}, Le/m/a/g/q/g;->a()V

    .line 3
    iget-object p1, p0, Le/m/a/g/q/f;->a:Le/m/a/g/q/g;

    iget-object v0, p1, Le/m/a/g/q/g;->k:Ln3/h0/a/a/b;

    iget-object p1, p1, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    invoke-virtual {v0, p1}, Ln3/h0/a/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
