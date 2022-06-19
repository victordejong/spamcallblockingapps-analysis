.class public final Le/a/i/c0/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/i/c0/o/e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/i/c0/o/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/i/c0/o/e;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c0/o/b;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/i/c0/o/b;->b:Le/a/i/c0/o/e;

    iput-object p3, p0, Le/a/i/c0/o/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    iget-object p1, p0, Le/a/i/c0/o/b;->b:Le/a/i/c0/o/e;

    iget-object p2, p0, Le/a/i/c0/o/b;->a:Ljava/lang/String;

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Le/a/i/c0/o/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/i/c0/o/b;->b:Le/a/i/c0/o/e;

    iget-object p2, p0, Le/a/i/c0/o/b;->a:Ljava/lang/String;

    iget-object p4, p0, Le/a/i/c0/o/b;->c:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Le/a/i/c0/o/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/i/c0/o/b;->b:Le/a/i/c0/o/e;

    iget-object v0, p0, Le/a/i/c0/o/b;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Le/a/i/c0/o/e;->S(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
