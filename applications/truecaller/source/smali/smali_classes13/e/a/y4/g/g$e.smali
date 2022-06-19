.class public final Le/a/y4/g/g$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y4/g/g;-><init>(Landroid/content/ContentResolver;Lcom/truecaller/service/t9/T9DaoHelper;Le/a/z4/f;Le/a/b4/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/y4/g/g;


# direct methods
.method public constructor <init>(Le/a/y4/g/g;)V
    .locals 0

    iput-object p1, p0, Le/a/y4/g/g$e;->b:Le/a/y4/g/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y4/g/g$e;->b:Le/a/y4/g/g;

    .line 2
    iget-object v0, v0, Le/a/y4/g/g;->d:Le/a/z4/f;

    .line 3
    iget-object v0, v0, Le/a/z4/f;->a:Le/a/z4/d;

    const-string v1, "t9_lang"

    invoke-interface {v0, v1}, Le/a/z4/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v1, Le/a/b0/k/d;->h:Le/a/b0/k/d;

    .line 5
    sget-object v1, Le/a/b0/k/d;->f:Ljava/util/List;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Le/a/b0/k/c;

    .line 9
    iget-object v3, v3, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    sget-object v0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    const-string v1, "LocaleManager.getAppLocale()"

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleManager.getAppLocale().language"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method
