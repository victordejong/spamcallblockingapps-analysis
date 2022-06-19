.class public final Le/a/n/d$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/d;-><init>(Ls1/w/f;Landroid/content/Context;Le/m/e/k;Le/a/p5/g;Le/a/b0/o/a;Le/a/b0/e/f;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/a/i0;Le/a/e4/p;Le/a/p5/a0;Le/a/b0/n/g;Le/a/n5/c;Le/a/c3/a;Le/a/b0/k/f;Le/a/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/n/v<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Le/a/n/d;

.field public final synthetic d:Le/m/e/k;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Le/a/b0/k/f;


# direct methods
.method public constructor <init>(Le/a/n/d;Le/m/e/k;Landroid/content/Context;Le/a/b0/k/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            "Landroid/content/Context;",
            "Le/a/b0/k/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/n/d$n;->c:Le/a/n/d;

    iput-object p2, p0, Le/a/n/d$n;->d:Le/m/e/k;

    iput-object p3, p0, Le/a/n/d$n;->e:Landroid/content/Context;

    iput-object p4, p0, Le/a/n/d$n;->f:Le/a/b0/k/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/a/n/d$n$c;

    invoke-direct {p1, p0}, Le/a/n/d$n$c;-><init>(Le/a/n/d$n;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/n/d$n;->a:Ls1/g;

    const-string p1, "Language"

    .line 3
    iput-object p1, p0, Le/a/n/d$n;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/n/d$n;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/n/d$n;->setValue(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/n/d$n;->d:Le/m/e/k;

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 5
    new-instance v3, Le/a/n/d$n$a;

    invoke-direct {v3}, Le/a/n/d$n$a;-><init>()V

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object : TypeToken<T>() {}.type"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast p1, Lcom/truecaller/backup/LanguageBackupItem;

    .line 8
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    invoke-virtual {p1}, Lcom/truecaller/backup/LanguageBackupItem;->getAuto()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Le/a/n/d$n;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    goto :goto_4

    :cond_3
    const-string p1, "language"

    .line 10
    invoke-static {p1}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Settings.get(Settings.LANGUAGE_ISO)"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Ls1/f0/h;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Ls1/f0/h;->f(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 14
    :cond_4
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 15
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    move v5, v1

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    if-nez v5, :cond_4

    .line 17
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 18
    :cond_6
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    :goto_3
    new-array v4, v2, [Ljava/lang/String;

    .line 19
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    check-cast v3, [Ljava/lang/String;

    .line 21
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 22
    new-instance p1, Ljava/util/Locale;

    aget-object v2, v3, v2

    aget-object v3, v3, v1

    invoke-direct {p1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 23
    :cond_7
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    .line 24
    :goto_4
    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Le/a/n/d$n;->c:Le/a/n/d;

    .line 26
    iget-object p1, p1, Le/a/n/d;->g:Ls1/w/f;

    .line 27
    new-instance v2, Le/a/n/d$n$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Le/a/n/d$n$b;-><init>(Le/a/n/d$n;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {p1, v2}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    return v1
.end method

.method public c()Lcom/truecaller/backup/AfterRestoreBehaviorFlag;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/backup/AfterRestoreBehaviorFlag;->Language:Lcom/truecaller/backup/AfterRestoreBehaviorFlag;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/d$n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 4

    const-string v0, "languageAuto"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "language"

    .line 2
    invoke-static {v1}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings.get(Settings.LANGUAGE_ISO)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/n/d$n;->d:Le/m/e/k;

    new-instance v3, Lcom/truecaller/backup/LanguageBackupItem;

    invoke-direct {v3, v0, v1}, Lcom/truecaller/backup/LanguageBackupItem;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gson.toJson(LanguageBack\u2026nguage, languageISOCode))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "value"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/n/d$n;->d:Le/m/e/k;

    .line 4
    new-instance v1, Le/a/n/d0;

    invoke-direct {v1}, Le/a/n/d0;-><init>()V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {}.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Lcom/truecaller/backup/LanguageBackupItem;

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/backup/LanguageBackupItem;->getAuto()Z

    move-result v0

    const-string v1, "languageAuto"

    invoke-static {v1, v0}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/backup/LanguageBackupItem;->getAuto()Z

    move-result v0

    const-string v1, "language"

    if-eqz v0, :cond_0

    .line 9
    iget-object p1, p0, Le/a/n/d$n;->a:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    if-eqz p1, :cond_1

    .line 10
    invoke-static {p1}, Le/a/j4/b/a/c;->a(Ljava/util/Locale;)Le/a/j4/b/b/b;

    move-result-object p1

    const-string v0, "LanguageDao.getLanguage(locale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 12
    iget-object p1, p1, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 13
    invoke-static {v1, p1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/backup/LanguageBackupItem;->getLanguageISOCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
