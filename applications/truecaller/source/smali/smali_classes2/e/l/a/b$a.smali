.class public Le/l/a/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/b;->a()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/b;


# direct methods
.method public constructor <init>(Le/l/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/b$a;->a:Le/l/a/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/l/a/b$a;->a:Le/l/a/b;

    iget-object p1, p1, Le/l/a/b;->b:Le/l/a/b$b;

    invoke-interface {p1}, Le/l/a/b$b;->a()V

    return-void
.end method
