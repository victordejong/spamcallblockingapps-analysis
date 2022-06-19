.class public final Le/a/w/a/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w/a/f;-><init>(Le/a/j5/a/a;Le/a/p5/c0;Le/a/w/b/b;Le/a/w/c/a;Le/a/q2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/w/a/f;


# direct methods
.method public constructor <init>(Le/a/w/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/w/a/f$a;->b:Le/a/w/a/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/w/a/f$a;->b:Le/a/w/a/f;

    .line 2
    iget-object v0, v0, Le/a/w/a/f;->g:Le/a/w/b/b;

    const-string v1, "referralLink"

    .line 3
    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Le/a/w/a/f$a;->b:Le/a/w/a/f;

    .line 6
    iget-object v3, v3, Le/a/w/a/f;->f:Le/a/p5/c0;

    .line 7
    sget v4, Lcom/truecaller/referral/R$string;->referral_share_sheet_share_message:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-interface {v3, v4, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026re_message, referralLink)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ReferralShareSheet shouldn\'t be shown if the referral link doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
