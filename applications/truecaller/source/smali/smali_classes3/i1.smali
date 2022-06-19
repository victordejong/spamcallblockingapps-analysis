.class public final Li1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Li1;->a:I

    iput-object p2, p0, Li1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Li1;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Li1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-virtual {p1}, Lcom/truecaller/placepicker/PlacePickerActivity;->qa()Le/a/k4/g;

    move-result-object p1

    check-cast p1, Le/a/k4/i;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/k4/h;->D2()V

    :cond_0
    return-void

    .line 3
    :cond_1
    throw v0

    .line 4
    :cond_2
    iget-object p1, p0, Li1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/placepicker/PlacePickerActivity;

    invoke-virtual {p1}, Lcom/truecaller/placepicker/PlacePickerActivity;->qa()Le/a/k4/g;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Le/a/k4/i;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v4, Le/a/k4/k;

    invoke-direct {v4, v1, v0}, Le/a/k4/k;-><init>(Le/a/k4/i;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
