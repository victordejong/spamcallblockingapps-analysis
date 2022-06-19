.class public final Le/a/k/a/g/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/k/a/g/f;


# direct methods
.method public constructor <init>(Le/a/k/a/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/g/s;->a:Le/a/k/a/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/k/a/g/s;->a:Le/a/k/a/g/f;

    invoke-virtual {p1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object p1

    check-cast p1, Le/a/k/a/g/y;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/g/x;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/k/a/g/x;->n9()V

    :cond_0
    return-void
.end method
