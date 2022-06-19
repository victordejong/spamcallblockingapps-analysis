.class public final Le/a/h/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/a/e/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/j;

.field public final synthetic b:Ls1/z/b/a;

.field public final synthetic c:Ln3/b/a/q;


# direct methods
.method public constructor <init>(Le/a/h/b/j;Ls1/z/b/a;Ln3/b/a/q;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/k;->a:Le/a/h/b/j;

    iput-object p2, p0, Le/a/h/b/k;->b:Ls1/z/b/a;

    iput-object p3, p0, Le/a/h/b/k;->c:Ln3/b/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "isGranted"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/h/b/k;->b:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/h/b/k;->c:Ln3/b/a/q;

    iget-object v0, p0, Le/a/h/b/k;->a:Le/a/h/b/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
