.class public final Lu3/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/c0$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Lu3/c0$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lu3/c0;->d:Ljava/util/regex/Pattern;

    const-string v0, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lu3/c0;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/c0;->a:Ljava/lang/String;

    iput-object p2, p0, Lu3/c0;->b:Ljava/lang/String;

    iput-object p4, p0, Lu3/c0;->c:[Ljava/lang/String;

    return-void
.end method

.method public static final b(Ljava/lang/String;)Lu3/c0;
    .locals 0

    invoke-static {p0}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 6

    const-string v0, "charset"

    const-string v1, "name"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lu3/c0;->c:[Ljava/lang/String;

    const-string v2, "$this$indices"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ls1/d0/i;

    invoke-static {v1}, Le/q/f/a/d/a;->V0([Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Ls1/d0/i;-><init>(II)V

    const/4 v1, 0x2

    .line 5
    invoke-static {v2, v1}, Ls1/d0/j;->i(Ls1/d0/g;I)Ls1/d0/g;

    move-result-object v1

    .line 6
    iget v2, v1, Ls1/d0/g;->a:I

    .line 7
    iget v3, v1, Ls1/d0/g;->b:I

    .line 8
    iget v1, v1, Ls1/d0/g;->c:I

    if-ltz v1, :cond_0

    if-gt v2, v3, :cond_2

    goto :goto_0

    :cond_0
    if-lt v2, v3, :cond_2

    .line 9
    :goto_0
    iget-object v4, p0, Lu3/c0;->c:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v0, p0, Lu3/c0;->c:[Ljava/lang/String;

    add-int/2addr v2, v5

    aget-object v0, v0, v2

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 11
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lu3/c0;

    if-eqz v0, :cond_0

    check-cast p1, Lu3/c0;

    iget-object p1, p1, Lu3/c0;->a:Ljava/lang/String;

    iget-object v0, p0, Lu3/c0;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/c0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/c0;->a:Ljava/lang/String;

    return-object v0
.end method
