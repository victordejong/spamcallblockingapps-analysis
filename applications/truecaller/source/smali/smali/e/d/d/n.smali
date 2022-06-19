.class public Le/d/d/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/d/e;


# static fields
.field public static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-PHONETIC-FIRST-NAME"

    const-string v2, "X-PHONETIC-MIDDLE-NAME"

    const-string v3, "X-PHONETIC-LAST-NAME"

    const-string v4, "X-ABADR"

    const-string v5, "X-ABUID"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Le/d/d/n;->c:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-GNO"

    const-string v2, "X-GN"

    const-string v3, "X-REDUCTION"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Le/d/d/n;->d:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-MICROSOFT-ASST_TEL"

    const-string v2, "X-MICROSOFT-ASSISTANT"

    const-string v3, "X-MICROSOFT-OFFICELOC"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Le/d/d/n;->e:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "X-SD-VERN"

    const-string v2, "X-SD-FORMAT_VER"

    const-string v3, "X-SD-CATEGORIES"

    const-string v4, "X-SD-CLASS"

    const-string v5, "X-SD-DCREATED"

    const-string v6, "X-SD-DESCRIPTION"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Le/d/d/n;->f:Ljava/util/Set;

    const-string v0, "X-SD-CHAR_CODE"

    .line 5
    sput-object v0, Le/d/d/n;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/d/d/n;->a:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Le/d/d/n;->b:I

    return-void
.end method


# virtual methods
.method public a(Le/d/d/m;)V
    .locals 6

    .line 1
    iget-object v0, p1, Le/d/d/m;->a:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Le/d/d/m;->e:Ljava/util/List;

    const-string v1, "VERSION"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "2.1"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iput v5, p0, Le/d/d/n;->b:I

    goto :goto_0

    :cond_0
    const-string v1, "3.0"

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iput v3, p0, Le/d/d/n;->b:I

    goto :goto_0

    :cond_1
    const-string v1, "4.0"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iput v2, p0, Le/d/d/n;->b:I

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Le/d/d/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iput v4, p0, Le/d/d/n;->a:I

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 15
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 16
    :cond_3
    :goto_0
    iget p1, p0, Le/d/d/n;->a:I

    if-eqz p1, :cond_4

    return-void

    .line 17
    :cond_4
    sget-object p1, Le/d/d/n;->e:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    .line 18
    iput p1, p0, Le/d/d/n;->a:I

    goto :goto_1

    .line 19
    :cond_5
    sget-object p1, Le/d/d/n;->f:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    iput v4, p0, Le/d/d/n;->a:I

    goto :goto_1

    .line 21
    :cond_6
    sget-object p1, Le/d/d/n;->d:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iput v2, p0, Le/d/d/n;->a:I

    goto :goto_1

    .line 23
    :cond_7
    sget-object p1, Le/d/d/n;->c:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    iput v3, p0, Le/d/d/n;->a:I

    :cond_8
    :goto_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 3

    .line 1
    iget v0, p0, Le/d/d/n;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 2
    iget v0, p0, Le/d/d/n;->b:I

    if-nez v0, :cond_0

    const/high16 v0, -0x40000000    # -2.0f

    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, -0x3fffffff    # -2.0000002f

    return v0

    :cond_1
    if-ne v0, v1, :cond_2

    const v0, -0x3ffffffe    # -2.0000005f

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    const v0, 0x38000008

    return v0

    :cond_4
    const v0, 0x18000008

    return v0
.end method
