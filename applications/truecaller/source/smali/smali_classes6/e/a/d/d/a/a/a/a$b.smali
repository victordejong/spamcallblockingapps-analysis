.class public final Le/a/d/d/a/a/a/a$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/a/a/a;-><init>(Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/d/a/a/a/a$b;->b:I

    iput-object p2, p0, Le/a/d/d/a/a/a/a$b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/d/d/a/a/a/a$b;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/a/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/a/a/a;

    .line 2
    iget-object v0, v0, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v1, 0x7f0a1245

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "listItemX.findViewById(R.id.title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/d/d/a/a/a/a$b;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/a/a/a;

    .line 6
    iget-object v0, v0, Le/a/d/d/a/a/a/a;->g:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v1, 0x7f0a10de

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "listItemX.findViewById(R.id.subtitle)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method
