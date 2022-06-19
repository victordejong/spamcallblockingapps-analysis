.class public final Le/a/e/a/e3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/a/d3;


# direct methods
.method public constructor <init>(Le/a/e/a/d3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/e/a/e3;->a:Le/a/e/a/d3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/e/a/e3;->a:Le/a/e/a/d3;

    invoke-static {p1}, Le/a/e/a/d3;->a(Le/a/e/a/d3;)V

    return-void
.end method
