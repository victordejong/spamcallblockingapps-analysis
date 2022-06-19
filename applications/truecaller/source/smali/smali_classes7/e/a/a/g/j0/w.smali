.class public Le/a/a/g/j0/w;
.super Le/a/a/g/j0/v;
.source "SourceFile"


# instance fields
.field public final A1:I

.field public final B1:I

.field public final C1:I

.field public final D1:I

.field public final E1:I

.field public final F1:I

.field public final G1:I

.field public final H1:I

.field public final I1:I

.field public final J1:I

.field public final K1:I

.field public final L1:I

.field public final M1:I

.field public final N1:I

.field public final O1:I

.field public final P1:I

.field public final Q1:I

.field public final R1:I

.field public final S1:I

.field public final T1:I

.field public final U1:I

.field public final V1:I

.field public final W1:I

.field public final X1:I

.field public final Y0:I

.field public final Y1:I

.field public final Z0:I

.field public final Z1:I

.field public final a1:I

.field public final a2:I

.field public final b1:I

.field public final b2:I

.field public final c1:I

.field public final c2:I

.field public final d1:I

.field public final d2:I

.field public final e1:I

.field public final e2:I

.field public final f1:I

.field public final f2:I

.field public final g1:I

.field public final g2:I

.field public final h1:I

.field public final h2:I

.field public final i1:I

.field public final i2:Landroid/database/Cursor;

.field public final j1:I

.field public final k1:I

.field public final l1:I

.field public final m1:I

.field public final n1:I

.field public final o1:I

.field public final p1:I

.field public final q1:I

.field public final r1:I

.field public final s1:I

.field public final t1:I

.field public final u1:I

.field public final v1:I

.field public final w1:I

.field public final x1:I

.field public final y1:I

.field public final z1:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/g/j0/v;-><init>(Landroid/database/Cursor;)V

    iput-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "participant_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->Y0:I

    const-string v0, "me_participant_type"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->Z0:I

    const-string v0, "me_participant_im_id"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->a1:I

    const-string v0, "me_participant_raw_destination"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->b1:I

    const-string v0, "me_participant_normalized_destination"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->c1:I

    const-string v0, "me_participant_country_code"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->d1:I

    const-string v0, "me_participant_tc_id"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->e1:I

    const-string v0, "me_participant_aggregated_contact_id"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->f1:I

    const-string v0, "me_participant_filter_action"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->g1:I

    const-string v0, "me_participant_is_top_spammer"

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->h1:I

    const-string v0, "me_participant_top_spam_score"

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->i1:I

    const-string v0, "me_participant_name"

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->j1:I

    const-string v0, "me_participant_image_url"

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->k1:I

    const-string v0, "me_participant_source"

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->l1:I

    const-string v0, "me_participant_cache_control"

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->m1:I

    const-string v0, "me_participant_im_business_state"

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->n1:I

    const-string v0, "me_participant_badges"

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->o1:I

    const-string v0, "me_participant_company_name"

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->p1:I

    const-string v0, "me_participant_search_time"

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->q1:I

    const-string v0, "me_participant_phonebook_id"

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->r1:I

    const-string v0, "me_participant_spam_score"

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->s1:I

    const-string v0, "me_participant_spam_type"

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->t1:I

    const-string v0, "me_participant_premium_level"

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->u1:I

    const-string v0, "me_entities_id"

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->v1:I

    const-string v0, "me_entities_mime_type"

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->w1:I

    const-string v0, "me_entities_type"

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->x1:I

    const-string v0, "entity_info1"

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le/a/a/g/j0/w;->y1:I

    const-string v1, "entity_info2"

    .line 29
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Le/a/a/g/j0/w;->z1:I

    .line 30
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Le/a/a/g/j0/w;->A1:I

    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Le/a/a/g/j0/w;->B1:I

    const-string v2, "entity_info3"

    .line 32
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/a/g/j0/w;->C1:I

    const-string v3, "entity_info5"

    .line 33
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Le/a/a/g/j0/w;->D1:I

    const-string v4, "entity_info6"

    .line 34
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Le/a/a/g/j0/w;->E1:I

    const-string v5, "entity_info4"

    .line 35
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Le/a/a/g/j0/w;->F1:I

    .line 36
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Le/a/a/g/j0/w;->G1:I

    .line 37
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Le/a/a/g/j0/w;->H1:I

    const-string v6, "entity_info7"

    .line 38
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->I1:I

    .line 39
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->J1:I

    .line 40
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->K1:I

    .line 41
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->L1:I

    .line 42
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->M1:I

    .line 43
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->N1:I

    .line 44
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->O1:I

    .line 45
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j0/w;->P1:I

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->Q1:I

    .line 47
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->R1:I

    .line 48
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->S1:I

    .line 49
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->T1:I

    .line 50
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/w;->U1:I

    .line 51
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->V1:I

    .line 52
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->W1:I

    .line 53
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->X1:I

    .line 54
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->Y1:I

    .line 55
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->Z1:I

    .line 56
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_message_status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->a2:I

    .line 57
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_participant_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->b2:I

    .line 58
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_participant_normalized_address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->c2:I

    .line 59
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_participant_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->d2:I

    .line 60
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_entities_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->e2:I

    .line 61
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_entities_mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->f2:I

    .line 62
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "re_entities_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->g2:I

    .line 63
    iget-object p1, p0, Le/a/a/g/j0/w;->i2:Landroid/database/Cursor;

    const-string v0, "info11"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/w;->h2:I

    return-void
