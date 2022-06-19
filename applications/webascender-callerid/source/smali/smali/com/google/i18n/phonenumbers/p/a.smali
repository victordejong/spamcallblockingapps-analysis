.class public Lcom/google/i18n/phonenumbers/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/i18n/phonenumbers/p/a;


# instance fields
.field private a:Lcom/google/i18n/phonenumbers/r/f;

.field private final b:Lcom/google/i18n/phonenumbers/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/p/a;->a:Lcom/google/i18n/phonenumbers/r/f;

    .line 3
    invoke-static {}, Lcom/google/i18n/phonenumbers/h;->t()Lcom/google/i18n/phonenumbers/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    .line 4
    new-instance v0, Lcom/google/i18n/phonenumbers/r/f;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/r/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/p/a;->a:Lcom/google/i18n/phonenumbers/r/f;

    return-void
.end method

.method private a(Lcom/google/i18n/phonenumbers/m;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/h;->E(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/p/a;->e(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "ZZ"

    move-object v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v4, p1, v3}, Lcom/google/i18n/phonenumbers/h;->J(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    move-object v2, v3

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/google/i18n/phonenumbers/p/a;->e(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized d()Lcom/google/i18n/phonenumbers/p/a;
    .locals 3

    const-class v0, Lcom/google/i18n/phonenumbers/p/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/p/a;->c:Lcom/google/i18n/phonenumbers/p/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/i18n/phonenumbers/p/a;

    const-string v2, "/com/google/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v1, v2}, Lcom/google/i18n/phonenumbers/p/a;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/i18n/phonenumbers/p/a;->c:Lcom/google/i18n/phonenumbers/p/a;

    .line 3
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/p/a;->c:Lcom/google/i18n/phonenumbers/p/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    const-string v1, "ZZ"

    .line 1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/i18n/phonenumbers/m;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v2

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/h;->s(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/h;->x(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/i18n/phonenumbers/h;->B(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    :try_start_0
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v5, v2, v3}, Lcom/google/i18n/phonenumbers/h;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, p1

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/p/a;->a:Lcom/google/i18n/phonenumbers/r/f;

    invoke-virtual {v3, v2, v0, v4, v1}, Lcom/google/i18n/phonenumbers/r/f;->b(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/p/a;->a:Lcom/google/i18n/phonenumbers/r/f;

    invoke-virtual {v2, p1, v0, v4, v1}, Lcom/google/i18n/phonenumbers/r/f;->b(Lcom/google/i18n/phonenumbers/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/p/a;->a(Lcom/google/i18n/phonenumbers/m;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public c(Lcom/google/i18n/phonenumbers/m;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/p/a;->b:Lcom/google/i18n/phonenumbers/h;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/h;->C(Lcom/google/i18n/phonenumbers/m;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/p/a;->b(Lcom/google/i18n/phonenumbers/m;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/p/a;->e(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
