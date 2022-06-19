.class public final Le/a/d/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/a/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/a/e;


# direct methods
.method public constructor <init>(Le/a/d/a/e;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/e$a;->a:Le/a/d/a/e;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Le/a/d/a/v;

    .line 2
    iget-object p2, p0, Le/a/d/a/e$a;->a:Le/a/d/a/e;

    iget-object p2, p2, Le/a/d/a/e;->f:Le/a/d/a/a;

    .line 3
    sget-object v0, Le/a/d/a/a;->i:[Ls1/a/l;

    .line 4
    invoke-virtual {p2}, Le/a/d/a/a;->SA()Le/a/d/s/i;

    move-result-object p2

    const-string v0, "binding"

    .line 5
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$populateView"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Le/a/d/a/h;->values()[Le/a/d/a/h;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 9
    aget-object v5, v0, v4

    .line 10
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 12
    iget-object v4, p2, Le/a/d/s/i;->a:Landroidx/core/widget/NestedScrollView;

    const-string v5, "root"

    .line 13
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/truecaller/voip/R$layout;->voip_debug_spinner_item:I

    invoke-direct {v0, v4, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 14
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 15
    iget-object v1, p2, Le/a/d/s/i;->g:Landroid/widget/Spinner;

    .line 16
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 17
    sget-object v4, Le/a/d/a/h;->c:Le/a/d/a/h$a;

    .line 18
    iget-object v4, p1, Le/a/d/a/v;->c:Lq3/a/x2/a1;

    .line 19
    invoke-interface {v4}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/h;

    const-string v6, "state"

    .line 20
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Le/a/d/a/h;->values()[Le/a/d/a/h;

    move-result-object v6

    move v7, v3

    :goto_1
    const/4 v8, 0x0

    if-ge v7, v2, :cond_2

    aget-object v9, v6, v7

    .line 22
    iget-object v10, v9, Le/a/d/a/h;->a:Le/a/d/v/h;

    .line 23
    invoke-static {v10, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v8

    :goto_2
    if-eqz v9, :cond_3

    .line 24
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    .line 25
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 26
    new-instance v2, Le/a/d/a/z;

    invoke-direct {v2, v0, p1}, Le/a/d/a/z;-><init>(Landroid/widget/ArrayAdapter;Le/a/d/a/v;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 27
    invoke-static {}, Le/a/d/a/c;->values()[Le/a/d/a/c;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    .line 29
    aget-object v6, v0, v4

    .line 30
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 31
    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 32
    iget-object v4, p2, Le/a/d/s/i;->a:Landroidx/core/widget/NestedScrollView;

    .line 33
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/voip/R$layout;->voip_debug_spinner_item:I

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 35
    iget-object v1, p2, Le/a/d/s/i;->f:Landroid/widget/Spinner;

    .line 36
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 37
    sget-object v4, Le/a/d/a/c;->c:Le/a/d/a/c$a;

    .line 38
    iget-object v5, p1, Le/a/d/a/v;->d:Lq3/a/x2/a1;

    .line 39
    invoke-interface {v5}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/d/c0/x1/b;

    .line 40
    iget-object v5, v5, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 41
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "route"

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Le/a/d/a/c;->values()[Le/a/d/a/c;

    move-result-object v4

    move v6, v3

    :goto_5
    if-ge v6, v2, :cond_6

    aget-object v7, v4, v6

    .line 43
    iget-object v9, v7, Le/a/d/a/c;->a:Le/a/d/c0/x1/a;

    .line 44
    invoke-static {v9, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move-object v7, v8

    :goto_6
    if-eqz v7, :cond_7

    .line 45
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v3

    .line 46
    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 47
    new-instance v2, Le/a/d/a/y;

    invoke-direct {v2, v0, p1}, Le/a/d/a/y;-><init>(Landroid/widget/ArrayAdapter;Le/a/d/a/v;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 48
    iget-object v0, p2, Le/a/d/s/i;->i:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 49
    iget-object v1, p1, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 50
    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/a;

    .line 51
    iget-boolean v1, v1, Le/a/d/v/a;->a:Z

    .line 52
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 53
    new-instance v1, Lm;

    invoke-direct {v1, v3, p1}, Lm;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    iget-object p2, p2, Le/a/d/s/i;->h:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 55
    iget-object v0, p1, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 56
    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/v/a;

    .line 57
    iget-boolean v0, v0, Le/a/d/v/a;->b:Z

    .line 58
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 59
    new-instance v0, Lm;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lm;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object p2, p0, Le/a/d/a/e$a;->a:Le/a/d/a/e;

    iget-object v0, p2, Le/a/d/a/e;->f:Le/a/d/a/a;

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v3, Le/a/d/a/f;

    invoke-direct {v3, v0, p1, v8}, Le/a/d/a/f;-><init>(Le/a/d/a/a;Le/a/d/a/v;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 63
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_8

    return-object p1

    .line 64
    :cond_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
