.class public Lcom/freshchat/consumer/sdk/j/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/ab$c;,
        Lcom/freshchat/consumer/sdk/j/ab$d;,
        Lcom/freshchat/consumer/sdk/j/ab$b;,
        Lcom/freshchat/consumer/sdk/j/ab$a;
    }
.end annotation


# static fields
.field private static qu:Lcom/freshchat/consumer/sdk/j/ab;

.field private static qv:Lcom/freshchat/consumer/sdk/j/ab;


# instance fields
.field private final hK:Le/m/e/k;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Le/m/e/b;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Le/m/e/b;)V

    return-void
.end method

.method public varargs constructor <init>([Le/m/e/b;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    const-string v1, "fragmentType"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/d/b;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/b;

    move-result-object v0

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/CollectionFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->COLLECTION:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->QUICK_REPLY_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALLBACK_BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/CalendarEventFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->CALENDAR_EVENT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->STATIC_TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/a;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/a;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/UnknownFragment;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/d/b;->b(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/d/a;

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEMPLATE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "templateType"

    invoke-virtual {v0, v1, v2}, Lcom/freshchat/consumer/sdk/d/b;->w(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/d/b$b;

    move-result-object v1

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->values()[Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/freshchat/consumer/sdk/beans/fragment/TemplateType;->getClz()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/freshchat/consumer/sdk/d/b$b;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/d/b$b;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/d/b$b;->gY()V

    new-instance v1, Le/m/e/l;

    invoke-direct {v1}, Le/m/e/l;-><init>()V

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 1
    iput-object v2, v1, Le/m/e/l;->g:Ljava/lang/String;

    .line 2
    iget-object v2, v1, Le/m/e/l;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v2, p1, v3

    .line 4
    iget-object v4, v1, Le/m/e/l;->a:Le/m/e/e0/o;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5, v5}, Le/m/e/e0/o;->c(Le/m/e/b;ZZ)Le/m/e/e0/o;

    move-result-object v2

    iput-object v2, v1, Le/m/e/l;->a:Le/m/e/e0/o;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Le/m/e/k;

    return-void
.end method

.method public static in()Lcom/freshchat/consumer/sdk/j/ab;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ab;->qu:Lcom/freshchat/consumer/sdk/j/ab;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/j/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/ab;->qu:Lcom/freshchat/consumer/sdk/j/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ab;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/ab;->qu:Lcom/freshchat/consumer/sdk/j/ab;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/ab;->qu:Lcom/freshchat/consumer/sdk/j/ab;

    return-object v0
.end method

.method public static io()Lcom/freshchat/consumer/sdk/j/ab;
    .locals 5

    sget-object v0, Lcom/freshchat/consumer/sdk/j/ab;->qv:Lcom/freshchat/consumer/sdk/j/ab;

    if-nez v0, :cond_1

    const-class v0, Lcom/freshchat/consumer/sdk/j/ab;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/j/ab;->qv:Lcom/freshchat/consumer/sdk/j/ab;

    if-nez v1, :cond_0

    new-instance v1, Lcom/freshchat/consumer/sdk/j/ab$d;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/ab$d;-><init>()V

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab;

    const/4 v3, 0x1

    new-array v3, v3, [Le/m/e/b;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Le/m/e/b;)V

    sput-object v2, Lcom/freshchat/consumer/sdk/j/ab;->qv:Lcom/freshchat/consumer/sdk/j/ab;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/ab;->qv:Lcom/freshchat/consumer/sdk/j/ab;

    return-object v0
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Le/m/e/k;

    .line 1
    invoke-virtual {v0, p1, p2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Le/m/e/k;

    invoke-virtual {v0, p1, p2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Le/m/e/k;

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/ab;->hK:Le/m/e/k;

    invoke-virtual {v0, p1, p2}, Le/m/e/k;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
