.class public final Le/a/a/c/i/m;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/i/i;


# static fields
.field public static final synthetic b:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/c/i/m;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/CallsHistoryBottomSheetItemBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/c/i/m;->b:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance p1, Le/a/p5/x0/b;

    new-instance v0, Le/a/a/c/i/m$a;

    invoke-direct {v0}, Le/a/a/c/i/m$a;-><init>()V

    invoke-direct {p1, v0}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/a/c/i/m;->a:Le/a/p5/x0/b;

    return-void
.end method


# virtual methods
.method public final N4()Le/a/m3/q;
    .locals 3

    iget-object v0, p0, Le/a/a/c/i/m;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/a/c/i/m;->b:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/m3/q;

    return-object v0
.end method

.method public O3(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/m;->N4()Le/a/m3/q;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/q;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public V1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/m;->N4()Le/a/m3/q;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/q;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.callType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 2

    const-string v0, "duration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/m;->N4()Le/a/m3/q;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/q;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.callDuration"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o0(Ljava/lang/String;)V
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/m;->N4()Le/a/m3/q;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/q;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.callDate"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/m;->N4()Le/a/m3/q;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/q;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public v0(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/i/m;->N4()Le/a/m3/q;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/q;->d:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Le/a/a/c/i/m$b;

    invoke-direct {v1, p0, p1}, Le/a/a/c/i/m$b;-><init>(Le/a/a/c/i/m;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
