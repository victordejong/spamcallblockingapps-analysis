.class public final Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/transport/im/ImTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/truecaller/data/entity/messaging/Participant;

.field public n:J

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/QuickAction;",
            ">;"
        }
    .end annotation
.end field

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->b:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->h:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/truecaller/messaging/transport/im/ImTransportInfo;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v24, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 2
    iget-wide v2, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->a:J

    .line 3
    iget-object v4, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->b:Ljava/lang/String;

    .line 4
    iget v5, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->c:I

    .line 5
    iget v6, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->d:I

    .line 6
    iget v7, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->e:I

    .line 7
    iget v8, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->f:I

    .line 8
    iget v9, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->g:I

    .line 9
    iget v10, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->i:I

    .line 10
    iget v11, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->j:I

    .line 11
    iget-wide v12, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->k:J

    .line 12
    iget-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->l:Ljava/util/List;

    const-string v14, "null cannot be cast to non-null type kotlin.Array<T>"

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v1, :cond_0

    move-wide/from16 v25, v12

    new-array v12, v15, [Lcom/truecaller/messaging/data/types/Reaction;

    .line 13
    invoke-interface {v1, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/truecaller/messaging/data/types/Reaction;

    move-object/from16 v20, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v25, v12

    move-object/from16 v20, v16

    .line 14
    :goto_0
    iget-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->r:Ljava/util/List;

    if-eqz v1, :cond_1

    new-array v12, v15, [Lcom/truecaller/messaging/data/types/QuickAction;

    .line 15
    invoke-interface {v1, v12}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/truecaller/messaging/data/types/QuickAction;

    move-object/from16 v27, v1

    goto :goto_1

    :cond_1
    move-object/from16 v27, v16

    .line 16
    :goto_1
    iget v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->s:I

    move/from16 v21, v1

    .line 17
    iget v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->h:I

    move/from16 v22, v1

    .line 18
    iget-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->m:Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 v23, v1

    .line 19
    iget-wide v12, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->n:J

    move-wide v15, v12

    .line 20
    iget v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->o:I

    move/from16 v17, v1

    .line 21
    iget v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->p:I

    move/from16 v18, v1

    .line 22
    iget-object v1, v0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->q:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v1, v24

    move-wide/from16 v12, v25

    move-object/from16 v14, v20

    move-object/from16 v20, v27

    .line 23
    invoke-direct/range {v1 .. v23}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    return-object v24
.end method

.method public final b(Ljava/lang/String;)Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;
    .locals 1

    const-string v0, "rawId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/transport/im/ImTransportInfo$a;->b:Ljava/lang/String;

    return-object p0
.end method
