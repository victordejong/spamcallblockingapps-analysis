.class public final Le/a/a/c/g4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g4;->M2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ls1/k<",
        "+",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "+",
        "Le/a/o5/o0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/g4;

.field public final synthetic b:Lcom/truecaller/messaging/data/types/Draft;


# direct methods
.method public constructor <init>(Le/a/a/c/g4;Lcom/truecaller/messaging/data/types/Draft;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g4$b;->a:Le/a/a/c/g4;

    iput-object p2, p0, Le/a/a/c/g4$b;->b:Lcom/truecaller/messaging/data/types/Draft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ls1/k;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v0, Le/a/a/c/g4$b;->b:Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Draft$b;->f()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/messaging/data/types/Draft$b;->a(Ljava/util/Collection;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 8
    iget-object v3, v0, Le/a/a/c/g4$b;->a:Le/a/a/c/g4;

    .line 9
    invoke-virtual {v3}, Le/a/a/c/g4;->Mj()I

    move-result v3

    .line 10
    iput v3, v2, Lcom/truecaller/messaging/data/types/Draft$b;->o:I

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v2

    .line 12
    iget-object v3, v0, Le/a/a/c/g4$b;->a:Le/a/a/c/g4;

    .line 13
    invoke-virtual {v3}, Le/a/a/c/g4;->Lj()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    .line 14
    invoke-virtual {v2, v4, v3}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    const-string v3, "draft.buildUpon()\n      \u2026N, getAnalyticsContext())"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v3, v0, Le/a/a/c/g4$b;->a:Le/a/a/c/g4;

    .line 16
    iget-object v3, v3, Le/a/a/c/g4;->p0:Le/a/a/c/r3;

    .line 17
    iget-object v4, v0, Le/a/a/c/g4$b;->b:Lcom/truecaller/messaging/data/types/Draft;

    check-cast v3, Le/a/a/c/s3;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "draft"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "entity"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v6, v3, Le/a/a/c/s3;->c:Le/a/a/w0/a;

    .line 20
    iget-object v7, v4, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    .line 21
    iget-object v10, v4, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v5, "draft.participants"

    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v11, v8, [Lcom/truecaller/messaging/data/types/BinaryEntity;

    const/4 v13, 0x0

    aput-object v1, v11, v13

    .line 22
    iget-boolean v12, v4, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    const/4 v9, 0x2

    const-string v8, "conversation"

    .line 23
    invoke-interface/range {v6 .. v12}, Le/a/a/w0/a;->i(Ljava/lang/String;Ljava/lang/String;I[Lcom/truecaller/data/entity/messaging/Participant;[Lcom/truecaller/messaging/data/types/BinaryEntity;Z)V

    .line 24
    iget-object v14, v3, Le/a/a/c/s3;->b:Le/a/q2/i0;

    .line 25
    iget-object v3, v4, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    const-string v6, "draft.analyticsId"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v15, "UserInput"

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v1

    .line 28
    invoke-interface/range {v14 .. v19}, Le/a/q2/i0;->q(Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;ZLjava/lang/String;)V

    .line 29
    iget-object v1, v0, Le/a/a/c/g4$b;->a:Le/a/a/c/g4;

    .line 30
    iget-object v1, v1, Le/a/a/c/g4;->J:Le/a/a/k/t;

    .line 31
    iget-object v3, v0, Le/a/a/c/g4$b;->b:Lcom/truecaller/messaging/data/types/Draft;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v1, v2, v3, v13, v13}, Le/a/a/k/t;->b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->g()V

    :cond_0
    return-void
.end method
