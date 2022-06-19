.class public final Le/a/r/z/l$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/l;->ki(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/z/l;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Le/a/r/z/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r/z/l$b;->a:Le/a/r/z/l;

    iput p2, p0, Le/a/r/z/l$b;->b:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/r/z/l$b;->a:Le/a/r/z/l;

    invoke-virtual {p1}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object p1

    sget-object v0, Lcom/truecaller/wizard/verification/CallState;->OFF_HOOK:Lcom/truecaller/wizard/verification/CallState;

    iget v1, p0, Le/a/r/z/l$b;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Le/a/r/z/s;

    invoke-virtual {p1, v0, p2, v1}, Le/a/r/z/s;->Pj(Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/r/z/l$b;->a:Le/a/r/z/l;

    invoke-virtual {p1}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object p1

    sget-object v0, Lcom/truecaller/wizard/verification/CallState;->RINGING:Lcom/truecaller/wizard/verification/CallState;

    iget v1, p0, Le/a/r/z/l$b;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Le/a/r/z/s;

    invoke-virtual {p1, v0, p2, v1}, Le/a/r/z/s;->Pj(Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
