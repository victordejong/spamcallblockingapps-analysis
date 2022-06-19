.class public Le/a/j4/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/j4/b/a/c$a;
    }
.end annotation


# static fields
.field public static volatile a:Le/a/j4/b/b/b;

.field public static volatile b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/j4/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/j4/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile d:Ljava/util/Locale;

.field public static final e:Le/a/b0/k/f;

.field public static final f:Le/a/b0/k/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/b0/k/f;

    invoke-direct {v0}, Le/a/b0/k/f;-><init>()V

    sput-object v0, Le/a/j4/b/a/c;->e:Le/a/b0/k/f;

    .line 2
    sget-object v0, Le/a/b0/k/d;->h:Le/a/b0/k/d;

    sput-object v0, Le/a/j4/b/a/c;->f:Le/a/b0/k/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Locale;)Le/a/j4/b/b/b;
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/c;->b(Z)Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    .line 3
    invoke-static {v1, v2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v1, v2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/j4/b/b/b;

    .line 7
    iget-object v5, v4, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 8
    iget-object v5, v5, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    iget-object v5, v4, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 11
    iget-object v5, v5, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    iget-object v5, v4, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 14
    iget-object v5, v5, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 16
    iget-object v5, v4, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 17
    iget-object v5, v5, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    return-object v4

    .line 19
    :cond_2
    sget-object p0, Le/a/j4/b/a/c;->a:Le/a/j4/b/b/b;

    return-object p0
.end method

.method public static b(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Le/a/j4/b/b/b;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Le/a/j4/b/a/c;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v0, Le/a/j4/b/a/c;->b:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    const-class v1, Le/a/j4/b/a/c;

    monitor-enter v1

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    monitor-exit v1

    return-object v0

    .line 4
    :cond_2
    new-instance v0, Le/a/j4/b/b/b;

    sget-object v2, Le/a/j4/b/a/c;->f:Le/a/b0/k/d;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Le/a/b0/k/d;->a:Le/a/b0/k/c;

    .line 7
    invoke-direct {v0, v2}, Le/a/j4/b/b/b;-><init>(Le/a/b0/k/c;)V

    sput-object v0, Le/a/j4/b/a/c;->a:Le/a/j4/b/b/b;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    .line 9
    sget-object v2, Le/a/b0/k/d;->f:Ljava/util/List;

    goto :goto_1

    .line 10
    :cond_3
    sget-object v2, Le/a/b0/k/d;->g:Ljava/util/List;

    .line 11
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/k/c;

    .line 12
    new-instance v4, Le/a/j4/b/b/b;

    invoke-direct {v4, v3}, Le/a/j4/b/b/b;-><init>(Le/a/b0/k/c;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_4
    sget-object v2, Le/a/j4/b/a/c;->e:Le/a/b0/k/f;

    invoke-virtual {v2}, Le/a/b0/k/f;->b()Ljava/util/Set;

    move-result-object v2

    .line 14
    sget-object v3, Le/a/j4/b/a/c;->d:Ljava/util/Locale;

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    move-object v5, v2

    check-cast v5, Ljava/util/HashSet;

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 17
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_5

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    const-string v3, "language"

    .line 22
    invoke-static {v3}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_7

    move-object v4, v2

    check-cast v4, Ljava/util/HashSet;

    :try_start_2
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/j4/b/b/b;

    .line 27
    iget-object v5, v4, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 28
    iget-object v5, v5, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    move-object v6, v2

    check-cast v6, Ljava/util/HashSet;

    :try_start_3
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Le/a/j4/b/a/c;->e:Le/a/b0/k/f;

    invoke-virtual {v6, v5}, Le/a/b0/k/f;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 31
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    if-eqz p0, :cond_a

    .line 32
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Le/a/j4/b/a/c;->c:Ljava/util/List;

    goto :goto_5

    .line 33
    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Le/a/j4/b/a/c;->b:Ljava/util/List;

    .line 34
    :goto_5
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
