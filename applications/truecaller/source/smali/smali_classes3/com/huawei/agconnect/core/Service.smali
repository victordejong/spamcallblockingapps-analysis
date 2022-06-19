.class public Lcom/huawei/agconnect/core/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/agconnect/core/Service$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/huawei/agconnect/core/Service;->b:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/huawei/agconnect/core/Service$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/core/Service;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service;->a:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/agconnect/core/Service;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/huawei/agconnect/core/Service;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Lcom/huawei/agconnect/core/Service$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/agconnect/core/Service;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/huawei/agconnect/core/Service;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/agconnect/core/Service;->d:Z

    return p1
.end method

.method public static builder(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/agconnect/core/Service$Builder;

    invoke-direct {v0}, Lcom/huawei/agconnect/core/Service$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huawei/agconnect/core/Service$Builder;->setInterface(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/agconnect/core/Service$Builder;->setClass(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object v0

    const-class v1, Lcom/huawei/agconnect/annotation/Singleton;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/huawei/agconnect/core/Service$Builder;->isSingleton(Z)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/agconnect/core/Service$Builder;

    invoke-direct {v0}, Lcom/huawei/agconnect/core/Service$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huawei/agconnect/core/Service$Builder;->setInterface(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/huawei/agconnect/core/Service$Builder;->setClass(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    const-class v0, Lcom/huawei/agconnect/annotation/Singleton;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/huawei/agconnect/core/Service$Builder;->isSingleton(Z)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Ljava/lang/Class;Ljava/lang/Object;)Lcom/huawei/agconnect/core/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/huawei/agconnect/core/Service$Builder;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/agconnect/core/Service$Builder;

    invoke-direct {v0}, Lcom/huawei/agconnect/core/Service$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/huawei/agconnect/core/Service$Builder;->setInterface(Ljava/lang/Class;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/huawei/agconnect/core/Service$Builder;->setObject(Ljava/lang/Object;)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/huawei/agconnect/core/Service$Builder;->isSingleton(Z)Lcom/huawei/agconnect/core/Service$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/huawei/agconnect/core/Service;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public getInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/agconnect/core/Service;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/agconnect/core/Service;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public isSingleton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/agconnect/core/Service;->d:Z

    return v0
.end method
