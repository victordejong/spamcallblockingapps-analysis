.class Lzendesk/belvedere/g$d;
.super Lzendesk/belvedere/g$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final e:Lzendesk/belvedere/r;

.field private final f:Landroid/content/pm/ResolveInfo;

.field private final g:Lzendesk/belvedere/f$b;


# direct methods
.method constructor <init>(Lzendesk/belvedere/f$b;Lzendesk/belvedere/r;Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lzendesk/belvedere/a0/h;->e:I

    invoke-direct {p0, v0, p2}, Lzendesk/belvedere/g$b;-><init>(ILzendesk/belvedere/r;)V

    .line 2
    iput-object p2, p0, Lzendesk/belvedere/g$d;->e:Lzendesk/belvedere/r;

    .line 3
    invoke-virtual {p2}, Lzendesk/belvedere/r;->m()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lzendesk/belvedere/g$d;->h(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iput-object p2, p0, Lzendesk/belvedere/g$d;->f:Landroid/content/pm/ResolveInfo;

    .line 4
    iput-object p1, p0, Lzendesk/belvedere/g$d;->g:Lzendesk/belvedere/f$b;

    return-void
.end method

.method static synthetic g(Lzendesk/belvedere/g$d;)Lzendesk/belvedere/f$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/g$d;->g:Lzendesk/belvedere/f$b;

    return-object p0
.end method

.method private h(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-static {p2}, Lzendesk/belvedere/a;->c(Landroid/content/Context;)Lzendesk/belvedere/a;

    move-result-object p2

    const-string v1, "tmp"

    invoke-virtual {p2, v1, p1}, Lzendesk/belvedere/a;->d(Ljava/lang/String;Ljava/lang/String;)Lzendesk/belvedere/r;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 3
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lzendesk/belvedere/r;->q()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget v1, Lzendesk/belvedere/a0/f;->m:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    sget v2, Lzendesk/belvedere/a0/f;->o:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    sget v3, Lzendesk/belvedere/a0/f;->n:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    sget v4, Lzendesk/belvedere/a0/f;->l:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/belvedere/SelectableView;

    .line 6
    sget v4, Lzendesk/belvedere/a0/i;->i:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lzendesk/belvedere/g$d;->e:Lzendesk/belvedere/r;

    invoke-virtual {v7}, Lzendesk/belvedere/r;->m()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 7
    sget v6, Lzendesk/belvedere/a0/i;->k:I

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lzendesk/belvedere/g$d;->e:Lzendesk/belvedere/r;

    invoke-virtual {v7}, Lzendesk/belvedere/r;->m()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1, v5, v4}, Lzendesk/belvedere/SelectableView;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v4, p0, Lzendesk/belvedere/g$d;->e:Lzendesk/belvedere/r;

    invoke-virtual {v4}, Lzendesk/belvedere/r;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lzendesk/belvedere/g$d;->f:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lzendesk/belvedere/g$d;->f:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v2, p0, Lzendesk/belvedere/g$d;->f:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 14
    :cond_0
    sget v0, Lzendesk/belvedere/a0/i;->g:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1080093

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :goto_0
    invoke-virtual {p0}, Lzendesk/belvedere/g$b;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Lzendesk/belvedere/SelectableView;->setSelected(Z)V

    .line 17
    new-instance v0, Lzendesk/belvedere/g$d$a;

    invoke-direct {v0, p0}, Lzendesk/belvedere/g$d$a;-><init>(Lzendesk/belvedere/g$d;)V

    invoke-virtual {p1, v0}, Lzendesk/belvedere/SelectableView;->setSelectionListener(Lzendesk/belvedere/SelectableView$c;)V

    return-void
.end method
