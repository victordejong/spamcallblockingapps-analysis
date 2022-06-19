.class public Lcom/google/i18n/phonenumbers/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/i18n/phonenumbers/n;

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/q/a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/i18n/phonenumbers/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/google/i18n/phonenumbers/n;

    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/q/b;->b()Lcom/google/i18n/phonenumbers/q/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/n;-><init>(Lcom/google/i18n/phonenumbers/q/a;)V

    sput-object v0, Lcom/google/i18n/phonenumbers/n;->c:Lcom/google/i18n/phonenumbers/n;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/i18n/phonenumbers/n;->d:Ljava/util/Set;

    const-string v1, "BR"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "CL"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "NI"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/q/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/n;->a:Lcom/google/i18n/phonenumbers/q/a;

    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/c;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/n;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/google/i18n/phonenumbers/n;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/i18n/phonenumbers/n;->c:Lcom/google/i18n/phonenumbers/n;

    return-object v0
.end method

.method private static b(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->g()I

    move-result v1

    new-array v1, v1, [C

    const/16 v2, 0x30

    .line 4
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Lcom/google/i18n/phonenumbers/m;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/m;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/n;->b(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/e;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/j;->s()Lcom/google/i18n/phonenumbers/l;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/i18n/phonenumbers/n;->g(Ljava/lang/String;Lcom/google/i18n/phonenumbers/l;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private d(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/n;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;Lcom/google/i18n/phonenumbers/l;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/l;->c()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/l;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/n;->a:Lcom/google/i18n/phonenumbers/q/a;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/i18n/phonenumbers/q/a;->a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/l;Z)Z

    move-result p1

    return p1
.end method

.method private h(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/n;->d(I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public e(Lcom/google/i18n/phonenumbers/m;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/n;->d(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/n;->c(Lcom/google/i18n/phonenumbers/m;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/i18n/phonenumbers/n;->f(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/n;->h(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/e;->c(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/j;

    move-result-object p2

    if-nez p2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/google/i18n/phonenumbers/n;->b(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->c()Lcom/google/i18n/phonenumbers/l;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/n;->g(Ljava/lang/String;Lcom/google/i18n/phonenumbers/l;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/j;->s()Lcom/google/i18n/phonenumbers/l;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/n;->g(Ljava/lang/String;Lcom/google/i18n/phonenumbers/l;)Z

    move-result p1

    return p1
.end method
