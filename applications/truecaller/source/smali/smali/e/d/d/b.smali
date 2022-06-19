.class public Le/d/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/d/b$r;,
        Le/d/d/b$g;,
        Le/d/d/b$b;,
        Le/d/d/b$q;,
        Le/d/d/b$c;,
        Le/d/d/b$d;,
        Le/d/d/b$s;,
        Le/d/d/b$l;,
        Le/d/d/b$k;,
        Le/d/d/b$o;,
        Le/d/d/b$i;,
        Le/d/d/b$m;,
        Le/d/d/b$p;,
        Le/d/d/b$e;,
        Le/d/d/b$n;,
        Le/d/d/b$j;,
        Le/d/d/b$f;,
        Le/d/d/b$h;
    }
.end annotation


# static fields
.field public static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/d/d/b$j;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$n;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$p;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$m;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$i;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$o;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$s;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$q;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$k;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$l;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/d/d/b$d;

.field public n:Le/d/d/b$c;

.field public final o:I

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Le/d/d/b;->q:Ljava/util/Map;

    const/4 v10, 0x0

    const-string v2, "X-AIM"

    const/4 v3, 0x1

    const-string v4, "X-MSN"

    const/4 v5, 0x2

    const-string v6, "X-YAHOO"

    const/4 v7, 0x6

    const-string v8, "X-ICQ"

    move v0, v10

    move-object v1, v9

    .line 2
    invoke-static/range {v0 .. v8}, Le/d/c/a/a;->j0(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x7

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "X-JABBER"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "X-SKYPE-USERNAME"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "X-GOOGLE-TALK"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-GOOGLE TALK"

    .line 6
    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/d/d/b;->r:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/d/d/b$j;

    invoke-direct {v0}, Le/d/d/b$j;-><init>()V

    iput-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    const/high16 v0, -0x40000000    # -2.0f

    .line 3
    iput v0, p0, Le/d/d/b;->o:I

    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p2, Le/d/d/b$j;

    invoke-direct {p2}, Le/d/d/b$j;-><init>()V

    iput-object p2, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 6
    iput p1, p0, Le/d/d/b;->o:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Le/d/d/b;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/d/d/b;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/d/d/b;->e:Ljava/util/List;

    new-instance v8, Le/d/d/b$m;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Le/d/d/b$m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/d/d/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/d/d/b;->b:Ljava/util/List;

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_d

    .line 5
    iget v1, p0, Le/d/d/b;->o:I

    .line 6
    sget-object v2, Le/d/d/a;->a:Ljava/util/Map;

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    move v4, v2

    :goto_1
    if-ge v2, v1, :cond_a

    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x70

    if-eq v5, v6, :cond_8

    const/16 v6, 0x50

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    const/16 v6, 0x77

    if-eq v5, v6, :cond_7

    const/16 v6, 0x57

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v6, 0x30

    if-gt v6, v5, :cond_5

    const/16 v6, 0x39

    if-le v5, v6, :cond_6

    :cond_5
    if-nez v2, :cond_9

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_9

    .line 9
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    :goto_2
    const/16 v4, 0x3b

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v4, 0x2c

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v4, v3

    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    if-nez v4, :cond_c

    .line 12
    iget p2, p0, Le/d/d/b;->o:I

    .line 13
    sget-object v1, Le/d/d/o;->a:Ljava/util/Map;

    .line 14
    sget-object v1, Le/d/d/a;->b:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/4 v3, 0x2

    .line 15
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 18
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 19
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    :cond_d
    :goto_6
    new-instance v0, Le/d/d/b$n;

    invoke-direct {v0, p2, p1, p3, p4}, Le/d/d/b$n;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 21
    iget-object p1, p0, Le/d/d/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 2
    iget-object v0, v0, Le/d/d/b$j;->f:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 5
    iget-object v0, v0, Le/d/d/b$j;->f:Ljava/lang/String;

    goto/16 :goto_6

    .line 6
    :cond_0
    iget-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 7
    iget-object v1, v0, Le/d/d/b$j;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/d/d/b$j;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/d/d/b$j;->c:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Le/d/d/b$j;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Le/d/d/b$j;->e:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    .line 10
    iget v4, p0, Le/d/d/b;->o:I

    iget-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 11
    iget-object v5, v0, Le/d/d/b$j;->a:Ljava/lang/String;

    .line 12
    iget-object v6, v0, Le/d/d/b$j;->c:Ljava/lang/String;

    .line 13
    iget-object v7, v0, Le/d/d/b$j;->b:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Le/d/d/b$j;->d:Ljava/lang/String;

    .line 15
    iget-object v9, v0, Le/d/d/b$j;->e:Ljava/lang/String;

    .line 16
    invoke-static/range {v4 .. v9}, Le/d/d/o;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 17
    :cond_2
    iget-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 18
    iget-object v1, v0, Le/d/d/b$j;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Le/d/d/b$j;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    .line 20
    iget v4, p0, Le/d/d/b;->o:I

    iget-object v0, p0, Le/d/d/b;->a:Le/d/d/b$j;

    .line 21
    iget-object v5, v0, Le/d/d/b$j;->g:Ljava/lang/String;

    .line 22
    iget-object v6, v0, Le/d/d/b$j;->i:Ljava/lang/String;

    .line 23
    iget-object v7, v0, Le/d/d/b$j;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 24
    invoke-static/range {v4 .. v9}, Le/d/d/o;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 25
    :cond_4
    iget-object v0, p0, Le/d/d/b;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 26
    iget-object v0, p0, Le/d/d/b;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/b$e;

    .line 27
    iget-object v0, v0, Le/d/d/b$e;->a:Ljava/lang/String;

    goto/16 :goto_6

    .line 28
    :cond_5
    iget-object v0, p0, Le/d/d/b;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 29
    iget-object v0, p0, Le/d/d/b;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/b$n;

    .line 30
    iget-object v0, v0, Le/d/d/b$n;->a:Ljava/lang/String;

    goto/16 :goto_6

    .line 31
    :cond_6
    iget-object v0, p0, Le/d/d/b;->d:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 32
    iget-object v0, p0, Le/d/d/b;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/b$p;

    iget v1, p0, Le/d/d/b;->o:I

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    new-array v6, v5, [Ljava/lang/String;

    .line 34
    iget-object v7, v0, Le/d/d/b$p;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-object v7, v0, Le/d/d/b$p;->b:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, v0, Le/d/d/b$p;->c:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    iget-object v7, v0, Le/d/d/b$p;->d:Ljava/lang/String;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    iget-object v7, v0, Le/d/d/b$p;->e:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    iget-object v7, v0, Le/d/d/b$p;->f:Ljava/lang/String;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    iget-object v0, v0, Le/d/d/b$p;->g:Ljava/lang/String;

    const/4 v7, 0x6

    aput-object v0, v6, v7

    .line 35
    sget-object v0, Le/d/d/a;->b:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_9

    :goto_2
    if-ltz v7, :cond_c

    .line 36
    aget-object v0, v6, v7

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v2, :cond_7

    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    move v2, v3

    .line 39
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_4
    if-ge v0, v5, :cond_c

    .line 40
    aget-object v7, v6, v0

    .line 41
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    if-nez v2, :cond_a

    .line 42
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    move v2, v3

    .line 43
    :goto_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 44
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 45
    :cond_d
    iget-object v0, p0, Le/d/d/b;->e:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 46
    iget-object v0, p0, Le/d/d/b;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/b$m;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v2, v0, Le/d/d/b$m;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 49
    iget-object v2, v0, Le/d/d/b$m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_e
    iget-object v2, v0, Le/d/d/b$m;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ", "

    if-nez v2, :cond_10

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_f
    iget-object v2, v0, Le/d/d/b$m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_10
    iget-object v2, v0, Le/d/d/b$m;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_11
    iget-object v0, v0, Le/d/d/b$m;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sip:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PREF"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    move v3, v8

    goto :goto_0

    :cond_3
    const-string v6, "HOME"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    const-string v6, "WORK"

    .line 9
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v7

    goto :goto_0

    :cond_5
    if-gez v0, :cond_2

    const-string v0, "X-"

    .line 10
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    move-object v1, v4

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_7
    move v2, v3

    :cond_8
    if-gez v0, :cond_9

    const/4 v0, 0x3

    .line 12
    :cond_9
    iget-object p2, p0, Le/d/d/b;->i:Ljava/util/List;

    if-nez p2, :cond_a

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Le/d/d/b;->i:Ljava/util/List;

    .line 14
    :cond_a
    iget-object p2, p0, Le/d/d/b;->i:Ljava/util/List;

    new-instance v3, Le/d/d/b$q;

    invoke-direct {v3, p1, v0, v1, v2}, Le/d/d/b$q;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Ljava/util/List;Le/d/d/b$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/d/d/b$f;",
            ">;",
            "Le/d/d/b$g;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/b$f;

    invoke-interface {v0}, Le/d/d/b$f;->a()Le/d/d/b$h;

    move-result-object v0

    check-cast p2, Le/d/d/b$r;

    invoke-virtual {p2, v0}, Le/d/d/b$r;->c(Le/d/d/b$h;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/d/b$f;

    .line 4
    invoke-virtual {p2, v0}, Le/d/d/b$r;->a(Le/d/d/b$f;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Le/d/d/b$r;->b()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Le/d/d/b$r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/d/d/b$r;-><init>(Le/d/d/b;Le/d/d/b$a;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Le/d/d/b$r;->a:Ljava/lang/StringBuilder;

    const-string v2, "[[hash: "

    .line 3
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Le/d/d/b$r;->c:Le/d/d/b;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Le/d/d/b$h;->a:Le/d/d/b$h;

    invoke-virtual {v0, v1}, Le/d/d/b$r;->c(Le/d/d/b$h;)V

    .line 5
    iget-object v1, p0, Le/d/d/b;->a:Le/d/d/b$j;

    invoke-virtual {v0, v1}, Le/d/d/b$r;->a(Le/d/d/b$f;)Z

    .line 6
    invoke-virtual {v0}, Le/d/d/b$r;->b()V

    .line 7
    iget-object v1, p0, Le/d/d/b;->b:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 8
    iget-object v1, p0, Le/d/d/b;->c:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 9
    iget-object v1, p0, Le/d/d/b;->d:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 10
    iget-object v1, p0, Le/d/d/b;->e:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 11
    iget-object v1, p0, Le/d/d/b;->f:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 12
    iget-object v1, p0, Le/d/d/b;->g:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 13
    iget-object v1, p0, Le/d/d/b;->h:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 14
    iget-object v1, p0, Le/d/d/b;->i:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 15
    iget-object v1, p0, Le/d/d/b;->j:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 16
    iget-object v1, p0, Le/d/d/b;->k:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 17
    iget-object v1, p0, Le/d/d/b;->l:Ljava/util/List;

    invoke-virtual {p0, v1, v0}, Le/d/d/b;->e(Ljava/util/List;Le/d/d/b$g;)V

    .line 18
    iget-object v1, p0, Le/d/d/b;->m:Le/d/d/b$d;

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Le/d/d/b$h;->l:Le/d/d/b$h;

    invoke-virtual {v0, v1}, Le/d/d/b$r;->c(Le/d/d/b$h;)V

    .line 20
    iget-object v1, p0, Le/d/d/b;->m:Le/d/d/b$d;

    invoke-virtual {v0, v1}, Le/d/d/b$r;->a(Le/d/d/b$f;)Z

    .line 21
    invoke-virtual {v0}, Le/d/d/b$r;->b()V

    .line 22
    :cond_0
    iget-object v1, p0, Le/d/d/b;->n:Le/d/d/b$c;

    if-eqz v1, :cond_1

    .line 23
    sget-object v1, Le/d/d/b$h;->m:Le/d/d/b$h;

    invoke-virtual {v0, v1}, Le/d/d/b$r;->c(Le/d/d/b$h;)V

    .line 24
    iget-object v1, p0, Le/d/d/b;->n:Le/d/d/b$c;

    invoke-virtual {v0, v1}, Le/d/d/b$r;->a(Le/d/d/b$f;)Z

    .line 25
    invoke-virtual {v0}, Le/d/d/b$r;->b()V

    .line 26
    :cond_1
    iget-object v1, v0, Le/d/d/b$r;->a:Ljava/lang/StringBuilder;

    const-string v2, "]]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Le/d/d/b$r;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
