.class public Le/a/k3/j/d;
.super Le/a/k3/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k3/j/d$m;,
        Le/a/k3/j/d$h;,
        Le/a/k3/j/d$j;,
        Le/a/k3/j/d$e;,
        Le/a/k3/j/d$l;,
        Le/a/k3/j/d$b;,
        Le/a/k3/j/d$f;,
        Le/a/k3/j/d$k;,
        Le/a/k3/j/d$n;,
        Le/a/k3/j/d$i;,
        Le/a/k3/j/d$d;,
        Le/a/k3/j/d$g;,
        Le/a/k3/j/d$a;,
        Le/a/k3/j/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/k3/j/a<",
        "Lcom/truecaller/data/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public J:Landroid/net/Uri;

.field public K:Le/a/k3/j/d$a;

.field public L:Le/a/k3/j/d$n;

.field public M:Le/a/k3/j/d$g;

.field public N:Le/a/k3/j/d$d;

.field public O:Le/a/k3/j/d$i;

.field public P:Le/a/k3/j/d$k;

.field public Q:Le/a/k3/j/d$f;

.field public R:Le/a/k3/j/d$b;

.field public S:Le/a/k3/j/d$l;

.field public T:Le/a/k3/j/d$e;

.field public U:Le/a/k3/j/d$j;

.field public V:Le/a/k3/j/d$h;

.field public W:Le/a/k3/j/d$m;

.field public final X:Le/a/k3/c;

.field public final Y:Le/a/k3/l/j;

