.class public final Le/a/o/a/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/o/a/a/b/b;


# direct methods
.method public constructor <init>(Le/a/o/a/a/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/a/b/c;->a:Le/a/o/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/o/a/a/b/c;->a:Le/a/o/a/a/b/b;

    .line 2
    iget-object p1, p1, Le/a/o/a/a/b/b;->e:Le/a/o/a/a/b/d;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/o/a/a/b/d;->W()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
