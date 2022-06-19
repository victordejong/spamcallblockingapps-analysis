.class public Le/a/a/g/j0/d0;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/c0;


# instance fields
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
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->a:I

    const-string v0, "type"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->b:I

    const-string v0, "raw_destination"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->c:I

    const-string v0, "normalized_destination"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->d:I

    const-string v0, "country_code"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->e:I

    const-string v0, "tc_im_peer_id"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->f:I

    const-string v0, "tc_id"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->g:I

    const-string v0, "aggregated_contact_id"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->h:I

    const-string v0, "filter_action"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->i:I

    const-string v0, "is_top_spammer"

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->j:I

    const-string v0, "top_spam_score"

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->k:I

    const-string v0, "name"

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->l:I

    const-string v0, "image_url"

    .line 14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->m:I

    const-string v0, "source"

    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->n:I

    const-string v0, "phonebook_id"

    .line 16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->o:I

    const-string v0, "spam_score"

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->p:I

    const-string v0, "spam_type"

    .line 18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->q:I

    const-string v0, "national_destination"

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->r:I

    const-string v0, "badges"

    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->s:I

    const-string v0, "company_name"

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->t:I

    const-string v0, "search_time"

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->u:I

    const-string v0, "premium_level"

    .line 23
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->v:I

    const-string v0, "cache_control"

    .line 24
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->w:I

    const-string v0, "im_business_state"

    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->x:I

    const-string v0, "im_business_feature_flags"

    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/d0;->y:I

    const-string v0, "pb_numbers_count"

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/d0;->z:I

    return-void
.end method


# virtual methods
.method public L()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/g/j0/d0;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g1()Lcom/truecaller/data/entity/messaging/Participant;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    iget v1, p0, Le/a/a/g/j0/d0;->b:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    iget v1, p0, Le/a/a/g/j0/d0;->a:I

    .line 2
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->b:J

    .line 4
    iget v1, p0, Le/a/a/g/j0/d0;->c:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 7
    iget v1, p0, Le/a/a/g/j0/d0;->d:I

    .line 8
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 10
    iget v1, p0, Le/a/a/g/j0/d0;->e:I

    .line 11
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->f:Ljava/lang/String;

    .line 13
    iget v1, p0, Le/a/a/g/j0/d0;->f:I

    .line 14
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 16
    iget v1, p0, Le/a/a/g/j0/d0;->g:I

    .line 17
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 19
    iget v1, p0, Le/a/a/g/j0/d0;->h:I

    .line 20
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->h:J

    .line 22
    iget v1, p0, Le/a/a/g/j0/d0;->i:I

    .line 23
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 24
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 25
    iget v1, p0, Le/a/a/g/j0/d0;->j:I

    .line 26
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    iput-boolean v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->j:Z

    .line 28
    iget v1, p0, Le/a/a/g/j0/d0;->k:I

    .line 29
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 30
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->k:I

    .line 31
    iget v1, p0, Le/a/a/g/j0/d0;->l:I

    .line 32
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 34
    iget v1, p0, Le/a/a/g/j0/d0;->m:I

    .line 35
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 37
    iget v1, p0, Le/a/a/g/j0/d0;->n:I

    .line 38
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 39
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 40
    iget v1, p0, Le/a/a/g/j0/d0;->o:I

    .line 41
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 42
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 43
    iget v1, p0, Le/a/a/g/j0/d0;->p:I

    .line 44
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 45
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 46
    iget v1, p0, Le/a/a/g/j0/d0;->q:I

    .line 47
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->q:Ljava/lang/String;

    .line 49
    iget v1, p0, Le/a/a/g/j0/d0;->s:I

    .line 50
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->v:I

    .line 52
    iget v1, p0, Le/a/a/g/j0/d0;->v:I

    .line 53
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/truecaller/data/entity/Contact$PremiumLevel;->fromRemote(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact$PremiumLevel;

    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->t:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 55
    iget v1, p0, Le/a/a/g/j0/d0;->t:I

    .line 56
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->r:Ljava/lang/String;

    .line 58
    iget v1, p0, Le/a/a/g/j0/d0;->u:I

    .line 59
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 60
    iput-wide v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->s:J

    .line 61
    iget v1, p0, Le/a/a/g/j0/d0;->w:I

    .line 62
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 63
    :goto_1
    iput-object v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->u:Ljava/lang/Long;

    .line 64
    iget v1, p0, Le/a/a/g/j0/d0;->x:I

    .line 65
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 66
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->x:I

    .line 67
    iget v1, p0, Le/a/a/g/j0/d0;->y:I

    .line 68
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 69
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->y:I

    .line 70
    iget v1, p0, Le/a/a/g/j0/d0;->z:I

    .line 71
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 72
    iput v1, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->z:I

    .line 73
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    return-object v0
.end method
