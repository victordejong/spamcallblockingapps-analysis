.class public Le/a/a/g/j0/v;
.super Le/a/a/g/e;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/q;


# instance fields
.field public final A:I

.field public final A0:I

.field public final B:I

.field public final B0:I

.field public final C:I

.field public final C0:I

.field public final D:I

.field public final D0:I

.field public final E:I

.field public final E0:I

.field public final F0:I

.field public final G0:I

.field public final H0:I

.field public final I0:I

.field public final J:I

.field public final J0:I

.field public final K:I

.field public final K0:I

.field public final L:I

.field public final L0:I

.field public final M:I

.field public final M0:I

.field public final N:I

.field public final N0:I

.field public final O:I

.field public final O0:I

.field public final P:I

.field public final P0:I

.field public final Q:I

.field public final Q0:I

.field public final R:I

.field public final R0:I

.field public final S:I

.field public final S0:I

.field public final T:I

.field public final T0:I

.field public final U:I

.field public final U0:I

.field public final V:I

.field public final V0:I

.field public final W:I

.field public W0:Lcom/truecaller/messaging/data/types/Message;

.field public final X:I

.field public X0:I

.field public final Y:I

.field public final Z:I

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final g0:I

.field public final h:I

.field public final h0:I

.field public final i:I

.field public final i0:I

.field public final j:I

.field public final j0:I

.field public final k:I

.field public final k0:I

.field public final l:I

.field public final l0:I

.field public final m:I

.field public final m0:I

.field public final n:I

.field public final n0:I

.field public final o:I

.field public final o0:I

.field public final p:I

.field public final p0:I

.field public final q:I

.field public final q0:I

.field public final r:I

.field public final r0:I

.field public final s:I

.field public final s0:I

.field public final t:I

.field public final t0:I

.field public final u:I

.field public final u0:I

.field public final v:I

.field public final v0:I

.field public final w:I

.field public final w0:I

.field public final x:I

.field public final x0:I

.field public final y:I

.field public final y0:I

.field public final z:I

