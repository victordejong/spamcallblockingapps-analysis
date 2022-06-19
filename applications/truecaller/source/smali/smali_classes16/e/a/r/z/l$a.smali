.class public final Le/a/r/z/l$a;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/l;->U9()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/z/l;


# direct methods
.method public constructor <init>(Le/a/r/z/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r/z/l$a;->a:Le/a/r/z/l;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r/z/l$a;->a:Le/a/r/z/l;

    invoke-virtual {p1}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object v0

    sget-object v1, Lcom/truecaller/wizard/verification/CallState;->OFF_HOOK:Lcom/truecaller/wizard/verification/CallState;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->L0(Le/a/r/z/r;Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/r/z/l$a;->a:Le/a/r/z/l;

    invoke-virtual {p1}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object v0

    sget-object v1, Lcom/truecaller/wizard/verification/CallState;->RINGING:Lcom/truecaller/wizard/verification/CallState;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->L0(Le/a/r/z/r;Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
