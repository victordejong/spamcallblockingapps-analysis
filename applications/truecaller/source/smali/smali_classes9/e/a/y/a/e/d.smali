.class public abstract Le/a/y/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/e/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/y/a/e/e;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/y/a/e/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Le/a/y/a/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/truecaller/flashsdk/models/FlashLocation;

.field public e:Ljava/lang/String;

.field public final f:Ls1/w/f;

.field public g:Ljava/lang/String;

.field public h:Z

.field public final i:[Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Landroid/net/Uri;

.field public m:[Le/a/y/e/i;

.field public final n:Le/a/y/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Le/a/y/b/g0;

.field public final p:Le/a/y/b/f;

.field public final q:Le/a/y/b/a;

.field public final r:Le/a/y/i/a;

.field public final s:Le/a/y/b/u;

.field public final t:Le/a/y/b/m;

.field public final u:Le/a/p5/a0;

.field public final v:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/y/b/z;Lcom/google/firebase/messaging/FirebaseMessaging;Le/a/y/b/g0;Le/a/y/b/f;Le/a/y/b/a;Le/a/y/i/a;Le/a/y/b/u;Le/m/e/k;Le/a/y/b/m;Le/a/p5/a0;Le/a/b0/o/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;",
            "Lcom/google/firebase/messaging/FirebaseMessaging;",
            "Le/a/y/b/g0;",
            "Le/a/y/b/f;",
            "Le/a/y/b/a;",
            "Le/a/y/i/a;",
            "Le/a/y/b/u;",
            "Le/m/e/k;",
            "Le/a/y/b/m;",
            "Le/a/p5/a0;",
            "Le/a/b0/o/a;",
            ")V"
        }
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentEmojiManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messaging"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "resourceProvider"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deviceUtils"

    invoke-static {p5, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "colorProvider"

    invoke-static {p6, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "toolTipsManager"

    invoke-static {p7, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "locationFormatter"

    invoke-static {p8, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "gson"

    invoke-static {p9, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "mediaHelper"

    invoke-static {p10, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "permissionUtil"

    invoke-static {p11, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "coreSettings"

    invoke-static {p12, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    iput-object p4, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    iput-object p5, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    iput-object p6, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    iput-object p7, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    iput-object p8, p0, Le/a/y/a/e/d;->s:Le/a/y/b/u;

    iput-object p10, p0, Le/a/y/a/e/d;->t:Le/a/y/b/m;

    iput-object p11, p0, Le/a/y/a/e/d;->u:Le/a/p5/a0;

    iput-object p12, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 2
    iput-object p1, p0, Le/a/y/a/e/d;->f:Ls1/w/f;

    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/y/a/e/d;->i:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract A()V
.end method

.method public B()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/e;->F9()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_2

    .line 5
    sget v1, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_header:I

    .line 6
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    sget v3, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->b(I)I

    move-result v2

    .line 7
    invoke-interface {v0, v1, v2}, Le/a/y/a/e/e;->q5(II)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/a/e/e;->B5()V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract C(Landroid/net/Uri;)V
.end method

.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    invoke-interface {v1}, Le/a/y/b/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/y/a/e/e;->h8()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Le/a/y/a/e/d;->H()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Le/a/y/a/e/d;->j:Z

    .line 7
    invoke-interface {v0}, Le/a/y/a/e/e;->Q4()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final E(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/y/a/e/e;->N8()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v0, "featureShareImageInFlash"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/y/a/e/e;->w8()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/y/a/e/e;->U4()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Le/a/y/a/e/d;->J()V

    :cond_4
    :goto_0
    return-void
.end method

.method public F(Le/a/y/a/e/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/y/a/e/e;->g0()V

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    sget v1, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_secondary_text:I

    invoke-interface {v0, v1}, Le/a/y/b/a;->b(I)I

    move-result v0

    invoke-interface {p1, v0}, Le/a/y/a/e/e;->J4(I)V

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    invoke-interface {v0, v1}, Le/a/y/b/a;->b(I)I

    move-result v0

    invoke-interface {p1, v0}, Le/a/y/a/e/e;->j8(I)V

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0}, Le/a/y/a/e/e;->P4(Z)V

    return-void
.end method

.method public abstract G(Le/a/y/e/i;)V
.end method

.method public final H()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v1, :cond_11

    .line 2
    iget-object v2, v0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 3
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, ","

    const/4 v4, 0x0

    .line 4
    invoke-static {v3, v2, v4}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 7
    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 9
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    if-nez v7, :cond_0

    .line 10
    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 11
    :cond_2
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    new-array v5, v4, [Ljava/lang/String;

    .line 12
    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    check-cast v2, [Ljava/lang/String;

    .line 14
    array-length v5, v2

    const/4 v7, 0x2

    if-ge v5, v7, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-virtual/range {p0 .. p0}, Le/a/y/a/e/d;->A()V

    .line 16
    iget-object v5, v0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v8, "featureShareImageInFlash"

    invoke-interface {v5, v8}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 17
    iget-object v5, v0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 18
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v4

    :goto_2
    xor-int/2addr v8, v6

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    .line 19
    iget-object v3, v0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, v0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v7, Lcom/truecaller/flashsdk/R$string;->i_am_here:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v3, v7, v8}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    :goto_4
    aget-object v4, v2, v4

    aget-object v2, v2, v6

    invoke-interface {v1, v3, v5, v4, v2}, Le/a/y/a/e/e;->j5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 22
    iget-object v3, v0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    sget v4, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v3, v4}, Le/a/y/b/a;->a(I)I

    move-result v3

    .line 23
    invoke-interface {v1, v2, v3}, Le/a/y/a/e/e;->q5(II)V

    .line 24
    invoke-interface {v1}, Le/a/y/a/e/e;->o9()V

    goto/16 :goto_a

    .line 25
    :cond_7
    iget-object v5, v0, Le/a/y/a/e/d;->d:Lcom/truecaller/flashsdk/models/FlashLocation;

    iget-object v8, v0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v9, Lcom/truecaller/flashsdk/R$string;->i_am_here:I

    new-array v10, v4, [Ljava/lang/Object;

    invoke-interface {v8, v9, v10}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "defaultValue"

    .line 26
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_e

    .line 27
    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getArea()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getArea()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    move v9, v6

    goto :goto_5

    :cond_8
    move v9, v4

    :goto_5
    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getArea()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 28
    :cond_9
    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getStreet()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getStreet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    move v9, v6

    goto :goto_6

    :cond_a
    move v9, v4

    :goto_6
    if-eqz v9, :cond_b

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getStreet()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x6

    invoke-static {v5, v3, v4, v4, v9}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/e0/x;->o(Ls1/e0/k;I)Ls1/e0/k;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const-string v10, ","

    invoke-static/range {v9 .. v16}, Ls1/e0/x;->j(Ls1/e0/k;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 29
    :cond_b
    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    move v3, v6

    goto :goto_7

    :cond_c
    move v3, v4

    :goto_7
    if-eqz v3, :cond_d

    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/FlashLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_d
    move-object v3, v8

    :goto_8
    if-eqz v3, :cond_e

    move-object v8, v3

    .line 30
    :cond_e
    aget-object v3, v2, v4

    .line 31
    aget-object v2, v2, v6

    .line 32
    invoke-interface {v1, v8, v3, v2}, Le/a/y/a/e/e;->A5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 34
    iget-object v3, v0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    sget v4, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v3, v4}, Le/a/y/b/a;->a(I)I

    move-result v3

    .line 35
    invoke-interface {v1, v2, v3}, Le/a/y/a/e/e;->q5(II)V

    .line 36
    invoke-interface {v1}, Le/a/y/a/e/e;->o9()V

    goto :goto_a

    .line 37
    :cond_f
    iget-object v3, v0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    if-eqz v3, :cond_10

    goto :goto_9

    :cond_10
    iget-object v3, v0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v5, Lcom/truecaller/flashsdk/R$string;->i_am_here:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v8}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 38
    :goto_9
    iget-object v5, v0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v8, Lcom/truecaller/flashsdk/R$string;->map_url:I

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v2, v4

    aput-object v10, v9, v4

    aget-object v10, v2, v6

    aput-object v10, v9, v6

    aget-object v4, v2, v4

    aput-object v4, v9, v7

    const/4 v4, 0x3

    aget-object v2, v2, v6

    aput-object v2, v9, v4

    invoke-interface {v5, v8, v9}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v1, v3, v2}, Le/a/y/a/e/e;->R9(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_a
    return-void
.end method

.method public final I(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    invoke-interface {v0, p1, p2}, Le/a/y/b/z;->b(J)V

    .line 2
    iget-object p1, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    invoke-interface {p1}, Le/a/y/b/z;->getAll()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    new-array p2, p2, [Le/a/y/e/i;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Le/a/y/e/i;

    iput-object p1, p0, Le/a/y/a/e/d;->m:[Le/a/y/e/i;

    .line 4
    iget-object p2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Le/a/y/a/e/e;->o5([Le/a/y/e/i;)V

    goto :goto_0

    :cond_0
    const-string p1, "recentEmojis"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract J()V
.end method

.method public final K()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Le/a/y/a/e/d;->u:Le/a/p5/a0;

    const-string v2, "android.permission.CAMERA"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Le/a/y/a/e/d;->t:Le/a/y/b/m;

    const-string v2, ".jpg"

    .line 5
    invoke-interface {v1, v2}, Le/a/y/b/m;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6
    iput-object v1, p0, Le/a/y/a/e/d;->l:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const/16 v2, 0x64

    .line 7
    invoke-interface {v0, v1, v2}, Le/a/y/a/e/e;->Q5(Landroid/net/Uri;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v2, Lcom/truecaller/flashsdk/R$string;->try_again:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    .line 9
    invoke-interface {v0, v1}, Le/a/y/a/e/e;->m5(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public O0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v2, "featureShareImageInFlash"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/y/a/e/e;->m9()V

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    invoke-interface {p1}, Le/a/y/b/f;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    invoke-interface {p1}, Le/a/y/b/f;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Le/a/y/a/e/d;->D()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Le/a/y/a/e/d;->j:Z

    const/16 p1, 0xa

    .line 9
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->D7(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v1, Lcom/truecaller/flashsdk/R$string;->no_internet:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->K7(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Le/a/y/a/e/d;->B()V

    :cond_4
    :goto_0
    return-void
.end method

.method public U0(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/location/LocationSettingsResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v2, p0, Le/a/y/a/e/d;->j:Z

    .line 4
    invoke-interface {v0}, Le/a/y/a/e/e;->L4()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz p1, :cond_3

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 7
    iget v1, v1, Lcom/google/android/gms/common/api/Status;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 8
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->h5(Lcom/google/android/gms/common/api/ResolvableApiException;)V

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v1, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->K7(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public V0(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "resultData"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.truecaller.flashsdk.assist.LOCATION_DATA_AREA"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.truecaller.flashsdk.assist.LOCATION_DATA_CITY"

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.truecaller.flashsdk.assist.LOCATION_DATA_STREET"

    .line 3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/truecaller/flashsdk/models/FlashLocation;

    invoke-direct {v3, v2, v0, v1}, Lcom/truecaller/flashsdk/models/FlashLocation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Le/a/y/a/e/d;->d:Lcom/truecaller/flashsdk/models/FlashLocation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v5, :cond_2

    move-object v0, v2

    goto :goto_4

    :cond_2
    if-eqz v0, :cond_4

    .line 6
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v4

    :goto_3
    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    .line 7
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    if-nez v3, :cond_8

    move-object v0, v1

    goto :goto_4

    :cond_8
    const-string v0, "com.truecaller.flashsdk.assist.RESULT_DATA_KEY"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_4
    iput-object v0, p0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Le/a/y/a/e/d;->H()V

    return-void
.end method

.method public W0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/y/a/e/d;->k:Z

    .line 2
    iput-boolean v0, p0, Le/a/y/a/e/d;->j:Z

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/e;->b5()V

    :cond_0
    return-void
.end method

.method public X0(Landroid/location/Location;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p0, Le/a/y/a/e/d;->s:Le/a/y/b/u;

    invoke-interface {v2, p1}, Le/a/y/b/u;->a(Landroid/location/Location;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v3, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v4, Lcom/truecaller/flashsdk/R$string;->lat_long:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v7, "latLongCopy.first"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v6, "latLongCopy.second"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->I4(Landroid/location/Location;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v2, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->K7(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v2, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->K7(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Y0(Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "messageText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, p2}, Le/a/y/a/e/e;->P4(Z)V

    .line 3
    invoke-interface {v0}, Le/a/y/a/e/e;->p8()V

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/y/a/e/e;->Z4()V

    .line 5
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 6
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l5(Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Le/a/y/a/e/e;->r8()V

    .line 8
    invoke-interface {v0}, Le/a/y/a/e/e;->p0()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 9
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l5(Z)V

    .line 10
    invoke-interface {v0}, Le/a/y/a/e/e;->H4()V

    :cond_2
    :goto_0
    return-void
.end method

.method public Z0(Landroid/location/Location;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->s:Le/a/y/b/u;

    invoke-interface {v1, p1}, Le/a/y/b/u;->a(Landroid/location/Location;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v3, Lcom/truecaller/flashsdk/R$string;->lat_long:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v7, "latLongCopy.first"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v6, "latLongCopy.second"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->I4(Landroid/location/Location;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Le/a/y/a/e/e;->h8()V

    :cond_2
    return-void
.end method

.method public a1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/y/a/e/d;->H()V

    return-void
.end method

.method public b1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/y/a/e/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/y/a/e/e;->K4(Ljava/lang/String;)V

    nop

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    return-void
.end method

.method public c1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoUrl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/a/e/d;->e:Ljava/lang/String;

    return-void
.end method

.method public d1(Ljava/lang/String;Le/a/y/e/i;II)V
    .locals 1

    const-string v0, "messageText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emoticon"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Le/a/y/a/e/d;->h:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Le/a/y/a/e/d;->G(Le/a/y/e/i;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Le/a/y/a/e/d;->x(Le/a/y/e/i;II)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    invoke-interface {p1, p2}, Le/a/y/b/z;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public final f1(Le/a/y/a/e/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->H9()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/y/a/e/d;->y(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Le/a/y/a/e/d;->F(Le/a/y/a/e/e;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public g1(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/y/a/e/d;->u:Le/a/p5/a0;

    iget-object v0, p0, Le/a/y/a/e/d;->i:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/y/a/e/d;->D()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Le/a/y/a/e/d;->j:Z

    .line 4
    iget-object p2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p2, :cond_3

    iget-object p3, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget v0, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p3, v0, p1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/y/a/e/e;->K7(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Le/a/y/a/e/d;->u:Le/a/p5/a0;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Le/a/y/a/e/d;->K()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_3

    const-string p2, "Write access denied"

    invoke-interface {p1, p2}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public j1(Ljava/lang/String;III)V
    .locals 1

    const-string v0, "messageText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->m:[Le/a/y/e/i;

    if-eqz v0, :cond_1

    aget-object p2, v0, p2

    .line 2
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Le/a/y/a/e/d;->h:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Le/a/y/a/e/d;->G(Le/a/y/e/i;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/a/y/a/e/d;->k:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Le/a/y/a/e/d;->x(Le/a/y/e/i;II)V

    .line 6
    :goto_0
    iget-object p1, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    invoke-interface {p1, p2}, Le/a/y/b/z;->push(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "recentEmojis"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public k1(I)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/y/a/e/d;->K()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/y/a/e/e;->m9()V

    .line 3
    :cond_2
    invoke-virtual {p0, v0}, Le/a/y/a/e/d;->O0(Z)V

    :goto_0
    return-void
.end method

.method public m1(IILandroid/content/Intent;)V
    .locals 8

    const/16 p3, 0x64

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x3e8

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_5

    .line 2
    iput-boolean v0, p0, Le/a/y/a/e/d;->j:Z

    if-eq p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget p3, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/a/e/e;->K7(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {p1}, Le/a/y/a/e/e;->L4()V

    .line 5
    iget-object p2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget p3, Lcom/truecaller/flashsdk/R$string;->flash_fetching_location:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string p3, "featureShareImageInFlash"

    invoke-interface {p1, p3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz p1, :cond_5

    if-ne p2, v1, :cond_4

    .line 8
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/y/a/e/d;->f:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/y/a/e/c;

    const/4 p2, 0x0

    invoke-direct {v5, p0, p1, p2}, Le/a/y/a/e/c;-><init>(Le/a/y/a/e/d;Le/a/y/a/e/e;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 9
    :cond_4
    iget-object p2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    sget p3, Lcom/truecaller/flashsdk/R$string;->try_again:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method public q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/e;->c8()V

    :cond_0
    return-void
.end method

.method public final x(Le/a/y/e/i;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    .line 4
    iget-object p1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    const-string v2, "emoticon.emoji"

    .line 5
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1, p2, p3, v1}, Le/a/y/a/e/e;->N4(Ljava/lang/String;III)V

    .line 7
    invoke-interface {v0}, Le/a/y/a/e/e;->p8()V

    :cond_0
    return-void
.end method

.method public abstract y(Landroid/content/Intent;)Z
.end method

.method public final z(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "history"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, " "

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p1, v1, v2, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    const/4 v2, 0x6

    .line 2
    invoke-static {p1, v1, v3, v3, v2}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    :goto_0
    const/4 v5, -0x1

    add-int/2addr v0, v5

    if-lez v0, :cond_0

    if-eq v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 3
    invoke-static {p1, v1, v2, v3, v4}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
