.class public Le/a/b5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static b:Le/a/b5/e;


# instance fields
.field public final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/truecaller/social/SocialNetworkType;",
            "Lcom/truecaller/social/SocialNetworkProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/truecaller/social/SocialNetworkType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Le/a/b5/e;->a:Ljava/util/EnumMap;

    .line 3
    const-class v0, Lcom/truecaller/social/SocialNetworkProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 4
    new-instance v2, Le/a/b0/q/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Le/a/b0/q/a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 5
    invoke-virtual {v2}, Le/a/b0/q/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Le/a/b0/q/a$b;

    invoke-virtual {v1}, Le/a/b0/q/a$b;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Le/a/b0/q/a$b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/social/SocialNetworkProvider;

    .line 6
    invoke-virtual {v1, p1}, Lcom/truecaller/social/SocialNetworkProvider;->isSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Le/a/b5/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v1}, Lcom/truecaller/social/SocialNetworkProvider;->type()Lcom/truecaller/social/SocialNetworkType;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/social/SocialNetworkProvider;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    new-array v3, v3, [Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/truecaller/social/SocialNetworkProvider;->type()Lcom/truecaller/social/SocialNetworkType;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was redefined"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)Le/a/b5/e;
    .locals 2

    .line 1
    sget-object v0, Le/a/b5/e;->b:Le/a/b5/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/a/b5/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/a/b5/e;->b:Le/a/b5/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le/a/b5/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Le/a/b5/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Le/a/b5/e;->b:Le/a/b5/e;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Le/a/b5/e;->b:Le/a/b5/e;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/truecaller/social/SocialNetworkType;Landroidx/fragment/app/Fragment;)Le/a/b5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/a/b5/d$c;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/b5/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social/SocialNetworkProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/social/SocialNetworkProvider;->network(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Le/a/b5/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p2, Le/a/b5/d$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le/a/b5/d$c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
