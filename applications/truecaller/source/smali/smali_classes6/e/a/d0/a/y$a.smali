.class public Le/a/d0/a/y$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/y;->b(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le/a/d0/a/y;


# direct methods
.method public constructor <init>(Le/a/d0/a/y;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d0/a/y$a;->b:Le/a/d0/a/y;

    iput-boolean p2, p0, Le/a/d0/a/y$a;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/a/d0/a/y$a;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d0/a/y$a;->b:Le/a/d0/a/y;

    invoke-virtual {p1}, Le/a/d0/a/y;->l()V

    :cond_0
    return-void
.end method
