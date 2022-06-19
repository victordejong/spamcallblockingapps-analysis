.class public final Le/a/j/a/a/a/c/a$e;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j/a/a/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/j/a/a/a/c/a$e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/j/a/a/a/c/a$e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Ls1/b0/c;

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Le/a/j/a/a/a/c/f;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/j/a/a/a/c/a$e;

    const-string v2, "choices"

    const-string v3, "getChoices()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/j/a/a/a/c/a$e;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/j/a/a/a/c/a;Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/j/a/a/a/c/f;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string p1, "onChoiceSelected"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "onChoiceMeasured"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p2, p0, Le/a/j/a/a/a/c/a$e;->b:Ls1/z/b/l;

    iput-object p3, p0, Le/a/j/a/a/a/c/a$e;->c:Ls1/z/b/l;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    .line 3
    new-instance p2, Le/a/j/a/a/a/c/a$e$a;

    invoke-direct {p2, p1, p1, p0}, Le/a/j/a/a/a/c/a$e$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Le/a/j/a/a/a/c/a$e;)V

    .line 4
    iput-object p2, p0, Le/a/j/a/a/a/c/a$e;->a:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/j/a/a/a/c/a$e;->a:Ls1/b0/c;

    sget-object v1, Le/a/j/a/a/a/c/a$e;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/j/a/a/a/c/a$e$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/j/a/a/a/c/a$e;->a:Ls1/b0/c;

    sget-object v1, Le/a/j/a/a/a/c/a$e;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/j/a/a/a/c/f;

    const-string v0, "singleChoiceUIModel"

    .line 5
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Le/a/j/a/a/a/c/a$e$b;->a:Le/a/j/d/h;

    iget-object v0, v0, Le/a/j/d/h;->b:Landroid/widget/RadioButton;

    .line 7
    iget-object v1, p2, Le/a/j/a/a/a/c/f;->d:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    .line 11
    :cond_0
    instance-of v3, v0, Ln3/k/j/f;

    if-eqz v3, :cond_1

    .line 12
    move-object v3, v0

    check-cast v3, Ln3/k/j/f;

    invoke-interface {v3, v2}, Ln3/k/j/f;->setAutoSizeTextTypeWithDefaults(I)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 14
    :cond_2
    iget-object v1, p2, Le/a/j/a/a/a/c/f;->a:Lcom/truecaller/surveys/data/entities/Choice;

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Choice;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, p2, Le/a/j/a/a/a/c/f;->d:Ljava/lang/Float;

    if-nez v1, :cond_3

    .line 17
    new-instance v1, Le/a/j/a/a/a/c/c;

    invoke-direct {v1, v0, p1, p2}, Le/a/j/a/a/a/c/c;-><init>(Landroid/widget/RadioButton;Le/a/j/a/a/a/c/a$e$b;Le/a/j/a/a/a/c/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 18
    :cond_3
    iget-object v0, p1, Le/a/j/a/a/a/c/a$e$b;->a:Le/a/j/d/h;

    iget-object v0, v0, Le/a/j/d/h;->b:Landroid/widget/RadioButton;

    const-string v1, "binding.choiceRadioButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-boolean v1, p2, Le/a/j/a/a/a/c/f;->c:Z

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 21
    iget-object v0, p1, Le/a/j/a/a/a/c/a$e$b;->a:Le/a/j/d/h;

    iget-object v0, v0, Le/a/j/d/h;->b:Landroid/widget/RadioButton;

    new-instance v1, Le/a/j/a/a/a/c/d;

    invoke-direct {v1, p1, p2}, Le/a/j/a/a/a/c/d;-><init>(Le/a/j/a/a/a/c/a$e$b;Le/a/j/a/a/a/c/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Le/a/j/a/a/a/c/a$e$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/surveys/R$layout;->layout_single_choice:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "rootView"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    check-cast p1, Landroid/widget/RadioButton;

    .line 6
    new-instance v0, Le/a/j/d/h;

    invoke-direct {v0, p1, p1}, Le/a/j/d/h;-><init>(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    const-string p1, "LayoutSingleChoiceBindin\u2026.context), parent, false)"

    .line 7
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, v0}, Le/a/j/a/a/a/c/a$e$b;-><init>(Le/a/j/a/a/a/c/a$e;Le/a/j/d/h;)V

    return-object p2
.end method
