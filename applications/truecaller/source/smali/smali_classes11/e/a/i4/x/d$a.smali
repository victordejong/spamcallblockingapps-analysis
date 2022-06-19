.class public Le/a/i4/x/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i4/x/d;-><init>(Landroid/content/Context;Le/a/b0/q/y;Le/a/o5/f0;Le/a/i4/e;Le/a/q5/d;Le/a/q5/k/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i4/x/d;


# direct methods
.method public constructor <init>(Le/a/i4/x/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i4/x/d$a;->a:Le/a/i4/x/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string p1, "ids"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 2
    array-length v0, p1

    if-lez v0, :cond_3

    .line 3
    iget-object v0, p0, Le/a/i4/x/d$a;->a:Le/a/i4/x/d;

    .line 4
    iget-object v0, v0, Le/a/i4/x/d;->g:Ljava/util/LinkedHashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/notifications/enhancing/SourcedContact;

    .line 7
    array-length v3, p1

    move v4, p2

    :goto_1
    if-ge v4, v3, :cond_0

    aget-wide v5, p1, v4

    .line 8
    iget-object v7, v2, Lcom/truecaller/notifications/enhancing/SourcedContact;->c:Ljava/lang/Long;

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    .line 10
    iget-object v1, p0, Le/a/i4/x/d$a;->a:Le/a/i4/x/d;

    .line 11
    iget-object v2, v2, Lcom/truecaller/notifications/enhancing/SourcedContact;->f:Ljava/lang/String;

    .line 12
    iget-object v1, v1, Le/a/i4/x/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iget-object p1, p0, Le/a/i4/x/d$a;->a:Le/a/i4/x/d;

    .line 15
    invoke-virtual {p1}, Le/a/i4/x/d;->e()V

    :cond_4
    return-void
.end method
