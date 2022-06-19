.class public final Le/a/g5/j$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g5/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/j;


# direct methods
.method public constructor <init>(Le/a/g5/j;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/j$f;->a:Le/a/g5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/g5/j$f;->a:Le/a/g5/j;

    .line 2
    sget-object p2, Le/a/g5/j;->o:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/g5/j;->SA()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
