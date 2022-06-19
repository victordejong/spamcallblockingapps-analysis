.class public final Ls1/a/a/a/v0/a/o/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/a/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/o/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/a/o/c$a$a;
    .locals 8

    const-string v0, "className"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "packageFqName"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ls1/a/a/a/v0/a/o/c;->values()[Ls1/a/a/a/v0/a/o/c;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 3
    aget-object v3, v0, v2

    .line 4
    iget-object v6, v3, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    .line 5
    invoke-static {v6, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, v3, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    const/4 v7, 0x2

    .line 7
    invoke-static {p1, v6, v1, v7}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_8

    .line 8
    iget-object p2, v3, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_5

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    move v0, v1

    :goto_4
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    const/16 v5, 0x9

    if-ltz v2, :cond_6

    if-ge v5, v2, :cond_5

    goto :goto_5

    :cond_5
    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    move-object p1, v4

    goto :goto_6

    .line 12
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_6
    if-eqz p1, :cond_8

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 14
    new-instance p2, Ls1/a/a/a/v0/a/o/c$a$a;

    invoke-direct {p2, v3, p1}, Ls1/a/a/a/v0/a/o/c$a$a;-><init>(Ls1/a/a/a/v0/a/o/c;I)V

    return-object p2

    :cond_8
    return-object v4
.end method
