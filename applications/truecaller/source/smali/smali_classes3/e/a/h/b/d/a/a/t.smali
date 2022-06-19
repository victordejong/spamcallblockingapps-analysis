.class public final Le/a/h/b/d/a/a/t;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/a/s;",
        ">;",
        "Le/a/h/b/d/a/a/r;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/d/a/a/q;

.field public final c:Le/a/h/b/d/b/k;

.field public final d:Le/a/f4/g/j;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/h/b/d/a/a/m$a;

.field public final g:Le/a/k3/h;

.field public final h:Le/a/k3/l/f;

.field public final i:Le/a/b0/q/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/d/a/a/t;

    const-string v2, "suggestedContacts"

    const-string v3, "getSuggestedContacts()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/d/a/a/t;->j:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/d/a/a/q;Le/a/f4/g/j;Le/a/p5/c0;Le/a/h/b/d/a/a/m$a;Le/a/k3/h;Le/a/k3/l/f;Le/a/b0/q/h0;)V
    .locals 1
    .param p2    # Le/a/f4/g/j;
        .annotation runtime Ljavax/inject/Named;
            value = "DialerBulkSearcher"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "suggestedContactsDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkSearcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContactsActionListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/a/a/t;->d:Le/a/f4/g/j;

    iput-object p3, p0, Le/a/h/b/d/a/a/t;->e:Le/a/p5/c0;

    iput-object p4, p0, Le/a/h/b/d/a/a/t;->f:Le/a/h/b/d/a/a/m$a;

    iput-object p5, p0, Le/a/h/b/d/a/a/t;->g:Le/a/k3/h;

    iput-object p6, p0, Le/a/h/b/d/a/a/t;->h:Le/a/k3/l/f;

    iput-object p7, p0, Le/a/h/b/d/a/a/t;->i:Le/a/b0/q/h0;

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/a/t;->b:Le/a/h/b/d/a/a/q;

    .line 3
    invoke-interface {p1, p0}, Le/a/h/b/d/a/a/q;->Wd(Le/a/h/b/d/a/a/r;)Le/a/h/b/d/b/k;

    move-result-object p1

    iput-object p1, p0, Le/a/h/b/d/a/a/t;->c:Le/a/h/b/d/b/k;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/w0/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/h/b/d/a/a/t;->b:Le/a/h/b/d/a/a/q;

    sget-object v1, Le/a/h/b/d/a/a/t;->j:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/d/a/a/q;->Sd(Le/a/h/b/d/a/a/r;Ls1/a/l;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final B(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;Ljava/lang/String;Le/a/p5/c0;Le/a/b0/q/h0;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-array p1, v0, [Ljava/lang/String;

    aput-object p3, p1, v1

    .line 3
    invoke-interface {p5, p1}, Le/a/b0/q/h0;->d([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f120f98

    new-array p2, v1, [Ljava/lang/Object;

    invoke-interface {p4, p1, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p1, "resourceProvider.getStri\u2026(R.string.text_voicemail)"

    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 4
    :cond_3
    invoke-interface {p5, p3}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p5}, Le/a/b0/q/h0;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    :goto_2
    move-object p3, p1

    goto :goto_3

    .line 5
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    move-object p3, p1

    :cond_5
    const-string p1, "number.numberForDisplay ?: normalizedNumber"

    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object p3
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 30

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 1
    move-object/from16 v8, p1

    check-cast v8, Le/a/h/b/d/a/a/s;

    const-string v0, "itemView"

    .line 2
    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/a/t;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Le/a/h/b/w0/c;

    .line 4
    iget-object v10, v9, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 5
    iget-object v11, v9, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    .line 6
    iget-object v0, v6, Le/a/h/b/d/a/a/t;->h:Le/a/k3/l/f;

    invoke-virtual {v9, v0}, Le/a/h/b/w0/c;->a(Le/a/k3/l/f;)Lcom/truecaller/data/entity/Number;

    move-result-object v2

    .line 7
    iget-object v4, v6, Le/a/h/b/d/a/a/t;->e:Le/a/p5/c0;

    iget-object v5, v6, Le/a/h/b/d/a/a/t;->i:Le/a/b0/q/h0;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Le/a/h/b/d/a/a/t;->B(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;Ljava/lang/String;Le/a/p5/c0;Le/a/b0/q/h0;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GUIUtils.bidiFormat(displayName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, v9, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 10
    invoke-interface {v8, v1}, Le/a/h/b/d/a/a/s;->s1(Ljava/lang/String;)V

    .line 11
    iget-object v1, v9, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v1

    move/from16 v17, v1

    goto :goto_0

    :cond_0
    move/from16 v17, v2

    .line 13
    :goto_0
    iget-object v1, v9, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_1

    .line 14
    iget v3, v1, Lcom/truecaller/data/entity/Contact;->r:I

    .line 15
    iget-object v1, v1, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 16
    invoke-static {v3, v1}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const-string v4, "(this as java.lang.String).toCharArray()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 18
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    move-object/from16 v16, v3

    goto :goto_3

    :cond_3
    move-object/from16 v16, v4

    .line 19
    :goto_3
    new-instance v3, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 20
    iget-object v5, v9, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    const/4 v15, 0x1

    if-eqz v5, :cond_4

    .line 21
    invoke-static {v5, v15}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v5

    move-object v13, v5

    goto :goto_4

    :cond_4
    move-object v13, v4

    .line 22
    :goto_4
    iget-object v14, v9, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v12, 0x20

    if-ne v1, v12, :cond_5

    move/from16 v22, v15

    goto :goto_5

    :cond_5
    move/from16 v22, v2

    :goto_5
    const/4 v12, 0x4

    if-ne v1, v12, :cond_6

    move/from16 v21, v15

    goto :goto_6

    :cond_6
    move/from16 v21, v2

    :goto_6
    const/16 v12, 0x80

    if-ne v1, v12, :cond_7

    move/from16 v23, v15

    goto :goto_7

    :cond_7
    move/from16 v23, v2

    :goto_7
    const/16 v12, 0x100

    if-ne v1, v12, :cond_8

    move/from16 v24, v15

    goto :goto_8

    :cond_8
    move/from16 v24, v2

    :goto_8
    const/16 v12, 0x10

    if-ne v1, v12, :cond_9

    move/from16 v25, v15

    goto :goto_9

    :cond_9
    move/from16 v25, v2

    :goto_9
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xe0e4

    move-object v12, v3

    move v1, v15

    move-object v15, v5

    .line 23
    invoke-direct/range {v12 .. v29}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 24
    iget-object v5, v6, Le/a/h/b/d/a/a/t;->h:Le/a/k3/l/f;

    invoke-virtual {v9, v5}, Le/a/h/b/w0/c;->a(Le/a/k3/l/f;)Lcom/truecaller/data/entity/Number;

    move-result-object v5

    iget-object v12, v6, Le/a/h/b/d/a/a/t;->e:Le/a/p5/c0;

    iget-object v13, v6, Le/a/h/b/d/a/a/t;->g:Le/a/k3/h;

    invoke-static {v5, v12, v13}, Le/a/m0/a1$k;->m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-interface {v8, v3, v0, v5}, Le/a/h/b/d/a/a/s;->g2(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, v9, Le/a/h/b/w0/c;->c:Z

    .line 27
    invoke-interface {v8, v0}, Le/a/h/b/d/a/a/s;->o2(Z)V

    .line 28
    invoke-static {v11}, Le/a/n/g0;->C0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Le/a/h/b/d/a/a/t;->c:Le/a/h/b/d/b/k;

    invoke-interface {v0, v7}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 29
    iget-object v0, v6, Le/a/h/b/d/a/a/t;->d:Le/a/f4/g/j;

    invoke-interface {v0, v10, v4, v4}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, v6, Le/a/h/b/d/a/a/t;->d:Le/a/f4/g/j;

    invoke-interface {v0, v10}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Le/a/h/b/d/a/a/t;->c:Le/a/h/b/d/b/k;

    invoke-interface {v0, v10, v7}, Le/a/h/b/d/b/k;->c(Ljava/lang/String;I)V

    .line 31
    :cond_a
    iget-object v0, v6, Le/a/h/b/d/a/a/t;->d:Le/a/f4/g/j;

    invoke-interface {v0, v10}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Le/a/h/b/d/a/a/t;->c:Le/a/h/b/d/b/k;

    invoke-interface {v0, v7}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    :cond_b
    invoke-interface {v8, v2}, Le/a/h/b/d/a/a/s;->s(Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/t;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/t;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/w0/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x4e5b1355    # -4.7999342E-9f

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p1, Le/a/o2/h;->d:Landroid/view/View;

    .line 5
    iget p1, p1, Le/a/o2/h;->b:I

    .line 6
    invoke-virtual {p0}, Le/a/h/b/d/a/a/t;->A()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/w0/c;

    .line 7
    iget-object v5, p1, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    .line 8
    iget-object v1, p0, Le/a/h/b/d/a/a/t;->h:Le/a/k3/l/f;

    invoke-virtual {p1, v1}, Le/a/h/b/w0/c;->a(Le/a/k3/l/f;)Lcom/truecaller/data/entity/Number;

    move-result-object v6

    .line 9
    iget-object v7, p1, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 10
    iget-object v8, p0, Le/a/h/b/d/a/a/t;->e:Le/a/p5/c0;

    iget-object v9, p0, Le/a/h/b/d/a/a/t;->i:Le/a/b0/q/h0;

    move-object v4, p0

    .line 11
    invoke-virtual/range {v4 .. v9}, Le/a/h/b/d/a/a/t;->B(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/Number;Ljava/lang/String;Le/a/p5/c0;Le/a/b0/q/h0;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v2, p0, Le/a/h/b/d/a/a/t;->f:Le/a/h/b/d/a/a/m$a;

    invoke-interface {v2, v0, p1, v1}, Le/a/h/b/d/a/a/m$a;->yh(Landroid/view/View;Le/a/h/b/w0/c;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "ItemEvent.CLICKED"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget p1, p1, Le/a/o2/h;->b:I

    .line 15
    invoke-virtual {p0}, Le/a/h/b/d/a/a/t;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/w0/c;

    .line 16
    iget-object v1, p0, Le/a/h/b/d/a/a/t;->f:Le/a/h/b/d/a/a/m$a;

    .line 17
    iget-object v2, v0, Le/a/h/b/w0/c;->a:Ljava/lang/String;

    .line 18
    iget-object v0, v0, Le/a/h/b/w0/c;->b:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {v1, v2, v0, p1}, Le/a/h/b/d/a/a/m$a;->Fj(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    :goto_2
    return v3
.end method
