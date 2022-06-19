.class public final Le/a/c/a/b/a/z$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/z;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/z;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/z;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/z$d;->a:Le/a/c/a/b/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/b/a/z$d;->a:Le/a/c/a/b/a/z;

    .line 2
    sget-object v1, Le/a/c/a/b/a/z;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/c/a/b/a/z;->OA()Le/a/c/a/g/o;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/c/a/g/o;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->f1(F)V

    return-void
.end method