.field public final z0:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cursor"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p1}, Le/a/a/g/e;-><init>(Landroid/database/Cursor;)V

    const-string v2, "_id"

    .line 2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->a:I

    const-string v2, "conversation_id"

    .line 3
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->b:I

    const-string v2, "date"

    .line 4
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->c:I

    const-string v2, "date_sent"

    .line 5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->d:I

    const-string v2, "send_schedule_date"

    .line 6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->e:I

    const-string v2, "status"

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->f:I

    const-string v2, "seen"

    .line 8
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->g:I

    const-string v2, "read"

    .line 9
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->h:I

    const-string v2, "locked"

    .line 10
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->i:I

    const-string v2, "transport"

    .line 11
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->j:I

    const-string v2, "scheduled_transport"

    .line 12
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->k:I

    const-string v2, "sim_token"

    .line 13
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->l:I

    const-string v2, "raw_address"

    .line 14
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->m:I

    const-string v2, "retry_count"

    .line 15
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->n:I

    const-string v2, "retry_date"

    .line 16
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->o:I

    const-string v2, "reply_to_msg_id"

    .line 17
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->p:I

    const-string v2, "sequence_number"

    .line 18
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->q:I

    const-string v2, "analytics_id"

    .line 19
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->r:I

    const-string v2, "analytics_context"

    .line 20
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->s:I

    const-string v2, "category"

    .line 21
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->t:I

    const-string v2, "classification"

    .line 22
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->u:I

    const-string v2, "raw_id"

    .line 23
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->v:I

    const-string v2, "group_id_day"

    .line 24
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->w:I

    const-string v2, "group_id_minute"

    .line 25
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->x:I

    const-string v2, "important"

    .line 26
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->y:I

    const-string v2, "important_date"

    .line 27
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->z:I

    const-string v2, "hidden_number"

    .line 28
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->A:I

    const-string v2, "language"

    .line 29
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->B:I

    const-string v2, "edit_message_id"

    .line 30
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->C:I

    const-string v2, "edit_message_date"

    .line 31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->D:I

    const-string v2, "info1"

    .line 32
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Le/a/a/g/j0/v;->E:I

    const-string v3, "info2"

    .line 33
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->J:I

    const-string v4, "info3"

    .line 34
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Le/a/a/g/j0/v;->K:I

    const-string v5, "info4"

    .line 35
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Le/a/a/g/j0/v;->L:I

    const-string v6, "info5"

    .line 36
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Le/a/a/g/j0/v;->M:I

    const-string v7, "info6"

    .line 37
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Le/a/a/g/j0/v;->N:I

    const-string v8, "info7"

    .line 38
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Le/a/a/g/j0/v;->O:I

    const-string v9, "info8"

    .line 39
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Le/a/a/g/j0/v;->P:I

    const-string v10, "info9"

    .line 40
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    iput v11, v0, Le/a/a/g/j0/v;->Q:I

    const-string v11, "info10"

    .line 41
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->R:I

    .line 42
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->S:I

    .line 43
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->T:I

    .line 44
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->U:I

    const-string v12, "info20"

    .line 45
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    iput v13, v0, Le/a/a/g/j0/v;->V:I

    const-string v13, "info13"

    .line 46
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Le/a/a/g/j0/v;->W:I

    .line 47
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Le/a/a/g/j0/v;->X:I

    .line 48
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    iput v14, v0, Le/a/a/g/j0/v;->Y:I

    const-string v14, "info12"

    .line 49
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    iput v15, v0, Le/a/a/g/j0/v;->Z:I

    const-string v15, "info14"

    move-object/from16 v16, v4

    .line 50
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->g0:I

    const-string v4, "info15"

    move-object/from16 v17, v12

    .line 51
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->h0:I

    const-string v12, "info22"

    .line 52
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->i0:I

    const-string v12, "info16"

    move-object/from16 v18, v4

    .line 53
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->j0:I

    const-string v4, "info17"

    move-object/from16 v19, v12

    .line 54
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->k0:I

    const-string v12, "info21"

    move-object/from16 v20, v4

    .line 55
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->l0:I

    .line 56
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->m0:I

    const-string v4, "info23"

    .line 57
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->n0:I

    const-string v4, "info24"

    .line 58
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->o0:I

    .line 59
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->p0:I

    .line 60
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->q0:I

    .line 61
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->r0:I

    .line 62
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->s0:I

    const-string v4, "info11"

    .line 63
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->t0:I

    const-string v4, "info18"

    move-object/from16 v21, v12

    .line 64
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Le/a/a/g/j0/v;->u0:I

    const-string v12, "info19"

    move-object/from16 v22, v4

    .line 65
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->v0:I

    const-string v4, "info25"

    .line 66
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->w0:I

    const-string v4, "info26"

    .line 67
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->x0:I

    const-string v4, "info27"

    .line 68
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->y0:I

    .line 69
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->z0:I

    .line 70
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->A0:I

    .line 71
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->B0:I

    .line 72
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->C0:I

    .line 73
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->D0:I

    .line 74
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->E0:I

    .line 75
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->F0:I

    .line 76
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->G0:I

    .line 77
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->H0:I

    .line 78
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->I0:I

    .line 79
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->J0:I

    .line 80
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->K0:I

    move-object/from16 v4, v18

    .line 81
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->L0:I

    move-object/from16 v4, v19

    .line 82
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->M0:I

    move-object/from16 v4, v20

    .line 83
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->N0:I

    move-object/from16 v4, v22

    .line 84
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->O0:I

    .line 85
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->P0:I

    move-object/from16 v4, v17

    .line 86
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->Q0:I

    move-object/from16 v4, v21

    .line 87
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Le/a/a/g/j0/v;->R0:I

    .line 88
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Le/a/a/g/j0/v;->S0:I

    move-object/from16 v3, v16

    .line 89
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Le/a/a/g/j0/v;->T0:I

    .line 90
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le/a/a/g/j0/v;->U0:I

    .line 91
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 92
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Le/a/a/g/j0/v;->V0:I

    const/4 v1, -0x1

    .line 93
    iput v1, v0, Le/a/a/g/j0/v;->X0:I

    return-void
.end method


