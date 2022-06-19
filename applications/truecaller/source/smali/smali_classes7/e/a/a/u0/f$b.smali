.class public final Le/a/a/u0/f$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/u0/f;->a(Ljava/lang/Long;Ls1/z/b/l;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/h/m/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/database/Cursor;

.field public final synthetic c:Le/a/a/u0/f;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/a/u0/f;)V
    .locals 0

    iput-object p1, p0, Le/a/a/u0/f$b;->b:Landroid/database/Cursor;

    iput-object p2, p0, Le/a/a/u0/f$b;->c:Le/a/a/u0/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/c/h/m/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/u0/f$b;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 2
    iget-object v1, v0, Le/a/a/u0/f$b;->b:Landroid/database/Cursor;

    check-cast v1, Le/a/a/g/j0/q;

    .line 3
    invoke-interface {v1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    const-string v4, "message"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Le/a/a/u0/f$b;->c:Le/a/a/u0/f;

    .line 4
    iget-object v4, v4, Le/a/a/u0/f;->c:Lo3/a;

    .line 5
    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "messageUtil.get()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Le/a/a/i1/b;

    const-string v5, "$this$toImportantMessageUiModel"

    .line 6
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "utils"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v5, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v6, "participant"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v6, v5, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    .line 9
    iget-object v5, v5, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 10
    invoke-static {v6, v5}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v19

    .line 11
    new-instance v5, Le/a/c/h/m/a;

    .line 12
    iget-wide v8, v1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 13
    invoke-static {v1}, Le/a/c/p/a;->H0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v10

    .line 14
    iget-object v6, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v11, v6, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v6, v6, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-static {v11, v12, v6, v3}, Le/a/e/a2;->A(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-interface {v4, v1}, Le/a/a/i1/b;->z(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-static {v1}, Le/a/c/p/a;->z1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v15

    .line 17
    iget-wide v12, v1, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 18
    invoke-interface {v4, v1}, Le/a/a/i1/b;->o(Lcom/truecaller/messaging/data/types/Message;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 19
    iget v4, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    move-object/from16 v17, v2

    goto :goto_1

    .line 20
    :cond_0
    new-instance v4, Le/a/c/h/m/d$a;

    invoke-direct {v4, v2, v3}, Le/a/c/h/m/d$a;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 21
    :cond_1
    new-instance v4, Le/a/c/h/m/d$b;

    invoke-direct {v4, v2, v3}, Le/a/c/h/m/d$b;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 22
    :cond_2
    new-instance v4, Le/a/c/h/m/d$c;

    invoke-direct {v4, v2, v3}, Le/a/c/h/m/d$c;-><init>(Ljava/lang/String;I)V

    :goto_0
    move-object/from16 v17, v4

    .line 23
    :goto_1
    invoke-static {v1}, Le/a/c/p/a;->H0(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Le/m/d/y/n;->s1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, v4}, Ls1/f0/w;->m0(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object/from16 v18, v2

    .line 25
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v3, "participant.normalizedAddress"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v4, "this.date"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v22

    move-object v7, v5

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .line 28
    invoke-direct/range {v7 .. v22}, Le/a/c/h/m/a;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLandroid/graphics/drawable/Drawable;Le/a/c/h/m/d;Ljava/lang/String;ILjava/lang/String;Lw3/b/a/b;Z)V

    move-object v2, v5

    goto :goto_2

    .line 29
    :cond_4
    iget-object v1, v0, Le/a/a/u0/f$b;->b:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    return-object v2
.end method
