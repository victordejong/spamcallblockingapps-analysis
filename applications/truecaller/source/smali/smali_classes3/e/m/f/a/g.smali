.class public final Le/m/f/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/f/a/g$a;,
        Le/m/f/a/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Le/m/f/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:[Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Le/m/f/a/j;

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/String;

.field public final d:Le/m/f/a/j$a;

.field public e:J

.field public f:Le/m/f/a/g$b;

.field public g:Le/m/f/a/f;

.field public h:I

.field public final i:Le/m/f/a/q/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/g;->k:Ljava/util/regex/Pattern;

    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/g;->l:Ljava/util/regex/Pattern;

    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/g;->m:Ljava/util/regex/Pattern;

    const-string v0, ":[0-5]\\d"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/g;->n:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "/+(.*)"

    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(\\([^(]*)"

    .line 6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    .line 7
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    .line 8
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\\.+\\p{Z}*([^.]+)"

    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\\p{Z}+(\\P{Z}+)"

    .line 10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Le/m/f/a/g;->p:[Ljava/util/regex/Pattern;

    .line 11
    invoke-static {v2, v5}, Le/m/f/a/g;->g(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?:["

    const-string v5, "(\\[\uff08\uff3b"

    const-string v7, "])?(?:"

    const-string v8, "[^(\\[\uff08\uff3b)\\]\uff09\uff3d]"

    const-string v9, "+["

    .line 12
    invoke-static {v1, v5, v7, v8, v9}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")\\]\uff09\uff3d"

    const-string v10, "])?"

    const-string v11, "+(?:["

    invoke-static {v1, v7, v10, v8, v11}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "]"

    invoke-static {v1, v5, v10, v8, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "])"

    invoke-static {v1, v7, v5, v0, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/g;->o:Ljava/util/regex/Pattern;

    .line 13
    invoke-static {v2, v4}, Le/m/f/a/g;->g(II)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v2, v6}, Le/m/f/a/g;->g(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    .line 15
    invoke-static {v2, v4}, Le/m/f/a/g;->g(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    .line 16
    invoke-static {v5, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "\\p{Nd}"

    .line 17
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v4}, Le/m/f/a/g;->g(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "["

    const-string v5, "(\\[\uff08\uff3b+\uff0b"

    .line 18
    invoke-static {v4, v5, v10}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Le/m/f/a/g;->q:Ljava/util/regex/Pattern;

    const-string v5, "(?:"

    const-string v6, ")"

    .line 20
    invoke-static {v5, v4, v1, v6, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v5, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6, v2, v5}, Le/d/c/a/a;->S0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Le/m/f/a/j;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/f/a/g;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Le/m/f/a/j;Ljava/lang/CharSequence;Ljava/lang/String;Le/m/f/a/j$a;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/m/f/a/g$b;->a:Le/m/f/a/g$b;

    iput-object v0, p0, Le/m/f/a/g;->f:Le/m/f/a/g$b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/f/a/g;->g:Le/m/f/a/f;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/m/f/a/g;->h:I

    .line 5
    new-instance v1, Le/m/f/a/q/b;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Le/m/f/a/q/b;-><init>(I)V

    iput-object v1, p0, Le/m/f/a/g;->i:Le/m/f/a/q/b;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    .line 6
    iput-object p1, p0, Le/m/f/a/g;->a:Le/m/f/a/j;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 7
    :goto_0
    iput-object p2, p0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    .line 8
    iput-object p3, p0, Le/m/f/a/g;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Le/m/f/a/g;->d:Le/m/f/a/j$a;

    .line 10
    iput-wide p5, p0, Le/m/f/a/g;->e:J

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 12
    :cond_2
    throw v0
.end method

.method public static b(Le/m/f/a/o;Ljava/lang/String;)Z
    .locals 6

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v3, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    .line 4
    sget-object v4, Le/m/f/a/o$a;->a:Le/m/f/a/o$a;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 5
    sget-object v4, Le/m/f/a/o$a;->c:Le/m/f/a/o$a;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    :goto_1
    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/m/f/a/j;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget p0, p0, Le/m/f/a/o;->b:I

    .line 8
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/2addr v0, v5

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    return v5
.end method

.method public static c(Le/m/f/a/o;Ljava/lang/String;Le/m/f/a/j;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x58

    const/16 v5, 0x78

    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_4

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2

    if-ne v6, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/m/f/a/j;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v4, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Le/m/f/a/j;->D(Le/m/f/a/o;Ljava/lang/CharSequence;)Le/m/f/a/j$b;

    move-result-object v1

    sget-object v4, Le/m/f/a/j$b;->d:Le/m/f/a/j$b;

    if-eq v1, v4, :cond_3

    return v0

    :cond_3
    move v1, v2

    :cond_4
    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    return v3
.end method

.method public static d(C)Z
    .locals 1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(C)Z
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 3
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static f(Le/m/f/a/o;Le/m/f/a/j;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    .line 2
    sget-object v1, Le/m/f/a/o$a;->d:Le/m/f/a/o$a;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget v0, p0, Le/m/f/a/o;->b:I

    .line 4
    invoke-virtual {p1, v0}, Le/m/f/a/j;->y(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    invoke-virtual {p1, p0}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v3, v0, Le/m/f/a/l;->g0:Ljava/util/List;

    .line 8
    invoke-virtual {p1, v3, v1}, Le/m/f/a/j;->b(Ljava/util/List;Ljava/lang/String;)Le/m/f/a/k;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v3, v1, Le/m/f/a/k;->e:Ljava/lang/String;

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 11
    iget-boolean v3, v1, Le/m/f/a/k;->f:Z

    if-eqz v3, :cond_2

    return v2

    .line 12
    :cond_2
    iget-object v1, v1, Le/m/f/a/k;->e:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Le/m/f/a/j;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 14
    :cond_3
    iget-object p0, p0, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 15
    invoke-static {p0}, Le/m/f/a/j;->P(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 17
    invoke-virtual {p1, v1, v0, p0}, Le/m/f/a/j;->M(Ljava/lang/StringBuilder;Le/m/f/a/l;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method public static g(II)Ljava/lang/String;
    .locals 3

    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-lt p1, p0, :cond_0

    const-string v0, "{"

    const-string v1, ","

    const-string v2, "}"

    .line 1
    invoke-static {v0, p0, v1, p1, v2}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static i(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Le/m/f/a/o;Ljava/lang/CharSequence;Le/m/f/a/j;Le/m/f/a/g$a;)Z
    .locals 10

    .line 1
    sget-object v0, Le/m/f/a/j$c;->d:Le/m/f/a/j$c;

    const/4 v1, 0x1

    .line 2
    invoke-static {p2, v1}, Le/m/f/a/j;->O(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 3
    invoke-virtual {p3, p1, v0}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3b

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/16 v4, 0x2d

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/2addr v4, v1

    .line 7
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-interface {p4, p3, p1, p2, v2}, Le/m/f/a/g$a;->a(Le/m/f/a/j;Le/m/f/a/o;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 9
    :cond_1
    iget v2, p1, Le/m/f/a/o;->b:I

    .line 10
    sget-object v4, Le/m/f/a/c;->e:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v2, v5

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Le/m/f/a/c;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v6, Le/m/f/a/c;->a:Le/m/f/a/b;

    const-string v7, "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto"

    invoke-static {v2, v4, v7, v6}, Le/m/f/a/c;->a(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Le/m/f/a/b;)Le/m/f/a/l;

    move-result-object v2

    .line 12
    :goto_0
    invoke-virtual {p3, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 13
    iget-object v2, v2, Le/m/f/a/l;->g0:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/f/a/k;

    .line 15
    invoke-virtual {v7}, Le/m/f/a/k;->b()I

    move-result v8

    if-lez v8, :cond_4

    .line 16
    iget-object v8, p0, Le/m/f/a/g;->i:Le/m/f/a/q/b;

    .line 17
    invoke-virtual {v7, v6}, Le/m/f/a/k;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Le/m/f/a/q/b;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 18
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p3, p1}, Le/m/f/a/j;->u(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {p3, v8, v7, v0, v5}, Le/m/f/a/j;->l(Ljava/lang/String;Le/m/f/a/k;Le/m/f/a/j$c;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v7, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-interface {p4, p3, p1, p2, v7}, Le/m/f/a/g$a;->a(Le/m/f/a/j;Le/m/f/a/o;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v1

    :cond_5
    return v6
.end method

.method public final h(Ljava/lang/CharSequence;I)Le/m/f/a/f;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Le/m/f/a/g;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Le/m/f/a/g;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Le/m/f/a/g;->d:Le/m/f/a/j$a;

    sget-object v3, Le/m/f/a/j$a;->b:Le/m/f/a/j$a;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_4

    if-lez p2, :cond_2

    .line 3
    sget-object v2, Le/m/f/a/g;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    iget-object v2, p0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 5
    invoke-static {v2}, Le/m/f/a/g;->d(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Le/m/f/a/g;->e(C)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    return-object v1

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    .line 7
    iget-object v3, p0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 8
    iget-object v3, p0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 9
    invoke-static {v2}, Le/m/f/a/g;->d(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Le/m/f/a/g;->e(C)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return-object v1

    .line 10
    :cond_4
    iget-object v3, p0, Le/m/f/a/g;->a:Le/m/f/a/j;

    iget-object v5, p0, Le/m/f/a/g;->c:Ljava/lang/String;

    .line 11
    new-instance v2, Le/m/f/a/o;

    invoke-direct {v2}, Le/m/f/a/o;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, p1

    move-object v8, v2

    .line 12
    invoke-virtual/range {v3 .. v8}, Le/m/f/a/j;->S(Ljava/lang/CharSequence;Ljava/lang/String;ZZLe/m/f/a/o;)V

    .line 13
    iget-object v3, p0, Le/m/f/a/g;->d:Le/m/f/a/j$a;

    iget-object v4, p0, Le/m/f/a/g;->a:Le/m/f/a/j;

    invoke-virtual {v3, v2, p1, v4, p0}, Le/m/f/a/j$a;->a(Le/m/f/a/o;Ljava/lang/CharSequence;Le/m/f/a/j;Le/m/f/a/g;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v2}, Le/m/f/a/o;->a()Le/m/f/a/o;

    const/4 v3, 0x0

    .line 15
    iput-boolean v3, v2, Le/m/f/a/o;->k:Z

    .line 16
    iput-object v0, v2, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 17
    iput-boolean v3, v2, Le/m/f/a/o;->o:Z

    .line 18
    iput-object v0, v2, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 19
    new-instance v0, Le/m/f/a/f;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1, v2}, Le/m/f/a/f;-><init>(ILjava/lang/String;Le/m/f/a/o;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_5
    :goto_0
    return-object v1
.end method

.method public hasNext()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Le/m/f/a/g$b;->b:Le/m/f/a/g$b;

    iget-object v2, v0, Le/m/f/a/g;->f:Le/m/f/a/g$b;

    sget-object v3, Le/m/f/a/g$b;->a:Le/m/f/a/g$b;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_b

    .line 2
    iget v2, v0, Le/m/f/a/g;->h:I

    .line 3
    sget-object v3, Le/m/f/a/g;->j:Ljava/util/regex/Pattern;

    iget-object v6, v0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 4
    :goto_0
    iget-wide v6, v0, Le/m/f/a/g;->e:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    if-lez v6, :cond_9

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 6
    iget-object v6, v0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-interface {v6, v2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 7
    sget-object v10, Le/m/f/a/j;->s:Ljava/util/regex/Pattern;

    invoke-static {v10, v6}, Le/m/f/a/g;->i(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 8
    sget-object v10, Le/m/f/a/g;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_4

    .line 9
    :cond_0
    sget-object v10, Le/m/f/a/g;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 10
    iget-object v10, v0, Le/m/f/a/g;->b:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 11
    sget-object v13, Le/m/f/a/g;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_4

    .line 12
    :cond_1
    invoke-virtual {v0, v6, v2}, Le/m/f/a/g;->h(Ljava/lang/CharSequence;I)Le/m/f/a/f;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v7, v10

    goto :goto_4

    .line 13
    :cond_2
    sget-object v10, Le/m/f/a/g;->p:[Ljava/util/regex/Pattern;

    array-length v13, v10

    move v14, v4

    :goto_1
    if-ge v14, v13, :cond_7

    aget-object v15, v10, v14

    .line 14
    invoke-virtual {v15, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    move/from16 v16, v5

    .line 15
    :goto_2
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v17

    if-eqz v17, :cond_6

    iget-wide v11, v0, Le/m/f/a/g;->e:J

    cmp-long v11, v11, v8

    if-lez v11, :cond_6

    if-eqz v16, :cond_4

    .line 16
    sget-object v11, Le/m/f/a/j;->t:Ljava/util/regex/Pattern;

    .line 17
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    invoke-interface {v6, v4, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 18
    invoke-static {v11, v12}, Le/m/f/a/g;->i(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 19
    invoke-virtual {v0, v11, v2}, Le/m/f/a/g;->h(Ljava/lang/CharSequence;I)Le/m/f/a/f;

    move-result-object v11

    if-eqz v11, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    iget-wide v11, v0, Le/m/f/a/g;->e:J

    const-wide/16 v16, 0x1

    sub-long v11, v11, v16

    iput-wide v11, v0, Le/m/f/a/g;->e:J

    move/from16 v16, v4

    .line 21
    :cond_4
    sget-object v11, Le/m/f/a/j;->t:Ljava/util/regex/Pattern;

    .line 22
    invoke-virtual {v15, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 23
    invoke-static {v11, v12}, Le/m/f/a/g;->i(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 24
    invoke-virtual {v15, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    add-int/2addr v12, v2

    invoke-virtual {v0, v11, v12}, Le/m/f/a/g;->h(Ljava/lang/CharSequence;I)Le/m/f/a/f;

    move-result-object v11

    if-eqz v11, :cond_5

    :goto_3
    move-object v7, v11

    goto :goto_4

    .line 25
    :cond_5
    iget-wide v11, v0, Le/m/f/a/g;->e:J

    const-wide/16 v17, 0x1

    sub-long v11, v11, v17

    iput-wide v11, v0, Le/m/f/a/g;->e:J

    goto :goto_2

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    goto :goto_5

    .line 26
    :cond_8
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v2, v6

    .line 27
    iget-wide v6, v0, Le/m/f/a/g;->e:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, v0, Le/m/f/a/g;->e:J

    goto/16 :goto_0

    .line 28
    :cond_9
    :goto_5
    iput-object v7, v0, Le/m/f/a/g;->g:Le/m/f/a/f;

    if-nez v7, :cond_a

    .line 29
    sget-object v2, Le/m/f/a/g$b;->c:Le/m/f/a/g$b;

    iput-object v2, v0, Le/m/f/a/g;->f:Le/m/f/a/g$b;

    goto :goto_6

    .line 30
    :cond_a
    invoke-virtual {v7}, Le/m/f/a/f;->a()I

    move-result v2

    iput v2, v0, Le/m/f/a/g;->h:I

    .line 31
    iput-object v1, v0, Le/m/f/a/g;->f:Le/m/f/a/g$b;

    .line 32
    :cond_b
    :goto_6
    iget-object v2, v0, Le/m/f/a/g;->f:Le/m/f/a/g$b;

    if-ne v2, v1, :cond_c

    move v4, v5

    :cond_c
    return v4
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/f/a/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/f/a/g;->g:Le/m/f/a/f;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Le/m/f/a/g;->g:Le/m/f/a/f;

    .line 4
    sget-object v1, Le/m/f/a/g$b;->a:Le/m/f/a/g$b;

    iput-object v1, p0, Le/m/f/a/g;->f:Le/m/f/a/g$b;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
