.class public final Le/a/k/a/g/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/p;->a:Le/a/k/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/k/a/g/p;->a:Le/a/k/a/g/f;

    invoke-virtual {p1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object p1

    check-cast p1, Le/a/k/a/g/y;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/k/a/g/j0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/k/a/g/j0;-><init>(Le/a/k/a/g/y;Ls1/w/d;)V

    invoke-virtual {p1, v0}, Le/a/k/a/g/y;->Pj(Ls1/z/b/l;)V

    return-void
.end method
