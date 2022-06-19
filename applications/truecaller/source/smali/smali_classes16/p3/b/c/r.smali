.class public final Lp3/b/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/b/c/r$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/b/c/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lp3/b/c/r;

.field public static final e:Lp3/b/c/r;

.field public static final f:Lp3/b/c/r;

.field public static final g:Lp3/b/c/r;

.field public static final h:Lp3/b/c/r;

.field public static final i:Lp3/b/c/r;

.field public static final j:Lp3/b/c/r;

.field public static final k:Lp3/b/c/r;


# instance fields
.field public final a:Lp3/b/c/r$a;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    invoke-static {}, Lp3/b/c/r$a;->values()[Lp3/b/c/r$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x11

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    .line 3
    iget v4, v3, Lp3/b/c/r$a;->a:I

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lp3/b/c/r;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lp3/b/c/r;-><init>(Lp3/b/c/r$a;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp3/b/c/r;

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Code value duplication between "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object v2, v4, Lp3/b/c/r;->a:Lp3/b/c/r$a;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 10
    sput-object v0, Lp3/b/c/r;->c:Ljava/util/List;

    .line 11
    sget-object v0, Lp3/b/c/r$a;->b:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->d:Lp3/b/c/r;

    .line 12
    sget-object v0, Lp3/b/c/r$a;->c:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 13
    sget-object v0, Lp3/b/c/r$a;->d:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->e:Lp3/b/c/r;

    .line 14
    sget-object v0, Lp3/b/c/r$a;->e:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->f:Lp3/b/c/r;

    .line 15
    sget-object v0, Lp3/b/c/r$a;->f:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 16
    sget-object v0, Lp3/b/c/r$a;->g:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->g:Lp3/b/c/r;

    .line 17
    sget-object v0, Lp3/b/c/r$a;->h:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 18
    sget-object v0, Lp3/b/c/r$a;->i:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->h:Lp3/b/c/r;

    .line 19
    sget-object v0, Lp3/b/c/r$a;->r:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->i:Lp3/b/c/r;

    .line 20
    sget-object v0, Lp3/b/c/r$a;->j:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 21
    sget-object v0, Lp3/b/c/r$a;->k:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->j:Lp3/b/c/r;

    .line 22
    sget-object v0, Lp3/b/c/r$a;->l:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 23
    sget-object v0, Lp3/b/c/r$a;->m:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 24
    sget-object v0, Lp3/b/c/r$a;->n:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 25
    sget-object v0, Lp3/b/c/r$a;->o:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    .line 26
    sget-object v0, Lp3/b/c/r$a;->p:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    move-result-object v0

    sput-object v0, Lp3/b/c/r;->k:Lp3/b/c/r;

    .line 27
    sget-object v0, Lp3/b/c/r$a;->q:Lp3/b/c/r$a;

    invoke-virtual {v0}, Lp3/b/c/r$a;->a()Lp3/b/c/r;

    return-void
.end method

.method public constructor <init>(Lp3/b/c/r$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "canonicalCode"

    .line 2
    invoke-static {p1, p2}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/b/c/r;->a:Lp3/b/c/r$a;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lp3/b/c/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp3/b/c/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lp3/b/c/r;

    .line 3
    iget-object v1, p0, Lp3/b/c/r;->a:Lp3/b/c/r$a;

    iget-object v3, p1, Lp3/b/c/r;->a:Lp3/b/c/r$a;

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lp3/b/c/r;->b:Ljava/lang/String;

    iget-object p1, p1, Lp3/b/c/r;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/b/c/r;->a:Lp3/b/c/r$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/b/c/r;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Status{canonicalCode="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp3/b/c/r;->a:Lp3/b/c/r$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/b/c/r;->b:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
