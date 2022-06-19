.class public final Le/a/e/b/l/f$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/l/f;->La(Landroid/content/Context;Le/a/j4/b/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.ui.settings.language.LanguageSettingsPresenter$setAppLanguage$1"
    f = "LanguageSettingsPresenter.kt"
    l = {
        0x63,
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/e/b/l/f;

.field public final synthetic h:Le/a/j4/b/b/b;

.field public final synthetic i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/e/b/l/f;Le/a/j4/b/b/b;Landroid/content/Context;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    iput-object p2, p0, Le/a/e/b/l/f$f;->h:Le/a/j4/b/b/b;

    iput-object p3, p0, Le/a/e/b/l/f$f;->i:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/b/l/f$f;

    iget-object v0, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    iget-object v1, p0, Le/a/e/b/l/f$f;->h:Le/a/j4/b/b/b;

    iget-object v2, p0, Le/a/e/b/l/f$f;->i:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/e/b/l/f$f;-><init>(Le/a/e/b/l/f;Le/a/j4/b/b/b;Landroid/content/Context;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/e/b/l/f$f;

    iget-object v0, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    iget-object v1, p0, Le/a/e/b/l/f$f;->h:Le/a/j4/b/b/b;

    iget-object v2, p0, Le/a/e/b/l/f$f;->i:Landroid/content/Context;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/e/b/l/f$f;-><init>(Le/a/e/b/l/f;Le/a/j4/b/b/b;Landroid/content/Context;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/e/b/l/f$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/e/b/l/f$f;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/e/b/l/f$f;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    .line 5
    iget-object p1, p1, Le/a/e/b/l/f;->g:Le/a/b0/k/f;

    .line 6
    invoke-virtual {p1}, Le/a/b0/k/f;->f()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    iget-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    iput-object v1, p0, Le/a/e/b/l/f$f;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/e/b/l/f$f;->f:I

    invoke-virtual {p1, v1, p0}, Le/a/e/b/l/f;->Ij(Ljava/util/Locale;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Le/a/j4/b/b/b;

    goto :goto_1

    :cond_4
    move-object p1, v4

    .line 8
    :goto_1
    iget-object v5, p0, Le/a/e/b/l/f$f;->h:Le/a/j4/b/b/b;

    .line 9
    iget-object v5, v5, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 10
    iget-object v5, v5, Le/a/b0/k/c;->a:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p1, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 12
    iget-object p1, p1, Le/a/b0/k/c;->a:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object p1, v4

    .line 13
    :goto_2
    invoke-static {v5, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    .line 15
    iget-object p1, p1, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    .line 16
    invoke-interface {p1, v3}, Le/a/e/b/g;->n1(Z)V

    .line 17
    iget-object p1, p0, Le/a/e/b/l/f$f;->i:Landroid/content/Context;

    invoke-static {p1, v1}, Le/a/b0/k/h;->b(Landroid/content/Context;Ljava/util/Locale;)Z

    goto :goto_3

    .line 18
    :cond_6
    iget-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    .line 19
    iget-object p1, p1, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    const/4 v1, 0x0

    .line 20
    invoke-interface {p1, v1}, Le/a/e/b/g;->n1(Z)V

    .line 21
    :goto_3
    iget-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    .line 22
    iget-object p1, p1, Le/a/e/b/l/f;->i:Le/a/e/b/g;

    .line 23
    iget-object v1, p0, Le/a/e/b/l/f$f;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context.applicationContext"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Le/a/e/b/l/f$f;->h:Le/a/j4/b/b/b;

    invoke-interface {p1, v1, v3}, Le/a/e/b/g;->h1(Landroid/content/Context;Le/a/j4/b/b/b;)V

    .line 24
    sput-object v4, Le/a/b0/q/m;->o:Ljava/text/DateFormat;

    .line 25
    sput-object v4, Le/a/b0/q/m;->p:Ljava/text/DateFormat;

    .line 26
    iget-object p1, p0, Le/a/e/b/l/f$f;->g:Le/a/e/b/l/f;

    .line 27
    iget-object p1, p1, Le/a/e/b/l/f;->f:Ls1/w/f;

    .line 28
    new-instance v1, Le/a/e/b/l/f$f$a;

    invoke-direct {v1, p0, v4}, Le/a/e/b/l/f$f$a;-><init>(Le/a/e/b/l/f$f;Ls1/w/d;)V

    iput-object v4, p0, Le/a/e/b/l/f$f;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/e/b/l/f$f;->f:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 29
    :cond_7
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
