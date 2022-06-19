.class public final Le/a/q2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/j;


# instance fields
.field public final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public c:I

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public final g:Le/a/p5/c;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/p5/c;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventTracker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/l;->g:Le/a/p5/c;

    iput-object p2, p0, Le/a/q2/l;->h:Lo3/a;

    iput-object p3, p0, Le/a/q2/l;->i:Lo3/a;

    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Class;

    const/4 p2, 0x0

    .line 2
    const-class p3, Lcom/truecaller/aftercall/AfterCallPromotionActivity;

    aput-object p3, p1, p2

    .line 3
    const-class p2, Lcom/truecaller/ui/CallMeBackActivity;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 4
    const-class v0, Lcom/truecaller/ui/AfterClipboardSearchActivity;

    aput-object v0, p1, p2

    const/4 p2, 0x3

    .line 5
    const-class v0, Le/a/g5/l;

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 6
    const-class v0, Lcom/truecaller/notifications/enhancing/SourcedContactListActivity;

    aput-object v0, p1, p2

    const/4 p2, 0x5

    .line 7
    const-class v0, Lcom/truecaller/ui/clicktocall/CallConfirmationActivity;

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 8
    const-class v0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;

    aput-object v0, p1, p2

    .line 9
    iput-object p1, p0, Le/a/q2/l;->a:[Ljava/lang/Class;

    const-string p1, "com.truecaller.flashsdk"

    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 11
    iput-object p1, p0, Le/a/q2/l;->b:[Ljava/lang/String;

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 13
    iput-wide p1, p0, Le/a/q2/l;->d:J

    .line 14
    iput-boolean p3, p0, Le/a/q2/l;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/l;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->b()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/q2/l;->d:J

    sub-long/2addr v0, v2

    const-wide v2, 0x45d964b800L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Landroid/app/Activity;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/q2/l;->b:[Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v3, :cond_2

    aget-object v7, v1, v5

    .line 5
    invoke-static {v0, v7, v4, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    goto :goto_5

    .line 11
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "."

    invoke-static {v1, v3, v4, v6}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_6

    :cond_8
    :goto_5
    move v0, v4

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_8

    .line 13
    :cond_9
    iget-object v0, p0, Le/a/q2/l;->a:[Ljava/lang/Class;

    .line 14
    array-length v1, v0

    move v3, v4

    :goto_7
    if-ge v3, v1, :cond_b

    aget-object v5, v0, v3

    .line 15
    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    move v4, v2

    :goto_8
    return v4
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Le/a/q2/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const-string v1, "AppUserInteraction.Context"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UUID.randomUUID().toString()"

    .line 5
    invoke-static {v2}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging appOpen for activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with context: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and id: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 7
    sget-object p1, Le/a/l5/a/j1;->f:Lorg/apache/avro/Schema;

    new-instance p1, Le/a/l5/a/j1$b;

    invoke-direct {p1, v5}, Le/a/l5/a/j1$b;-><init>(Le/a/l5/a/j1$a;)V

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {p1, v3, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v0, p1, Le/a/l5/a/j1$b;->a:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    const/4 v6, 0x1

    aput-boolean v6, v3, v4

    .line 11
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p1, v3, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 12
    iput-object v1, p1, Le/a/l5/a/j1$b;->b:Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v6, v3, v4

    .line 14
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {p1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 15
    iput-object v2, p1, Le/a/l5/a/j1$b;->c:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v3

    aput-boolean v6, v3, v4

    .line 17
    invoke-virtual {p1}, Le/a/l5/a/j1$b;->a()Le/a/l5/a/j1;

    move-result-object p1

    .line 18
    iput-object v2, p0, Le/a/q2/l;->f:Ljava/lang/String;

    .line 19
    iget-object v2, p0, Le/a/q2/l;->h:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-interface {v2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 20
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string p1, "View"

    .line 21
    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_1
    if-nez v6, :cond_4

    const-string p1, "Context"

    .line 23
    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_4
    iget-object p1, p0, Le/a/q2/l;->i:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Le/a/q2/a;

    const-string v2, "AppVisited"

    const-string v6, "eventBuilder.build()"

    move-object v3, v5

    .line 25
    invoke-static/range {v2 .. v7}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/l;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->b()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/q2/l;->d:J

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le/a/q2/l;->e:Z

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/q2/l;->g:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->b()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/q2/l;->d:J

    sub-long/2addr v0, v2

    const-wide v2, 0x12a05f200L

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Le/a/q2/l;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3
    :goto_1
    iget v3, p0, Le/a/q2/l;->c:I

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/q2/l;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/q2/l;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Le/a/q2/l;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Le/a/q2/l;->c(Landroid/app/Activity;)V

    :cond_2
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Le/a/q2/l;->d(Z)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/q2/l;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/q2/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/q2/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Le/a/q2/l;->c(Landroid/app/Activity;)V

    .line 3
    :cond_1
    iget p1, p0, Le/a/q2/l;->c:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Le/a/q2/l;->c:I

    .line 4
    invoke-virtual {p0, v0}, Le/a/q2/l;->d(Z)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/q2/l;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Le/a/q2/l;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Le/a/q2/l;->c:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/q2/l;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging appClose for activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    sget-object p1, Le/a/l5/a/f0;->d:Lorg/apache/avro/Schema;

    new-instance p1, Le/a/l5/a/f0$b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Le/a/l5/a/f0$b;-><init>(Le/a/l5/a/f0$a;)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p1, v2, v0}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p1, Le/a/l5/a/f0$b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {p1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v0

    const/4 v2, 0x1

    aput-boolean v2, v0, v3

    .line 9
    invoke-virtual {p1}, Le/a/l5/a/f0$b;->a()Le/a/l5/a/f0;

    move-result-object p1

    .line 10
    iput-object v1, p0, Le/a/q2/l;->f:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Le/a/q2/l;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_1
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Le/a/q2/l;->d(Z)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Le/a/q2/l;->e:Z

    return-void
.end method
