.class public Le/a/o5/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 2
    new-instance p1, Le/a/o5/f1;

    invoke-direct {p1, p0}, Le/a/o5/f1;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object p1
.end method
