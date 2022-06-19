.class public final Le/a/h0/a/z;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/h0/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Ls1/b0/c;

.field public final b:Le/a/h0/a/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h0/a/z;

    const-string v2, "switches"

    const-string v3, "getSwitches()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h0/a/z;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h0/a/s;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/h0/a/z;->b:Le/a/h0/a/s;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 3
    new-instance v0, Le/a/h0/a/x;

    invoke-direct {v0, p1, p1, p0}, Le/a/h0/a/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/h0/a/z;)V

    .line 4
    iput-object v0, p0, Le/a/h0/a/z;->a:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h0/a/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h0/a/z;->a:Ls1/b0/c;

    sget-object v1, Le/a/h0/a/z;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h0/a/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/h0/a/z;->a:Ls1/b0/c;

    sget-object v1, Le/a/h0/a/z;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h0/a/z;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 6

    .line 1
    check-cast p1, Le/a/h0/a/a;

    const-string v0, "viewHolder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h0/a/z;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h0/a/w;

    .line 4
    iget-object v1, v0, Le/a/h0/a/w;->a:Le/a/h0/a/v;

    .line 5
    iget-boolean v0, v0, Le/a/h0/a/w;->b:Z

    .line 6
    invoke-virtual {p1}, Le/a/h0/a/a;->N4()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p1}, Le/a/h0/a/a;->P4()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1}, Le/a/h0/a/a;->Q4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    iget-object v2, p1, Le/a/h0/a/a;->b:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 10
    new-instance v3, La0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1}, La0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v2, p1, Le/a/h0/a/a;->c:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 12
    new-instance v3, La0;

    const/4 v5, 0x1

    invoke-direct {v3, v5, p1}, La0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v2, v1, Le/a/h0/a/v;->a:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {p1}, Le/a/h0/a/a;->O4()Lcom/truecaller/ui/view/TintedImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p1}, Le/a/h0/a/a;->O4()Lcom/truecaller/ui/view/TintedImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Le/a/h0/a/a;->O4()Lcom/truecaller/ui/view/TintedImageView;

    move-result-object v2

    .line 17
    iget-object v3, v1, Le/a/h0/a/v;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v3, v1, Le/a/h0/a/v;->a:Ljava/lang/Integer;

    .line 19
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 20
    :goto_1
    iget-object v2, p1, Le/a/h0/a/a;->b:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 21
    iget v3, v1, Le/a/h0/a/v;->c:I

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 23
    iget-object v2, p1, Le/a/h0/a/a;->c:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 24
    iget v3, v1, Le/a/h0/a/v;->d:I

    .line 25
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 26
    invoke-virtual {p1}, Le/a/h0/a/a;->Q4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 27
    invoke-virtual {p1}, Le/a/h0/a/a;->N4()Landroid/widget/TextView;

    move-result-object v0

    .line 28
    iget-boolean v2, v1, Le/a/h0/a/v;->e:Z

    .line 29
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 30
    invoke-virtual {p1}, Le/a/h0/a/a;->P4()Landroid/widget/TextView;

    move-result-object v0

    .line 31
    iget-boolean v2, v1, Le/a/h0/a/v;->f:Z

    .line 32
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 33
    iget-boolean v0, v1, Le/a/h0/a/v;->e:Z

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p1}, Le/a/h0/a/a;->N4()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lr0;

    invoke-direct {v2, v4, p0, v1}, Lr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_2
    iget-boolean v0, v1, Le/a/h0/a/v;->f:Z

    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p1}, Le/a/h0/a/a;->P4()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lr0;

    invoke-direct {v2, v5, p0, v1}, Lr0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_3
    invoke-virtual {p1}, Le/a/h0/a/a;->Q4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    new-instance v2, Le/a/h0/a/y;

    invoke-direct {v2, p0, v1}, Le/a/h0/a/y;-><init>(Le/a/h0/a/z;Le/a/h0/a/v;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iget-object p1, p1, Le/a/h0/a/a;->g:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 39
    invoke-virtual {p0}, Le/a/h0/a/z;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    if-eq p2, v0, :cond_4

    move v4, v5

    :cond_4
    invoke-static {p1, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "viewGroup"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d026f

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Le/a/h0/a/a;

    .line 5
    invoke-direct {p2, p1}, Le/a/h0/a/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
