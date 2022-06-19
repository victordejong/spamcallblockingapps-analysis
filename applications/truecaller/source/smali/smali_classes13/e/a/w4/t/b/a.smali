.class public final Le/a/w4/t/b/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Le/a/l4/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/t/b/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/w4/t/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:Le/a/o5/f0;

.field public final e:Le/a/w4/t/b/b;

.field public final f:Le/a/b0/e/l;

.field public final g:Le/a/a/i0;

.field public final h:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/l4/q;

.field public final j:Le/a/d/f;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/w4/t/b/b;Le/a/b0/e/l;Le/a/a/i0;Le/a/r2/f;Le/a/l4/q;Le/a/d/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/f0;",
            "Le/a/w4/t/b/b;",
            "Le/a/b0/e/l;",
            "Le/a/a/i0;",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;",
            "Le/a/l4/q;",
            "Le/a/d/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceValuesProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Le/a/w4/t/b/a;->d:Le/a/o5/f0;

    iput-object p2, p0, Le/a/w4/t/b/a;->e:Le/a/w4/t/b/b;

    iput-object p3, p0, Le/a/w4/t/b/a;->f:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/w4/t/b/a;->g:Le/a/a/i0;

    iput-object p5, p0, Le/a/w4/t/b/a;->h:Le/a/r2/f;

    iput-object p6, p0, Le/a/w4/t/b/a;->i:Le/a/l4/q;

    iput-object p7, p0, Le/a/w4/t/b/a;->j:Le/a/d/f;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/a/w4/t/b/a;->a:Landroid/os/Handler;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/w4/t/b/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public I1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->e()V

    .line 2
    iget-object v0, p0, Le/a/w4/t/b/a;->d:Le/a/o5/f0;

    const-string v1, "com.truecaller.datamanager.STATUSES_CHANGED"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Le/a/o5/f0;->e(Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/w4/t/b/a;->c:Z

    .line 4
    invoke-virtual {p0}, Le/a/w4/t/b/a;->g()V

    return-void
.end method

.method public Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Le/a/w4/t/b/a;->d:Le/a/o5/f0;

    invoke-interface {v0, p0}, Le/a/o5/f0;->h(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/a/w4/t/b/a;->c:Z

    .line 4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->hashCode()I

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/t/b/a;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->g2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/w4/t/b/a;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->C1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/w4/t/b/a;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public varargs b([Ljava/lang/String;)Le/a/l4/e;
    .locals 10

    const-string v0, "normalizedPhoneNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Le/a/w4/t/b/a;->d(Ljava/lang/String;)Le/a/l4/e;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    sget-object v0, Le/a/l4/p;->a:Le/a/l4/e;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Le/a/l4/e$a;

    const-string v4, ""

    invoke-direct {v0, v4}, Le/a/l4/e$a;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Availability;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/Availability$b;

    move-result-object v4

    sget-object v5, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->UNKNOWN:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    invoke-virtual {v4, v5}, Lcom/truecaller/api/services/presence/v1/models/Availability$b;->a(Lcom/truecaller/api/services/presence/v1/models/Availability$Status;)Lcom/truecaller/api/services/presence/v1/models/Availability$b;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 6
    iput-object v4, v0, Le/a/l4/e$a;->a:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 7
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Flash;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/Flash$b;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/presence/v1/models/Flash;

    invoke-static {v5, v2}, Lcom/truecaller/api/services/presence/v1/models/Flash;->access$100(Lcom/truecaller/api/services/presence/v1/models/Flash;Z)V

    .line 10
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 11
    iput-object v4, v0, Le/a/l4/e$a;->b:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 12
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Voip;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/Voip$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/truecaller/api/services/presence/v1/models/Voip$b;->a(Z)Lcom/truecaller/api/services/presence/v1/models/Voip$b;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 13
    iput-object v4, v0, Le/a/l4/e$a;->e:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 14
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/InstantMessaging$b;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 16
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    invoke-static {v5, v3}, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;->access$600(Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;Z)V

    .line 17
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 18
    iput-object v4, v0, Le/a/l4/e$a;->d:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 19
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/Payment;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/Payment$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 21
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/presence/v1/models/Payment;

    invoke-static {v5, v2}, Lcom/truecaller/api/services/presence/v1/models/Payment;->access$100(Lcom/truecaller/api/services/presence/v1/models/Payment;Z)V

    .line 22
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/presence/v1/models/Payment;

    .line 23
    iput-object v4, v0, Le/a/l4/e$a;->f:Lcom/truecaller/api/services/presence/v1/models/Payment;

    .line 24
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/CallContext$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/truecaller/api/services/presence/v1/models/CallContext$b;->a(Z)Lcom/truecaller/api/services/presence/v1/models/CallContext$b;

    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 25
    iput-object v4, v0, Le/a/l4/e$a;->h:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 26
    invoke-static {}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->newBuilder()Lcom/truecaller/api/services/presence/v1/models/VideoCallerID$b;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 28
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    invoke-static {v5, v3}, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;->access$100(Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;Z)V

    .line 29
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 30
    iput-object v3, v0, Le/a/l4/e$a;->j:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 31
    invoke-virtual {v0}, Le/a/l4/e$a;->a()Le/a/l4/e;

    move-result-object v0

    sput-object v0, Le/a/l4/p;->a:Le/a/l4/e;

    .line 32
    :cond_2
    sget-object v0, Le/a/l4/p;->a:Le/a/l4/e;

    .line 33
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_a

    aget-object v4, p1, v2

    .line 34
    invoke-virtual {p0, v4}, Le/a/w4/t/b/a;->d(Ljava/lang/String;)Le/a/l4/e;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 35
    iget-object v5, v4, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-nez v5, :cond_3

    goto :goto_3

    .line 36
    :cond_3
    iget-object v6, v0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v5, :cond_6

    .line 37
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v7

    sget-object v8, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-eq v7, v8, :cond_4

    .line 38
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v7

    sget-object v9, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-eq v7, v9, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    .line 39
    invoke-virtual {v6}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v6

    if-ne v6, v8, :cond_5

    goto :goto_1

    .line 40
    :cond_5
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-object v0, v4

    .line 41
    :cond_6
    :goto_1
    iget-object v4, v0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    .line 42
    invoke-virtual {v4}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-object v4, v1

    :goto_2
    sget-object v5, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-ne v4, v5, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    :goto_4
    return-object v0
.end method

.method public varargs c([Ljava/lang/String;)Le/a/l4/c$a;
    .locals 2

    const-string v0, "normalizedNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->g()V

    .line 3
    new-instance v0, Le/a/w4/t/b/a$a;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Le/a/w4/t/b/a$a;-><init>(Le/a/w4/t/b/a;[Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Le/a/l4/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/t/b/a;->e:Le/a/w4/t/b/b;

    invoke-virtual {v0, p1}, Le/a/w4/t/b/b;->c(Ljava/lang/String;)Le/a/l4/e;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->hashCode()I

    .line 2
    iget-object v0, p0, Le/a/w4/t/b/a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/w4/t/b/a$a;

    .line 4
    invoke-virtual {p0}, Le/a/w4/t/b/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v1, Le/a/w4/t/b/a$a;->b:[Ljava/lang/String;

    .line 6
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Le/a/w4/t/b/a;->b([Ljava/lang/String;)Le/a/l4/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/w4/t/b/a$a;->ki(Le/a/l4/e;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Le/a/w4/t/b/a$a;->ki(Le/a/l4/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/w4/t/b/a;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/w4/t/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w4/t/b/a;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w4/t/b/a;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/w4/t/b/a;->j:Le/a/d/f;

    invoke-interface {v0}, Le/a/d/f;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/t/b/a;->i:Le/a/l4/q;

    .line 3
    iget-object v0, v0, Le/a/l4/q;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    sget v1, Le/a/l4/r;->e:I

    const-wide/16 v1, 0x1f4

    const-string v3, "presence_initial_delay"

    invoke-interface {v0, v3, v1, v2}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Le/a/w4/t/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v2, p0, Le/a/w4/t/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->e()V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/w4/t/b/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/t/b/a;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/w4/t/b/a$a;

    .line 5
    invoke-virtual {v3}, Le/a/w4/t/b/a$a;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Le/a/w4/t/b/a$a;

    .line 9
    iget-object v2, v2, Le/a/w4/t/b/a$a;->b:[Ljava/lang/String;

    .line 10
    invoke-static {v2}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->hashCode()I

    .line 14
    iget-object v1, p0, Le/a/w4/t/b/a;->h:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l4/h;

    invoke-interface {v1, v0}, Le/a/l4/h;->e(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->g()V

    .line 15
    iget-object v0, p0, Le/a/w4/t/b/a;->i:Le/a/l4/q;

    .line 16
    iget-object v0, v0, Le/a/l4/q;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    .line 17
    sget-wide v1, Le/a/l4/r;->a:J

    const-string v3, "presence_interval"

    .line 18
    invoke-interface {v0, v3, v1, v2}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 19
    sget-wide v2, Le/a/l4/r;->b:J

    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 21
    iget-object v2, p0, Le/a/w4/t/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v2, p0, Le/a/w4/t/b/a;->a:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->hashCode()I

    :goto_2
    return-void
.end method
