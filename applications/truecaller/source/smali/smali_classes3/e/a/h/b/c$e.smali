.class public final Le/a/h/b/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c;-><init>(Le/a/h/b/j0$a;Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/c;


# direct methods
.method public constructor <init>(Le/a/h/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c$e;->a:Le/a/h/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/h/b/c$e;->a:Le/a/h/b/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 3
    invoke-interface {p1}, Le/a/h/b/j0$a;->Dc()V

    const/4 p1, 0x1

    return p1
.end method
