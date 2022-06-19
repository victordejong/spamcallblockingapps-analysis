.class public final Le/a/x/p;
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
.field public final synthetic a:Le/a/x/r;

.field public final synthetic b:Ls1/z/b/a;

.field public final synthetic c:Ln3/b/a/q;

.field public final synthetic d:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/x/r;Ls1/z/b/a;Ln3/b/a/q;Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Le/a/x/p;->a:Le/a/x/r;

    iput-object p2, p0, Le/a/x/p;->b:Ls1/z/b/a;

    iput-object p3, p0, Le/a/x/p;->c:Ln3/b/a/q;

    iput-object p4, p0, Le/a/x/p;->d:Landroidx/fragment/app/Fragment;

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
    iget-object p1, p0, Le/a/x/p;->b:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/x/p;->c:Ln3/b/a/q;

    iget-object v0, p0, Le/a/x/p;->d:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/x/p;->a:Le/a/x/r;

    .line 6
    iget-object p1, p1, Le/a/x/r;->a:Le/a/x/h0/a;

    .line 7
    new-instance v0, Le/a/x/h0/b/g;

    iget-object v1, p1, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v1}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/x/h0/b/g;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    :goto_0
    return-void
.end method
