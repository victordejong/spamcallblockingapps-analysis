.class public final Le/a/b/i/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/i/h/b;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b/i/h/b;->a:Le/a/q2/a;

    new-instance v7, Le/a/b/i/h/a;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Le/a/b/i/h/a;-><init>(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
