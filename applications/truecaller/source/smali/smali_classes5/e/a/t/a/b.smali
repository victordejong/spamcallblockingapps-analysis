.class public final Le/a/t/a/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t/a/b$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/t/a/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/t/a/b$a;

.field public c:I

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/t/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/t/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/t/a/e;",
            ">;",
            "Lo3/a<",
            "Le/a/t/a/p;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emojiDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentEmoji"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Le/a/t/a/b;->d:Lo3/a;

    iput-object p2, p0, Le/a/t/a/b;->e:Lo3/a;

    iput-object p3, p0, Le/a/t/a/b;->f:Lo3/a;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/t/a/b;->a:Ljava/util/List;

    .line 3
    new-instance p1, Le/a/t/a/b$a;

    invoke-direct {p1, p0}, Le/a/t/a/b$a;-><init>(Le/a/t/a/b;)V

    iput-object p1, p0, Le/a/t/a/b;->b:Le/a/t/a/b$a;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/b;->b:Le/a/t/a/b$a;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/t;

    .line 2
    iget-object p1, p1, Le/a/t/a/t;->c:Ljava/lang/String;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/a/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/t;

    .line 2
    iget-object p1, p1, Le/a/t/a/t;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "parent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/truecaller/android/truemoji/R$layout;->item_emoji_auto_complete:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/t/a/b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/t;

    .line 3
    sget v1, Lcom/truecaller/android/truemoji/R$id;->shortnameText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById<TextView>(R.id.shortnameText)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x3a

    invoke-static {v2}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4
    iget-object v4, p1, Le/a/t/a/t;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p1, Le/a/t/a/t;->c:Ljava/lang/String;

    const-string v1, "value"

    .line 7
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    sget-object v1, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/t/a/u/f;

    if-eqz v1, :cond_6

    .line 10
    iget-object v1, v1, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    .line 11
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 12
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 14
    iget-object p1, v1, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Le/a/t/a/u/d;

    goto :goto_3

    .line 16
    :cond_3
    iget-object v1, v1, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/t/a/u/c;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "parent.context"

    invoke-static {p3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p3}, Le/m/d/y/n;->D(Le/a/t/a/u/d;Landroid/content/Context;)I

    move-result p3

    .line 19
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {p1, p3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 21
    sget p3, Lcom/truecaller/android/truemoji/R$id;->emojiImage:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    const-string p1, "view"

    .line 22
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2

    .line 23
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Emoji data loader has not been set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p1, "view"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/t/a/b;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/t;

    .line 2
    iget-object p1, p1, Le/a/t/a/t;->c:Ljava/lang/String;

    const-string p2, "value"

    .line 3
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p4

    :goto_0
    const/4 p5, 0x0

    if-eqz p3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget-object p3, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/t/a/u/f;

    if-eqz p3, :cond_5

    .line 6
    iget-object p3, p3, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    .line 7
    :goto_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 8
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p4, v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p4, v1, :cond_2

    .line 10
    iget-object p1, p3, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p5, p1

    check-cast p5, Le/a/t/a/u/d;

    goto :goto_2

    .line 12
    :cond_2
    iget-object p3, p3, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/t/a/u/c;

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p5, :cond_4

    .line 14
    iget-object p1, p0, Le/a/t/a/b;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/p;

    invoke-interface {p1, p5}, Le/a/t/a/p;->c(Le/a/t/a/u/d;)V

    .line 15
    iget-object p1, p0, Le/a/t/a/b;->f:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a;

    const-string p3, "EmojiAutocomplete"

    const-string p4, "type"

    .line 16
    invoke-static {p3, p4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p4

    .line 17
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    iget v0, p0, Le/a/t/a/b;->c:I

    int-to-double v0, v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p5, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p2, p5}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p2, p4}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p2

    const-string p3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-interface {p1, p2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_4
    return-void

    .line 22
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Emoji data loader has not been set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