.end method


# virtual methods
.method public E()Lcom/truecaller/data/entity/messaging/Participant;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/g/j0/w;->Y0:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "Participant.EMPTY"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    iget v1, p0, Le/a/a/g/j0/w;->Z0:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 4
    iget v1, p0, Le/a/a/g/j0/w;->Y0:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 5
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 6
    iget v1, p0, Le/a/a/g/j0/w;->b1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 8
    iget v1, p0, Le/a/a/g/j0/w;->c1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 10
    iget v1, p0, Le/a/a/g/j0/w;->d1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    .line 12
    iget v1, p0, Le/a/a/g/j0/w;->e1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 14
    iget v1, p0, Le/a/a/g/j0/w;->f1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 16
    iget v1, p0, Le/a/a/g/j0/w;->a1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 18
    iget v1, p0, Le/a/a/g/j0/w;->g1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 19
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 20
    iget v1, p0, Le/a/a/g/j0/w;->h1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    iput-boolean v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->j:Z

    .line 22
    iget v1, p0, Le/a/a/g/j0/w;->i1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 23
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->k:I

    .line 24
    iget v1, p0, Le/a/a/g/j0/w;->j1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 26
    iget v1, p0, Le/a/a/g/j0/w;->k1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 28
    iget v1, p0, Le/a/a/g/j0/w;->l1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 29
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 30
    iget v1, p0, Le/a/a/g/j0/w;->r1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 31
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 32
    iget v1, p0, Le/a/a/g/j0/w;->s1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 33
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 34
    iget v1, p0, Le/a/a/g/j0/w;->t1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->q:Ljava/lang/String;

    .line 36
    iget v1, p0, Le/a/a/g/j0/w;->o1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 37
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    .line 38
    iget v1, p0, Le/a/a/g/j0/w;->p1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->r:Ljava/lang/String;

    .line 40
    iget v1, p0, Le/a/a/g/j0/w;->q1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 41
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->s:J

    .line 42
    iget v1, p0, Le/a/a/g/j0/w;->u1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->fromRemote(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->t:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 44
    iget v1, p0, Le/a/a/g/j0/w;->m1:I

    .line 45
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 46
    :goto_1
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->u:Ljava/lang/Long;

    .line 47
    iget v1, p0, Le/a/a/g/j0/w;->n1:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 48
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    .line 49
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    const-string v1, "Participant.Builder(getI\u2026Im))\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public I(J)Lcom/truecaller/messaging/data/types/ReplySnippet;
    .locals 37

    move-object/from16 v0, p0

    .line 1
    sget-object v25, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/16 v26, 0x0

    if-gez v1, :cond_0

    return-object v26

    .line 2
    :cond_0
    iget v1, v0, Le/a/a/g/j0/w;->e2:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/g/j0/w;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3
    iget v2, v0, Le/a/a/g/j0/w;->g2:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_1

    new-array v3, v6, [C

    const/16 v4, 0x7c

    aput-char v4, v3, v15

    const/4 v4, 0x6

    invoke-static {v2, v3, v15, v15, v4}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    move-object v14, v2

    .line 4
    iget v2, v0, Le/a/a/g/j0/w;->f2:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    const-string v2, "readComposedStrings(getS\u2026EntitiesGroupedMimeType))"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 6
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v26

    .line 7
    :cond_2
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 8
    invoke-static {v13}, Ls1/u/i;->E(Ljava/util/Collection;)Ls1/d0/i;

    move-result-object v2

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v2, v27

    check-cast v2, Ls1/u/z;

    invoke-virtual {v2}, Ls1/u/z;->a()I

    move-result v10

    .line 11
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v33, v1

    move/from16 v34, v6

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    move-object/from16 v1, v26

    goto/16 :goto_5

    .line 12
    :cond_3
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    const-string v4, "re_entity_info4"

    const-string v5, "re_entity_info1"

    const-string v7, "mimeTypes[it]"

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    .line 13
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-object v4, v13

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-wide/from16 v11, v16

    const/16 v16, 0x0

    move-object/from16 v30, v13

    move-object/from16 v13, v16

    move-object/from16 v31, v14

    move-object/from16 v14, v16

    move/from16 v32, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fff4

    const-string v33, ""

    move/from16 v34, v6

    move-object/from16 v6, v33

    move-object/from16 v33, v1

    move-object/from16 v1, v25

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v33, v1

    move/from16 v34, v6

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 14
    invoke-static {v0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "readComposedStrings(stri\u2026 VCardColumns.THUMBNAIL))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "re_entity_info5"

    .line 15
    invoke-static {v0, v2}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    const-string v2, "readComposedStrings(stri\u2026VCardColumns.VCARD_NAME))"

    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026 + VCardColumns.CONTENT))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "re_entity_info6"

    .line 17
    invoke-static {v0, v2}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "readComposedStrings(stri\u2026ns.VCARD_CONTACTS_COUNT))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "vCardCounts[it]"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    :goto_2
    move/from16 v17, v2

    const-wide/16 v2, 0x0

    .line 19
    move-object/from16 v13, v30

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "vCardContent[it]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v14, v10

    move v10, v11

    const-wide/16 v11, 0x0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v13, "vCardThumbnails[it]"

    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v14

    move-object v14, v1

    move-object v3, v15

    move-object v15, v1

    move-object v1, v3

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "vCardNames[it]"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3cdf5

    move-object/from16 v1, v25

    const-wide/16 v2, 0x0

    .line 20
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v33, v1

    move/from16 v34, v6

    move v1, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 21
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026DocumentColumns.CONTENT))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {v0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    const-string v2, "readComposedStrings(stri\u2026ocumentColumns.FILENAME))"

    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 23
    move-object/from16 v13, v30

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "docContent[it]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v15, "docFileNames[it]"

    invoke-static {v1, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3f7f5

    move-object/from16 v1, v25

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v33, v1

    move/from16 v34, v6

    move v1, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 24
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026 + AudioColumns.CONTENT))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 25
    move-object/from16 v13, v30

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "audioContent[it]"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fff5

    move-object/from16 v1, v25

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v33, v1

    move/from16 v34, v6

    move v1, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 26
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026 + VideoColumns.CONTENT))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    const-string v2, "readComposedStrings(stri\u2026 VideoColumns.THUMBNAIL))"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 28
    move-object/from16 v4, v30

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "videoContent[it]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v13, "videoThumbnails[it]"

    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fdf5

    move-object/from16 v1, v25

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v33, v1

    move/from16 v34, v6

    move v1, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 29
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026 + ImageColumns.CONTENT))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {v0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    const-string v2, "readComposedStrings(stri\u2026 ImageColumns.THUMBNAIL))"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 31
    move-object/from16 v4, v30

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "imageContent[it]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v13, "imageThumbnails[it]"

    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fdf5

    move-object/from16 v1, v25

    .line 32
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_5
    move-object/from16 v33, v1

    move/from16 v34, v6

    move v1, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 33
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "readComposedStrings(stri\u2026X + TextColumns.CONTENT))"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "re_entity_info2"

    .line 34
    invoke-static {v0, v3}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "readComposedStrings(stri\u2026extColumns.IS_RICH_TEXT))"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 35
    move-object/from16 v13, v30

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v8, "textContent[it]"

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v35, v2

    check-cast v35, Ljava/lang/String;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isRichText[it]"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_3

    :cond_5
    move/from16 v15, v32

    :goto_3
    if-lez v15, :cond_6

    move/from16 v36, v34

    goto :goto_4

    :cond_6
    move/from16 v36, v32

    :goto_4
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3ffe5

    move-object/from16 v1, v25

    move-wide v2, v4

    move-object v4, v6

    move v5, v7

    move-object/from16 v6, v35

    move/from16 v7, v36

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_5

    :cond_7
    move-object/from16 v33, v1

    move/from16 v34, v6

    move v1, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v31, v14

    move/from16 v32, v15

    .line 36
    invoke-static {v0, v5}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026LocationColumns.CONTENT))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {v0, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    const-string v2, "readComposedStrings(stri\u2026LocationColumns.ADDRESS))"

    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 38
    move-object/from16 v13, v30

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "previewUris[it]"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, v19

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/String;

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x37ff5

    move-object/from16 v1, v25

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_8

    move-object/from16 v2, v29

    .line 39
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    move-object/from16 v2, v29

    :goto_6
    move-object v12, v2

    move-object/from16 v11, v28

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    move/from16 v15, v32

    move-object/from16 v1, v33

    move/from16 v6, v34

    goto/16 :goto_1

    :cond_9
    move-object v2, v12

    .line 40
    new-instance v1, Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 41
    iget v3, v0, Le/a/a/g/j0/w;->a2:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 42
    iget v3, v0, Le/a/a/g/j0/w;->b2:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 43
    iget v3, v0, Le/a/a/g/j0/w;->c2:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 44
    iget v3, v0, Le/a/a/g/j0/w;->d2:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v3, v1

    move-wide/from16 v4, p1

    move-object v7, v2

    .line 45
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/messaging/data/types/ReplySnippet;-><init>(JILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    .line 46
    :cond_a
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Inconsistent entities data"

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [C

    const/16 v1, 0x7c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x6

    .line 2
    invoke-static {p1, v0, v2, v2, v1}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Can not parse longs: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message$b;)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v15, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-string v2, "builder"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v2, v0, Le/a/a/g/j0/w;->v1:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/j0/w;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 2
    iget v2, v0, Le/a/a/g/j0/w;->x1:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    new-array v3, v3, [C

    const/16 v5, 0x7c

    aput-char v5, v3, v4

    const/4 v5, 0x6

    invoke-static {v2, v3, v4, v4, v5}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    move-object v12, v2

    .line 3
    iget v2, v0, Le/a/a/g/j0/w;->w1:I

    const-string v3, "readComposedStrings(getS\u2026entitiesGroupedMimeType))"

    invoke-static {v0, v2, v3}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_21

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move-object v13, v2

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v3, v2, :cond_21

    .line 5
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 6
    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v10

    move v9, v4

    :goto_1
    if-ge v9, v10, :cond_20

    .line 7
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    move/from16 v26, v9

    move/from16 v37, v10

    move-object/from16 v38, v11

    move-object/from16 v39, v12

    move-object v1, v13

    move-object/from16 v42, v14

    move-object/from16 v27, v15

    goto/16 :goto_1b

    .line 9
    :cond_1
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v5, "fileNames[index]"

    const-string v6, "thumbnails[index]"

    const-wide/16 v16, -0x1

    const-string v8, "readComposedStrings(getS\u2026ing(binaryEntityContent))"

    const-string v7, "readComposedStrings(getString(binaryEntitySize))"

    move/from16 v19, v10

    const-string v10, "readComposedStrings(getString(binaryEntityStatus))"

    move-object/from16 v20, v11

    const-string v11, "content[index]"

    move-object/from16 v21, v12

    const-string v12, "mimeTypes[index]"

    const/16 v22, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v9

    move-object/from16 v42, v14

    move-object/from16 v27, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move-object/from16 v46, v13

    move-object v13, v1

    move-object/from16 v1, v46

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    move v12, v0

    move-object/from16 v0, p0

    goto/16 :goto_19

    .line 11
    :pswitch_1
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 12
    iget v2, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v2, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 13
    iget v6, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v6, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 14
    iget v7, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v7, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 15
    iget v8, v0, Le/a/a/g/j0/w;->X1:I

    const-string v10, "readComposedStrings(getS\u2026locationEntitiesAddress))"

    invoke-static {v0, v8, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 16
    iget v10, v0, Le/a/a/g/j0/w;->Y1:I

    const-string v11, "readComposedStrings(getS\u2026ocationEntitiesLatitude))"

    invoke-static {v0, v10, v11}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 17
    iget v11, v0, Le/a/a/g/j0/w;->Z1:I

    const-string v12, "readComposedStrings(getS\u2026cationEntitiesLongitude))"

    invoke-static {v0, v11, v12}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 18
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v12, "previewUris[index]"

    invoke-static {v7, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    .line 19
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    move v12, v2

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 20
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    :cond_3
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 21
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Ljava/lang/String;

    .line 22
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/high16 v33, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_4

    invoke-static {v2}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v35

    goto :goto_3

    :cond_4
    move-wide/from16 v35, v33

    .line 23
    :goto_3
    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {v2}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-wide/from16 v33, v10

    :cond_5
    const/16 v25, 0x7ef0

    move-object v2, v15

    move v6, v12

    move/from16 v8, v18

    move v12, v9

    move/from16 v9, v22

    move/from16 v37, v19

    move/from16 v10, v23

    move-object/from16 v38, v20

    move/from16 v11, v24

    move/from16 v41, v12

    move-object/from16 v40, v13

    move-object/from16 v39, v21

    move-wide/from16 v12, v16

    move-object/from16 v42, v14

    move-object/from16 v14, v26

    move-object/from16 v26, v15

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    move/from16 v18, v30

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move-wide/from16 v21, v35

    move-wide/from16 v23, v33

    .line 24
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move-object v0, v1

    move-object/from16 v1, v40

    goto/16 :goto_b

    :pswitch_2
    move-object/from16 v42, v14

    move-object/from16 v26, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move v14, v9

    move-object v15, v13

    .line 26
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 27
    iget v2, v0, Le/a/a/g/j0/w;->Q1:I

    const-string v7, "readComposedStrings(getS\u2026ing(linkEntitiesContent))"

    invoke-static {v0, v2, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 28
    iget v7, v0, Le/a/a/g/j0/w;->R1:I

    const-string v8, "readComposedStrings(getString(linkEntitiesWidth))"

    invoke-static {v0, v7, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 29
    iget v8, v0, Le/a/a/g/j0/w;->S1:I

    const-string v10, "readComposedStrings(getString(linkEntitiesHeight))"

    invoke-static {v0, v8, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 30
    iget v10, v0, Le/a/a/g/j0/w;->T1:I

    const-string v12, "readComposedStrings(getS\u2026g(linkEntitiesThumbnail))"

    invoke-static {v0, v10, v12}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 31
    iget v12, v0, Le/a/a/g/j0/w;->W1:I

    const-string v13, "readComposedStrings(getS\u2026linkEntitiesDescription))"

    invoke-static {v0, v12, v13}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 32
    iget v13, v0, Le/a/a/g/j0/w;->U1:I

    move-object/from16 v40, v15

    const-string v15, "readComposedStrings(getS\u2026ng(linkEntitiesFileName))"

    invoke-static {v0, v13, v15}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 33
    iget v15, v0, Le/a/a/g/j0/w;->V1:I

    const-string v1, "readComposedStrings(getString(linkEntitiesSource))"

    invoke-static {v0, v15, v1}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 34
    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/String;

    .line 35
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "source[index]"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 36
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "description[index]"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v1

    check-cast v19, Ljava/lang/String;

    .line 37
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 38
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v10, v5

    goto :goto_4

    :cond_6
    const/4 v10, -0x1

    .line 39
    :goto_4
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v27, v5

    goto :goto_5

    :cond_7
    const/16 v27, -0x1

    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 40
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3b194

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v2, v26

    move-object v5, v9

    move v9, v10

    move/from16 v10, v27

    move/from16 v43, v14

    move-object v14, v1

    move-object/from16 v1, v40

    .line 41
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    move-object/from16 v15, p1

    .line 42
    invoke-virtual {v15, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move-object v0, v15

    move-object/from16 v27, v26

    move/from16 v45, v43

    goto/16 :goto_16

    :pswitch_3
    move/from16 v43, v9

    move-object/from16 v42, v14

    move-object/from16 v26, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move-object v15, v1

    move-object v1, v13

    move/from16 v13, v43

    .line 43
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 44
    iget v9, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v9, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 45
    iget v10, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v10, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 46
    iget v10, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v10, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 47
    iget v10, v0, Le/a/a/g/j0/w;->M1:I

    const-string v12, "readComposedStrings(getString(vCardEntitiesName))"

    invoke-static {v0, v10, v12}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 48
    iget v12, v0, Le/a/a/g/j0/w;->N1:I

    const-string v14, "readComposedStrings(getS\u2026rdEntitiesContactsCount))"

    invoke-static {v0, v12, v14}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 49
    iget v14, v0, Le/a/a/g/j0/w;->O1:I

    const-string v2, "readComposedStrings(getS\u2026(vCardEntitiesThumbnail))"

    invoke-static {v0, v14, v2}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 50
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    .line 51
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    invoke-static {v9}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    const/4 v11, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 52
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_9

    invoke-static {v7}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 53
    :cond_9
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "vCardNames[index]"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v30, v7

    check-cast v30, Ljava/lang/String;

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 54
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_a

    invoke-static {v7}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v18, v7

    goto :goto_7

    :cond_a
    const/16 v18, -0x1

    .line 55
    :goto_7
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3ccf0

    move-object/from16 v2, v26

    move v6, v9

    move-object v7, v8

    move v8, v11

    move/from16 v9, v27

    move/from16 v10, v28

    move/from16 v11, v29

    move/from16 v44, v13

    move-wide/from16 v12, v16

    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v17, v30

    .line 56
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    move-object/from16 v13, p1

    .line 57
    invoke-virtual {v13, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move-object v0, v13

    move-object/from16 v27, v26

    move/from16 v45, v44

    goto/16 :goto_16

    :pswitch_4
    move/from16 v44, v9

    move-object/from16 v42, v14

    move-object/from16 v26, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move-object/from16 v46, v13

    move-object v13, v1

    move-object/from16 v1, v46

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    .line 59
    iget v12, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v12, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 60
    iget v12, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v12, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 61
    iget v12, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v12, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 62
    iget v12, v0, Le/a/a/g/j0/w;->P1:I

    const-string v14, "readComposedStrings(getS\u2026ing(docEntitiesFileName))"

    invoke-static {v0, v12, v14}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 63
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    .line 64
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_b

    invoke-static {v10}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_b
    move v10, v2

    const/4 v11, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 65
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v30, v14

    goto :goto_8

    :cond_c
    move-wide/from16 v30, v16

    :goto_8
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 66
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3f6f0

    move-object/from16 v2, v26

    move-object v5, v6

    move v6, v10

    move-object v7, v8

    move v8, v11

    move v12, v9

    move/from16 v9, v27

    move/from16 v10, v28

    move/from16 v11, v29

    move-object/from16 v40, v1

    move v1, v12

    move-object v0, v13

    move-wide/from16 v12, v30

    .line 67
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move-object v15, v0

    move v0, v1

    move-object/from16 v1, v40

    goto/16 :goto_11

    :pswitch_5
    move-object v0, v1

    move v1, v9

    move-object/from16 v40, v13

    move-object/from16 v42, v14

    move-object/from16 v26, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    .line 70
    iget v6, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v6, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 71
    iget v9, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v9, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 72
    iget v9, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v9, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 73
    iget v9, v0, Le/a/a/g/j0/w;->K1:I

    const-string v10, "readComposedStrings(getS\u2026g(audioEntitiesDuration))"

    invoke-static {v0, v9, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 74
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    .line 75
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_d
    move v6, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v27, 0x0

    .line 76
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v28, v14

    goto :goto_9

    :cond_e
    move-wide/from16 v28, v16

    .line 77
    :goto_9
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v30, v2

    goto :goto_a

    :cond_f
    const/16 v30, -0x1

    :goto_a
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3fe70

    move-object/from16 v2, v26

    move-object v7, v8

    move v8, v10

    move v9, v11

    move/from16 v10, v27

    move/from16 v11, v30

    move/from16 v41, v1

    move-object v0, v12

    move-object v1, v13

    move-wide/from16 v12, v28

    .line 78
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    :goto_b
    move-object/from16 v27, v26

    move/from16 v45, v41

    goto/16 :goto_16

    :pswitch_6
    move-object v0, v1

    move/from16 v41, v9

    move-object v1, v13

    move-object/from16 v42, v14

    move-object/from16 v26, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move/from16 v14, v41

    .line 80
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    .line 81
    iget v9, v0, Le/a/a/g/j0/w;->G1:I

    const-string v13, "readComposedStrings(getString(videoEntitiesWidth))"

    invoke-static {v0, v9, v13}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 82
    iget v13, v0, Le/a/a/g/j0/w;->H1:I

    const-string v15, "readComposedStrings(getS\u2026ing(videoEntitiesHeight))"

    invoke-static {v0, v13, v15}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 83
    iget v15, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v15, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 84
    iget v15, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v15, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 85
    iget v15, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v15, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 86
    iget v15, v0, Le/a/a/g/j0/w;->J1:I

    const-string v2, "readComposedStrings(getS\u2026(videoEntitiesThumbnail))"

    invoke-static {v0, v15, v2}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 87
    iget v15, v0, Le/a/a/g/j0/w;->I1:I

    const-string v12, "readComposedStrings(getS\u2026g(videoEntitiesDuration))"

    invoke-static {v0, v15, v12}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 88
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    .line 89
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/String;

    .line 90
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    goto :goto_c

    :cond_10
    const/4 v9, -0x1

    .line 91
    :goto_c
    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v13, v2

    goto :goto_d

    :cond_11
    const/4 v13, -0x1

    .line 92
    :goto_d
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_e

    :cond_12
    const/4 v6, 0x0

    .line 93
    :goto_e
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide/from16 v28, v7

    goto :goto_f

    :cond_13
    move-wide/from16 v28, v16

    .line 94
    :goto_f
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto :goto_10

    :cond_14
    const/4 v12, -0x1

    :goto_10
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3fc10

    const/4 v8, 0x0

    move-object/from16 v2, v26

    move-object v7, v11

    move v10, v13

    move v11, v12

    move-wide/from16 v12, v28

    move v0, v14

    move-object/from16 v14, v27

    .line 95
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    move-object/from16 v15, p1

    .line 96
    invoke-virtual {v15, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    :goto_11
    move/from16 v45, v0

    move-object v0, v15

    move-object/from16 v27, v26

    goto/16 :goto_16

    :pswitch_7
    move v0, v9

    move-object/from16 v42, v14

    move-object/from16 v26, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    move-object v15, v1

    move-object v1, v13

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    move v14, v0

    move-object/from16 v0, p0

    .line 98
    iget v9, v0, Le/a/a/g/j0/w;->D1:I

    const-string v12, "readComposedStrings(getString(imageEntitiesWidth))"

    invoke-static {v0, v9, v12}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 99
    iget v12, v0, Le/a/a/g/j0/w;->E1:I

    const-string v13, "readComposedStrings(getS\u2026ing(imageEntitiesHeight))"

    invoke-static {v0, v12, v13}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 100
    iget v13, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v13, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 101
    iget v13, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v13, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 102
    iget v13, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v13, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 103
    iget v13, v0, Le/a/a/g/j0/w;->F1:I

    const-string v2, "readComposedStrings(getS\u2026(imageEntitiesThumbnail))"

    invoke-static {v0, v13, v2}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v13, v26

    .line 104
    invoke-virtual {v13, v5}, Lcom/truecaller/messaging/data/types/Entity$a;->i(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    iget v15, v0, Le/a/a/g/j0/w;->L1:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    :cond_15
    move-object/from16 v15, v22

    .line 105
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    .line 106
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    const/4 v11, 0x0

    .line 107
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    goto :goto_12

    :cond_16
    const/4 v9, -0x1

    .line 108
    :goto_12
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v12, v2

    goto :goto_13

    :cond_17
    const/4 v12, -0x1

    :goto_13
    const/16 v27, 0x0

    .line 109
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_18

    invoke-static {v2}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v6, v2

    goto :goto_14

    :cond_18
    const/4 v6, 0x0

    .line 110
    :goto_14
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    :cond_19
    move-wide/from16 v28, v16

    if-eqz v15, :cond_1a

    .line 111
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1a

    goto :goto_15

    :cond_1a
    const-string v2, ""

    :goto_15
    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3f890

    move-object v2, v13

    move-object v7, v8

    move v8, v11

    move v10, v12

    move/from16 v11, v27

    move-object/from16 v27, v13

    move-wide/from16 v12, v28

    move/from16 v45, v14

    move-object/from16 v14, v26

    move-object/from16 v0, p1

    .line 112
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    :goto_16
    move/from16 v26, v45

    goto/16 :goto_1b

    :pswitch_8
    move-object v0, v1

    move/from16 v45, v9

    move-object v1, v13

    move-object/from16 v42, v14

    move-object/from16 v27, v15

    move/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    const/4 v2, 0x0

    move/from16 v8, v45

    .line 114
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    .line 115
    iget v6, v0, Le/a/a/g/j0/w;->y1:I

    const-string v9, "readComposedStrings(getS\u2026ing(textEntitiesContent))"

    invoke-static {v0, v6, v9}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 116
    iget v9, v0, Le/a/a/g/j0/w;->z1:I

    const-string v10, "readComposedStrings(getS\u2026(textEntitiesIsRichText))"

    invoke-static {v0, v9, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 117
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v26, v6

    check-cast v26, Ljava/lang/String;

    .line 118
    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1b

    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    :cond_1b
    if-nez v22, :cond_1c

    goto :goto_17

    :cond_1c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1d

    move/from16 v28, v9

    goto :goto_18

    :cond_1d
    :goto_17
    move/from16 v28, v2

    :goto_18
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3ffe4

    const/4 v6, 0x0

    move-object/from16 v2, v27

    move-object/from16 v7, v26

    move v0, v8

    move/from16 v8, v28

    .line 119
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    move-object/from16 v13, p1

    .line 120
    invoke-virtual {v13, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move/from16 v26, v0

    move-object v0, v13

    goto/16 :goto_1b

    .line 121
    :goto_19
    iget v6, v0, Le/a/a/g/j0/w;->B1:I

    invoke-static {v0, v6, v10}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 122
    iget v9, v0, Le/a/a/g/j0/w;->C1:I

    invoke-static {v0, v9, v7}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 123
    iget v9, v0, Le/a/a/g/j0/w;->A1:I

    invoke-static {v0, v9, v8}, Le/d/c/a/a;->a0(Le/a/a/g/j0/w;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 124
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    .line 125
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1e

    invoke-static {v6}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1e
    move v6, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v26, 0x0

    .line 126
    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-wide/from16 v28, v14

    goto :goto_1a

    :cond_1f
    move-wide/from16 v28, v16

    :goto_1a
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3fef0

    move-object/from16 v2, v27

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v26

    move/from16 v26, v12

    move-object v0, v13

    move-wide/from16 v12, v28

    .line 127
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    :goto_1b
    add-int/lit8 v9, v26, 0x1

    move-object v13, v1

    move-object/from16 v15, v27

    move/from16 v10, v37

    move-object/from16 v11, v38

    move-object/from16 v12, v39

    move-object/from16 v14, v42

    move-object v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_20
    return-void

    .line 129
    :cond_21
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Inconsistent entities data"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message$b;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/a/g/j0/w;->h2:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/c/p/a;->S1(Ljava/lang/String;)[Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message$b;->p:Ljava/util/Set;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