.field public Z:Z

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .line 1
    new-instance v0, Le/a/k3/b;

    .line 2
    new-instance v1, Le/a/k3/c$a;

    sget-object v2, Ls1/u/t;->a:Ls1/u/t;

    invoke-direct {v1, v2}, Le/a/k3/c$a;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Le/a/k3/b;-><init>(Le/a/k3/c$a;)V

    .line 3
    sget-object v1, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    invoke-direct {p0, p1, v0, v1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;Le/a/k3/c;Le/a/k3/l/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Le/a/k3/c;Le/a/k3/l/j;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Le/a/k3/j/a;-><init>()V

    const-string v0, "history_aggregated_contact_id"

    const-string v1, "history_raw_contact_id"

    const-string v2, "_id"

    .line 5
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le/a/k3/j/d;->a:I

    const-string v2, "history_aggregated_contact_tc_id"

    const-string v3, "history_raw_contact_tc_id"

    const-string v4, "tc_id"

    .line 6
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Le/a/k3/j/a;->b(Landroid/database/Cursor;[Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Le/a/k3/j/d;->c:I

    const-string v2, "aggregated_contact_id"

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Le/a/k3/j/d;->b:I

    const-string v3, "contact_name"

    .line 8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->d:I

    const-string v3, "contact_transliterated_name"

    .line 9
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->g:I

    const-string v3, "contact_is_favorite"

    .line 10
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->e:I

    const-string v3, "contact_favorite_position"

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->f:I

    const-string v3, "contact_handle"

    .line 12
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->h:I

    const-string v3, "contact_alt_name"

    .line 13
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->i:I

    const-string v3, "contact_gender"

    .line 14
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->j:I

    const-string v3, "contact_about"

    .line 15
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->k:I

    const-string v3, "contact_image_url"

    .line 16
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->l:I

    const-string v3, "contact_job_title"

    .line 17
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->m:I

    const-string v3, "contact_company"

    .line 18
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->n:I

    const-string v3, "contact_access"

    .line 19
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->o:I

    const-string v3, "contact_common_connections"

    .line 20
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->p:I

    const-string v3, "contact_search_time"

    .line 21
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->q:I

    const-string v3, "contact_source"

    .line 22
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->r:I

    const-string v3, "contact_default_number"

    .line 23
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->s:I

    const-string v3, "contact_phonebook_id"

    .line 24
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->t:I

    const-string v3, "contact_phonebook_hash"

    .line 25
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->u:I

    const-string v3, "contact_phonebook_lookup"

    .line 26
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->v:I

    const-string v3, "contact_badges"

    .line 27
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->w:I

    const-string v3, "search_query"

    .line 28
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->y:I

    const-string v3, "cache_control"

    .line 29
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->z:I

    const-string v3, "contact_spam_score"

    .line 30
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->A:I

    const-string v3, "contact_spam_type"

    .line 31
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->B:I

    const-string v3, "tc_flag"

    .line 32
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->C:I

    const-string v3, "data_raw_contact_id"

    .line 33
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->D:I

    const-string v3, "insert_timestamp"

    .line 34
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->E:I

    const-string v3, "contact_im_id"

    .line 35
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->F:I

    const-string v3, "contact_premium_level"

    .line 36
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->G:I

    const-string v3, "contact_premium_scope"

    .line 37
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->H:I

    const-string v3, "spam_categories"

    .line 38
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->I:I

    const-string v3, "data_type"

    .line 39
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/k3/j/d;->x:I

    .line 40
    iput-object p2, p0, Le/a/k3/j/d;->X:Le/a/k3/c;

    .line 41
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_1

    const/4 p2, -0x1

    if-eq v2, p2, :cond_1

    const-string v0, "aggregated_raw_contact_id"

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 43
    :goto_1
    invoke-virtual {p0, p1}, Le/a/k3/j/d;->h(Z)V

    .line 44
    iput-object p3, p0, Le/a/k3/j/d;->Y:Le/a/k3/l/j;

    return-void
.end method


# virtual methods
.method public f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;
    .locals 4

    .line 1
    iget v0, p0, Le/a/k3/j/d;->x:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v0, p0, Le/a/k3/j/d;->x:I

    invoke-virtual {p0, p1, v0}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    const-string p2, "Encountered an unknown data type=%s, contact=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    .line 4
    :pswitch_1
    iget-object v0, p0, Le/a/k3/j/d;->W:Le/a/k3/j/d$m;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Le/a/k3/j/d$m;

    invoke-direct {v0, p1}, Le/a/k3/j/d$m;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->W:Le/a/k3/j/d$m;

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/k3/j/d;->W:Le/a/k3/j/d$m;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/ContactSurvey;

    if-eqz v1, :cond_e

    .line 7
    invoke-virtual {p2, v1}, Lcom/truecaller/data/entity/Contact;->f(Lcom/truecaller/data/entity/ContactSurvey;)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    iget-object v0, p0, Le/a/k3/j/d;->V:Le/a/k3/j/d$h;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Le/a/k3/j/d$h;

    iget-object v1, p0, Le/a/k3/j/d;->Y:Le/a/k3/l/j;

    invoke-direct {v0, p1, v1}, Le/a/k3/j/d$h;-><init>(Landroid/database/Cursor;Le/a/k3/l/j;)V

    iput-object v0, p0, Le/a/k3/j/d;->V:Le/a/k3/j/d$h;

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/k3/j/d;->V:Le/a/k3/j/d$h;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/SearchWarning;

    if-eqz v1, :cond_e

    .line 11
    invoke-virtual {p2, v1}, Lcom/truecaller/data/entity/Contact;->e(Lcom/truecaller/data/entity/SearchWarning;)V

    goto/16 :goto_0

    .line 12
    :pswitch_3
    iget-object v0, p0, Le/a/k3/j/d;->U:Le/a/k3/j/d$j;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Le/a/k3/j/d$j;

    iget-object v1, p0, Le/a/k3/j/d;->X:Le/a/k3/c;

    invoke-direct {v0, p1, v1}, Le/a/k3/j/d$j;-><init>(Landroid/database/Cursor;Le/a/k3/c;)V

    iput-object v0, p0, Le/a/k3/j/d;->U:Le/a/k3/j/d$j;

    .line 14
    :cond_3
    iget-object v0, p0, Le/a/k3/j/d;->U:Le/a/k3/j/d$j;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/SpamData;

    if-eqz v1, :cond_e

    .line 15
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    goto/16 :goto_0

    .line 16
    :pswitch_4
    iget-object v0, p0, Le/a/k3/j/d;->T:Le/a/k3/j/d$e;

    if-nez v0, :cond_4

    .line 17
    new-instance v0, Le/a/k3/j/d$e;

    invoke-direct {v0, p1}, Le/a/k3/j/d$e;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->T:Le/a/k3/j/d$e;

    .line 18
    :cond_4
    iget-object v0, p0, Le/a/k3/j/d;->T:Le/a/k3/j/d$e;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/NameFeedback;

    if-eqz v1, :cond_e

    .line 19
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    goto/16 :goto_0

    .line 20
    :pswitch_5
    iget-object v0, p0, Le/a/k3/j/d;->S:Le/a/k3/j/d$l;

    if-nez v0, :cond_5

    .line 21
    new-instance v0, Le/a/k3/j/d$l;

    invoke-direct {v0, p1}, Le/a/k3/j/d$l;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->S:Le/a/k3/j/d$l;

    .line 22
    :cond_5
    iget-object v0, p0, Le/a/k3/j/d;->S:Le/a/k3/j/d$l;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Style;

    if-eqz v1, :cond_e

    .line 23
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->v:Lcom/truecaller/data/entity/Style;

    goto/16 :goto_0

    .line 24
    :pswitch_6
    iget-object v0, p0, Le/a/k3/j/d;->R:Le/a/k3/j/d$b;

    if-nez v0, :cond_6

    .line 25
    new-instance v0, Le/a/k3/j/d$b;

    invoke-direct {v0, p1}, Le/a/k3/j/d$b;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->R:Le/a/k3/j/d$b;

    .line 26
    :cond_6
    iget-object v0, p0, Le/a/k3/j/d;->R:Le/a/k3/j/d$b;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Business;

    if-eqz v1, :cond_e

    .line 27
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->u:Lcom/truecaller/data/entity/Business;

    goto/16 :goto_0

    .line 28
    :pswitch_7
    iget-object v0, p0, Le/a/k3/j/d;->Q:Le/a/k3/j/d$f;

    if-nez v0, :cond_7

    .line 29
    new-instance v0, Le/a/k3/j/d$f;

    invoke-direct {v0, p1}, Le/a/k3/j/d$f;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->Q:Le/a/k3/j/d$f;

    .line 30
    :cond_7
    iget-object v0, p0, Le/a/k3/j/d;->Q:Le/a/k3/j/d$f;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Note;

    if-eqz v1, :cond_e

    .line 31
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    goto/16 :goto_0

    .line 32
    :pswitch_8
    iget-object v0, p0, Le/a/k3/j/d;->P:Le/a/k3/j/d$k;

    if-nez v0, :cond_8

    .line 33
    new-instance v0, Le/a/k3/j/d$k;

    invoke-direct {v0, p1}, Le/a/k3/j/d$k;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->P:Le/a/k3/j/d$k;

    .line 34
    :cond_8
    iget-object v0, p0, Le/a/k3/j/d;->P:Le/a/k3/j/d$k;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/StructuredName;

    .line 35
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->s:Lcom/truecaller/data/entity/StructuredName;

    goto/16 :goto_0

    .line 36
    :pswitch_9
    iget-object v0, p0, Le/a/k3/j/d;->L:Le/a/k3/j/d$n;

    if-nez v0, :cond_9

    .line 37
    new-instance v0, Le/a/k3/j/d$n;

    invoke-direct {v0, p1}, Le/a/k3/j/d$n;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->L:Le/a/k3/j/d$n;

    .line 38
    :cond_9
    iget-object v0, p0, Le/a/k3/j/d;->L:Le/a/k3/j/d$n;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Tag;

    if-eqz v1, :cond_e

    .line 39
    invoke-virtual {p2, v1}, Lcom/truecaller/data/entity/Contact;->g(Lcom/truecaller/data/entity/Tag;)V

    goto/16 :goto_0

    .line 40
    :pswitch_a
    iget-object v0, p0, Le/a/k3/j/d;->O:Le/a/k3/j/d$i;

    if-nez v0, :cond_a

    .line 41
    new-instance v0, Le/a/k3/j/d$i;

    invoke-direct {v0, p1}, Le/a/k3/j/d$i;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->O:Le/a/k3/j/d$i;

    .line 42
    :cond_a
    iget-object v0, p0, Le/a/k3/j/d;->O:Le/a/k3/j/d$i;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Source;

    if-eqz v1, :cond_e

    .line 43
    iget-object p1, p2, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iget-object v0, p2, Lcom/truecaller/data/entity/Contact;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/RowEntity;->row()Lcom/truecaller/data/dto/ContactDto$Row;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/dto/ContactDto$Contact$Source;

    invoke-virtual {p2, v0, v2, v1, v3}, Lcom/truecaller/data/entity/Contact;->a(Ljava/util/List;Ljava/util/List;Lcom/truecaller/data/entity/Entity;Lcom/truecaller/data/dto/ContactDto$Row;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->sources:Ljava/util/List;

    goto :goto_0

    .line 44
    :pswitch_b
    iget-object v0, p0, Le/a/k3/j/d;->M:Le/a/k3/j/d$g;

    if-nez v0, :cond_b

    .line 45
    new-instance v0, Le/a/k3/j/d$g;

    invoke-direct {v0, p1}, Le/a/k3/j/d$g;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->M:Le/a/k3/j/d$g;

    .line 46
    :cond_b
    iget-object v0, p0, Le/a/k3/j/d;->M:Le/a/k3/j/d$g;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Number;

    if-eqz v1, :cond_e

    .line 47
    invoke-virtual {p2, v1}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 48
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_e

    .line 49
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/data/entity/Contact;->O0(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_c
    iget-object v0, p0, Le/a/k3/j/d;->N:Le/a/k3/j/d$d;

    if-nez v0, :cond_c

    .line 51
    new-instance v0, Le/a/k3/j/d$d;

    invoke-direct {v0, p1}, Le/a/k3/j/d$d;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->N:Le/a/k3/j/d$d;

    .line 52
    :cond_c
    iget-object v0, p0, Le/a/k3/j/d;->N:Le/a/k3/j/d$d;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Link;

    if-eqz v1, :cond_e

    .line 53
    invoke-virtual {p2, v1}, Lcom/truecaller/data/entity/Contact;->c(Lcom/truecaller/data/entity/Link;)V

    goto :goto_0

    .line 54
    :pswitch_d
    iget-object v0, p0, Le/a/k3/j/d;->K:Le/a/k3/j/d$a;

    if-nez v0, :cond_d

    .line 55
    new-instance v0, Le/a/k3/j/d$a;

    invoke-direct {v0, p1}, Le/a/k3/j/d$a;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Le/a/k3/j/d;->K:Le/a/k3/j/d$a;

    .line 56
    :cond_d
    iget-object v0, p0, Le/a/k3/j/d;->K:Le/a/k3/j/d$a;

    invoke-virtual {v0, p1}, Le/a/k3/j/d$c;->f(Landroid/database/Cursor;)Lcom/truecaller/data/entity/RowEntity;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/truecaller/data/entity/Address;

    if-eqz v1, :cond_e

    .line 57
    invoke-virtual {p2, v1}, Lcom/truecaller/data/entity/Contact;->b(Lcom/truecaller/data/entity/Address;)V

    :cond_e
    :goto_0
    return-object v1

    .line 58
    :cond_f
    :goto_1
    iget v0, p0, Le/a/k3/j/d;->I:I

    if-eq v0, v2, :cond_10

    .line 59
    new-instance v0, Le/a/k3/j/d$j;

    iget-object v1, p0, Le/a/k3/j/d;->X:Le/a/k3/c;

    invoke-direct {v0, p1, v1}, Le/a/k3/j/d$j;-><init>(Landroid/database/Cursor;Le/a/k3/c;)V

    .line 60
    invoke-virtual {v0, p1}, Le/a/k3/j/d$j;->h(Landroid/database/Cursor;)Lcom/truecaller/data/entity/SpamData;

    move-result-object v1

    .line 61
    iput-object v1, p2, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    :cond_10
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;
    .locals 11

    .line 1
    iget v0, p0, Le/a/k3/j/d;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 3
    iget v3, p0, Le/a/k3/j/d;->a:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/truecaller/data/entity/RowEntity;->setId(Ljava/lang/Long;)V

    .line 5
    iget v5, p0, Le/a/k3/j/d;->b:I

    const-wide/16 v6, 0x0

    if-eq v5, v2, :cond_2

    iget-boolean v8, p0, Le/a/k3/j/d;->Z:Z

    if-nez v8, :cond_2

    .line 6
    invoke-virtual {p0, p1, v5}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v5

    .line 7
    iget-object v8, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-nez v5, :cond_1

    move-wide v9, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_0
    iput-wide v9, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->aggregatedRowId:J

    .line 8
    :cond_2
    iget-object v5, p0, Le/a/k3/j/d;->J:Landroid/net/Uri;

    invoke-static {v5, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 9
    iput-object v3, v0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 10
    iget v3, p0, Le/a/k3/j/d;->c:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 11
    iget v3, p0, Le/a/k3/j/d;->d:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 12
    iget v3, p0, Le/a/k3/j/d;->g:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v4, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v4, Lcom/truecaller/data/dto/ContactDto$Contact;->transliteratedName:Ljava/lang/String;

    .line 14
    iget v3, p0, Le/a/k3/j/d;->e:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    invoke-virtual {v0, v5}, Lcom/truecaller/data/entity/Contact;->Q0(Z)V

    .line 15
    iget v3, p0, Le/a/k3/j/d;->f:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->c(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v3

    .line 16
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    iput v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->favoritePosition:I

    .line 17
    iget v3, p0, Le/a/k3/j/d;->h:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 18
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->handle:Ljava/lang/String;

    .line 19
    iget v3, p0, Le/a/k3/j/d;->i:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->L0(Ljava/lang/String;)V

    .line 20
    iget v3, p0, Le/a/k3/j/d;->j:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 21
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->gender:Ljava/lang/String;

    .line 22
    iget v3, p0, Le/a/k3/j/d;->k:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 23
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->about:Ljava/lang/String;

    .line 24
    iget v3, p0, Le/a/k3/j/d;->l:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->P0(Ljava/lang/String;)V

    .line 25
    iget v3, p0, Le/a/k3/j/d;->m:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->R0(Ljava/lang/String;)V

    .line 26
    iget v3, p0, Le/a/k3/j/d;->n:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->N0(Ljava/lang/String;)V

    .line 27
    iget v3, p0, Le/a/k3/j/d;->o:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 28
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->access:Ljava/lang/String;

    .line 29
    iget v3, p0, Le/a/k3/j/d;->p:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v3

    .line 30
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->commonConnections:I

    .line 31
    iget v3, p0, Le/a/k3/j/d;->q:I

    if-eq v3, v2, :cond_6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget v3, p0, Le/a/k3/j/d;->q:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_4

    :cond_6
    :goto_3
    move-wide v8, v6

    :goto_4
    invoke-virtual {v0, v8, v9}, Lcom/truecaller/data/entity/Contact;->X0(J)V

    .line 32
    iget v3, p0, Le/a/k3/j/d;->r:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->setSource(I)V

    .line 33
    iget v3, p0, Le/a/k3/j/d;->s:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->O0(Ljava/lang/String;)V

    .line 34
    iget v3, p0, Le/a/k3/j/d;->t:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Contact;->T0(Ljava/lang/Long;)V

    .line 35
    iget v3, p0, Le/a/k3/j/d;->u:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->d(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v3

    .line 36
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_5
    iput-wide v6, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookHash:J

    .line 37
    iget v3, p0, Le/a/k3/j/d;->v:I

    invoke-virtual {p0, p1, v3}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v5, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v5, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v3, v5, Lcom/truecaller/data/dto/ContactDto$Contact;->phonebookLookupKey:Ljava/lang/String;

    .line 39
    iget v3, p0, Le/a/k3/j/d;->w:I

    if-eq v3, v2, :cond_9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    iget v2, p0, Le/a/k3/j/d;->w:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 40
    :cond_9
    :goto_6
    iput v4, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 41
    iget v2, p0, Le/a/k3/j/d;->y:I

    invoke-virtual {p0, p1, v2}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/data/entity/Contact;->V0(Ljava/lang/String;)V

    .line 42
    iget v2, p0, Le/a/k3/j/d;->z:I

    invoke-virtual {p0, p1, v2}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 43
    sget-object v3, Le/a/p5/g0;->a:Ljava/util/Set;

    if-eqz v2, :cond_a

    .line 44
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_a
    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->M0(Ljava/lang/Long;)V

    .line 46
    iget-boolean v1, p0, Le/a/k3/j/d;->Z:Z

    .line 47
    iput-boolean v1, v0, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 48
    iget v1, p0, Le/a/k3/j/d;->A:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->c(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->Z0(Ljava/lang/Integer;)V

    .line 49
    iget v1, p0, Le/a/k3/j/d;->I:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->Y0(Ljava/lang/String;)V

    .line 50
    iget v1, p0, Le/a/k3/j/d;->B:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->a1(Ljava/lang/String;)V

    .line 51
    iget v1, p0, Le/a/k3/j/d;->C:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->e(Landroid/database/Cursor;I)I

    move-result v1

    .line 52
    iput v1, v0, Lcom/truecaller/data/entity/Contact;->z:I

    .line 53
    iget v1, p0, Le/a/k3/j/d;->F:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v2, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v1, v2, Lcom/truecaller/data/dto/ContactDto$Contact;->imId:Ljava/lang/String;

    .line 55
    iget v1, p0, Le/a/k3/j/d;->G:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 56
    invoke-static {v1}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->fromRemote(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 58
    :cond_b
    iget v1, p0, Le/a/k3/j/d;->H:I

    invoke-virtual {p0, p1, v1}, Le/a/k3/j/a;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 59
    invoke-static {p1}, Lcom/truecaller/premium/data/PremiumScope;->fromRemote(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumScope;

    :cond_c
    return-object v0

    :cond_d
    :goto_7
    return-object v1
.end method

.method public h(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Le/a/k3/j/d;->Z:Z

    .line 2
    iget v0, p0, Le/a/k3/j/d;->x:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Le/a/m0/a1$a;->b()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Le/a/m0/a1$m;->a()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le/a/k3/j/d;->J:Landroid/net/Uri;

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-static {}, Le/a/m0/a1$a;->d()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Le/a/m0/a1$m;->b()Landroid/net/Uri;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Le/a/k3/j/d;->J:Landroid/net/Uri;

    :goto_2
    return-void
.end method
