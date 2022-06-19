.class public final Le/a/c/a/j/c/k/b;
.super Le/a/c/a/j/c/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/j/c/k/d<",
        "Le/a/c/a/j/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/c/a/g/h1;

.field public final c:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Le/a/c/a/j/b/c;",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/g/h1;Ls1/z/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/g/h1;",
            "Ls1/z/b/p<",
            "-",
            "Le/a/c/a/j/b/c;",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/h1;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Le/a/c/a/j/c/k/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/c/a/j/c/k/b;->b:Le/a/c/a/g/h1;

    iput-object p2, p0, Le/a/c/a/j/c/k/b;->c:Ls1/z/b/p;

    return-void
.end method


# virtual methods
.method public O4()V
    .locals 0

    return-void
.end method
