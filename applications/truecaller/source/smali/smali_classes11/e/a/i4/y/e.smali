.class public Le/a/i4/y/e;
.super Le/a/e/c2/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i4/y/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/t<",
        "Le/a/i4/y/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/z3/e;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/z3/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/c2/t;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/i4/y/e;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/i4/y/e;->c:Le/a/z3/e;

    return-void
.end method


# virtual methods
.method public e(Le/a/e/c2/t$b;I)V
    .locals 7

    .line 1
    check-cast p1, Le/a/i4/y/e$a;

    .line 2
    iget-object v0, p0, Le/a/i4/y/e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 3
    iget-boolean v0, p2, Le/a/e/c2/i0;->g:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/i4/y/e;->d:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->u(Landroid/content/Context;)V

    .line 5
    :cond_0
    iget-object v0, p1, Le/a/i4/y/e$a;->b:Landroid/widget/TextView;

    .line 6
    iget-object v1, p2, Le/a/e/c2/i0;->h:Ljava/lang/CharSequence;

    .line 7
    invoke-static {v0, v1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p1, Le/a/i4/y/e$a;->c:Landroid/widget/TextView;

    .line 9
    iget-object v1, p2, Le/a/e/c2/i0;->i:Ljava/lang/CharSequence;

    .line 10
    invoke-static {v0, v1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->p()Ljava/lang/Long;

    move-result-object v0

    .line 12
    iget-object v1, p1, Le/a/i4/y/e$a;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v1, p1, Le/a/i4/y/e$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Le/a/i4/y/e;->d:Landroid/content/Context;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Le/a/b0/q/m;->k(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->r()I

    move-result v0

    .line 15
    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Le/a/i4/y/e;->c:Le/a/z3/e;

    invoke-virtual {p2}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Le/a/z3/e;->B(Ljava/lang/String;)Le/a/z3/d;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v0

    iget-object v1, p1, Le/a/i4/y/e$a;->e:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {v0, v1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p1, Le/a/i4/y/e$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :goto_0
    iget-object p2, p2, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->k:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    .line 22
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;->VIEWED:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationState;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    move v2, v1

    .line 23
    :cond_2
    iget-object p2, p1, Le/a/i4/y/e$a;->c:Landroid/widget/TextView;

    xor-int/lit8 v0, v2, 0x1

    .line 24
    iget-object v1, p0, Le/a/i4/y/e;->d:Landroid/content/Context;

    const v2, 0x7f04068d

    const v3, 0x7f04068f

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-static {v1, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    invoke-static {p2, v0}, Le/a/n/g0;->k(Landroid/widget/TextView;Z)V

    .line 26
    iget-object p1, p1, Le/a/i4/y/e$a;->d:Landroid/widget/TextView;

    .line 27
    iget-object p2, p0, Le/a/i4/y/e;->d:Landroid/content/Context;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-static {p2, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    invoke-static {p1, v0}, Le/a/n/g0;->k(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    new-instance v0, Le/a/i4/y/e$a;

    const v1, 0x7f0d038d

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/i4/y/e$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i4/y/e;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method
