.class public final synthetic Le/a/q4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/q4/o0;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/l;->a:Le/a/q4/o0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Le/a/q4/l;->a:Le/a/q4/o0;

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Boolean;

    .line 1
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Le/a/q4/m0;

    invoke-virtual {v1}, Le/a/q4/o0;->Mj()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Le/a/q4/o0;->t:Lcom/truecaller/data/entity/Contact;

    .line 2
    iget-object v3, v1, Le/a/q4/o0;->g:Le/a/p5/c0;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f120eac

    invoke-interface {v3, v9, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v8, v1, Le/a/q4/o0;->g:Le/a/p5/c0;

    new-array v9, v10, [Ljava/lang/Object;

    const v11, 0x7f120e88

    invoke-interface {v8, v11, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4
    new-instance v9, Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    const/4 v11, 0x2

    new-array v13, v11, [I

    fill-array-data v13, :array_0

    new-array v14, v11, [Ljava/lang/String;

    aput-object v3, v14, v10

    aput-object v8, v14, v7

    new-array v15, v7, [I

    const v3, 0x7f0a096b

    aput v3, v15, v10

    new-array v3, v7, [I

    const v8, 0x7f08050a

    aput v8, v3, v10

    const v12, 0x7f0d025a

    const/16 v17, 0x0

    move-object v11, v9

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Lcom/truecaller/referral/BulkSmsView$PromoLayout;-><init>(I[I[Ljava/lang/String;[I[I[I)V

    .line 5
    iget-object v8, v1, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iget-object v1, v1, Le/a/q4/o0;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v10, v7

    :cond_0
    move-object v7, v9

    move-object v9, v1

    .line 7
    invoke-interface/range {v4 .. v10}, Le/a/q4/m0;->pn(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a1245
        0x7f0a10de
    .end array-data
.end method
