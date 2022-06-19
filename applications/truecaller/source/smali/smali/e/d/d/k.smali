.class public Le/d/d/k;
.super Le/d/d/f;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/d/d/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "BEGIN"

    const-string v2, "END"

    const-string v3, "LOGO"

    const-string v4, "PHOTO"

    const-string v5, "LABEL"

    const-string v6, "FN"

    const-string v7, "TITLE"

    const-string v8, "SOUND"

    const-string v9, "VERSION"

    const-string v10, "TEL"

    const-string v11, "EMAIL"

    const-string v12, "TZ"

    const-string v13, "GEO"

    const-string v14, "NOTE"

    const-string v15, "URL"

    const-string v16, "BDAY"

    const-string v17, "ROLE"

    const-string v18, "REV"

    const-string v19, "UID"

    const-string v20, "KEY"

    const-string v21, "MAILER"

    const-string v22, "NAME"

    const-string v23, "PROFILE"

    const-string v24, "SOURCE"

    const-string v25, "NICKNAME"

    const-string v26, "CLASS"

    const-string v27, "SORT-STRING"

    const-string v28, "CATEGORIES"

    const-string v29, "PRODID"

    const-string v30, "IMPP"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/d/d/k;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "7BIT"

    const-string v2, "8BIT"

    const-string v3, "BASE64"

    const-string v4, "B"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/d/d/f;-><init>()V

    .line 2
    new-instance v0, Le/d/d/h;

    invoke-direct {v0}, Le/d/d/h;-><init>()V

    iput-object v0, p0, Le/d/d/k;->a:Le/d/d/h;

    return-void
.end method


# virtual methods
.method public a(Le/d/d/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/d/k;->a:Le/d/d/h;

    .line 2
    iget-object v0, v0, Le/d/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/d/d/p/b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/d/d/k;->a:Le/d/d/h;

    invoke-virtual {v0, p1}, Le/d/d/g;->o(Ljava/io/InputStream;)V

    return-void
.end method
