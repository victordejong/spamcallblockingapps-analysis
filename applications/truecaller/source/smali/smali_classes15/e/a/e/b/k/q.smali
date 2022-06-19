.class public final Le/a/e/b/k/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/e/b/k/p;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Le/a/e/b/k/p;Z)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/q;->a:Le/a/e/b/k/p;

    iput-boolean p2, p0, Le/a/e/b/k/q;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/b/k/q;->a:Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    iget-boolean v0, p0, Le/a/e/b/k/q;->b:Z

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Le/a/e/b/k/t;->m7(Z)V

    return-void
.end method
