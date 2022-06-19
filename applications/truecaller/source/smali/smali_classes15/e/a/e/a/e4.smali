.class public final Le/a/e/a/e4;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$setFlag$1"
    f = "QaSetBusinessFlagsDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/e/a/d4;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e/a/d4;ILjava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/e4;->f:Le/a/e/a/d4;

    iput p2, p0, Le/a/e/a/e4;->g:I

    iput-object p3, p0, Le/a/e/a/e4;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/e4;

    iget-object v1, p0, Le/a/e/a/e4;->f:Le/a/e/a/d4;

    iget v2, p0, Le/a/e/a/e4;->g:I

    iget-object v3, p0, Le/a/e/a/e4;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/e/a/e4;-><init>(Le/a/e/a/d4;ILjava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/e4;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/e/a/e4;

    iget-object v1, p0, Le/a/e/a/e4;->f:Le/a/e/a/d4;

    iget v2, p0, Le/a/e/a/e4;->g:I

    iget-object v3, p0, Le/a/e/a/e4;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/e/a/e4;-><init>(Le/a/e/a/d4;ILjava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/e/a/e4;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/e/a/e4;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/e/a/e4;->e:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lq3/a/i0;

    .line 2
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget v1, p0, Le/a/e/a/e4;->g:I

    .line 4
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "im_business_feature_flags"

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget-object v1, p0, Le/a/e/a/e4;->f:Le/a/e/a/d4;

    .line 7
    iget-object v1, v1, Le/a/e/a/d4;->e:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Le/a/m0/a1$k;->H()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 9
    iget-object v6, p0, Le/a/e/a/e4;->h:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "normalized_destination = ?"

    .line 10
    invoke-virtual {v1, v3, p1, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Le/a/e/a/e4;->f:Le/a/e/a/d4;

    .line 12
    iget-object v1, p1, Le/a/e/a/d4;->f:Ls1/w/f;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 13
    new-instance v3, Le/a/e/a/e4$a;

    invoke-direct {v3, p0, v2}, Le/a/e/a/e4$a;-><init>(Le/a/e/a/e4;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "uiContext"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "contentResolver"

    .line 16
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
