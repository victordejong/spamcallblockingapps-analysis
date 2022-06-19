.class public Le/h/a/c/r0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/r0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:[Landroid/widget/ImageView;

.field public final c:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public final d:Le/h/a/c/r0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/b;Landroid/content/Context;Le/h/a/c/r0/b;[Landroid/widget/ImageView;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/h/a/c/r0/b$b;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/h/a/c/r0/b$b;->d:Le/h/a/c/r0/b;

    .line 4
    iput-object p4, p0, Le/h/a/c/r0/b$b;->b:[Landroid/widget/ImageView;

    .line 5
    iput-object p5, p0, Le/h/a/c/r0/b$b;->c:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    const/4 p1, 0x0

    .line 6
    aget-object p1, p4, p1

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/clevertap/android/sdk/R$drawable;->ct_selected_dot:I

    .line 8
    sget-object p4, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 p4, 0x0

    .line 9
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/b$b;->b:[Landroid/widget/ImageView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    iget-object v5, p0, Le/h/a/c/r0/b$b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/clevertap/android/sdk/R$drawable;->ct_unselected_dot:I

    .line 4
    sget-object v7, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/b$b;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Le/h/a/c/r0/b$b;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/clevertap/android/sdk/R$drawable;->ct_selected_dot:I

    .line 9
    sget-object v4, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object v0, p0, Le/h/a/c/r0/b$b;->d:Le/h/a/c/r0/b;

    .line 13
    iget-object v0, v0, Le/h/a/c/r0/b;->s:Landroid/widget/TextView;

    .line 14
    iget-object v1, p0, Le/h/a/c/r0/b$b;->c:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 15
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 17
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->k:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Le/h/a/c/r0/b$b;->d:Le/h/a/c/r0/b;

    .line 20
    iget-object v0, v0, Le/h/a/c/r0/b;->s:Landroid/widget/TextView;

    .line 21
    iget-object v1, p0, Le/h/a/c/r0/b$b;->c:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 22
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 24
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->l:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v0, p0, Le/h/a/c/r0/b$b;->d:Le/h/a/c/r0/b;

    .line 28
    iget-object v0, v0, Le/h/a/c/r0/b;->t:Landroid/widget/TextView;

    .line 29
    iget-object v1, p0, Le/h/a/c/r0/b$b;->c:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 30
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 32
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->h:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Le/h/a/c/r0/b$b;->d:Le/h/a/c/r0/b;

    .line 35
    iget-object v0, v0, Le/h/a/c/r0/b;->t:Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Le/h/a/c/r0/b$b;->c:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 37
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->j:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;

    .line 39
    iget-object p1, p1, Lcom/clevertap/android/sdk/inbox/CTInboxMessageContent;->i:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
