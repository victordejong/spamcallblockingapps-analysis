.class public final Le/a/c/a/c/f/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "Ljava/lang/Integer;",
        "Lcom/truecaller/insights/ui/models/AdapterItem$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/c/f/x;

.field public final synthetic b:Landroidx/activity/result/ActivityResultRegistry;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/x;Landroidx/activity/result/ActivityResultRegistry;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/t;->a:Le/a/c/a/c/f/x;

    iput-object p2, p0, Le/a/c/a/c/f/t;->b:Landroidx/activity/result/ActivityResultRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    iget-object v1, v0, Le/a/c/a/c/f/t;->a:Le/a/c/a/c/f/x;

    iget-object v2, v0, Le/a/c/a/c/f/t;->b:Landroidx/activity/result/ActivityResultRegistry;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "registry"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, v1, Le/a/c/a/c/f/x;->c:Le/a/c/b/h;

    invoke-interface {v3}, Le/a/c/b/h;->c()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 5
    iget-object v2, v1, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    invoke-interface {v2}, Le/a/c/c0/o;->v0()V

    .line 6
    iget-object v1, v1, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    invoke-interface {v1, v5}, Le/a/c/c0/o;->v(Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, v1, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    invoke-interface {v3}, Le/a/c/c0/o;->i0()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, v1, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    invoke-interface {v3}, Le/a/c/c0/o;->K()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-interface {v3, v5}, Le/a/c/c0/o;->v(Z)V

    .line 9
    new-instance v4, Lcom/truecaller/insights/ui/models/AdapterItem$a;

    const-wide/16 v7, 0x0

    .line 10
    sget v10, Lcom/truecaller/insights/ui/R$string;->switch_to_smarter_sms_experience:I

    .line 11
    sget v11, Lcom/truecaller/insights/ui/R$string;->easily_track_your_transactions_and_reminders:I

    .line 12
    sget v12, Lcom/truecaller/insights/ui/R$string;->switch_now:I

    const/4 v13, 0x0

    .line 13
    sget v15, Lcom/truecaller/insights/ui/R$drawable;->background_smart_sms_banner:I

    .line 14
    sget v9, Lcom/truecaller/insights/ui/R$drawable;->smart_sms_banner:I

    .line 15
    sget-object v14, Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;->DEFAULT_SMART_SMS:Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;

    .line 16
    new-instance v3, Le/a/c/a/c/f/w;

    invoke-direct {v3, v1, v2}, Le/a/c/a/c/f/w;-><init>(Le/a/c/a/c/f/x;Landroidx/activity/result/ActivityResultRegistry;)V

    const/16 v17, 0x0

    .line 17
    new-instance v2, Le/a/c/a/c/f/u;

    invoke-direct {v2, v1}, Le/a/c/a/c/f/u;-><init>(Le/a/c/a/c/f/x;)V

    const/16 v19, 0x1

    move-object v6, v4

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    .line 18
    invoke-direct/range {v6 .. v19}, Lcom/truecaller/insights/ui/models/AdapterItem$a;-><init>(JIIIILjava/lang/Integer;Lcom/truecaller/insights/ui/models/AdapterItem$BannerType;ILs1/z/b/l;Ls1/z/b/a;Ls1/z/b/a;I)V

    :goto_0
    return-object v4
.end method
