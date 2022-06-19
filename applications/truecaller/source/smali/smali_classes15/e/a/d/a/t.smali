.class public final Le/a/d/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lq3/a/x2/a1;


# direct methods
.method public constructor <init>(Landroid/widget/ArrayAdapter;Ljava/util/List;Lq3/a/x2/a1;)V
    .locals 0

    iput-object p2, p0, Le/a/d/a/t;->a:Ljava/util/List;

    iput-object p3, p0, Le/a/d/a/t;->b:Lq3/a/x2/a1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1
    iget-object p1, p0, Le/a/d/a/t;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/c0/j;

    .line 2
    iget-object p2, p0, Le/a/d/a/t;->b:Lq3/a/x2/a1;

    invoke-interface {p2, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
