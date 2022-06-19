.class public Le/m/a/g/q/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/m/a/g/q/g;


# direct methods
.method public constructor <init>(Le/m/a/g/q/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/q/e;->a:Le/m/a/g/q/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Le/m/a/g/q/e;->a:Le/m/a/g/q/g;

    .line 3
    iget v0, p1, Le/m/a/g/q/g;->h:I

    add-int/lit8 v0, v0, 0x4

    .line 4
    iget-object v1, p1, Le/m/a/g/q/g;->g:Le/m/a/g/q/c;

    .line 5
    iget-object v1, v1, Le/m/a/g/q/c;->c:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 6
    iput v0, p1, Le/m/a/g/q/g;->h:I

    return-void
.end method
