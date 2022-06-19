.class public Le/a/b0/a/a/e;
.super Le/a/b0/a/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/widget/AdapterView$OnItemClickListener;Le/a/b0/a/a/e$a;)V
    .locals 1

    .line 1
    new-instance p6, Le/a/b0/a/a/d;

    invoke-static {}, Le/a/b0/q/j;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p6, v0}, Le/a/b0/a/a/d;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p6}, Le/a/b0/a/a/g;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    .line 2
    iput p2, p0, Le/a/b0/a/a/g;->h:I

    .line 3
    invoke-virtual {p0, p2}, Le/a/b0/a/a/g;->d(I)V

    .line 4
    iput p3, p0, Le/a/b0/a/a/g;->f:I

    .line 5
    iput p4, p0, Le/a/b0/a/a/g;->g:I

    .line 6
    iput-object p5, p0, Le/a/b0/a/a/g;->e:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method
