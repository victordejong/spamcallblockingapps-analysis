.class public final Le/a/d/c/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/d/c/b/a;


# direct methods
.method public constructor <init>(Le/a/d/c/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/b/e;->a:Le/a/d/c/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/d/c/b/e;->a:Le/a/d/c/b/a;

    invoke-virtual {p1}, Le/a/d/c/b/a;->RA()Le/a/d/c/b/g;

    move-result-object p1

    check-cast p1, Le/a/d/c/b/o;

    .line 2
    iget-object v0, p1, Le/a/d/c/b/o;->e:Le/a/d/v/d;

    invoke-interface {v0}, Le/a/d/v/d;->e()Lq3/a/p1;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/b/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/d/c/b/h;->Pl()V

    :cond_0
    return-void
.end method
