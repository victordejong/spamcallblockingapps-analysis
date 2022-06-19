.class public final Le/a/g/a/a/a$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Landroid/view/View;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/g/a/a/a$c;->b:I

    iput-object p2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Le/a/g/a/a/a$c;->b:I

    const-string v1, "binding.addressTimezoneView"

    const-string v2, "binding.viewDetails"

    const-string v3, "binding.phoneNumber"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v8, :cond_0

    new-array v0, v5, [Landroid/view/View;

    .line 1
    iget-object v5, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v5, Le/a/g/a/a/a;

    .line 2
    sget-object v8, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 3
    invoke-virtual {v5}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v5

    .line 4
    iget-object v5, v5, Le/a/g/h/b;->K:Landroid/widget/TextView;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 5
    iget-object v3, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/g/a/a/a;

    .line 6
    invoke-virtual {v3}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v3

    .line 7
    iget-object v3, v3, Le/a/g/h/b;->k0:Landroid/widget/Button;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v0, v7

    .line 8
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 9
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 10
    iget-object v2, v2, Le/a/g/h/b;->d:Lcom/truecaller/timezone/AddressTimezoneView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v6

    .line 11
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 12
    throw v0

    :cond_1
    new-array v0, v6, [Landroid/view/View;

    .line 13
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 14
    sget-object v2, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 15
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 16
    iget-object v1, v1, Le/a/g/h/b;->u:Landroid/widget/TextView;

    const-string v2, "binding.feedbackThanks"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 17
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 18
    iget-object v1, v1, Le/a/g/h/b;->v:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "binding.feedbackThanksAnimation"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v9, [Landroid/view/View;

    .line 19
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 20
    sget-object v2, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 21
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 22
    iget-object v1, v1, Le/a/g/h/b;->w:Landroid/widget/TextView;

    const-string v2, "binding.feedbackTitle"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 23
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 24
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 25
    iget-object v1, v1, Le/a/g/h/b;->t:Landroid/widget/TextView;

    const-string v2, "binding.feedbackQuestion"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v7

    .line 26
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 27
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 28
    iget-object v1, v1, Le/a/g/h/b;->x:Landroid/widget/ImageView;

    const-string v2, "binding.feedbackUpVote"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    .line 29
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 30
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 31
    iget-object v1, v1, Le/a/g/h/b;->q:Landroid/widget/ImageView;

    const-string v2, "binding.feedbackDownVote"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v5

    .line 32
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    new-array v0, v9, [Landroid/view/View;

    .line 33
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 34
    sget-object v2, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 35
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 36
    iget-object v1, v1, Le/a/g/h/b;->s:Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 37
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 38
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 39
    iget-object v1, v1, Le/a/g/h/b;->r:Landroid/widget/Space;

    aput-object v1, v0, v7

    .line 40
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 41
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 42
    iget-object v1, v1, Le/a/g/h/b;->p:Landroid/view/View;

    aput-object v1, v0, v6

    .line 43
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 44
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 45
    iget-object v1, v1, Le/a/g/h/b;->o:Landroid/view/View;

    aput-object v1, v0, v5

    .line 46
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    .line 47
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 48
    sget-object v2, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 49
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 50
    iget-object v1, v1, Le/a/g/h/b;->K:Landroid/widget/TextView;

    aput-object v1, v0, v4

    .line 51
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 52
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 53
    iget-object v1, v1, Le/a/g/h/b;->k0:Landroid/widget/Button;

    aput-object v1, v0, v7

    .line 54
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 55
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 56
    iget-object v1, v1, Le/a/g/h/b;->X:Lcom/truecaller/common/ui/tag/TagXView;

    aput-object v1, v0, v6

    .line 57
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 58
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 59
    iget-object v1, v1, Le/a/g/h/b;->A:Landroid/view/View;

    aput-object v1, v0, v5

    .line 60
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 61
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 62
    iget-object v1, v1, Le/a/g/h/b;->j:Landroid/widget/TextView;

    aput-object v1, v0, v9

    .line 63
    iget-object v1, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/g/a/a/a;

    .line 64
    invoke-virtual {v1}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v1

    .line 65
    iget-object v1, v1, Le/a/g/h/b;->U:Landroid/widget/ImageView;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    .line 66
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 67
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 68
    iget-object v2, v2, Le/a/g/h/b;->V:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 69
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 70
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 71
    iget-object v2, v2, Le/a/g/h/b;->i0:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 72
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 73
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 74
    iget-object v2, v2, Le/a/g/h/b;->g:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 75
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 76
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 77
    iget-object v2, v2, Le/a/g/h/b;->N:Landroidx/constraintlayout/widget/Group;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 78
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 79
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 80
    iget-object v2, v2, Le/a/g/h/b;->n:Landroid/view/View;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 81
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 82
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 83
    iget-object v2, v2, Le/a/g/h/b;->Y:Lcom/truecaller/common/ui/tag/TagXView;

    aput-object v2, v0, v1

    .line 84
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_5
    new-array v0, v5, [Landroid/view/View;

    .line 85
    iget-object v5, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v5, Le/a/g/a/a/a;

    .line 86
    sget-object v8, Le/a/g/a/a/a;->K:[Ls1/a/l;

    .line 87
    invoke-virtual {v5}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v5

    .line 88
    iget-object v5, v5, Le/a/g/h/b;->K:Landroid/widget/TextView;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v0, v4

    .line 89
    iget-object v3, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/g/a/a/a;

    .line 90
    invoke-virtual {v3}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v3

    .line 91
    iget-object v3, v3, Le/a/g/h/b;->k0:Landroid/widget/Button;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v0, v7

    .line 92
    iget-object v2, p0, Le/a/g/a/a/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/g/a/a/a;

    .line 93
    invoke-virtual {v2}, Le/a/g/a/a/a;->RA()Le/a/g/h/b;

    move-result-object v2

    .line 94
    iget-object v2, v2, Le/a/g/h/b;->d:Lcom/truecaller/timezone/AddressTimezoneView;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v0, v6

    .line 95
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
