.class public final Le/a/a/c/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/c6;

.field public final synthetic b:Le/a/a/c/a6;


# direct methods
.method public constructor <init>(Le/a/a/c/c6;Le/a/a/c/a6;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b6;->a:Le/a/a/c/c6;

    iput-object p2, p0, Le/a/a/c/b6;->b:Le/a/a/c/a6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/c/b6;->a:Le/a/a/c/c6;

    .line 2
    iget-object p1, p1, Le/a/a/c/c6;->a:Le/a/a/c/d6;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/c/b6;->b:Le/a/a/c/a6;

    .line 4
    iget v0, v0, Le/a/a/c/a6;->a:I

    .line 5
    invoke-interface {p1, v0}, Le/a/a/c/d6;->n(I)V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
