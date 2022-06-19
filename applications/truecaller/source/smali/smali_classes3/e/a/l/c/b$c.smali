.class public final Le/a/l/c/b$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/ViewGroup;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/l/c/b$c;

.field public static final d:Le/a/l/c/b$c;

.field public static final e:Le/a/l/c/b$c;

.field public static final f:Le/a/l/c/b$c;

.field public static final g:Le/a/l/c/b$c;

.field public static final h:Le/a/l/c/b$c;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/l/c/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l/c/b$c;-><init>(I)V

    sput-object v0, Le/a/l/c/b$c;->c:Le/a/l/c/b$c;

    new-instance v0, Le/a/l/c/b$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/l/c/b$c;-><init>(I)V

    sput-object v0, Le/a/l/c/b$c;->d:Le/a/l/c/b$c;

    new-instance v0, Le/a/l/c/b$c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Le/a/l/c/b$c;-><init>(I)V

    sput-object v0, Le/a/l/c/b$c;->e:Le/a/l/c/b$c;

    new-instance v0, Le/a/l/c/b$c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Le/a/l/c/b$c;-><init>(I)V

    sput-object v0, Le/a/l/c/b$c;->f:Le/a/l/c/b$c;

    new-instance v0, Le/a/l/c/b$c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Le/a/l/c/b$c;-><init>(I)V

    sput-object v0, Le/a/l/c/b$c;->g:Le/a/l/c/b$c;

    new-instance v0, Le/a/l/c/b$c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Le/a/l/c/b$c;-><init>(I)V

    sput-object v0, Le/a/l/c/b$c;->h:Le/a/l/c/b$c;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/l/c/b$c;->b:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Le/a/l/c/b$c;->b:I

    const/4 v1, 0x0

    const-string v2, "parent"

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    .line 1
    check-cast p1, Landroid/view/ViewGroup;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/l/c/a/y0;

    const v2, 0x7f0d0367

    invoke-static {p1, v2, v1, v3}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/l/c/a/y0;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/a/l/c/a/q0;

    const v2, 0x7f0d0362

    invoke-static {p1, v2, v1, v3}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/l/c/a/q0;-><init>(Landroid/view/View;)V

    return-object v0

    .line 8
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Le/a/l/c/a/w;

    const v2, 0x7f0d035d

    invoke-static {p1, v2, v1, v3}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/l/c/a/w;-><init>(Landroid/view/View;)V

    return-object v0

    .line 11
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Le/a/l/c/a/t0;

    const v2, 0x7f0d0363

    invoke-static {p1, v2, v1, v3}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/l/c/a/t0;-><init>(Landroid/view/View;)V

    return-object v0

    .line 14
    :cond_4
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Le/a/l/c/a/s2;

    const v2, 0x7f0d0365

    invoke-static {p1, v2, v1, v3}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/l/c/a/s2;-><init>(Landroid/view/View;)V

    return-object v0

    .line 17
    :cond_5
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Le/a/l/c/a/a3;

    const v2, 0x7f0d0368

    invoke-static {p1, v2, v1, v3}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Le/a/l/c/a/a3;-><init>(Landroid/view/View;)V

    return-object v0
.end method
