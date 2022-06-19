.class public final Le/a/h/o0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/e;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/i4/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/i4/q;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationIconHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/o0/e;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/h/o0/e;->c:Le/a/i4/q;

    const-string p1, "notificationPushCallerId"

    .line 2
    iput-object p1, p0, Le/a/h/o0/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/o0/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;)Landroid/content/Intent;
    .locals 10

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/a/v/p/n;->a:Le/a/v/p/n;

    .line 2
    iget-object v2, p0, Le/a/h/o0/e;->b:Landroid/content/Context;

    .line 3
    sget-object v4, Lcom/truecaller/details_view/analytics/SourceType;->CallNotification:Lcom/truecaller/details_view/analytics/SourceType;

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    .line 4
    invoke-static/range {v1 .. v9}, Le/a/v/p/n;->c(Le/a/v/p/n;Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/details_view/analytics/SourceType;ZZLjava/lang/Boolean;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const p2, 0x10008000

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "DetailsViewIntentBuilder\u2026FLAG_ACTIVITY_CLEAR_TASK)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
