.class public final enum Lw3/b/a/i0/c$j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/l;
.implements Lw3/b/a/i0/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw3/b/a/i0/c$j;",
        ">;",
        "Lw3/b/a/i0/l;",
        "Lw3/b/a/i0/j;"
    }
.end annotation


# static fields
.field public static final enum a:Lw3/b/a/i0/c$j;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:I

.field public static final f:I

.field public static final synthetic g:[Lw3/b/a/i0/c$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lw3/b/a/i0/c$j;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw3/b/a/i0/c$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw3/b/a/i0/c$j;->a:Lw3/b/a/i0/c$j;

    const/4 v1, 0x1

    new-array v1, v1, [Lw3/b/a/i0/c$j;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lw3/b/a/i0/c$j;->g:[Lw3/b/a/i0/c$j;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lw3/b/a/i0/c$j;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-static {}, Lw3/b/a/g;->o()Lw3/b/a/j0/i;

    move-result-object v1

    invoke-interface {v1}, Lw3/b/a/j0/i;->b()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lw3/b/a/i0/c$j;->b:Ljava/util/List;

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lw3/b/a/i0/c$j;->c:Ljava/util/Map;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2f

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_2

    .line 11
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 12
    :cond_0
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v5, 0x1

    .line 13
    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 15
    sget-object v7, Lw3/b/a/i0/c$j;->c:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_2
    sget-object v5, Lw3/b/a/i0/c$j;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 20
    :cond_3
    sput v1, Lw3/b/a/i0/c$j;->e:I

    .line 21
    sput v3, Lw3/b/a/i0/c$j;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw3/b/a/i0/c$j;
    .locals 1

    .line 1
    const-class v0, Lw3/b/a/i0/c$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw3/b/a/i0/c$j;

    return-object p0
.end method

.method public static final values()[Lw3/b/a/i0/c$j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/i0/c$j;->g:[Lw3/b/a/i0/c$j;

    invoke-virtual {v0}, [Lw3/b/a/i0/c$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw3/b/a/i0/c$j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lw3/b/a/i0/c$j;->e:I

    return v0
.end method

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 9

    .line 1
    sget-object v0, Lw3/b/a/i0/c$j;->d:Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3
    sget v2, Lw3/b/a/i0/c$j;->f:I

    add-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, p3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 5
    invoke-interface {p2, p3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p3

    if-ge v3, v1, :cond_0

    .line 7
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v2

    .line 8
    :goto_1
    sget-object v1, Lw3/b/a/i0/c$j;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    not-int p1, p3

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, ""

    move v4, p3

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    .line 9
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 11
    invoke-static {p2, v4, v6}, Lw3/b/a/i0/c;->t(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v7, v8, :cond_5

    :cond_4
    move-object v5, v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lw3/b/a/g;->e(Ljava/lang/String;)Lw3/b/a/g;

    move-result-object p2

    .line 14
    iput-object v3, p1, Lw3/b/a/i0/e;->m:Ljava/lang/Object;

    .line 15
    iput-object p2, p1, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v4

    return p1

    :cond_7
    not-int p1, p3

    return p1
.end method

.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    sget v0, Lw3/b/a/i0/c$j;->e:I

    return v0
.end method

.method public f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p6, :cond_0

    .line 1
    iget-object p2, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 2
    :goto_0
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
