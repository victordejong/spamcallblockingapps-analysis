.class public final Le/a/c/a/k/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/k/d/e;

.field public final synthetic b:Le/a/c/a/l/b$c;


# direct methods
.method public constructor <init>(Le/a/c/a/k/d/e;Le/a/c/a/l/b$c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/d/d;->a:Le/a/c/a/k/d/e;

    iput-object p2, p0, Le/a/c/a/k/d/d;->b:Le/a/c/a/l/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/k/d/d;->a:Le/a/c/a/k/d/e;

    .line 2
    iget-object p1, p1, Le/a/c/a/k/d/e;->f:Le/a/c/a/k/d/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Le/a/c/a/k/d/d;->b:Le/a/c/a/l/b$c;

    invoke-interface {p1, v0, v1}, Le/a/c/a/k/d/a;->b(ZLe/a/c/a/l/b$c;)V

    :cond_0
    return-void
.end method
