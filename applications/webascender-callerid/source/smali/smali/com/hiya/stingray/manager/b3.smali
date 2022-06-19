.class public Lcom/hiya/stingray/manager/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/b3$c;,
        Lcom/hiya/stingray/manager/b3$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hiya/stingray/manager/b3$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/hiya/stingray/manager/b3$b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/hiya/stingray/manager/b3$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/b3$b;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/manager/b3;->c:Lcom/hiya/stingray/manager/b3$b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hiya/stingray/manager/b3$c;

    .line 1
    new-instance v8, Lcom/hiya/stingray/manager/b3$c;

    const v1, 0x7f110232

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/hiya/stingray/manager/b3$a;->f:Lcom/hiya/stingray/manager/b3$a;

    const-string v2, "caller_id"

    const v3, 0x7f110233

    const/4 v4, 0x2

    const/16 v5, 0x49

    move-object v1, v8

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/b3$c;-><init>(Ljava/lang/String;IICLjava/lang/Integer;Lkotlin/w/b/l;)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/b3$c;

    const-string v10, "blocked"

    const v11, 0x7f110230

    const/4 v12, 0x4

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x30

    const/16 v17, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Lcom/hiya/stingray/manager/b3$c;-><init>(Ljava/lang/String;IICLjava/lang/Integer;Lkotlin/w/b/l;ILkotlin/w/c/g;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lcom/hiya/stingray/manager/b3$c;

    const-string v4, "post"

    const v5, 0x7f110237

    const/4 v6, 0x4

    const/16 v7, 0x4d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/hiya/stingray/manager/b3$c;-><init>(Ljava/lang/String;IICLjava/lang/Integer;Lkotlin/w/b/l;ILkotlin/w/c/g;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Lcom/hiya/stingray/manager/b3$c;

    const-string v4, "first_time_id"

    const v5, 0x7f110235

    const/4 v6, 0x2

    const/16 v7, 0x46

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/hiya/stingray/manager/b3$c;-><init>(Ljava/lang/String;IICLjava/lang/Integer;Lkotlin/w/b/l;ILkotlin/w/c/g;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7
    new-instance v1, Lcom/hiya/stingray/manager/b3$c;

    const-string v4, "select_expired"

    const v5, 0x7f110234

    const/16 v7, 0x4f

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/hiya/stingray/manager/b3$c;-><init>(Ljava/lang/String;IICLjava/lang/Integer;Lkotlin/w/b/l;ILkotlin/w/c/g;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 8
    invoke-static {v0}, Lkotlin/s/k;->c([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/hiya/stingray/manager/b3;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/b3;->a:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/b3;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final b()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/b3;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/stingray/util/p;->u()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/b3;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/manager/b3;->b()Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/b3;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lcom/hiya/stingray/manager/b3$c;

    .line 6
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/b3$c;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hiya/stingray/manager/b3;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/b3$c;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/b3$c;->d()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 7
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/b3$c;->b()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/hiya/stingray/manager/b3;->a:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final e(Lcom/hiya/stingray/manager/b3$c;)Z
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/b3;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/manager/b3;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/m;->d(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/m;->a()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/manager/b3;->b()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/b3$c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
