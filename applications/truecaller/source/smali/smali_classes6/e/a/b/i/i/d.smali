.class public final Le/a/b/i/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/i/i/a;
.implements Lq3/a/i0;


# instance fields
.field public final a:Le/a/b/i/j/a/a;

.field public final b:Le/a/b/i/i/e/c;

.field public final c:Le/a/b/i/i/e/a;

.field public final d:Le/a/b/i/h/b;

.field public final e:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/b/i/j/a/a;Le/a/b/i/i/e/c;Le/a/b/i/i/e/a;Le/a/b/i/h/b;Ls1/w/f;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callMeBackDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callMeBackNumberStatusStubManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callMeBackRequestStubManagerImpl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizCallMeBackAnalyticHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/i/i/d;->a:Le/a/b/i/j/a/a;

    iput-object p2, p0, Le/a/b/i/i/d;->b:Le/a/b/i/i/e/c;

    iput-object p3, p0, Le/a/b/i/i/d;->c:Le/a/b/i/i/e/a;

    iput-object p4, p0, Le/a/b/i/i/d;->d:Le/a/b/i/h/b;

    iput-object p5, p0, Le/a/b/i/i/d;->e:Ls1/w/f;

    return-void
.end method

.method public static final a(Le/a/b/i/i/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 2
    sget-object p4, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;->PACS:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;->FACS:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    :goto_0
    move-object v1, p4

    .line 3
    iget-object v0, p0, Le/a/b/i/i/d;->d:Le/a/b/i/h/b;

    sget-object v2, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;->HIDE_CALL_ME_BACK:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    invoke-static {p1}, Le/a/n/g0;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Le/a/b/i/h/b;->a(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/i/i/d;->e:Ls1/w/f;

    return-object v0
.end method
