.class public abstract Lp3/a/n1/u0;
.super Lp3/a/n1/a$c;
.source "SourceFile"


# static fields
.field public static final v:Lp3/a/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f0$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public r:Lp3/a/g1;

.field public s:Lp3/a/o0;

.field public t:Ljava/nio/charset/Charset;

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/a/n1/u0$a;

    invoke-direct {v0}, Lp3/a/n1/u0$a;-><init>()V

    sput-object v0, Lp3/a/n1/u0;->v:Lp3/a/f0$a;

    const-string v1, ":status"

    .line 2
    invoke-static {v1, v0}, Lp3/a/f0;->a(Ljava/lang/String;Lp3/a/f0$a;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Lp3/a/n1/u0;->w:Lp3/a/o0$f;

    return-void
.end method

.method public constructor <init>(ILp3/a/n1/r2;Lp3/a/n1/x2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lp3/a/n1/a$c;-><init>(ILp3/a/n1/r2;Lp3/a/n1/x2;)V

    .line 2
    sget-object p1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lp3/a/n1/u0;->t:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static j(Lp3/a/o0;)Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    sget-object v0, Lp3/a/n1/r0;->g:Lp3/a/o0$f;

    invoke-virtual {p0, v0}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    const-string v1, "charset="

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 3
    :try_start_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    :cond_0
    sget-object p0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0
.end method


# virtual methods
.method public final k(Lp3/a/o0;)Lp3/a/g1;
    .locals 6

    .line 1
    sget-object v0, Lp3/a/n1/u0;->w:Lp3/a/o0$f;

    invoke-virtual {p1, v0}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v0, "Missing HTTP status code"

    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Lp3/a/n1/r0;->g:Lp3/a/o0$f;

    invoke-virtual {p1, v1}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v3, v2, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "application/grpc"

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v3, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_6

    :cond_5
    :goto_0
    move v1, v5

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lp3/a/n1/r0;->g(I)Lp3/a/g1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid content-type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lp3/a/g1;->b(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
