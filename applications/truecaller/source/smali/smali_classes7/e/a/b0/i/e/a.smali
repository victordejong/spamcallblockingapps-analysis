.class public Le/a/b0/i/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/i/e/a$d;,
        Le/a/b0/i/e/a$a;,
        Le/a/b0/i/e/a$e;,
        Le/a/b0/i/e/a$c;,
        Le/a/b0/i/e/a$h;,
        Le/a/b0/i/e/a$b;,
        Le/a/b0/i/e/a$f;,
        Le/a/b0/i/e/a$g;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Landroid/net/Uri;

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/b0/i/e/a$g;

.field public final m:Le/a/b0/i/e/a$f;

.field public final n:Le/a/b0/i/e/a$h;

.field public final o:Le/a/b0/i/e/a$e;

.field public final p:Le/a/b0/i/e/a$d;

.field public final q:Le/a/b0/i/e/a$b;

.field public final r:Le/a/b0/i/e/a$c;

.field public final s:Le/a/b0/i/e/a$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZZZZLjava/lang/String;Landroid/net/Uri;Ljava/util/Set;Le/a/b0/i/e/a$g;Le/a/b0/i/e/a$f;Le/a/b0/i/e/a$h;Le/a/b0/i/e/a$e;Le/a/b0/i/e/a$d;Le/a/b0/i/e/a$b;Le/a/b0/i/e/a$c;Le/a/b0/i/e/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIZZZZ",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;",
            "Le/a/b0/i/e/a$g;",
            "Le/a/b0/i/e/a$f;",
            "Le/a/b0/i/e/a$h;",
            "Le/a/b0/i/e/a$e;",
            "Le/a/b0/i/e/a$d;",
            "Le/a/b0/i/e/a$b;",
            "Le/a/b0/i/e/a$c;",
            "Le/a/b0/i/e/a$a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Le/a/b0/i/e/a;->a:I

    move-object v1, p2

    .line 3
    iput-object v1, v0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    move v1, p3

    .line 4
    iput v1, v0, Le/a/b0/i/e/a;->b:I

    move v1, p4

    .line 5
    iput v1, v0, Le/a/b0/i/e/a;->c:I

    move v1, p5

    .line 6
    iput-boolean v1, v0, Le/a/b0/i/e/a;->d:Z

    move v1, p6

    .line 7
    iput-boolean v1, v0, Le/a/b0/i/e/a;->e:Z

    move v1, p7

    .line 8
    iput-boolean v1, v0, Le/a/b0/i/e/a;->f:Z

    move v1, p8

    .line 9
    iput-boolean v1, v0, Le/a/b0/i/e/a;->g:Z

    move-object v1, p9

    .line 10
    iput-object v1, v0, Le/a/b0/i/e/a;->i:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Le/a/b0/i/e/a;->l:Le/a/b0/i/e/a$g;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Le/a/b0/i/e/a;->m:Le/a/b0/i/e/a$f;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Le/a/b0/i/e/a;->n:Le/a/b0/i/e/a$h;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Le/a/b0/i/e/a;->o:Le/a/b0/i/e/a$e;

    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Le/a/b0/i/e/a;->p:Le/a/b0/i/e/a$d;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Le/a/b0/i/e/a;->q:Le/a/b0/i/e/a$b;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Le/a/b0/i/e/a;->r:Le/a/b0/i/e/a$c;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Le/a/b0/i/e/a;->s:Le/a/b0/i/e/a$a;

    return-void
.end method


# virtual methods
.method public a(J)Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/a/b0/i/e/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2
    :cond_0
    check-cast p1, Le/a/b0/i/e/a;

    .line 3
    iget v1, p0, Le/a/b0/i/e/a;->a:I

    iget v2, p1, Le/a/b0/i/e/a;->a:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Le/a/b0/i/e/a;->i:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Le/a/b0/i/e/a;->i:Ljava/lang/String;

    .line 5
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    .line 7
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/b0/i/e/a;->a:I

    .line 2
    iget-object v1, p0, Le/a/b0/i/e/a;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v1, v0

    .line 3
    iget-object v0, p0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1b

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Le/a/b0/i/e/a;->a:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/b0/i/e/a;->h:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/b0/i/e/a;->i:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Le/a/b0/i/e/a;->k:Ljava/util/Set;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/a/b0/i/e/a;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/a/b0/i/e/a;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Le/a/b0/i/e/a;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "{match=0x%08X, table=%s, type=%s, alsoNotify=%s, r=%b, w=%b, c=%b}"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
