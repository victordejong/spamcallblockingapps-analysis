.class final Li/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/e;


# static fields
.field private static final b:Li/a/b/e;


# instance fields
.field private final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/b/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Li/a/b/c;-><init>([Ljava/lang/Object;)V

    sput-object v0, Li/a/b/c;->b:Li/a/b/e;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/b/c;->a:[Ljava/lang/Object;

    return-void
.end method

.method static a()Li/a/b/e;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/c;->b:Li/a/b/e;

    return-object v0
.end method


# virtual methods
.method public synthetic c()Li/a/b/p;
    .locals 1

    invoke-static {p0}, Li/a/b/d;->a(Li/a/b/e;)Li/a/b/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Li/a/b/n;)Li/a/b/e;
    .locals 0

    invoke-static {p0, p1}, Li/a/b/d;->b(Li/a/b/e;Li/a/b/n;)Li/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public e(Li/a/b/g;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/b/g<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Li/a/b/c;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    aget-object p1, v1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Li/a/b/g;Ljava/lang/Object;)Li/a/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Li/a/b/g<",
            "TV;>;TV;)",
            "Li/a/b/e;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Li/a/b/c;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3
    aget-object p1, v1, v0

    if-ne p1, p2, :cond_0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 5
    aput-object p2, p1, v0

    .line 6
    new-instance p2, Li/a/b/c;

    invoke-direct {p2, p1}, Li/a/b/c;-><init>([Ljava/lang/Object;)V

    return-object p2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 7
    :cond_2
    array-length v0, v1

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aput-object p1, v0, v1

    .line 9
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aput-object p2, v0, p1

    .line 10
    new-instance p1, Li/a/b/c;

    invoke-direct {p1, v0}, Li/a/b/c;-><init>([Ljava/lang/Object;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Li/a/b/c;->a:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li/a/b/c;->a:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    const/16 v1, 0x7d

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
