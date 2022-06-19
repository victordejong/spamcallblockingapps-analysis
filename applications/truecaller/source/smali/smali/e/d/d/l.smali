.class public Le/d/d/l;
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
.field public final a:Le/d/d/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "BEGIN"

    const-string v2, "END"

    const-string v3, "VERSION"

    const-string v4, "SOURCE"

    const-string v5, "KIND"

    const-string v6, "FN"

    const-string v7, "N"

    const-string v8, "NICKNAME"

    const-string v9, "PHOTO"

    const-string v10, "BDAY"

    const-string v11, "ANNIVERSARY"

    const-string v12, "GENDER"

    const-string v13, "ADR"

    const-string v14, "TEL"

    const-string v15, "EMAIL"

    const-string v16, "IMPP"

    const-string v17, "LANG"

    const-string v18, "TZ"

    const-string v19, "GEO"

    const-string v20, "TITLE"

    const-string v21, "ROLE"

    const-string v22, "LOGO"

    const-string v23, "ORG"

    const-string v24, "MEMBER"

    const-string v25, "RELATED"

    const-string v26, "CATEGORIES"

    const-string v27, "NOTE"

    const-string v28, "PRODID"

    const-string v29, "REV"

    const-string v30, "SOUND"

    const-string v31, "UID"

    const-string v32, "CLIENTPIDMAP"

    const-string v33, "URL"

    const-string v34, "KEY"

    const-string v35, "FBURL"

    const-string v36, "CALENDRURI"

    const-string v37, "CALURI"

    const-string v38, "XML"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Le/d/d/l;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "8BIT"

    const-string v2, "B"

    filled-new-array {v1, v2}, [Ljava/lang/String;

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
    new-instance v0, Le/d/d/i;

    invoke-direct {v0}, Le/d/d/i;-><init>()V

    iput-object v0, p0, Le/d/d/l;->a:Le/d/d/i;

    return-void
.end method


# virtual methods
.method public a(Le/d/d/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/d/d/l;->a:Le/d/d/i;

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
    iget-object v0, p0, Le/d/d/l;->a:Le/d/d/i;

    invoke-virtual {v0, p1}, Le/d/d/g;->o(Ljava/io/InputStream;)V

    return-void
.end method