# virtual methods
.method public C1()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/v;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public E()Lcom/truecaller/data/entity/messaging/Participant;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "Participant.EMPTY"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public I(J)Lcom/truecaller/messaging/data/types/ReplySnippet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public R0()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/g/j0/v;->j:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public d(Lcom/truecaller/messaging/data/types/Message$b;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getMessage()Lcom/truecaller/messaging/data/types/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/g/j0/v;->X0:I

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/g/j0/v;->W0:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Le/a/a/g/j0/v;->d(Lcom/truecaller/messaging/data/types/Message$b;)V

    .line 5
    invoke-virtual {p0}, Le/a/a/g/j0/v;->R0()I

    move-result v1

    .line 6
    iget v2, p0, Le/a/a/g/j0/v;->k:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v2, v3, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Le/a/a/g/j0/v;->s(Lcom/truecaller/messaging/data/types/Message$b;)V

    .line 8
    :cond_2
    iget v4, p0, Le/a/a/g/j0/v;->a:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 9
    iput-wide v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 10
    invoke-virtual {p0}, Le/a/a/g/j0/v;->E()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    .line 11
    iput-object v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 12
    iget v4, p0, Le/a/a/g/j0/v;->b:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 13
    iput-wide v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->b:J

    .line 14
    iget v4, p0, Le/a/a/g/j0/v;->c:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 15
    iget v4, p0, Le/a/a/g/j0/v;->q:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 16
    iput-wide v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->C:J

    .line 17
    iget v4, p0, Le/a/a/g/j0/v;->d:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/truecaller/messaging/data/types/Message$b;->d(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 18
    iget v4, p0, Le/a/a/g/j0/v;->e:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/truecaller/messaging/data/types/Message$b;->i(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 19
    iget v4, p0, Le/a/a/g/j0/v;->f:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    .line 20
    iput v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 21
    iget v4, p0, Le/a/a/g/j0/v;->g:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v6

    .line 22
    :goto_0
    iput-boolean v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 23
    iget v4, p0, Le/a/a/g/j0/v;->h:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v6

    .line 24
    :goto_1
    iput-boolean v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 25
    iget v4, p0, Le/a/a/g/j0/v;->i:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v6

    .line 26
    :goto_2
    iput-boolean v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    .line 27
    iget v4, p0, Le/a/a/g/j0/v;->l:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/truecaller/messaging/data/types/Message$b;->j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 28
    iput v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->l:I

    .line 29
    iget v2, p0, Le/a/a/g/j0/v;->r:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->s:Ljava/lang/String;

    .line 31
    iget v2, p0, Le/a/a/g/j0/v;->s:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->t:Ljava/lang/String;

    .line 33
    iget v2, p0, Le/a/a/g/j0/v;->m:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->r:Ljava/lang/String;

    .line 35
    iget v2, p0, Le/a/a/g/j0/v;->n:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 36
    iput v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->x:I

    .line 37
    iget v2, p0, Le/a/a/g/j0/v;->o:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v7

    .line 38
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2, v7, v8}, Lw3/b/a/b;-><init>(J)V

    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->y:Lw3/b/a/b;

    .line 39
    iget v2, p0, Le/a/a/g/j0/v;->t:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 40
    iput v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->u:I

    .line 41
    iget v2, p0, Le/a/a/g/j0/v;->u:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 42
    iput v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->w:I

    .line 43
    iget v2, p0, Le/a/a/g/j0/v;->p:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v7

    .line 44
    iput-wide v7, v0, Lcom/truecaller/messaging/data/types/Message$b;->z:J

    .line 45
    iget v2, p0, Le/a/a/g/j0/v;->p:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Le/a/a/g/j0/v;->I(J)Lcom/truecaller/messaging/data/types/ReplySnippet;

    move-result-object v2

    .line 46
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->A:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 47
    invoke-virtual {p0}, Le/a/a/g/j0/v;->h0()Lcom/truecaller/messaging/data/types/TransportInfo;

    move-result-object v2

    .line 48
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 49
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 50
    invoke-virtual {p0}, Le/a/a/g/j0/v;->l()I

    move-result v1

    .line 51
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->D:I

    .line 52
    invoke-virtual {p0}, Le/a/a/g/j0/v;->q()I

    move-result v1

    .line 53
    iput v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->E:I

    .line 54
    invoke-virtual {p0}, Le/a/a/g/j0/v;->k()J

    move-result-wide v1

    .line 55
    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->F:J

    .line 56
    invoke-virtual {p0}, Le/a/a/g/j0/v;->j()J

    move-result-wide v1

    .line 57
    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->G:J

    .line 58
    iget v1, p0, Le/a/a/g/j0/v;->w:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 59
    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->H:J

    .line 60
    iget v1, p0, Le/a/a/g/j0/v;->x:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 61
    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->I:J

    .line 62
    iget v1, p0, Le/a/a/g/j0/v;->y:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v5

    goto :goto_3

    :cond_6
    move v1, v6

    .line 63
    :goto_3
    iput-boolean v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->J:Z

    .line 64
    iget v1, p0, Le/a/a/g/j0/v;->z:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 65
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4, v1, v2}, Lw3/b/a/b;-><init>(J)V

    .line 66
    iput-object v4, v0, Lcom/truecaller/messaging/data/types/Message$b;->K:Lw3/b/a/b;

    .line 67
    iget v1, p0, Le/a/a/g/j0/v;->A:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    .line 68
    :goto_4
    iput-boolean v5, v0, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 69
    iget v1, p0, Le/a/a/g/j0/v;->B:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    iput-object v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->B:Ljava/lang/String;

    .line 71
    iget v1, p0, Le/a/a/g/j0/v;->j:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_8

    iget v1, p0, Le/a/a/g/j0/v;->k:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 72
    :cond_8
    iget v1, p0, Le/a/a/g/j0/v;->J0:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iget v4, p0, Le/a/a/g/j0/v;->K0:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Le/a/a/g/j0/v;->L0:I

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Le/a/a/g/j0/v;->O0:I

    invoke-virtual {p0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v4, v5, v7}, Lcom/truecaller/messaging/data/types/ImForwardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_9
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Message$b;->L:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 74
    iget v1, p0, Le/a/a/g/j0/v;->j:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eq v1, v3, :cond_a

    iget v1, p0, Le/a/a/g/j0/v;->k:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 75
    :cond_a
    iget v1, p0, Le/a/a/g/j0/v;->P0:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 76
    :cond_b
    iput v6, v0, Lcom/truecaller/messaging/data/types/Message$b;->M:I

    .line 77
    iget v1, p0, Le/a/a/g/j0/v;->C:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/data/types/Message$b;->e(Ljava/lang/Long;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 78
    iget v1, p0, Le/a/a/g/j0/v;->D:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 79
    iput-wide v1, v0, Lcom/truecaller/messaging/data/types/Message$b;->O:J

    .line 80
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v1, "builder.id(messageId)\n  \u2026te))\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object v0, p0, Le/a/a/g/j0/v;->W0:Lcom/truecaller/messaging/data/types/Message;

    .line 82
    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getPosition()I

    move-result v1

    iput v1, p0, Le/a/a/g/j0/v;->X0:I

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/g/j0/v;->f:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public h0()Lcom/truecaller/messaging/data/types/TransportInfo;
    .locals 36

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/g/j0/v;->a:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v14

    .line 2
    iget v1, v0, Le/a/a/g/j0/v;->j:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "Empty message uri"

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance v2, Landroid/database/SQLException;

    const-string v3, "Unsupported transport type: "

    invoke-static {v3, v1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :pswitch_0
    new-instance v1, Lcom/truecaller/messaging/data/types/BackupTransportInfo;

    invoke-direct {v1, v14, v15}, Lcom/truecaller/messaging/data/types/BackupTransportInfo;-><init>(J)V

    goto/16 :goto_d

    .line 5
    :pswitch_1
    new-instance v1, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;

    .line 6
    iget v2, v0, Le/a/a/g/j0/v;->v:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v4, v2

    .line 7
    :cond_0
    invoke-direct {v1, v14, v15, v4}, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;-><init>(JLjava/lang/String;)V

    goto/16 :goto_d

    .line 8
    :pswitch_2
    new-instance v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    .line 9
    iget v2, v0, Le/a/a/g/j0/v;->v:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(rawId)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 10
    iget v2, v0, Le/a/a/g/j0/v;->U0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v7

    .line 11
    iget v2, v0, Le/a/a/g/j0/v;->S0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v8

    .line 12
    iget v2, v0, Le/a/a/g/j0/v;->T0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 13
    iget v2, v0, Le/a/a/g/j0/v;->V0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v10

    .line 14
    sget-object v2, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    move-object v2, v1

    move-wide v3, v14

    invoke-direct/range {v2 .. v11}, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;-><init>(JJIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    .line 15
    :pswitch_3
    new-instance v1, Lcom/truecaller/messaging/data/types/BackupTransportInfo;

    invoke-direct {v1, v14, v15}, Lcom/truecaller/messaging/data/types/BackupTransportInfo;-><init>(J)V

    goto/16 :goto_d

    .line 16
    :pswitch_4
    new-instance v1, Lcom/truecaller/messaging/transport/NullTransportInfo$b;

    invoke-direct {v1}, Lcom/truecaller/messaging/transport/NullTransportInfo$b;-><init>()V

    .line 17
    iput-wide v14, v1, Lcom/truecaller/messaging/transport/NullTransportInfo$b;->a:J

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/messaging/transport/NullTransportInfo$b;->a()Lcom/truecaller/messaging/transport/NullTransportInfo;

    move-result-object v1

    const-string v2, "NullTransportInfo.Builde\u2026).setMesageId(id).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_5
    const/16 v23, -0x1

    .line 19
    iget v1, v0, Le/a/a/g/j0/v;->v:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const-string v4, "rawId"

    .line 20
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v4, v0, Le/a/a/g/j0/v;->z0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v16

    .line 22
    iget v4, v0, Le/a/a/g/j0/v;->A0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v17

    .line 23
    iget v4, v0, Le/a/a/g/j0/v;->B0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v18

    .line 24
    iget v4, v0, Le/a/a/g/j0/v;->C0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v19

    .line 25
    iget v4, v0, Le/a/a/g/j0/v;->D0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v20

    .line 26
    iget v4, v0, Le/a/a/g/j0/v;->E0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v21

    .line 27
    iget v4, v0, Le/a/a/g/j0/v;->F0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v25

    .line 28
    iget v4, v0, Le/a/a/g/j0/v;->G0:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v22, 0x7c

    const-string v12, "null cannot be cast to non-null type kotlin.Array<T>"

    const/16 v24, 0x0

    const/4 v5, 0x6

    const/16 v6, 0xa

    if-eqz v4, :cond_3

    new-array v2, v2, [C

    aput-char v22, v2, v3

    .line 29
    invoke-static {v4, v2, v3, v3, v5}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    .line 30
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 32
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 33
    new-instance v11, Lcom/truecaller/messaging/data/types/Reaction;

    const-wide/16 v3, -0x1

    const-wide/16 v9, -0x1

    const/16 v28, -0x1

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xc0

    const-string v7, ""

    move-object v2, v11

    move-wide v5, v14

    move-object/from16 v33, v11

    move/from16 v11, v28

    move-object/from16 v34, v12

    move-object/from16 v35, v13

    move-wide/from16 v12, v29

    move-wide/from16 v28, v14

    move-object/from16 v14, v31

    move/from16 v15, v32

    invoke-direct/range {v2 .. v15}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    move-object/from16 v3, v33

    move-object/from16 v2, v35

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object v13, v2

    move-wide/from16 v14, v28

    move-object/from16 v12, v34

    goto :goto_1

    :cond_2
    move-object/from16 v34, v12

    move-object v2, v13

    move-wide/from16 v28, v14

    new-array v4, v3, [Lcom/truecaller/messaging/data/types/Reaction;

    .line 34
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v9, v34

    invoke-static {v2, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Lcom/truecaller/messaging/data/types/Reaction;

    move v10, v3

    goto :goto_2

    :cond_3
    move-object v9, v12

    move-wide/from16 v28, v14

    move v10, v3

    move-object/from16 v2, v24

    :goto_2
    if-eqz v2, :cond_4

    .line 35
    invoke-static {v2}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_4
    move-object/from16 v11, v24

    .line 36
    :goto_3
    iget v2, v0, Le/a/a/g/j0/v;->H0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v30

    .line 37
    iget v2, v0, Le/a/a/g/j0/v;->I0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v27

    .line 38
    iget v2, v0, Le/a/a/g/j0/v;->M0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v32

    .line 39
    iget v2, v0, Le/a/a/g/j0/v;->N0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 40
    iget v2, v0, Le/a/a/g/j0/v;->Q0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [C

    aput-char v22, v3, v10

    const/4 v4, 0x6

    .line 41
    invoke-static {v2, v3, v10, v10, v4}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v2

    .line 42
    new-instance v12, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 45
    new-instance v14, Lcom/truecaller/messaging/data/types/QuickAction;

    const-wide/16 v3, -0x1

    const/4 v7, 0x0

    move-object v2, v14

    move-wide/from16 v5, v28

    invoke-direct/range {v2 .. v8}, Lcom/truecaller/messaging/data/types/QuickAction;-><init>(JJILjava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-array v2, v10, [Lcom/truecaller/messaging/data/types/QuickAction;

    .line 46
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Lcom/truecaller/messaging/data/types/QuickAction;

    goto :goto_5

    :cond_6
    move-object/from16 v2, v24

    :goto_5
    if-eqz v2, :cond_7

    .line 47
    invoke-static {v2}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object/from16 v2, v24

    .line 48
    :goto_6
    iget v3, v0, Le/a/a/g/j0/v;->R0:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v22

    .line 49
    new-instance v34, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-eqz v11, :cond_8

    new-array v3, v10, [Lcom/truecaller/messaging/data/types/Reaction;

    .line 50
    invoke-interface {v11, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Lcom/truecaller/messaging/data/types/Reaction;

    move-object v15, v3

    goto :goto_7

    :cond_8
    move-object/from16 v15, v24

    :goto_7
    if-eqz v2, :cond_9

    new-array v3, v10, [Lcom/truecaller/messaging/data/types/QuickAction;

    .line 51
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Lcom/truecaller/messaging/data/types/QuickAction;

    move-object/from16 v35, v2

    goto :goto_8

    :cond_9
    move-object/from16 v35, v24

    :goto_8
    const/4 v9, 0x0

    const/16 v24, 0x0

    move-object/from16 v2, v34

    move-wide/from16 v3, v28

    move-object v5, v1

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move-wide/from16 v13, v25

    move-wide/from16 v16, v30

    move/from16 v18, v27

    move/from16 v19, v32

    move-object/from16 v20, v33

    move-object/from16 v21, v35

    .line 52
    invoke-direct/range {v2 .. v24}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    move-object/from16 v1, v34

    goto/16 :goto_d

    :pswitch_6
    move-wide/from16 v28, v14

    .line 53
    iget v1, v0, Le/a/a/g/j0/v;->U:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(mmsMessageUri)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    move v4, v2

    goto :goto_9

    :cond_a
    move v4, v3

    :goto_9
    if-nez v4, :cond_f

    .line 55
    new-instance v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>()V

    .line 56
    iget v5, v0, Le/a/a/g/j0/v;->v:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 57
    iput-wide v5, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    move-wide/from16 v6, v28

    .line 58
    iput-wide v6, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->a:J

    .line 59
    iget v5, v0, Le/a/a/g/j0/v;->T:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    .line 60
    iput v5, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c:I

    .line 61
    iget v5, v0, Le/a/a/g/j0/v;->S:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 62
    iput-wide v5, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 63
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 65
    iget v1, v0, Le/a/a/g/j0/v;->V:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->u:Ljava/lang/String;

    .line 67
    iget v1, v0, Le/a/a/g/j0/v;->W:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->p:Ljava/lang/String;

    .line 69
    iget v1, v0, Le/a/a/g/j0/v;->X:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v5, v0, Le/a/a/g/j0/v;->Y:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    .line 70
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 71
    iput v5, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    .line 72
    iget v1, v0, Le/a/a/g/j0/v;->g0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    .line 73
    iget v1, v0, Le/a/a/g/j0/v;->h0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 74
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    .line 75
    iget v1, v0, Le/a/a/g/j0/v;->i0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 76
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->x:I

    .line 77
    iget v1, v0, Le/a/a/g/j0/v;->j0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 78
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->s:I

    .line 79
    iget v1, v0, Le/a/a/g/j0/v;->k0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 80
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->t:I

    .line 81
    iget v1, v0, Le/a/a/g/j0/v;->l0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 82
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->v:I

    .line 83
    iget v1, v0, Le/a/a/g/j0/v;->m0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 84
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    .line 85
    iget v1, v0, Le/a/a/g/j0/v;->n0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 86
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    .line 87
    iget v1, v0, Le/a/a/g/j0/v;->o0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 88
    iput-wide v5, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->z:J

    .line 89
    iget v1, v0, Le/a/a/g/j0/v;->p0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 90
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->f:I

    .line 91
    iget v1, v0, Le/a/a/g/j0/v;->s0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    .line 93
    iget v1, v0, Le/a/a/g/j0/v;->t0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 94
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->m:I

    .line 95
    iget v1, v0, Le/a/a/g/j0/v;->u0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->n:Ljava/lang/String;

    .line 97
    iget v1, v0, Le/a/a/g/j0/v;->v0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    .line 99
    iget v1, v0, Le/a/a/g/j0/v;->w0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 100
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    .line 101
    iget v1, v0, Le/a/a/g/j0/v;->x0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 102
    iput v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->B:I

    .line 103
    iget v1, v0, Le/a/a/g/j0/v;->y0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    move v2, v3

    .line 104
    :goto_a
    iput-boolean v2, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->C:Z

    const-string v1, "MmsTransportInfo.Builder\u2026t(mmsReportAllowed) != 0)"

    .line 105
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget v1, v0, Le/a/a/g/j0/v;->X:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 107
    iget v1, v0, Le/a/a/g/j0/v;->X:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Le/a/a/g/j0/v;->Y:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 108
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 109
    iput v2, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    .line 110
    :cond_c
    iget v1, v0, Le/a/a/g/j0/v;->q0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 111
    iget v1, v0, Le/a/a/g/j0/v;->q0:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Le/a/a/g/j0/v;->r0:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 112
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->i:Ljava/lang/String;

    .line 113
    iput v2, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->j:I

    .line 114
    :cond_d
    iget v1, v0, Le/a/a/g/j0/v;->Z:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 115
    iget v1, v0, Le/a/a/g/j0/v;->Z:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    iput-object v1, v4, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->k:Landroid/net/Uri;

    .line 117
    :cond_e
    invoke-virtual {v4}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 118
    :cond_f
    new-instance v1, Landroid/database/SQLException;

    invoke-direct {v1, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    move-wide v6, v14

    .line 119
    iget v1, v0, Le/a/a/g/j0/v;->K:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(smsMessageUri)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    move v4, v2

    goto :goto_b

    :cond_10
    move v4, v3

    :goto_b
    if-nez v4, :cond_12

    .line 121
    new-instance v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>()V

    .line 122
    iget v5, v0, Le/a/a/g/j0/v;->v:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v8

    .line 123
    iput-wide v8, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->b:J

    .line 124
    iput-wide v6, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a:J

    .line 125
    iget v5, v0, Le/a/a/g/j0/v;->J:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    .line 126
    iput v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 127
    iget v5, v0, Le/a/a/g/j0/v;->E:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 128
    iput-wide v5, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->d:J

    .line 129
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 130
    iput-object v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 131
    iget v1, v0, Le/a/a/g/j0/v;->L:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 132
    iput v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->f:I

    .line 133
    iget v1, v0, Le/a/a/g/j0/v;->M:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 134
    iput v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->g:I

    .line 135
    iget v1, v0, Le/a/a/g/j0/v;->N:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    iput-object v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->h:Ljava/lang/String;

    .line 137
    iget v1, v0, Le/a/a/g/j0/v;->O:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    iput-object v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->k:Ljava/lang/String;

    .line 139
    iget v1, v0, Le/a/a/g/j0/v;->P:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 140
    iput v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->i:I

    .line 141
    iget v1, v0, Le/a/a/g/j0/v;->Q:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_c

    :cond_11
    move v2, v3

    .line 142
    :goto_c
    iput-boolean v2, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->j:Z

    .line 143
    iget v1, v0, Le/a/a/g/j0/v;->R:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    iput-object v1, v4, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->l:Ljava/lang/String;

    .line 145
    invoke-virtual {v4}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object v1

    const-string v2, "SmsTransportInfo.Builder\u2026ss))\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    return-object v1

    .line 146
    :cond_12
    new-instance v1, Landroid/database/SQLException;

    invoke-direct {v1, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s(Lcom/truecaller/messaging/data/types/Message$b;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public u()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/v;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w1()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/v;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
