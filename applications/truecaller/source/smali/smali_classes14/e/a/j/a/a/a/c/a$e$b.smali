.class public final Le/a/j/a/a/a/c/a$e$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j/a/a/a/c/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/j/d/h;

.field public final synthetic b:Le/a/j/a/a/a/c/a$e;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/a$e;Le/a/j/d/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j/d/h;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/j/a/a/a/c/a$e$b;->b:Le/a/j/a/a/a/c/a$e;

    .line 2
    iget-object p1, p2, Le/a/j/d/h;->a:Landroid/widget/RadioButton;

    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/j/a/a/a/c/a$e$b;->a:Le/a/j/d/h;

    return-void
.end method
