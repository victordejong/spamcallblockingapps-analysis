.class public final Le/a/h/g/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/g$a;->a(Ljava/lang/Object;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/g/g$a;


# direct methods
.method public constructor <init>(Le/a/h/g/g$a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/g$a$a;->a:Le/a/h/g/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/h/g/g$a$a;->a:Le/a/h/g/g$a;

    iget-object v0, v0, Le/a/h/g/g$a;->a:Le/a/h/g/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, v0, Le/a/h/g/g;->l:Le/a/p5/j0;

    const v2, 0x7f12094c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    .line 4
    iget-object p1, v0, Le/a/h/g/g;->w:Le/a/k0/i/a;

    sget-object v0, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->RECORDING_LIST:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAction;->DELETE:Lcom/truecaller/callrecording/analytics/RecordingAction;

    invoke-interface {p1, v0, v1}, Le/a/k0/i/a;->e(Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;Lcom/truecaller/callrecording/analytics/RecordingAction;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Le/a/h/g/g;->l:Le/a/p5/j0;

    const v3, 0x7f12094b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Le/a/e/a2;->g0(Le/a/p5/j0;ILjava/lang/CharSequence;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method
